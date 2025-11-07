# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GameLift do
  @moduledoc """
  Amazon GameLift Servers provides solutions for hosting session-based multiplayer
  game servers in the
  cloud, including tools for deploying, operating, and scaling game servers.

  Built on
  Amazon Web Services global computing infrastructure, GameLift helps you deliver
  high-performance,
  high-reliability, low-cost game servers while dynamically scaling your resource
  usage to
  meet player demand.

  ## About Amazon GameLift Servers solutions

  Get more information on these Amazon GameLift Servers solutions in the [Amazon GameLift Servers Developer
  Guide](https://docs.aws.amazon.com/gamelift/latest/developerguide/).

    *
  Amazon GameLift Servers managed hosting -- Amazon GameLift Servers offers a
  fully managed service to set up
  and maintain computing machines for hosting, manage game session and player
  session life cycle, and handle security, storage, and performance tracking. You
  can use automatic scaling tools to balance player demand and hosting costs,
  configure your game session management to minimize player latency, and add
  FlexMatch for matchmaking.

    *
  Managed hosting with Amazon GameLift Servers Realtime -- With Amazon GameLift
  Servers Amazon GameLift Servers Realtime, you can quickly configure
  and set up ready-to-go game servers for your game. Amazon GameLift Servers
  Realtime provides a game server
  framework with core Amazon GameLift Servers infrastructure already built in.
  Then use the full
  range of Amazon GameLift Servers managed hosting features, including FlexMatch,
  for your
  game.

    *
  Amazon GameLift Servers FleetIQ -- Use Amazon GameLift Servers FleetIQ as a
  standalone service while hosting your games using EC2
  instances and Auto Scaling groups. Amazon GameLift Servers FleetIQ provides
  optimizations for game
  hosting, including boosting the viability of low-cost Spot Instances gaming. For
  a complete solution, pair the Amazon GameLift Servers FleetIQ and FlexMatch
  standalone services.

    *
  Amazon GameLift Servers FlexMatch -- Add matchmaking to your game hosting
  solution. FlexMatch is a
  customizable matchmaking service for multiplayer games. Use FlexMatch as
  integrated with Amazon GameLift Servers managed hosting or incorporate FlexMatch
  as a standalone
  service into your own hosting solution.

  ## About this API Reference

  This reference guide describes the low-level service API for Amazon GameLift
  Servers. With each topic
  in this guide, you can find links to language-specific SDK guides and the Amazon
  Web Services CLI
  reference. Useful links:

    *

  [Amazon GameLift Servers API operations listed by
  tasks](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html)

    *

  [ Amazon GameLift Servers tools and
  resources](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_game_server_input() :: %{
        optional("GameServerData") => String.t() | atom(),
        optional("HealthCheck") => list(any()),
        optional("UtilizationStatus") => list(any()),
        required("GameServerGroupName") => String.t() | atom(),
        required("GameServerId") => String.t() | atom()
      }
      
  """
  @type update_game_server_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_fleet_status_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_fleet_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_game_server_group_input() :: %{
        optional("BalancingStrategy") => list(any()),
        optional("GameServerProtectionPolicy") => list(any()),
        optional("InstanceDefinitions") => list(instance_definition()),
        optional("RoleArn") => String.t() | atom(),
        required("GameServerGroupName") => String.t() | atom()
      }
      
  """
  @type update_game_server_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_compute_input() :: %{
        optional("ComputeStatus") => list(any()),
        optional("ContainerGroupDefinitionName") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Location") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type list_compute_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fleet_utilization() :: %{
        "ActiveGameSessionCount" => integer(),
        "ActiveServerProcessCount" => integer(),
        "CurrentPlayerSessionCount" => integer(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "MaximumPlayerSessionCount" => integer()
      }
      
  """
  @type fleet_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fleet_port_settings_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom()
      }
      
  """
  @type update_fleet_port_settings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_compute_output() :: %{}
      
  """
  @type deregister_compute_output() :: %{}

  @typedoc """

  ## Example:
      
      game_session_connection_info() :: %{
        "DnsName" => String.t() | atom(),
        "GameSessionArn" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "MatchedPlayerSessions" => list(matched_player_session()),
        "Port" => integer()
      }
      
  """
  @type game_session_connection_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_input() :: %{
        required("TicketIds") => list(String.t() | atom())
      }
      
  """
  @type describe_matchmaking_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_access() :: %{
        "Credentials" => instance_credentials(),
        "FleetId" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "OperatingSystem" => list(any())
      }
      
  """
  @type instance_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_locations_output() :: %{
        "Locations" => list(location_model()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_locations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_fleet_location_attributes() :: %{
        "Location" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type container_fleet_location_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_server_container_group_counts() :: %{
        "ACTIVE" => integer(),
        "IDLE" => integer(),
        "PENDING" => integer(),
        "TERMINATING" => integer()
      }
      
  """
  @type game_server_container_group_counts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      player_latency() :: %{
        "LatencyInMilliseconds" => float(),
        "PlayerId" => String.t() | atom(),
        "RegionIdentifier" => String.t() | atom()
      }
      
  """
  @type player_latency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tagging_failed_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type tagging_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_server_instance() :: %{
        "GameServerGroupArn" => String.t() | atom(),
        "GameServerGroupName" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "InstanceStatus" => list(any())
      }
      
  """
  @type game_server_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_compute_output() :: %{
        "ComputeList" => list(compute()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_compute_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_fleet_input() :: %{
        optional("DeploymentConfiguration") => deployment_configuration(),
        optional("Description") => String.t() | atom(),
        optional("GameServerContainerGroupDefinitionName") => String.t() | atom(),
        optional("GameServerContainerGroupsPerInstance") => integer(),
        optional("GameSessionCreationLimitPolicy") => game_session_creation_limit_policy(),
        optional("InstanceConnectionPortRange") => connection_port_range(),
        optional("InstanceInboundPermissionAuthorizations") => list(ip_permission()),
        optional("InstanceInboundPermissionRevocations") => list(ip_permission()),
        optional("LogConfiguration") => log_configuration(),
        optional("MetricGroups") => list(String.t() | atom()),
        optional("NewGameSessionProtectionPolicy") => list(any()),
        optional("PerInstanceContainerGroupDefinitionName") => String.t() | atom(),
        optional("RemoveAttributes") => list(list(any())()),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type update_container_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      priority_configuration() :: %{
        "LocationOrder" => list(String.t() | atom()),
        "PriorityOrder" => list(list(any())())
      }
      
  """
  @type priority_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_port_settings_input() :: %{
        optional("Location") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_fleet_port_settings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_input() :: %{
        optional("Tags") => list(tag()),
        required("LocationName") => String.t() | atom()
      }
      
  """
  @type create_location_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_script_input() :: %{
        required("ScriptId") => String.t() | atom()
      }
      
  """
  @type delete_script_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_output() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type put_scaling_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolve_alias_input() :: %{
        required("AliasId") => String.t() | atom()
      }
      
  """
  @type resolve_alias_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      matched_player_session() :: %{
        "PlayerId" => String.t() | atom(),
        "PlayerSessionId" => String.t() | atom()
      }
      
  """
  @type matched_player_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type create_game_server_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type describe_script_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t() | atom()
      }
      
  """
  @type describe_game_server_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      priority_configuration_override() :: %{
        "LocationOrder" => list(String.t() | atom()),
        "PlacementFallbackStrategy" => list(any())
      }
      
  """
  @type priority_configuration_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_capacity_output() :: %{
        "FleetCapacity" => fleet_capacity()
      }
      
  """
  @type describe_fleet_location_capacity_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fleets_output() :: %{
        "FleetIds" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_fleets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_credentials() :: %{
        "Secret" => String.t() | atom(),
        "UserName" => String.t() | atom()
      }
      
  """
  @type instance_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_attributes_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "LocationAttributes" => list(location_attributes()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_fleet_location_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      build() :: %{
        "BuildArn" => String.t() | atom(),
        "BuildId" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "OperatingSystem" => list(any()),
        "ServerSdkVersion" => String.t() | atom(),
        "SizeOnDisk" => float(),
        "Status" => list(any()),
        "Version" => String.t() | atom()
      }
      
  """
  @type build() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_definition() :: %{
        "InstanceType" => list(any()),
        "WeightedCapacity" => String.t() | atom()
      }
      
  """
  @type instance_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_rule_set_output() :: %{}
      
  """
  @type delete_matchmaking_rule_set_output() :: %{}

  @typedoc """

  ## Example:
      
      game_server_container_definition_input() :: %{
        "ContainerName" => String.t() | atom(),
        "DependsOn" => list(container_dependency()),
        "EnvironmentOverride" => list(container_environment()),
        "ImageUri" => String.t() | atom(),
        "MountPoints" => list(container_mount_point()),
        "PortConfiguration" => container_port_configuration(),
        "ServerSdkVersion" => String.t() | atom()
      }
      
  """
  @type game_server_container_definition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_matchmaking_output() :: %{
        "MatchmakingTicket" => matchmaking_ticket()
      }
      
  """
  @type start_matchmaking_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_compute_output() :: %{
        "Compute" => compute()
      }
      
  """
  @type describe_compute_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      game_server_group() :: %{
        "AutoScalingGroupArn" => String.t() | atom(),
        "BalancingStrategy" => list(any()),
        "CreationTime" => non_neg_integer(),
        "GameServerGroupArn" => String.t() | atom(),
        "GameServerGroupName" => String.t() | atom(),
        "GameServerProtectionPolicy" => list(any()),
        "InstanceDefinitions" => list(instance_definition()),
        "LastUpdatedTime" => non_neg_integer(),
        "RoleArn" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom(),
        "SuspendedActions" => list(list(any())())
      }
      
  """
  @type game_server_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      support_container_definition() :: %{
        "ContainerName" => String.t() | atom(),
        "DependsOn" => list(container_dependency()),
        "EnvironmentOverride" => list(container_environment()),
        "Essential" => boolean(),
        "HealthCheck" => container_health_check(),
        "ImageUri" => String.t() | atom(),
        "MemoryHardLimitMebibytes" => integer(),
        "MountPoints" => list(container_mount_point()),
        "PortConfiguration" => container_port_configuration(),
        "ResolvedImageDigest" => String.t() | atom(),
        "Vcpu" => float()
      }
      
  """
  @type support_container_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resume_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t() | atom(),
        required("ResumeActions") => list(list(any())())
      }
      
  """
  @type resume_game_server_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_attributes_input() :: %{
        optional("Limit") => integer(),
        optional("Locations") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_fleet_location_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_locations_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "LocationStates" => list(location_state())
      }
      
  """
  @type delete_fleet_locations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_capacity_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("Location") => String.t() | atom()
      }
      
  """
  @type describe_fleet_location_capacity_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_queues_output() :: %{
        "GameSessionQueues" => list(game_session_queue()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_game_session_queues_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_fleet_output() :: %{}
      
  """
  @type delete_container_fleet_output() :: %{}

  @typedoc """

  ## Example:
      
      create_player_sessions_output() :: %{
        "PlayerSessions" => list(player_session())
      }
      
  """
  @type create_player_sessions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_configuration_input() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_matchmaking_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_build_output() :: %{
        "Build" => build()
      }
      
  """
  @type update_build_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_deployment_input() :: %{
        optional("DeploymentId") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_fleet_deployment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validate_matchmaking_rule_set_output() :: %{
        "Valid" => boolean()
      }
      
  """
  @type validate_matchmaking_rule_set_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      compute() :: %{
        "ComputeArn" => String.t() | atom(),
        "ComputeName" => String.t() | atom(),
        "ComputeStatus" => list(any()),
        "ContainerAttributes" => list(container_attribute()),
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t() | atom(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "GameLiftAgentEndpoint" => String.t() | atom(),
        "GameLiftServiceSdkEndpoint" => String.t() | atom(),
        "GameServerContainerGroupDefinitionArn" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "OperatingSystem" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type compute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_game_session_queue_output() :: %{}
      
  """
  @type delete_game_session_queue_output() :: %{}

  @typedoc """

  ## Example:
      
      create_vpc_peering_connection_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("PeerVpcAwsAccountId") => String.t() | atom(),
        required("PeerVpcId") => String.t() | atom()
      }
      
  """
  @type create_vpc_peering_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_utilization_output() :: %{
        "FleetUtilization" => fleet_utilization()
      }
      
  """
  @type describe_fleet_location_utilization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      matchmaking_configuration() :: %{
        "AcceptanceRequired" => boolean(),
        "AcceptanceTimeoutSeconds" => integer(),
        "AdditionalPlayerCount" => integer(),
        "BackfillMode" => list(any()),
        "ConfigurationArn" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "CustomEventData" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "FlexMatchMode" => list(any()),
        "GameProperties" => list(game_property()),
        "GameSessionData" => String.t() | atom(),
        "GameSessionQueueArns" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "NotificationTarget" => String.t() | atom(),
        "RequestTimeoutSeconds" => integer(),
        "RuleSetArn" => String.t() | atom(),
        "RuleSetName" => String.t() | atom()
      }
      
  """
  @type matchmaking_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ping_beacon() :: %{
        "UDPEndpoint" => u_d_p_endpoint()
      }
      
  """
  @type ping_beacon() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_authorizations_output() :: %{
        "VpcPeeringAuthorizations" => list(vpc_peering_authorization())
      }
      
  """
  @type describe_vpc_peering_authorizations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      suspend_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t() | atom(),
        required("SuspendActions") => list(list(any())())
      }
      
  """
  @type suspend_game_server_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_server_group_auto_scaling_policy() :: %{
        "EstimatedInstanceWarmup" => integer(),
        "TargetTrackingConfiguration" => target_tracking_configuration()
      }
      
  """
  @type game_server_group_auto_scaling_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_session_creation_limit_policy() :: %{
        "NewGameSessionsPerCreator" => integer(),
        "PolicyPeriodInMinutes" => integer()
      }
      
  """
  @type game_session_creation_limit_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      runtime_configuration() :: %{
        "GameSessionActivationTimeoutSeconds" => integer(),
        "MaxConcurrentGameSessionActivations" => integer(),
        "ServerProcesses" => list(server_process())
      }
      
  """
  @type runtime_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_container_group_definitions_output() :: %{
        "ContainerGroupDefinitions" => list(container_group_definition()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_container_group_definitions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      player_session() :: %{
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t() | atom(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "GameSessionId" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "PlayerData" => String.t() | atom(),
        "PlayerId" => String.t() | atom(),
        "PlayerSessionId" => String.t() | atom(),
        "Port" => integer(),
        "Status" => list(any()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type player_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_input() :: %{
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type delete_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      player() :: %{
        "LatencyInMs" => map(),
        "PlayerAttributes" => map(),
        "PlayerId" => String.t() | atom(),
        "Team" => String.t() | atom()
      }
      
  """
  @type player() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fleet_attributes_input() :: %{
        optional("AnywhereConfiguration") => anywhere_configuration(),
        optional("Description") => String.t() | atom(),
        optional("MetricGroups") => list(String.t() | atom()),
        optional("Name") => String.t() | atom(),
        optional("NewGameSessionProtectionPolicy") => list(any()),
        optional("ResourceCreationLimitPolicy") => resource_creation_limit_policy(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type update_fleet_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_attribute() :: %{
        "ContainerName" => String.t() | atom(),
        "ContainerRuntimeId" => String.t() | atom()
      }
      
  """
  @type container_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_runtime_configuration_output() :: %{
        "RuntimeConfiguration" => runtime_configuration()
      }
      
  """
  @type describe_runtime_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_aliases_output() :: %{
        "Aliases" => list(alias()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_aliases_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      out_of_capacity_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type out_of_capacity_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scaling_policy() :: %{
        "ComparisonOperator" => list(any()),
        "EvaluationPeriods" => integer(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "MetricName" => list(any()),
        "Name" => String.t() | atom(),
        "PolicyType" => list(any()),
        "ScalingAdjustment" => integer(),
        "ScalingAdjustmentType" => list(any()),
        "Status" => list(any()),
        "TargetConfiguration" => target_configuration(),
        "Threshold" => float(),
        "UpdateStatus" => list(any())
      }
      
  """
  @type scaling_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_connections_output() :: %{
        "VpcPeeringConnections" => list(vpc_peering_connection())
      }
      
  """
  @type describe_vpc_peering_connections_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_deployment_output() :: %{
        "FleetDeployment" => fleet_deployment(),
        "LocationalDeployments" => map()
      }
      
  """
  @type describe_fleet_deployment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_builds_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any())
      }
      
  """
  @type list_builds_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_game_session_log_url_output() :: %{
        "PreSignedUrl" => String.t() | atom()
      }
      
  """
  @type get_game_session_log_url_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_group_definition_output() :: %{
        "ContainerGroupDefinition" => container_group_definition()
      }
      
  """
  @type create_container_group_definition_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_matchmaking_configuration_output() :: %{
        "Configuration" => matchmaking_configuration()
      }
      
  """
  @type update_matchmaking_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type describe_game_server_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_ec2_instance_limits_input() :: %{
        optional("EC2InstanceType") => list(any()),
        optional("Location") => String.t() | atom()
      }
      
  """
  @type describe_ec2_instance_limits_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_port_settings_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "InboundPermissions" => list(ip_permission()),
        "Location" => String.t() | atom(),
        "UpdateStatus" => list(any())
      }
      
  """
  @type describe_fleet_port_settings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_connections_input() :: %{
        optional("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_vpc_peering_connections_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      placed_player_session() :: %{
        "PlayerId" => String.t() | atom(),
        "PlayerSessionId" => String.t() | atom()
      }
      
  """
  @type placed_player_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_game_server_input() :: %{
        required("GameServerGroupName") => String.t() | atom(),
        required("GameServerId") => String.t() | atom()
      }
      
  """
  @type deregister_game_server_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      desired_player_session() :: %{
        "PlayerData" => String.t() | atom(),
        "PlayerId" => String.t() | atom()
      }
      
  """
  @type desired_player_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type start_game_session_placement_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fleet_capacity_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type fleet_capacity_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_rule_set_input() :: %{
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("RuleSetBody") => String.t() | atom()
      }
      
  """
  @type create_matchmaking_rule_set_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_input() :: %{
        required("GameServerGroupName") => String.t() | atom(),
        required("GameServerId") => String.t() | atom()
      }
      
  """
  @type describe_game_server_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fleet_capacity() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "GameServerContainerGroupCounts" => game_server_container_group_counts(),
        "InstanceCounts" => ec2_instance_counts(),
        "InstanceType" => list(any()),
        "Location" => String.t() | atom()
      }
      
  """
  @type fleet_capacity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_input() :: %{
        optional("ComparisonOperator") => list(any()),
        optional("EvaluationPeriods") => integer(),
        optional("PolicyType") => list(any()),
        optional("ScalingAdjustment") => integer(),
        optional("ScalingAdjustmentType") => list(any()),
        optional("TargetConfiguration") => target_configuration(),
        optional("Threshold") => float(),
        required("FleetId") => String.t() | atom(),
        required("MetricName") => list(any()),
        required("Name") => String.t() | atom()
      }
      
  """
  @type put_scaling_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_scripts_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_scripts_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fleet_port_settings_input() :: %{
        optional("InboundPermissionAuthorizations") => list(ip_permission()),
        optional("InboundPermissionRevocations") => list(ip_permission()),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type update_fleet_port_settings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_match_input() :: %{
        required("AcceptanceType") => list(any()),
        required("PlayerIds") => list(String.t() | atom()),
        required("TicketId") => String.t() | atom()
      }
      
  """
  @type accept_match_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_game_session_placement_input() :: %{
        required("PlacementId") => String.t() | atom()
      }
      
  """
  @type stop_game_session_placement_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      location_configuration() :: %{
        "Location" => String.t() | atom()
      }
      
  """
  @type location_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      server_process() :: %{
        "ConcurrentExecutions" => integer(),
        "LaunchPath" => String.t() | atom(),
        "Parameters" => String.t() | atom()
      }
      
  """
  @type server_process() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      location_state() :: %{
        "Location" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type location_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_game_session_output() :: %{
        "GameSession" => game_session()
      }
      
  """
  @type create_game_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolve_alias_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom()
      }
      
  """
  @type resolve_alias_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_utilization_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("Location") => String.t() | atom()
      }
      
  """
  @type describe_fleet_location_utilization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      support_container_definition_input() :: %{
        "ContainerName" => String.t() | atom(),
        "DependsOn" => list(container_dependency()),
        "EnvironmentOverride" => list(container_environment()),
        "Essential" => boolean(),
        "HealthCheck" => container_health_check(),
        "ImageUri" => String.t() | atom(),
        "MemoryHardLimitMebibytes" => integer(),
        "MountPoints" => list(container_mount_point()),
        "PortConfiguration" => container_port_configuration(),
        "Vcpu" => float()
      }
      
  """
  @type support_container_definition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      request_upload_credentials_output() :: %{
        "StorageLocation" => s3_location(),
        "UploadCredentials" => aws_credentials()
      }
      
  """
  @type request_upload_credentials_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_configurations_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom(),
        optional("RuleSetName") => String.t() | atom()
      }
      
  """
  @type describe_matchmaking_configurations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type register_game_server_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_alias_input() :: %{
        required("AliasId") => String.t() | atom()
      }
      
  """
  @type delete_alias_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_group_definition_input() :: %{
        optional("VersionCountToRetain") => integer(),
        optional("VersionNumber") => integer(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_container_group_definition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type update_game_server_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      request_upload_credentials_input() :: %{
        required("BuildId") => String.t() | atom()
      }
      
  """
  @type request_upload_credentials_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_session_queue() :: %{
        "CustomEventData" => String.t() | atom(),
        "Destinations" => list(game_session_queue_destination()),
        "FilterConfiguration" => filter_configuration(),
        "GameSessionQueueArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "NotificationTarget" => String.t() | atom(),
        "PlayerLatencyPolicies" => list(player_latency_policy()),
        "PriorityConfiguration" => priority_configuration(),
        "TimeoutInSeconds" => integer()
      }
      
  """
  @type game_session_queue() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_match_output() :: %{}
      
  """
  @type accept_match_output() :: %{}

  @typedoc """

  ## Example:
      
      location_attributes() :: %{
        "LocationState" => location_state(),
        "StoppedActions" => list(list(any())()),
        "UpdateStatus" => list(any())
      }
      
  """
  @type location_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      claim_game_server_input() :: %{
        optional("FilterOption") => claim_filter_option(),
        optional("GameServerData") => String.t() | atom(),
        optional("GameServerId") => String.t() | atom(),
        required("GameServerGroupName") => String.t() | atom()
      }
      
  """
  @type claim_game_server_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_game_server_groups_output() :: %{
        "GameServerGroups" => list(game_server_group()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_game_server_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_container_group_definition_versions_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type list_container_group_definition_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_authorization_input() :: %{
        required("GameLiftAwsAccountId") => String.t() | atom(),
        required("PeerVpcId") => String.t() | atom()
      }
      
  """
  @type delete_vpc_peering_authorization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_connection_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("VpcPeeringConnectionId") => String.t() | atom()
      }
      
  """
  @type delete_vpc_peering_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_utilization_output() :: %{
        "FleetUtilization" => list(fleet_utilization()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_fleet_utilization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_configuration() :: %{
        "ImpairmentStrategy" => list(any()),
        "MinimumHealthyPercentage" => integer(),
        "ProtectionStrategy" => list(any())
      }
      
  """
  @type deployment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_script_input() :: %{
        required("ScriptId") => String.t() | atom()
      }
      
  """
  @type describe_script_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_game_sessions_input() :: %{
        optional("AliasId") => String.t() | atom(),
        optional("FilterExpression") => String.t() | atom(),
        optional("FleetId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Location") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("SortExpression") => String.t() | atom()
      }
      
  """
  @type search_game_sessions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type update_script_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_group_definition() :: %{
        "ContainerGroupDefinitionArn" => String.t() | atom(),
        "ContainerGroupType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "GameServerContainerDefinition" => game_server_container_definition(),
        "Name" => String.t() | atom(),
        "OperatingSystem" => list(any()),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom(),
        "SupportContainerDefinitions" => list(support_container_definition()),
        "TotalMemoryLimitMebibytes" => integer(),
        "TotalVcpuLimit" => float(),
        "VersionDescription" => String.t() | atom(),
        "VersionNumber" => integer()
      }
      
  """
  @type container_group_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_game_session_queue_input() :: %{
        optional("CustomEventData") => String.t() | atom(),
        optional("Destinations") => list(game_session_queue_destination()),
        optional("FilterConfiguration") => filter_configuration(),
        optional("NotificationTarget") => String.t() | atom(),
        optional("PlayerLatencyPolicies") => list(player_latency_policy()),
        optional("PriorityConfiguration") => priority_configuration(),
        optional("TimeoutInSeconds") => integer(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_game_session_queue_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_location_input() :: %{
        required("LocationName") => String.t() | atom()
      }
      
  """
  @type delete_location_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_capacity_input() :: %{
        optional("FleetIds") => list(String.t() | atom()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_fleet_capacity_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_game_session_input() :: %{
        required("GameSessionId") => String.t() | atom(),
        required("TerminationMode") => list(any())
      }
      
  """
  @type terminate_game_session_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_compute_access_output() :: %{
        "ComputeArn" => String.t() | atom(),
        "ComputeName" => String.t() | atom(),
        "ContainerIdentifiers" => list(container_identifier()),
        "Credentials" => aws_credentials(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "Target" => String.t() | atom()
      }
      
  """
  @type get_compute_access_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_rule_sets_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_matchmaking_rule_sets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_sessions_output() :: %{
        "GameSessions" => list(game_session()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_game_sessions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_events_input() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StartTime") => non_neg_integer(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_fleet_events_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_group_definition_input() :: %{
        optional("GameServerContainerDefinition") => game_server_container_definition_input(),
        optional("OperatingSystem") => list(any()),
        optional("SourceVersionNumber") => integer(),
        optional("SupportContainerDefinitions") => list(support_container_definition_input()),
        optional("TotalMemoryLimitMebibytes") => integer(),
        optional("TotalVcpuLimit") => float(),
        optional("VersionDescription") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_container_group_definition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_fleet_input() :: %{
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type delete_container_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_output() :: %{
        "TicketList" => list(matchmaking_ticket())
      }
      
  """
  @type describe_matchmaking_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_alias_input() :: %{
        required("AliasId") => String.t() | atom()
      }
      
  """
  @type describe_alias_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fleet_deployments_output() :: %{
        "FleetDeployments" => list(fleet_deployment()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_fleet_deployments_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_runtime_configuration_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("RuntimeConfiguration") => runtime_configuration()
      }
      
  """
  @type update_runtime_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type create_alias_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_game_session_queue_output() :: %{
        "GameSessionQueue" => game_session_queue()
      }
      
  """
  @type update_game_session_queue_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fleet_capacity_input() :: %{
        optional("DesiredInstances") => integer(),
        optional("Location") => String.t() | atom(),
        optional("MaxSize") => integer(),
        optional("MinSize") => integer(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type update_fleet_capacity_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_health_check() :: %{
        "Command" => list(String.t() | atom()),
        "Interval" => integer(),
        "Retries" => integer(),
        "StartPeriod" => integer(),
        "Timeout" => integer()
      }
      
  """
  @type container_health_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_player_session_input() :: %{
        optional("PlayerData") => String.t() | atom(),
        required("GameSessionId") => String.t() | atom(),
        required("PlayerId") => String.t() | atom()
      }
      
  """
  @type create_player_session_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_counts() :: %{
        "ACTIVE" => integer(),
        "DESIRED" => integer(),
        "IDLE" => integer(),
        "MAXIMUM" => integer(),
        "MINIMUM" => integer(),
        "PENDING" => integer(),
        "TERMINATING" => integer()
      }
      
  """
  @type ec2_instance_counts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type update_alias_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_locations_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("Locations") => list(String.t() | atom())
      }
      
  """
  @type delete_fleet_locations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_build_input() :: %{
        required("BuildId") => String.t() | atom()
      }
      
  """
  @type describe_build_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      player_latency_policy() :: %{
        "MaximumIndividualPlayerLatencyMilliseconds" => integer(),
        "PolicyDurationSeconds" => integer()
      }
      
  """
  @type player_latency_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_build_input() :: %{
        optional("Name") => String.t() | atom(),
        optional("Version") => String.t() | atom(),
        required("BuildId") => String.t() | atom()
      }
      
  """
  @type update_build_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_compute_output() :: %{
        "Compute" => compute()
      }
      
  """
  @type register_compute_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ip_permission() :: %{
        "FromPort" => integer(),
        "IpRange" => String.t() | atom(),
        "Protocol" => list(any()),
        "ToPort" => integer()
      }
      
  """
  @type ip_permission() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fleet_locations_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("Locations") => list(location_configuration())
      }
      
  """
  @type create_fleet_locations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_script_input() :: %{
        optional("Name") => String.t() | atom(),
        optional("StorageLocation") => s3_location(),
        optional("Version") => String.t() | atom(),
        optional("ZipFile") => binary(),
        required("ScriptId") => String.t() | atom()
      }
      
  """
  @type update_script_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_connection_output() :: %{}
      
  """
  @type delete_vpc_peering_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_game_sessions_input() :: %{
        optional("AliasId") => String.t() | atom(),
        optional("FleetId") => String.t() | atom(),
        optional("GameSessionId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Location") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("StatusFilter") => String.t() | atom()
      }
      
  """
  @type describe_game_sessions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter_configuration() :: %{
        "AllowedLocations" => list(String.t() | atom())
      }
      
  """
  @type filter_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_rule_set_output() :: %{
        "RuleSet" => matchmaking_rule_set()
      }
      
  """
  @type create_matchmaking_rule_set_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_configuration_input() :: %{
        optional("AcceptanceTimeoutSeconds") => integer(),
        optional("AdditionalPlayerCount") => integer(),
        optional("BackfillMode") => list(any()),
        optional("CustomEventData") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("FlexMatchMode") => list(any()),
        optional("GameProperties") => list(game_property()),
        optional("GameSessionData") => String.t() | atom(),
        optional("GameSessionQueueArns") => list(String.t() | atom()),
        optional("NotificationTarget") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("AcceptanceRequired") => boolean(),
        required("Name") => String.t() | atom(),
        required("RequestTimeoutSeconds") => integer(),
        required("RuleSetName") => String.t() | atom()
      }
      
  """
  @type create_matchmaking_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_game_session_placement_input() :: %{
        optional("DesiredPlayerSessions") => list(desired_player_session()),
        optional("GameProperties") => list(game_property()),
        optional("GameSessionData") => String.t() | atom(),
        optional("GameSessionName") => String.t() | atom(),
        optional("PlayerLatencies") => list(player_latency()),
        optional("PriorityConfigurationOverride") => priority_configuration_override(),
        required("GameSessionQueueName") => String.t() | atom(),
        required("MaximumPlayerSessionCount") => integer(),
        required("PlacementId") => String.t() | atom()
      }
      
  """
  @type start_game_session_placement_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_placement_input() :: %{
        required("PlacementId") => String.t() | atom()
      }
      
  """
  @type describe_game_session_placement_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_container_group_definition_versions_output() :: %{
        "ContainerGroupDefinitions" => list(container_group_definition()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_container_group_definition_versions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fleet_locations_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "LocationStates" => list(location_state())
      }
      
  """
  @type create_fleet_locations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_matchmaking_input() :: %{
        required("TicketId") => String.t() | atom()
      }
      
  """
  @type stop_matchmaking_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_authorization() :: %{
        "CreationTime" => non_neg_integer(),
        "ExpirationTime" => non_neg_integer(),
        "GameLiftAwsAccountId" => String.t() | atom(),
        "PeerVpcAwsAccountId" => String.t() | atom(),
        "PeerVpcId" => String.t() | atom()
      }
      
  """
  @type vpc_peering_authorization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_runtime_configuration_input() :: %{
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_runtime_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_alias_input() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("RoutingStrategy") => routing_strategy(),
        required("AliasId") => String.t() | atom()
      }
      
  """
  @type update_alias_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_configuration_output() :: %{}
      
  """
  @type delete_matchmaking_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      not_ready_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_compute_access_input() :: %{
        required("ComputeName") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type get_compute_access_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      attribute_value() :: %{
        "N" => float(),
        "S" => String.t() | atom(),
        "SDM" => map(),
        "SL" => list(String.t() | atom())
      }
      
  """
  @type attribute_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_identifier() :: %{
        "ContainerName" => String.t() | atom(),
        "ContainerRuntimeId" => String.t() | atom()
      }
      
  """
  @type container_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_configuration_output() :: %{
        "Configuration" => matchmaking_configuration()
      }
      
  """
  @type create_matchmaking_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      anywhere_configuration() :: %{
        "Cost" => String.t() | atom()
      }
      
  """
  @type anywhere_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "Bucket" => String.t() | atom(),
        "Key" => String.t() | atom(),
        "ObjectVersion" => String.t() | atom(),
        "RoleArn" => String.t() | atom()
      }
      
  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_build_input() :: %{
        required("BuildId") => String.t() | atom()
      }
      
  """
  @type delete_build_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_player_sessions_output() :: %{
        "NextToken" => String.t() | atom(),
        "PlayerSessions" => list(player_session())
      }
      
  """
  @type describe_player_sessions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_instances_output() :: %{
        "Instances" => list(instance()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_instances_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_aliases_input() :: %{
        optional("Limit") => integer(),
        optional("Name") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("RoutingStrategyType") => list(any())
      }
      
  """
  @type list_aliases_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_utilization_input() :: %{
        optional("FleetIds") => list(String.t() | atom()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_fleet_utilization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_group_definition_output() :: %{
        "ContainerGroupDefinition" => container_group_definition()
      }
      
  """
  @type update_container_group_definition_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_access_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }
      
  """
  @type get_instance_access_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fleet_output() :: %{
        "FleetAttributes" => fleet_attributes(),
        "LocationStates" => list(location_state())
      }
      
  """
  @type create_fleet_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fleet_attributes() :: %{
        "AnywhereConfiguration" => anywhere_configuration(),
        "BuildArn" => String.t() | atom(),
        "BuildId" => String.t() | atom(),
        "CertificateConfiguration" => certificate_configuration(),
        "ComputeType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "FleetType" => list(any()),
        "InstanceRoleArn" => String.t() | atom(),
        "InstanceRoleCredentialsProvider" => list(any()),
        "InstanceType" => list(any()),
        "LogPaths" => list(String.t() | atom()),
        "MetricGroups" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "NewGameSessionProtectionPolicy" => list(any()),
        "OperatingSystem" => list(any()),
        "ResourceCreationLimitPolicy" => resource_creation_limit_policy(),
        "ScriptArn" => String.t() | atom(),
        "ScriptId" => String.t() | atom(),
        "ServerLaunchParameters" => String.t() | atom(),
        "ServerLaunchPath" => String.t() | atom(),
        "Status" => list(any()),
        "StoppedActions" => list(list(any())()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type fleet_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_game_server_groups_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_game_server_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      locational_deployment() :: %{
        "DeploymentStatus" => list(any())
      }
      
  """
  @type locational_deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_group_definition_input() :: %{
        optional("ContainerGroupType") => list(any()),
        optional("GameServerContainerDefinition") => game_server_container_definition_input(),
        optional("SupportContainerDefinitions") => list(support_container_definition_input()),
        optional("Tags") => list(tag()),
        optional("VersionDescription") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("OperatingSystem") => list(any()),
        required("TotalMemoryLimitMebibytes") => integer(),
        required("TotalVcpuLimit") => float()
      }
      
  """
  @type create_container_group_definition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_player_sessions_input() :: %{
        optional("GameSessionId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PlayerId") => String.t() | atom(),
        optional("PlayerSessionId") => String.t() | atom(),
        optional("PlayerSessionStatusFilter") => String.t() | atom()
      }
      
  """
  @type describe_player_sessions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_game_session_input() :: %{
        optional("GameProperties") => list(game_property()),
        optional("MaximumPlayerSessionCount") => integer(),
        optional("Name") => String.t() | atom(),
        optional("PlayerSessionCreationPolicy") => list(any()),
        optional("ProtectionPolicy") => list(any()),
        required("GameSessionId") => String.t() | atom()
      }
      
  """
  @type update_game_session_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      matchmaking_ticket() :: %{
        "ConfigurationArn" => String.t() | atom(),
        "ConfigurationName" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "EstimatedWaitTime" => integer(),
        "GameSessionConnectionInfo" => game_session_connection_info(),
        "Players" => list(player()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "StatusReason" => String.t() | atom(),
        "TicketId" => String.t() | atom()
      }
      
  """
  @type matchmaking_ticket() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fleet_capacity_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "Location" => String.t() | atom()
      }
      
  """
  @type update_fleet_capacity_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type update_game_server_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_container_fleet_input() :: %{
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_container_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_game_session_queue_input() :: %{
        optional("CustomEventData") => String.t() | atom(),
        optional("Destinations") => list(game_session_queue_destination()),
        optional("FilterConfiguration") => filter_configuration(),
        optional("NotificationTarget") => String.t() | atom(),
        optional("PlayerLatencyPolicies") => list(player_latency_policy()),
        optional("PriorityConfiguration") => priority_configuration(),
        optional("Tags") => list(tag()),
        optional("TimeoutInSeconds") => integer(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_game_session_queue_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_details_input() :: %{
        optional("AliasId") => String.t() | atom(),
        optional("FleetId") => String.t() | atom(),
        optional("GameSessionId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Location") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("StatusFilter") => String.t() | atom()
      }
      
  """
  @type describe_game_session_details_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fleet_actions_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom()
      }
      
  """
  @type start_fleet_actions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validate_matchmaking_rule_set_input() :: %{
        required("RuleSetBody") => String.t() | atom()
      }
      
  """
  @type validate_matchmaking_rule_set_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fleets_input() :: %{
        optional("BuildId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ScriptId") => String.t() | atom()
      }
      
  """
  @type list_fleets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_game_servers_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortOrder") => list(any()),
        required("GameServerGroupName") => String.t() | atom()
      }
      
  """
  @type list_game_servers_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fleet_input() :: %{
        optional("AnywhereConfiguration") => anywhere_configuration(),
        optional("BuildId") => String.t() | atom(),
        optional("CertificateConfiguration") => certificate_configuration(),
        optional("ComputeType") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("EC2InboundPermissions") => list(ip_permission()),
        optional("EC2InstanceType") => list(any()),
        optional("FleetType") => list(any()),
        optional("InstanceRoleArn") => String.t() | atom(),
        optional("InstanceRoleCredentialsProvider") => list(any()),
        optional("Locations") => list(location_configuration()),
        optional("LogPaths") => list(String.t() | atom()),
        optional("MetricGroups") => list(String.t() | atom()),
        optional("NewGameSessionProtectionPolicy") => list(any()),
        optional("PeerVpcAwsAccountId") => String.t() | atom(),
        optional("PeerVpcId") => String.t() | atom(),
        optional("ResourceCreationLimitPolicy") => resource_creation_limit_policy(),
        optional("RuntimeConfiguration") => runtime_configuration(),
        optional("ScriptId") => String.t() | atom(),
        optional("ServerLaunchParameters") => String.t() | atom(),
        optional("ServerLaunchPath") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom()
      }
      
  """
  @type create_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_matchmaking_input() :: %{
        optional("TicketId") => String.t() | atom(),
        required("ConfigurationName") => String.t() | atom(),
        required("Players") => list(player())
      }
      
  """
  @type start_matchmaking_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_port_range() :: %{
        "FromPort" => integer(),
        "ToPort" => integer()
      }
      
  """
  @type connection_port_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_environment() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type container_environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_mount_point() :: %{
        "AccessLevel" => list(any()),
        "ContainerPath" => String.t() | atom(),
        "InstancePath" => String.t() | atom()
      }
      
  """
  @type container_mount_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_fleet_actions_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom()
      }
      
  """
  @type stop_fleet_actions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      claim_filter_option() :: %{
        "InstanceStatuses" => list(list(any())())
      }
      
  """
  @type claim_filter_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_game_session_queue_input() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_game_session_queue_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_compute_input() :: %{
        required("ComputeName") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type deregister_compute_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_events_output() :: %{
        "Events" => list(event()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_fleet_events_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_authorization_output() :: %{
        "VpcPeeringAuthorization" => vpc_peering_authorization()
      }
      
  """
  @type create_vpc_peering_authorization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_game_session_queue_output() :: %{
        "GameSessionQueue" => game_session_queue()
      }
      
  """
  @type create_game_session_queue_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      location_model() :: %{
        "LocationArn" => String.t() | atom(),
        "LocationName" => String.t() | atom(),
        "PingBeacon" => ping_beacon()
      }
      
  """
  @type location_model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "Count" => float(),
        "EventCode" => list(any()),
        "EventId" => String.t() | atom(),
        "EventTime" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "PreSignedLogUrl" => String.t() | atom(),
        "ResourceId" => String.t() | atom()
      }
      
  """
  @type event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_instances_input() :: %{
        optional("InstanceId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("Location") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type describe_game_server_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      u_d_p_endpoint() :: %{
        "Domain" => String.t() | atom(),
        "Port" => integer()
      }
      
  """
  @type u_d_p_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_authorization_input() :: %{
        required("GameLiftAwsAccountId") => String.t() | atom(),
        required("PeerVpcId") => String.t() | atom()
      }
      
  """
  @type create_vpc_peering_authorization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_queues_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_game_session_queues_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_game_sessions_output() :: %{
        "GameSessions" => list(game_session()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type search_game_sessions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_match_backfill_output() :: %{
        "MatchmakingTicket" => matchmaking_ticket()
      }
      
  """
  @type start_match_backfill_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      alias() :: %{
        "AliasArn" => String.t() | atom(),
        "AliasId" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "RoutingStrategy" => routing_strategy()
      }
      
  """
  @type alias() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_runtime_configuration_output() :: %{
        "RuntimeConfiguration" => runtime_configuration()
      }
      
  """
  @type update_runtime_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fleet_deployments_input() :: %{
        optional("FleetId") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_fleet_deployments_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t() | atom(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "OperatingSystem" => list(any()),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_game_session_output() :: %{
        "GameSession" => game_session()
      }
      
  """
  @type terminate_game_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_game_session_log_url_input() :: %{
        required("GameSessionId") => String.t() | atom()
      }
      
  """
  @type get_game_session_log_url_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fleet_actions_input() :: %{
        optional("Location") => String.t() | atom(),
        required("Actions") => list(list(any())()),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type start_fleet_actions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_matchmaking_configuration_input() :: %{
        optional("AcceptanceRequired") => boolean(),
        optional("AcceptanceTimeoutSeconds") => integer(),
        optional("AdditionalPlayerCount") => integer(),
        optional("BackfillMode") => list(any()),
        optional("CustomEventData") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("FlexMatchMode") => list(any()),
        optional("GameProperties") => list(game_property()),
        optional("GameSessionData") => String.t() | atom(),
        optional("GameSessionQueueArns") => list(String.t() | atom()),
        optional("NotificationTarget") => String.t() | atom(),
        optional("RequestTimeoutSeconds") => integer(),
        optional("RuleSetName") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type update_matchmaking_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resume_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type resume_game_server_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_authorization_output() :: %{}
      
  """
  @type delete_vpc_peering_authorization_output() :: %{}

  @typedoc """

  ## Example:
      
      unsupported_region_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unsupported_region_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_scripts_output() :: %{
        "NextToken" => String.t() | atom(),
        "Scripts" => list(script())
      }
      
  """
  @type list_scripts_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_container_group_definition_output() :: %{}
      
  """
  @type delete_container_group_definition_output() :: %{}

  @typedoc """

  ## Example:
      
      delete_game_server_group_input() :: %{
        optional("DeleteOption") => list(any()),
        required("GameServerGroupName") => String.t() | atom()
      }
      
  """
  @type delete_game_server_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_session_full_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type game_session_full_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      aws_credentials() :: %{
        "AccessKeyId" => String.t() | atom(),
        "SecretAccessKey" => String.t() | atom(),
        "SessionToken" => String.t() | atom()
      }
      
  """
  @type aws_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_port_range() :: %{
        "FromPort" => integer(),
        "Protocol" => list(any()),
        "ToPort" => integer()
      }
      
  """
  @type container_port_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_rule_sets_output() :: %{
        "NextToken" => String.t() | atom(),
        "RuleSets" => list(matchmaking_rule_set())
      }
      
  """
  @type describe_matchmaking_rule_sets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_property() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type game_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_container_group_definitions_input() :: %{
        optional("ContainerGroupType") => list(any()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_container_group_definitions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      suspend_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type suspend_game_server_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_instance_access_output() :: %{
        "InstanceAccess" => instance_access()
      }
      
  """
  @type get_instance_access_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_attributes_input() :: %{
        optional("FleetIds") => list(String.t() | atom()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type describe_fleet_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_location_output() :: %{
        "Location" => location_model()
      }
      
  """
  @type create_location_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_game_session_input() :: %{
        optional("AliasId") => String.t() | atom(),
        optional("CreatorId") => String.t() | atom(),
        optional("FleetId") => String.t() | atom(),
        optional("GameProperties") => list(game_property()),
        optional("GameSessionData") => String.t() | atom(),
        optional("GameSessionId") => String.t() | atom(),
        optional("IdempotencyToken") => String.t() | atom(),
        optional("Location") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        required("MaximumPlayerSessionCount") => integer()
      }
      
  """
  @type create_game_session_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      routing_strategy() :: %{
        "FleetId" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type routing_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fleet_deployment() :: %{
        "CreationTime" => non_neg_integer(),
        "DeploymentConfiguration" => deployment_configuration(),
        "DeploymentId" => String.t() | atom(),
        "DeploymentStatus" => list(any()),
        "FleetId" => String.t() | atom(),
        "GameServerBinaryArn" => String.t() | atom(),
        "PerInstanceBinaryArn" => String.t() | atom(),
        "RollbackGameServerBinaryArn" => String.t() | atom(),
        "RollbackPerInstanceBinaryArn" => String.t() | atom()
      }
      
  """
  @type fleet_deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_session_queue_destination() :: %{
        "DestinationArn" => String.t() | atom()
      }
      
  """
  @type game_session_queue_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_instances_output() :: %{
        "GameServerInstances" => list(game_server_instance()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_game_server_instances_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_compute_auth_token_output() :: %{
        "AuthToken" => String.t() | atom(),
        "ComputeArn" => String.t() | atom(),
        "ComputeName" => String.t() | atom(),
        "ExpirationTimestamp" => non_neg_integer(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom()
      }
      
  """
  @type get_compute_auth_token_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_ec2_instance_limits_output() :: %{
        "EC2InstanceLimits" => list(ec2_instance_limit())
      }
      
  """
  @type describe_ec2_instance_limits_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type delete_game_server_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_build_output() :: %{
        "Build" => build()
      }
      
  """
  @type describe_build_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_policy_input() :: %{
        required("FleetId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_scaling_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_capacity_output() :: %{
        "FleetCapacity" => list(fleet_capacity()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_fleet_capacity_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_locations_input() :: %{
        optional("Filters") => list(list(any())()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_locations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_fleet() :: %{
        "BillingType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DeploymentDetails" => deployment_details(),
        "Description" => String.t() | atom(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "FleetRoleArn" => String.t() | atom(),
        "GameServerContainerGroupDefinitionArn" => String.t() | atom(),
        "GameServerContainerGroupDefinitionName" => String.t() | atom(),
        "GameServerContainerGroupsPerInstance" => integer(),
        "GameSessionCreationLimitPolicy" => game_session_creation_limit_policy(),
        "InstanceConnectionPortRange" => connection_port_range(),
        "InstanceInboundPermissions" => list(ip_permission()),
        "InstanceType" => String.t() | atom(),
        "LocationAttributes" => list(container_fleet_location_attributes()),
        "LogConfiguration" => log_configuration(),
        "MaximumGameServerContainerGroupsPerInstance" => integer(),
        "MetricGroups" => list(String.t() | atom()),
        "NewGameSessionProtectionPolicy" => list(any()),
        "PerInstanceContainerGroupDefinitionArn" => String.t() | atom(),
        "PerInstanceContainerGroupDefinitionName" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type container_fleet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_attributes_output() :: %{
        "FleetAttributes" => list(fleet_attributes()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_fleet_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      script() :: %{
        "CreationTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "ScriptArn" => String.t() | atom(),
        "ScriptId" => String.t() | atom(),
        "SizeOnDisk" => float(),
        "StorageLocation" => s3_location(),
        "Version" => String.t() | atom()
      }
      
  """
  @type script() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_creation_limit_policy() :: %{
        "NewGameSessionsPerCreator" => integer(),
        "PolicyPeriodInMinutes" => integer()
      }
      
  """
  @type resource_creation_limit_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_server() :: %{
        "ClaimStatus" => list(any()),
        "ConnectionInfo" => String.t() | atom(),
        "GameServerData" => String.t() | atom(),
        "GameServerGroupArn" => String.t() | atom(),
        "GameServerGroupName" => String.t() | atom(),
        "GameServerId" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "LastClaimTime" => non_neg_integer(),
        "LastHealthCheckTime" => non_neg_integer(),
        "RegistrationTime" => non_neg_integer(),
        "UtilizationStatus" => list(any())
      }
      
  """
  @type game_server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_player_session_output() :: %{
        "PlayerSession" => player_session()
      }
      
  """
  @type create_player_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type describe_alias_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type describe_game_session_placement_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_game_session_status_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_game_session_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_port_configuration() :: %{
        "ContainerPortRanges" => list(container_port_range())
      }
      
  """
  @type container_port_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_compute_input() :: %{
        optional("CertificatePath") => String.t() | atom(),
        optional("DnsName") => String.t() | atom(),
        optional("IpAddress") => String.t() | atom(),
        optional("Location") => String.t() | atom(),
        required("ComputeName") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type register_compute_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_location_output() :: %{}
      
  """
  @type delete_location_output() :: %{}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_matchmaking_output() :: %{}
      
  """
  @type stop_matchmaking_output() :: %{}

  @typedoc """

  ## Example:
      
      create_alias_input() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("RoutingStrategy") => routing_strategy()
      }
      
  """
  @type create_alias_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_match_backfill_input() :: %{
        optional("GameSessionArn") => String.t() | atom(),
        optional("TicketId") => String.t() | atom(),
        required("ConfigurationName") => String.t() | atom(),
        required("Players") => list(player())
      }
      
  """
  @type start_match_backfill_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_limit() :: %{
        "CurrentInstances" => integer(),
        "EC2InstanceType" => list(any()),
        "InstanceLimit" => integer(),
        "Location" => String.t() | atom()
      }
      
  """
  @type ec2_instance_limit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_compute_auth_token_input() :: %{
        required("ComputeName") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type get_compute_auth_token_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_container_fleets_output() :: %{
        "ContainerFleets" => list(container_fleet()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_container_fleets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_configuration() :: %{
        "TargetValue" => float()
      }
      
  """
  @type target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      launch_template_specification() :: %{
        "LaunchTemplateId" => String.t() | atom(),
        "LaunchTemplateName" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type launch_template_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      claim_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type claim_game_server_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_input() :: %{
        optional("Limit") => integer(),
        optional("Location") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("StatusFilter") => list(any()),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_scaling_policies_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_game_servers_output() :: %{
        "GameServers" => list(game_server()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_game_servers_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_connection_status() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type vpc_peering_connection_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_container_fleet_output() :: %{
        "ContainerFleet" => container_fleet()
      }
      
  """
  @type describe_container_fleet_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_output() :: %{
        "NextToken" => String.t() | atom(),
        "ScalingPolicies" => list(scaling_policy())
      }
      
  """
  @type describe_scaling_policies_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_rule_set_input() :: %{
        required("Name") => String.t() | atom()
      }
      
  """
  @type delete_matchmaking_rule_set_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_build_input() :: %{
        optional("Name") => String.t() | atom(),
        optional("OperatingSystem") => list(any()),
        optional("ServerSdkVersion") => String.t() | atom(),
        optional("StorageLocation") => s3_location(),
        optional("Tags") => list(tag()),
        optional("Version") => String.t() | atom()
      }
      
  """
  @type create_build_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_server_container_definition() :: %{
        "ContainerName" => String.t() | atom(),
        "DependsOn" => list(container_dependency()),
        "EnvironmentOverride" => list(container_environment()),
        "ImageUri" => String.t() | atom(),
        "MountPoints" => list(container_mount_point()),
        "PortConfiguration" => container_port_configuration(),
        "ResolvedImageDigest" => String.t() | atom(),
        "ServerSdkVersion" => String.t() | atom()
      }
      
  """
  @type game_server_container_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_connection() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "GameLiftVpcId" => String.t() | atom(),
        "IpV4CidrBlock" => String.t() | atom(),
        "PeerVpcId" => String.t() | atom(),
        "Status" => vpc_peering_connection_status(),
        "VpcPeeringConnectionId" => String.t() | atom()
      }
      
  """
  @type vpc_peering_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fleet_attributes_output() :: %{
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom()
      }
      
  """
  @type update_fleet_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_build_output() :: %{
        "Build" => build(),
        "StorageLocation" => s3_location(),
        "UploadCredentials" => aws_credentials()
      }
      
  """
  @type create_build_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_details() :: %{
        "LatestDeploymentId" => String.t() | atom()
      }
      
  """
  @type deployment_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_details_output() :: %{
        "GameSessionDetails" => list(game_session_detail()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_game_session_details_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_connection_output() :: %{}
      
  """
  @type create_vpc_peering_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      log_configuration() :: %{
        "LogDestination" => list(any()),
        "LogGroupArn" => String.t() | atom(),
        "S3BucketName" => String.t() | atom()
      }
      
  """
  @type log_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_session_detail() :: %{
        "GameSession" => game_session(),
        "ProtectionPolicy" => list(any())
      }
      
  """
  @type game_session_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type stop_game_session_placement_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_authorizations_input() :: %{}
      
  """
  @type describe_vpc_peering_authorizations_input() :: %{}

  @typedoc """

  ## Example:
      
      describe_container_group_definition_output() :: %{
        "ContainerGroupDefinition" => container_group_definition()
      }
      
  """
  @type describe_container_group_definition_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_game_server_group_input() :: %{
        optional("AutoScalingPolicy") => game_server_group_auto_scaling_policy(),
        optional("BalancingStrategy") => list(any()),
        optional("GameServerProtectionPolicy") => list(any()),
        optional("Tags") => list(tag()),
        optional("VpcSubnets") => list(String.t() | atom()),
        required("GameServerGroupName") => String.t() | atom(),
        required("InstanceDefinitions") => list(instance_definition()),
        required("LaunchTemplate") => launch_template_specification(),
        required("MaxSize") => integer(),
        required("MinSize") => integer(),
        required("RoleArn") => String.t() | atom()
      }
      
  """
  @type create_game_server_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_fleet_actions_input() :: %{
        optional("Location") => String.t() | atom(),
        required("Actions") => list(list(any())()),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type stop_fleet_actions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      certificate_configuration() :: %{
        "CertificateType" => list(any())
      }
      
  """
  @type certificate_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      matchmaking_rule_set() :: %{
        "CreationTime" => non_neg_integer(),
        "RuleSetArn" => String.t() | atom(),
        "RuleSetBody" => String.t() | atom(),
        "RuleSetName" => String.t() | atom()
      }
      
  """
  @type matchmaking_rule_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_compute_input() :: %{
        required("ComputeName") => String.t() | atom(),
        required("FleetId") => String.t() | atom()
      }
      
  """
  @type describe_compute_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_fleet_input() :: %{
        optional("BillingType") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("GameServerContainerGroupDefinitionName") => String.t() | atom(),
        optional("GameServerContainerGroupsPerInstance") => integer(),
        optional("GameSessionCreationLimitPolicy") => game_session_creation_limit_policy(),
        optional("InstanceConnectionPortRange") => connection_port_range(),
        optional("InstanceInboundPermissions") => list(ip_permission()),
        optional("InstanceType") => String.t() | atom(),
        optional("Locations") => list(location_configuration()),
        optional("LogConfiguration") => log_configuration(),
        optional("MetricGroups") => list(String.t() | atom()),
        optional("NewGameSessionProtectionPolicy") => list(any()),
        optional("PerInstanceContainerGroupDefinitionName") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("FleetRoleArn") => String.t() | atom()
      }
      
  """
  @type create_container_fleet_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_game_server_input() :: %{
        optional("ConnectionInfo") => String.t() | atom(),
        optional("GameServerData") => String.t() | atom(),
        required("GameServerGroupName") => String.t() | atom(),
        required("GameServerId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }
      
  """
  @type register_game_server_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_player_sessions_input() :: %{
        optional("PlayerDataMap") => map(),
        required("GameSessionId") => String.t() | atom(),
        required("PlayerIds") => list(String.t() | atom())
      }
      
  """
  @type create_player_sessions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_session_placement() :: %{
        "DnsName" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "GameProperties" => list(game_property()),
        "GameSessionArn" => String.t() | atom(),
        "GameSessionData" => String.t() | atom(),
        "GameSessionId" => String.t() | atom(),
        "GameSessionName" => String.t() | atom(),
        "GameSessionQueueName" => String.t() | atom(),
        "GameSessionRegion" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "MatchmakerData" => String.t() | atom(),
        "MaximumPlayerSessionCount" => integer(),
        "PlacedPlayerSessions" => list(placed_player_session()),
        "PlacementId" => String.t() | atom(),
        "PlayerLatencies" => list(player_latency()),
        "Port" => integer(),
        "PriorityConfigurationOverride" => priority_configuration_override(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type game_session_placement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      game_session() :: %{
        "CreationTime" => non_neg_integer(),
        "CreatorId" => String.t() | atom(),
        "CurrentPlayerSessionCount" => integer(),
        "DnsName" => String.t() | atom(),
        "FleetArn" => String.t() | atom(),
        "FleetId" => String.t() | atom(),
        "GameProperties" => list(game_property()),
        "GameSessionData" => String.t() | atom(),
        "GameSessionId" => String.t() | atom(),
        "IpAddress" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "MatchmakerData" => String.t() | atom(),
        "MaximumPlayerSessionCount" => integer(),
        "Name" => String.t() | atom(),
        "PlayerSessionCreationPolicy" => list(any()),
        "Port" => integer(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type game_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_game_session_output() :: %{
        "GameSession" => game_session()
      }
      
  """
  @type update_game_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_container_fleet_output() :: %{
        "ContainerFleet" => container_fleet()
      }
      
  """
  @type update_container_fleet_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_builds_output() :: %{
        "Builds" => list(build()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_builds_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_script_input() :: %{
        optional("Name") => String.t() | atom(),
        optional("StorageLocation") => s3_location(),
        optional("Tags") => list(tag()),
        optional("Version") => String.t() | atom(),
        optional("ZipFile") => binary()
      }
      
  """
  @type create_script_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_container_fleet_output() :: %{
        "ContainerFleet" => container_fleet()
      }
      
  """
  @type create_container_fleet_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type create_script_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_tracking_configuration() :: %{
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_container_group_definition_input() :: %{
        optional("VersionNumber") => integer(),
        required("Name") => String.t() | atom()
      }
      
  """
  @type describe_container_group_definition_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_configurations_output() :: %{
        "Configurations" => list(matchmaking_configuration()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type describe_matchmaking_configurations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      container_dependency() :: %{
        "Condition" => list(any()),
        "ContainerName" => String.t() | atom()
      }
      
  """
  @type container_dependency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_container_fleets_input() :: %{
        optional("ContainerGroupDefinitionName") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_container_fleets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_instances_input() :: %{
        optional("InstanceIds") => list(String.t() | atom()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("GameServerGroupName") => String.t() | atom()
      }
      
  """
  @type describe_game_server_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminal_routing_strategy_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type terminal_routing_strategy_exception() :: %{(String.t() | atom()) => any()}

  @type accept_match_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type claim_game_server_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | out_of_capacity_exception()
          | unauthorized_exception()

  @type create_alias_errors() ::
          limit_exceeded_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_build_errors() ::
          invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_container_fleet_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_container_group_definition_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_fleet_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_ready_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_fleet_locations_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_ready_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type create_game_server_group_errors() ::
          limit_exceeded_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type create_game_session_errors() ::
          terminal_routing_strategy_exception()
          | limit_exceeded_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | conflict_exception()
          | fleet_capacity_exceeded_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type create_game_session_queue_errors() ::
          limit_exceeded_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_location_errors() ::
          limit_exceeded_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_matchmaking_configuration_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type create_matchmaking_rule_set_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type create_player_session_errors() ::
          terminal_routing_strategy_exception()
          | invalid_game_session_status_exception()
          | game_session_full_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type create_player_sessions_errors() ::
          terminal_routing_strategy_exception()
          | invalid_game_session_status_exception()
          | game_session_full_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type create_script_errors() ::
          invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_vpc_peering_authorization_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type create_vpc_peering_connection_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_alias_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_build_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_container_fleet_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_container_group_definition_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_fleet_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()
          | invalid_fleet_status_exception()

  @type delete_fleet_locations_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_game_session_queue_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_location_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_matchmaking_configuration_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type delete_matchmaking_rule_set_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type delete_scaling_policy_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_script_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type delete_vpc_peering_authorization_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type delete_vpc_peering_connection_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type deregister_compute_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type deregister_game_server_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_alias_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_build_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_compute_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_container_fleet_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_container_group_definition_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_ec2_instance_limits_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_attributes_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_capacity_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_deployment_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_events_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_location_attributes_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_location_capacity_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_location_utilization_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_port_settings_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_utilization_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_server_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_server_instances_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_session_details_errors() ::
          terminal_routing_strategy_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_session_placement_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_session_queues_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_game_sessions_errors() ::
          terminal_routing_strategy_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_instances_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_matchmaking_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type describe_matchmaking_configurations_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type describe_matchmaking_rule_sets_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type describe_player_sessions_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_runtime_configuration_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_scaling_policies_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_script_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_vpc_peering_authorizations_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type describe_vpc_peering_connections_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_compute_access_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_compute_auth_token_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_game_session_log_url_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_instance_access_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_aliases_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_builds_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_compute_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_container_fleets_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_container_group_definition_versions_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_container_group_definitions_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_fleet_deployments_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_fleets_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type list_game_server_groups_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_game_servers_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_locations_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_scripts_errors() ::
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type put_scaling_policy_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type register_compute_errors() ::
          limit_exceeded_exception()
          | not_ready_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type register_game_server_errors() ::
          limit_exceeded_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type request_upload_credentials_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type resolve_alias_errors() ::
          terminal_routing_strategy_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type resume_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type search_game_sessions_errors() ::
          terminal_routing_strategy_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type start_fleet_actions_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type start_game_session_placement_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type start_match_backfill_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type start_matchmaking_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type stop_fleet_actions_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type stop_game_session_placement_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type stop_matchmaking_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type suspend_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type terminate_game_session_errors() ::
          invalid_game_session_status_exception()
          | not_ready_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type update_alias_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_build_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_container_fleet_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_ready_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_container_group_definition_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_fleet_attributes_errors() ::
          limit_exceeded_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type update_fleet_capacity_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type update_fleet_port_settings_errors() ::
          limit_exceeded_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type update_game_server_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_game_server_group_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_game_session_errors() ::
          invalid_game_session_status_exception()
          | not_ready_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_game_session_queue_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type update_matchmaking_configuration_errors() ::
          unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type update_runtime_configuration_errors() ::
          limit_exceeded_exception()
          | not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | invalid_fleet_status_exception()

  @type update_script_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type validate_matchmaking_rule_set_errors() ::
          unsupported_region_exception()
          | invalid_request_exception()
          | internal_service_exception()

  def metadata do
    %{
      api_version: "2015-10-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "gamelift",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "GameLift",
      signature_version: "v4",
      signing_name: "gamelift",
      target_prefix: "GameLift"
    }
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Registers a player's acceptance or rejection of a proposed FlexMatch match.

  A
  matchmaking configuration may require player acceptance; if so, then matches
  built with
  that configuration cannot be completed unless all players accept the proposed
  match
  within a specified time limit.

  When FlexMatch builds a match, all the matchmaking tickets involved in the
  proposed
  match are placed into status `REQUIRES_ACCEPTANCE`. This is a trigger for
  your game to get acceptance from all players in each ticket. Calls to this
  action are only valid
  for tickets that are in this status; calls for tickets not in this status result
  in an
  error.

  To register acceptance, specify the ticket ID, one or more players, and an
  acceptance response.
  When all players have accepted, Amazon GameLift Servers advances the matchmaking
  tickets to status
  `PLACING`, and attempts to create a new game session for the match.

  If any player rejects the match, or if acceptances are not received before a
  specified
  timeout, the proposed match is dropped. Each matchmaking ticket in the failed
  match is handled as follows:

    *
  If the ticket has one or more players who rejected the match or failed to
  respond, the ticket status is set `CANCELLED` and processing is
  terminated.

    *
  If all players in the ticket accepted the match, the ticket
  status is returned to `SEARCHING` to find a new match.

  ## Learn more

  [
  Add FlexMatch to a game
  client](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html)

  [
  FlexMatch
  events](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html)
  (reference)
  """
  @spec accept_match(map(), accept_match_input(), list()) ::
          {:ok, accept_match_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_match_errors()}
  def accept_match(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptMatch", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Locates an available game server and
  temporarily reserves it to host gameplay and players.

  This operation is called from a
  game client or client service (such as a matchmaker) to request hosting
  resources for a
  new game session. In response, Amazon GameLift Servers FleetIQ locates an
  available game server, places it in
  `CLAIMED` status for 60 seconds, and returns connection information that
  players can use to connect to the game server.

  To claim a game server, identify a game server group. You can also specify a
  game
  server ID, although this approach bypasses Amazon GameLift Servers FleetIQ
  placement optimization. Optionally,
  include game data to pass to the game server at the start of a game session,
  such as a
  game map or player information. Add filter options to further restrict how a
  game server is chosen, such as only allowing game servers on `ACTIVE` instances
  to be claimed.

  When a game server is successfully claimed, connection information is returned.
  A
  claimed game server's utilization status remains `AVAILABLE` while the claim
  status is set to `CLAIMED` for up to 60 seconds. This time period gives the
  game server time to update its status to `UTILIZED` after players join. If
  the game server's status is not updated within 60 seconds, the game server
  reverts to
  unclaimed status and is available to be claimed by another request. The claim
  time
  period is a fixed value and is not configurable.

  If you try to claim a specific game server, this request will fail in the
  following
  cases:

    *
  If the game server utilization status is `UTILIZED`.

    *
  If the game server claim status is `CLAIMED`.

    *
  If the game server is running on an instance in `DRAINING` status and
  the provided filter option does not allow placing on `DRAINING` instances.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec claim_game_server(map(), claim_game_server_input(), list()) ::
          {:ok, claim_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, claim_game_server_errors()}
  def claim_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ClaimGameServer", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Creates an alias for a fleet.

  In most situations, you can use an alias ID in place of
  a fleet ID. An alias provides a level of abstraction for a fleet that is useful
  when
  redirecting player traffic from one fleet to another, such as when updating your
  game
  build.

  Amazon GameLift Servers supports two types of routing strategies for aliases:
  simple and terminal. A
  simple alias points to an active fleet. A terminal alias is used to display
  messaging or
  link to a URL instead of routing players to an active fleet. For example, you
  might use
  a terminal alias when a game version is no longer supported and you want to
  direct
  players to an upgrade site.

  To create a fleet alias, specify an alias name, routing strategy, and optional
  description. Each simple alias can point to only one fleet, but a fleet can have
  multiple aliases. If successful, a new alias record is returned, including an
  alias ID
  and an ARN. You can reassign an alias to another fleet by calling
  `UpdateAlias`.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_alias(map(), create_alias_input(), list()) ::
          {:ok, create_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_alias_errors()}
  def create_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAlias", input, options)
  end

  @doc """

  **This API works with the following fleet types:##  EC2, Anywhere

  Creates a new Amazon GameLift Servers build resource for your game server binary
  files.

  Combine game
  server binaries into a zip file for use with Amazon GameLift Servers.

  When setting up a new game build for Amazon GameLift Servers, we recommend using
  the CLI command 
  [upload-build](https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html)  **. This helper command combines two tasks: (1) it
  uploads your build files from a file directory to an Amazon GameLift Servers
  Amazon S3 location, and (2)
  it creates a new build resource.

  You can use the `CreateBuild` operation in the following scenarios:

    *
  Create a new game build with build files that are in an Amazon S3 location under
  an
  Amazon Web Services account that you control. To use this option, you give
  Amazon GameLift Servers access to
  the Amazon S3 bucket. With permissions in place, specify a build name, operating
  system, and the Amazon S3 storage location of your game build.

    *
  Upload your build files to a Amazon GameLift Servers Amazon S3 location. To use
  this option,
  specify a build name and operating system. This operation creates a new build
  resource and also returns an Amazon S3 location with temporary access
  credentials.
  Use the credentials to manually upload your build files to the specified Amazon
  S3
  location. For more information, see [Uploading
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html)
  in
  the *Amazon S3 Developer Guide*. After you upload build files to
  the Amazon GameLift Servers Amazon S3 location, you can't update them.

  If successful, this operation creates a new build resource with a unique build
  ID and
  places it in `INITIALIZED` status. A build must be in `READY`
  status before you can create fleets with it.

  ## Learn more

  [Uploading Your Game](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  [ Create a Build with Files in Amazon S3](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_build(map(), create_build_input(), list()) ::
          {:ok, create_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_build_errors()}
  def create_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBuild", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Creates a managed fleet of Amazon Elastic Compute Cloud (Amazon EC2) instances
  to host your containerized game
  servers.

  Use this operation to define how to deploy a container architecture onto each
  fleet instance and configure fleet settings. You can create a container fleet in
  any
  Amazon Web Services Regions that Amazon GameLift Servers supports for
  multi-location fleets. A container fleet can be
  deployed to a single location or multiple locations. Container fleets are
  deployed with
  Amazon Linux 2023 as the instance operating system.

  Define the fleet's container architecture using container group definitions.
  Each
  fleet can have one of the following container group types:

    *
  The game server container group runs your game server build and dependent
  software. Amazon GameLift Servers
  deploys one or more replicas of this container group to each fleet instance. The
  number of replicas depends on the computing capabilities of the fleet instance
  in use.

    *
  An optional per-instance container group might be used to run other software
  that only needs
  to run once per instance, such as background services, logging, or test
  processes. One per-instance container group is deployed to each fleet instance.

  Each container group can include the definition for one or more containers. A
  container definition specifies a container image that is stored in an Amazon
  Elastic Container Registry (Amazon ECR)
  public or private repository.

  ## Request options

  Use this operation to make the following types of requests. Most fleet settings
  have
  default values, so you can create a working fleet with a minimal configuration
  and
  default values, which you can customize later.

    *
  Create a fleet with no container groups. You can configure a container fleet and
  then add
  container group definitions later. In this scenario, no fleet instances are
  deployed, and the fleet can't host game sessions until you add a game server
  container group definition. Provide the following required parameter
  values:

      *

  `FleetRoleArn`

    *
  Create a fleet with a game server container group. Provide the following
  required parameter
  values:

      *

  `FleetRoleArn`

      *

  `GameServerContainerGroupDefinitionName`

    *
  Create a fleet with a game server container group and a per-instance container
  group. Provide
  the following required parameter values:

      *

  `FleetRoleArn`

      *

  `GameServerContainerGroupDefinitionName`

      *

  `PerInstanceContainerGroupDefinitionName`

  ## Results

  If successful, this operation creates a new container fleet resource, places it
  in
  `PENDING` status, and initiates the [fleet creation workflow](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow).
  For fleets with container groups, this workflow
  starts a fleet deployment and transitions the status to `ACTIVE`. Fleets
  without a container group are placed in `CREATED` status.

  You can update most of the properties of a fleet, including container group
  definitions, and deploy the update across all fleet instances. Use
  [UpdateContainerFleet](https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerFleet.html)  to deploy a new game server version update across the container fleet.

  A managed fleet's runtime environment depends on the Amazon Machine Image (AMI)
  version it uses. When a new fleet is created, Amazon GameLift Servers assigns
  the
  latest available AMI version to the fleet, and all compute instances in that
  fleet
  are deployed with that version. To update the AMI version, you must create a new
  fleet. As a best practice, we recommend replacing your managed fleets every 30
  days to maintain a secure and up-to-date runtime environment for your hosted
  game
  servers. For guidance, see [
  Security best practices for Amazon GameLift
  Servers](https://docs.aws.amazon.com/gameliftservers/latest/developerguide/security-best-practices.html).
  """
  @spec create_container_fleet(map(), create_container_fleet_input(), list()) ::
          {:ok, create_container_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_container_fleet_errors()}
  def create_container_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContainerFleet", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Creates a `ContainerGroupDefinition` that describes a set of containers for
  hosting your game server with Amazon GameLift Servers managed containers
  hosting.

  An Amazon GameLift Servers container group
  is similar to a container task or pod. Use container group definitions when you
  create a
  container fleet with
  [CreateContainerFleet](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerFleet.html).   A container group definition determines how Amazon GameLift Servers deploys your
  containers to each
  instance in a container fleet. You can maintain multiple versions of a container
  group
  definition.

  There are two types of container groups:

    *
  A **game server container group** has the containers that run
  your game server application and supporting software. A game server container
  group can
  have these container types:

      *
  Game server container. This container runs your game server. You can define one
  game server container in a game server container group.

      *
  Support container. This container runs software in parallel with your game
  server.
  You can define up to 8 support containers in a game server group.

  When building a game server container group definition, you can choose to bundle
  your
  game server executable and all dependent software into a single game server
  container.
  Alternatively, you can separate the software into one game server container and
  one or
  more support containers.

  On a container fleet instance, a game server container group can be deployed
  multiple
  times (depending on the compute resources of the instance). This means that all
  containers
  in the container group are replicated together.

    *
  A **per-instance container group** has containers for processes
  that aren't replicated on a container fleet instance. This might include
  background
  services, logging, test processes, or processes that need to persist
  independently of the
  game server container group. When building a per-instance container group, you
  can define
  up to 10 support containers.

  This operation requires Identity and Access Management (IAM) permissions to
  access container images in
  Amazon ECR repositories. See [ IAM permissions
  for Amazon GameLift
  Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-iam-policy-examples.html)
  for help setting the appropriate permissions.

  ## Request options

  Use this operation to make the following types of requests. You can specify
  values for the
  minimum required parameters and customize optional values later.

    *
  Create a game server container group definition. Provide the following required
  parameter values:

      *

  `Name`

      *

  `ContainerGroupType` (`GAME_SERVER`)

      *

  `OperatingSystem` (omit to use default value)

      *

  `TotalMemoryLimitMebibytes` (omit to use default value)

      *

  `TotalVcpuLimit `(omit to use default value)

      *
  At least one `GameServerContainerDefinition`

        *

  `ContainerName`

        *

  `ImageUrl`

        *

  `PortConfiguration`

        *

  `ServerSdkVersion` (omit to use default value)

    *
  Create a per-instance container group definition. Provide the following required
  parameter
  values:

      *

  `Name`

      *

  `ContainerGroupType` (`PER_INSTANCE`)

      *

  `OperatingSystem` (omit to use default value)

      *

  `TotalMemoryLimitMebibytes` (omit to use default value)

      *

  `TotalVcpuLimit `(omit to use default value)

      *
  At least one `SupportContainerDefinition`

        *

  `ContainerName`

        *

  `ImageUrl`

  ## Results

  If successful, this request creates a `ContainerGroupDefinition` resource and
  assigns a unique ARN value. You can update most properties of a container group
  definition by
  calling
  [UpdateContainerGroupDefinition](https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html),
  and optionally save the update as a new version.
  """
  @spec create_container_group_definition(
          map(),
          create_container_group_definition_input(),
          list()
        ) ::
          {:ok, create_container_group_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_container_group_definition_errors()}
  def create_container_group_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContainerGroupDefinition", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Creates a fleet of compute resources to host your game servers.

  Use this operation to
  set up a fleet for the following compute types:

  ## Managed EC2 fleet

  An EC2 fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances.
  Your game server build is
  deployed to each fleet instance. Amazon GameLift Servers manages the fleet's
  instances and controls the
  lifecycle of game server processes, which host game sessions for players. EC2
  fleets can
  have instances in multiple locations. Each instance in the fleet is designated a
  `Compute`.

  To create an EC2 fleet, provide these required parameters:

    *
  Either `BuildId` or `ScriptId`

    *

  `ComputeType` set to `EC2` (the default value)

    *

  `EC2InboundPermissions`

    *

  `EC2InstanceType`

    *

  `FleetType`

    *

  `Name`

    *

  `RuntimeConfiguration` with at least one `ServerProcesses`
  configuration

  If successful, this operation creates a new fleet resource and places it in
  `NEW` status while Amazon GameLift Servers initiates the [fleet creation workflow](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow).
  To debug your fleet, fetch logs, view performance
  metrics or other actions on the fleet, create a development fleet with port
  22/3389
  open. As a best practice, we recommend opening ports for remote access only when
  you
  need them and closing them when you're finished.

  When the fleet status is ACTIVE, you can adjust capacity settings and turn
  autoscaling
  on/off for each location.

  A managed fleet's runtime environment depends on the Amazon Machine Image (AMI)
  version it uses. When a new fleet is created, Amazon GameLift Servers assigns
  the
  latest available AMI version to the fleet, and all compute instances in that
  fleet
  are deployed with that version. To update the AMI version, you must create a new
  fleet. As a best practice, we recommend replacing your managed fleets every 30
  days to maintain a secure and up-to-date runtime environment for your hosted
  game
  servers. For guidance, see [
  Security best practices for Amazon GameLift
  Servers](https://docs.aws.amazon.com/gameliftservers/latest/developerguide/security-best-practices.html).

  ## Anywhere fleet

  An Anywhere fleet represents compute resources that are not owned or managed by
  Amazon GameLift Servers. You might create an Anywhere fleet with your local
  machine for testing, or use
  one to host game servers with on-premises hardware or other game hosting
  solutions.

  To create an Anywhere fleet, provide these required parameters:

    *

  `ComputeType` set to `ANYWHERE`

    *

  `Locations` specifying a custom location

    *

  `Name`

  If successful, this operation creates a new fleet resource and places it in
  `ACTIVE` status. You can register computes with a fleet in
  `ACTIVE` status.

  ## Learn more

  [Setting up fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [Debug fleet creation issues](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation)

  [Multi-location fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec create_fleet(map(), create_fleet_input(), list()) ::
          {:ok, create_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFleet", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Adds remote locations to an EC2 and begins populating the new locations with
  instances.

  The new instances conform to the fleet's instance type, auto-scaling, and
  other configuration settings.

  You can't add remote locations to a fleet that resides in an Amazon Web Services
  Region that
  doesn't support multiple locations. Fleets created prior to March 2021 can't
  support
  multiple locations.

  To add fleet locations, specify the fleet to be updated and provide a list of
  one or
  more locations.

  If successful, this operation returns the list of added locations with their
  status
  set to `NEW`. Amazon GameLift Servers initiates the process of starting an
  instance in each
  added location. You can track the status of each new location by monitoring
  location
  creation events using
  [DescribeFleetEvents](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html). 
  ## Learn more

  [Setting up
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [Update fleet locations](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-editing.html#fleets-update-locations)

  [
  Amazon GameLift Servers service
  locations](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
  for managed hosting.
  """
  @spec create_fleet_locations(map(), create_fleet_locations_input(), list()) ::
          {:ok, create_fleet_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_fleet_locations_errors()}
  def create_fleet_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFleetLocations", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Creates a Amazon GameLift Servers FleetIQ game server
  group for managing game hosting on a collection of Amazon Elastic Compute Cloud
  instances for game hosting.

  This operation creates the game server group, creates an Auto Scaling group in
  your
  Amazon Web Services account, and establishes a link between the two groups. You
  can view the status of
  your game server groups in the Amazon GameLift Servers console. Game server
  group metrics and events are
  emitted to Amazon CloudWatch.

  Before creating a new game server group, you must have the following:

    *
  An Amazon Elastic Compute Cloud launch template that specifies how to launch
  Amazon Elastic Compute Cloud instances
  with your game server build. For more information, see [ Launching an Instance from a Launch
  Template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
  in the
  *Amazon Elastic Compute Cloud User Guide*.

    *
  An IAM role that extends limited access to your Amazon Web Services account to
  allow Amazon GameLift Servers FleetIQ
  to create and interact with the Auto Scaling group. For more information, see
  [Create IAM roles for cross-service
  interaction](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-iam-permissions-roles.html)
  in the *Amazon GameLift Servers FleetIQ Developer
  Guide*.

  To create a new game server group, specify a unique group name, IAM role and
  Amazon Elastic Compute Cloud
  launch template, and provide a list of instance types that can be used in the
  group. You
  must also set initial maximum and minimum limits on the group's instance count.
  You can
  optionally set an Auto Scaling policy with target tracking based on a Amazon
  GameLift Servers FleetIQ
  metric.

  Once the game server group and corresponding Auto Scaling group are created, you
  have
  full access to change the Auto Scaling group's configuration as needed. Several
  properties that are set when creating a game server group, including
  maximum/minimum
  size and auto-scaling policy settings, must be updated directly in the Auto
  Scaling
  group. Keep in mind that some Auto Scaling group properties are periodically
  updated by
  Amazon GameLift Servers FleetIQ as part of its balancing activities to optimize
  for availability and cost.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec create_game_server_group(map(), create_game_server_group_input(), list()) ::
          {:ok, create_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_game_server_group_errors()}
  def create_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGameServerGroup", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Creates a multiplayer game session for players in a specific fleet location.

  This
  operation prompts an available server process to start a game session and
  retrieves
  connection information for the new game session. As an alternative, consider
  using the
  Amazon GameLift Servers game session placement feature with
  [StartGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html), which uses the FleetIQ algorithm and queues to
  optimize the placement process.

  When creating a game session, you specify exactly where you want to place it and
  provide a set of game session configuration settings. The target fleet must be
  in
  `ACTIVE` status.

  You can use this operation in the following ways:

    *
  To create a game session on an instance in a fleet's home Region, provide a
  fleet or alias ID along with your game session configuration.

    *
  To create a game session on an instance in a fleet's remote location, provide
  a fleet or alias ID and a location name, along with your game session
  configuration.

    *
  To create a game session on an instance in an Anywhere fleet, specify the
  fleet's custom location.

  If successful, Amazon GameLift Servers initiates a workflow to start a new game
  session and returns a
  `GameSession` object containing the game session configuration and
  status. When the game session status is `ACTIVE`, it is updated with
  connection information and you can create player sessions for the game session.
  By
  default, newly created game sessions are open to new players. You can restrict
  new
  player access by using
  [UpdateGameSession](https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSession.html)
  to change the game session's player session creation
  policy.

  Amazon GameLift Servers retains logs for active for 14 days. To access the logs,
  call
  [GetGameSessionLogUrl](https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetGameSessionLogUrl.html) to download the log files.

  *Available in Amazon GameLift Servers Local.*

  ## Learn more

  [Start a game
  session](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_game_session(map(), create_game_session_input(), list()) ::
          {:ok, create_game_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_game_session_errors()}
  def create_game_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGameSession", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Creates a placement queue that processes requests for new game sessions.

  A queue uses
  FleetIQ algorithms to locate the best available placement locations for a new
  game
  session, and then prompts the game server process to start a new game session.

  A game session queue is configured with a set of destinations (Amazon GameLift
  Servers fleets or
  aliases) that determine where the queue can place new game sessions. These
  destinations
  can span multiple Amazon Web Services Regions, can use different instance types,
  and can include both
  Spot and On-Demand fleets. If the queue includes multi-location fleets, the
  queue can
  place game sessions in any of a fleet's remote locations.

  You can configure a queue to determine how it selects the best available
  placement for
  a new game session. Queues can prioritize placement decisions based on a
  combination of
  location, hosting cost, and player latency. You can set up the queue to use the
  default
  prioritization or provide alternate instructions using
  `PriorityConfiguration`.

  ## Request options

  Use this operation to make these common types of requests.

    *
  Create a queue with the minimum required parameters.

      *

  `Name`

      *

  `Destinations` (This parameter isn't required, but a queue
  can't make placements without at least one destination.)

    *
  Create a queue with placement notification. Queues that have high placement
  activity must use a notification system, such as with Amazon Simple Notification
  Service (Amazon SNS) or Amazon CloudWatch.

      *
  Required parameters `Name` and
  `Destinations`

      *

  `NotificationTarget`

    *
  Create a queue with custom prioritization settings. These custom settings
  replace the default prioritization configuration for a queue.

      *
  Required parameters `Name` and
  `Destinations`

      *

  `PriorityConfiguration`

    *
  Create a queue with special rules for processing player latency data.

      *
  Required parameters `Name` and
  `Destinations`

      *

  `PlayerLatencyPolicies`

  ## Results

  If successful, this operation returns a new `GameSessionQueue` object with
  an assigned queue ARN. Use the queue's name or ARN when submitting new game
  session
  requests with
  [StartGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html) or
  [StartMatchmaking](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchmaking.html).

  ## Learn more

  [
  Design a game session
  queue](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html)

  [
  Create a game session
  queue](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html)

  ## Related actions

  [CreateGameSessionQueue](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html)  |
  [DescribeGameSessionQueues](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html)

  |
  [UpdateGameSessionQueue](https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html)  |
  [DeleteGameSessionQueue](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteGameSessionQueue.html)

  |
  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_game_session_queue(map(), create_game_session_queue_input(), list()) ::
          {:ok, create_game_session_queue_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_game_session_queue_errors()}
  def create_game_session_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGameSessionQueue", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Anywhere

  Creates a custom location for use in an Anywhere fleet.
  """
  @spec create_location(map(), create_location_input(), list()) ::
          {:ok, create_location_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_location_errors()}
  def create_location(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocation", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Defines a new matchmaking configuration for use with FlexMatch.

  Whether your are using
  FlexMatch with Amazon GameLift Servers hosting or as a standalone matchmaking
  service, the matchmaking
  configuration sets out rules for matching players and forming teams. If you're
  also
  using Amazon GameLift Servers hosting, it defines how to start game sessions for
  each match. Your
  matchmaking system can use multiple configurations to handle different game
  scenarios.
  All matchmaking requests identify the matchmaking configuration to use and
  provide
  player attributes consistent with that configuration.

  To create a matchmaking configuration, you must provide the following:
  configuration
  name and FlexMatch mode (with or without Amazon GameLift Servers hosting); a
  rule set that specifies how
  to evaluate players and find acceptable matches; whether player acceptance is
  required;
  and the maximum time allowed for a matchmaking attempt. When using FlexMatch
  with Amazon GameLift Servers
  hosting, you also need to identify the game session queue to use when starting a
  game
  session for the match.

  In addition, you must set up an Amazon Simple Notification Service topic to
  receive matchmaking notifications.
  Provide the topic ARN in the matchmaking configuration.

  ## Learn more

  [ Design a FlexMatch matchmaker](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html)

  [ Set up FlexMatch event notification](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html)
  """
  @spec create_matchmaking_configuration(map(), create_matchmaking_configuration_input(), list()) ::
          {:ok, create_matchmaking_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_matchmaking_configuration_errors()}
  def create_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMatchmakingConfiguration", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Creates a new rule set for FlexMatch matchmaking.

  A rule set describes the type of match
  to create, such as the number and size of teams. It also sets the parameters for
  acceptable player matches, such as minimum skill level or character type.

  To create a matchmaking rule set, provide unique rule set name and the rule set
  body
  in JSON format. Rule sets must be defined in the same Region as the matchmaking
  configuration they are used with.

  Since matchmaking rule sets cannot be edited, it is a good idea to check the
  rule set
  syntax using
  [ValidateMatchmakingRuleSet](https://docs.aws.amazon.com/gamelift/latest/apireference/API_ValidateMatchmakingRuleSet.html) before creating a new rule set.

  ## Learn more

    *

  [Build a rule
  set](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html)

    *

  [Design a matchmaker](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html)

    *

  [Matchmaking with FlexMatch](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-intro.html)
  """
  @spec create_matchmaking_rule_set(map(), create_matchmaking_rule_set_input(), list()) ::
          {:ok, create_matchmaking_rule_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_matchmaking_rule_set_errors()}
  def create_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMatchmakingRuleSet", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Reserves an open player slot in a game session for a player.

  New player sessions can
  be created in any game session with an open slot that is in `ACTIVE` status
  and has a player creation policy of `ACCEPT_ALL`. You can add a group of
  players to a game session with
  [CreatePlayerSessions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSessions.html) .

  To create a player session, specify a game session ID, player ID, and optionally
  a set
  of player data.

  If successful, a slot is reserved in the game session for the player and a new
  `PlayerSessions` object is returned with a player session ID. The player
  references the player session ID when sending a connection request to the game
  session,
  and the game server can use it to validate the player reservation with the
  Amazon GameLift Servers
  service. Player sessions cannot be updated.

  The maximum number of players per game session is 200. It is not adjustable.

  ## Related actions

  [All APIs by
  task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_player_session(map(), create_player_session_input(), list()) ::
          {:ok, create_player_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_player_session_errors()}
  def create_player_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePlayerSession", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Reserves open slots in a game session for a group of players.

  New player sessions can
  be created in any game session with an open slot that is in `ACTIVE` status
  and has a player creation policy of `ACCEPT_ALL`. To add a single player to a
  game session, use
  [CreatePlayerSession](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSession.html) 
  To create player sessions, specify a game session ID and a list of player IDs.
  Optionally, provide a set of player data for each player ID.

  If successful, a slot is reserved in the game session for each player, and new
  `PlayerSession` objects are returned with player session IDs. Each player
  references their player session ID when sending a connection request to the game
  session, and the game server can use it to validate the player reservation with
  the
  Amazon GameLift Servers service. Player sessions cannot be updated.

  The maximum number of players per game session is 200. It is not adjustable.

  ## Related actions

  [All APIs by
  task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_player_sessions(map(), create_player_sessions_input(), list()) ::
          {:ok, create_player_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_player_sessions_errors()}
  def create_player_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePlayerSessions", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere

  Creates a new script record for your Amazon GameLift Servers Realtime script.

  Realtime scripts are JavaScript that
  provide configuration settings and optional custom game logic for your game. The
  script
  is deployed when you create a Amazon GameLift Servers Realtime fleet to host
  your game sessions. Script logic is
  executed during an active game session.

  To create a new script record, specify a script name and provide the script
  file(s).
  The script files and all dependencies must be zipped into a single file. You can
  pull
  the zip file from either of these locations:

    *
  A locally available directory. Use the *ZipFile* parameter
  for this option.

    *
  An Amazon Simple Storage Service (Amazon S3) bucket under your Amazon Web
  Services account. Use the
  *StorageLocation* parameter for this option. You'll need
  to have an Identity Access Management (IAM) role that allows the Amazon GameLift
  Servers service
  to access your S3 bucket.

  If the call is successful, a new script record is created with a unique script
  ID. If
  the script file is provided as a local file, the file is uploaded to an Amazon
  GameLift Servers-owned S3
  bucket and the script record's storage location reflects this location. If the
  script
  file is provided as an S3 bucket, Amazon GameLift Servers accesses the file at
  this storage location as
  needed for deployment.

  ## Learn more

  [Amazon GameLift Servers Amazon GameLift Servers Realtime](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  [Set Up a Role for Amazon GameLift Servers Access](https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_script(map(), create_script_input(), list()) ::
          {:ok, create_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_script_errors()}
  def create_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScript", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Requests authorization to create or delete a peer connection between the VPC for
  your
  Amazon GameLift Servers fleet and a virtual private cloud (VPC) in your Amazon
  Web Services account.

  VPC peering enables the game servers on
  your fleet to communicate directly with other Amazon Web Services resources.
  After you've received
  authorization, use
  [CreateVpcPeeringConnection](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringConnection.html) to establish the peering connection. For more
  information, see [VPC Peering with Amazon GameLift Servers
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

  You can peer with VPCs that are owned by any Amazon Web Services account you
  have access to,
  including the account that you use to manage your Amazon GameLift Servers
  fleets. You cannot peer with
  VPCs that are in different Regions.

  To request authorization to create a connection, call this operation from the
  Amazon Web Services
  account with the VPC that you want to peer to your Amazon GameLift Servers
  fleet. For example, to enable
  your game servers to retrieve data from a DynamoDB table, use the account that
  manages
  that DynamoDB resource. Identify the following values: (1) The ID of the VPC
  that you
  want to peer with, and (2) the ID of the Amazon Web Services account that you
  use to manage Amazon GameLift Servers. If
  successful, VPC peering is authorized for the specified VPC.

  To request authorization to delete a connection, call this operation from the
  Amazon Web Services
  account with the VPC that is peered with your Amazon GameLift Servers fleet.
  Identify the following
  values: (1) VPC ID that you want to delete the peering connection for, and (2)
  ID of the
  Amazon Web Services account that you use to manage Amazon GameLift Servers.

  The authorization remains valid for 24 hours unless it is canceled. You must
  create or
  delete the peering connection while the authorization is valid.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_vpc_peering_authorization(map(), create_vpc_peering_authorization_input(), list()) ::
          {:ok, create_vpc_peering_authorization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_peering_authorization_errors()}
  def create_vpc_peering_authorization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcPeeringAuthorization", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Establishes a VPC peering connection between a virtual private cloud (VPC) in an
  Amazon Web Services account with the VPC
  for your Amazon GameLift Servers fleet.

  VPC peering enables the game servers on your fleet to communicate
  directly with other Amazon Web Services resources. You can peer with VPCs in any
  Amazon Web Services account that
  you have access to, including the account that you use to manage your Amazon
  GameLift Servers fleets. You
  cannot peer with VPCs that are in different Regions. For more information, see
  [VPC Peering with Amazon GameLift Servers
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

  Before calling this operation to establish the peering connection, you first
  need to
  use
  [CreateVpcPeeringAuthorization](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html) and identify the VPC you want to peer with.
  Once the authorization for the specified VPC is issued, you have 24 hours to
  establish
  the connection. These two operations handle all tasks necessary to peer the two
  VPCs,
  including acceptance, updating routing tables, etc.

  To establish the connection, call this operation from the Amazon Web Services
  account that is used
  to manage the Amazon GameLift Servers fleets. Identify the following values: (1)
  The ID of the fleet you
  want to be enable a VPC peering connection for; (2) The Amazon Web Services
  account with the VPC that
  you want to peer with; and (3) The ID of the VPC you want to peer with. This
  operation
  is asynchronous. If successful, a connection request is created. You can use
  continuous
  polling to track the request's status using
  [DescribeVpcPeeringConnections](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeVpcPeeringConnections.html)
  , or by monitoring fleet events for success
  or failure using
  [DescribeFleetEvents](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html) .

  ## Related actions

  [All APIs by
  task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_vpc_peering_connection(map(), create_vpc_peering_connection_input(), list()) ::
          {:ok, create_vpc_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_peering_connection_errors()}
  def create_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcPeeringConnection", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Deletes an alias.

  This operation removes all record of the alias. Game clients
  attempting to access a server process using the deleted alias receive an error.
  To
  delete an alias, specify the alias ID to be deleted.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec delete_alias(map(), delete_alias_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_alias_errors()}
  def delete_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAlias", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Deletes a build.

  This operation permanently deletes the build resource and any
  uploaded build files. Deleting a build does not affect the status of any active
  fleets
  using the build, but you can no longer create new fleets with the deleted build.

  To delete a build, specify the build ID.

  ## Learn more

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec delete_build(map(), delete_build_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_build_errors()}
  def delete_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBuild", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Deletes all resources and information related to a container fleet and shuts
  down
  currently running fleet instances, including those in remote locations.

  The container
  fleet must be in `ACTIVE` status to be deleted.

  To delete a fleet, specify the fleet ID to be terminated. During the deletion
  process,
  the fleet status is changed to `DELETING`.

  ## Learn more

  [Setting up Amazon GameLift Servers Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec delete_container_fleet(map(), delete_container_fleet_input(), list()) ::
          {:ok, delete_container_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_container_fleet_errors()}
  def delete_container_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContainerFleet", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  ## Request options:

  Deletes a container group definition.

    *
  Delete an entire container group definition, including all versions. Specify the
  container group definition name, or use an ARN value without the version number.

    *
  Delete a particular version. Specify the container group definition name and a
  version
  number, or use an ARN value that includes the version number.

    *
  Keep the newest versions and delete all older versions. Specify the container
  group
  definition name and the number of versions to retain. For example, set
  `VersionCountToRetain` to 5 to delete all but the five most recent
  versions.

  ## Result

  If successful, Amazon GameLift Servers removes the container group definition
  versions that you request deletion for.
  This request will fail for any requested versions if the following is true:

    *
  If the version is being used in an active fleet

    *
  If the version is being deployed to a fleet in a deployment that's currently in
  progress.

    *
  If the version is designated as a rollback definition in a fleet deployment
  that's currently in progress.

  ## Learn more

    *

  [Manage a container group definition](https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html)
  """
  @spec delete_container_group_definition(
          map(),
          delete_container_group_definition_input(),
          list()
        ) ::
          {:ok, delete_container_group_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_container_group_definition_errors()}
  def delete_container_group_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContainerGroupDefinition", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Deletes all resources and information related to a fleet and shuts down any
  currently
  running fleet instances, including those in remote locations.

  If the fleet being deleted has a VPC peering connection, you first need to get a
  valid authorization (good for 24 hours) by calling
  [CreateVpcPeeringAuthorization](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html). You don't need to explicitly delete the
  VPC peering connection.

  To delete a fleet, specify the fleet ID to be terminated. During the deletion
  process,
  the fleet status is changed to `DELETING`. When completed, the status
  switches to `TERMINATED` and the fleet event `FLEET_DELETED` is
  emitted.

  ## Learn more

  [Setting up Amazon GameLift Servers
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec delete_fleet(map(), delete_fleet_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleet", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Removes locations from a multi-location fleet.

  When deleting a location, all game
  server process and all instances that are still active in the location are shut
  down.

  To delete fleet locations, identify the fleet ID and provide a list of the
  locations
  to be deleted.

  If successful, GameLift sets the location status to `DELETING`, and begins
  to shut down existing server processes and terminate instances in each location
  being
  deleted. When completed, the location status changes to `TERMINATED`.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec delete_fleet_locations(map(), delete_fleet_locations_input(), list()) ::
          {:ok, delete_fleet_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fleet_locations_errors()}
  def delete_fleet_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleetLocations", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Terminates a game server group
  and permanently deletes the game server group record.

  You have several options for how
  these resources are impacted when deleting the game server group. Depending on
  the type
  of delete operation selected, this operation might affect these resources:

    *
  The game server group

    *
  The corresponding Auto Scaling group

    *
  All game servers that are currently running in the group

  To delete a game server group, identify the game server group to delete and
  specify
  the type of delete operation to initiate. Game server groups can only be deleted
  if they
  are in `ACTIVE` or `ERROR` status.

  If the delete request is successful, a series of operations are kicked off. The
  game
  server group status is changed to `DELETE_SCHEDULED`, which prevents new game
  servers from being registered and stops automatic scaling activity. Once all
  game
  servers in the game server group are deregistered, Amazon GameLift Servers
  FleetIQ can begin deleting resources.
  If any of the delete operations fail, the game server group is placed in
  `ERROR` status.

  Amazon GameLift Servers FleetIQ emits delete events to Amazon CloudWatch.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec delete_game_server_group(map(), delete_game_server_group_input(), list()) ::
          {:ok, delete_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_game_server_group_errors()}
  def delete_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGameServerGroup", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Deletes a game session queue.

  Once a queue is successfully deleted, unfulfilled
  [StartGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html)
  requests that reference the queue will fail. To
  delete a queue, specify the queue name.
  """
  @spec delete_game_session_queue(map(), delete_game_session_queue_input(), list()) ::
          {:ok, delete_game_session_queue_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_game_session_queue_errors()}
  def delete_game_session_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGameSessionQueue", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Anywhere

  Deletes a custom location.

  Before deleting a custom location, review any fleets currently using the custom
  location and deregister the location if it is in use. For more information, see
  [DeregisterCompute](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeregisterCompute.html).
  """
  @spec delete_location(map(), delete_location_input(), list()) ::
          {:ok, delete_location_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_location_errors()}
  def delete_location(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLocation", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Permanently removes a FlexMatch matchmaking configuration.

  To delete, specify the
  configuration name. A matchmaking configuration cannot be deleted if it is being
  used in
  any active matchmaking tickets.
  """
  @spec delete_matchmaking_configuration(map(), delete_matchmaking_configuration_input(), list()) ::
          {:ok, delete_matchmaking_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_matchmaking_configuration_errors()}
  def delete_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMatchmakingConfiguration", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Deletes an existing matchmaking rule set.

  To delete the rule set, provide the rule set
  name. Rule sets cannot be deleted if they are currently being used by a
  matchmaking
  configuration.

  ## Learn more

    *

  [Build a rule set](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html)
  """
  @spec delete_matchmaking_rule_set(map(), delete_matchmaking_rule_set_input(), list()) ::
          {:ok, delete_matchmaking_rule_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_matchmaking_rule_set_errors()}
  def delete_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMatchmakingRuleSet", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Deletes a fleet scaling policy.

  Once deleted, the policy is no longer in force and
  Amazon GameLift Servers removes all record of it. To delete a scaling policy,
  specify both the scaling
  policy name and the fleet ID it is associated with.

  To temporarily suspend scaling policies, use
  [StopFleetActions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html).
  This operation suspends all policies for the
  fleet.
  """
  @spec delete_scaling_policy(map(), delete_scaling_policy_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scaling_policy_errors()}
  def delete_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScalingPolicy", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Deletes a Realtime script.

  This operation permanently deletes the script record. If
  script files were uploaded, they are also deleted (files stored in an S3 bucket
  are not
  deleted).

  To delete a script, specify the script ID. Before deleting a script, be sure to
  terminate all fleets that are deployed with the script being deleted. Fleet
  instances
  periodically check for script updates, and if the script record no longer
  exists, the
  instance will go into an error state and be unable to host game sessions.

  ## Learn more

  [Amazon GameLift Servers Amazon GameLift Servers Realtime](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec delete_script(map(), delete_script_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_script_errors()}
  def delete_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScript", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Cancels a pending VPC peering authorization for the specified VPC.

  If you need to
  delete an existing VPC peering connection, use
  [DeleteVpcPeeringConnection](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteVpcPeeringConnection.html). 
  ## Related actions

  [All APIs by
  task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec delete_vpc_peering_authorization(map(), delete_vpc_peering_authorization_input(), list()) ::
          {:ok, delete_vpc_peering_authorization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_peering_authorization_errors()}
  def delete_vpc_peering_authorization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcPeeringAuthorization", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Removes a VPC peering connection.

  To delete the connection, you must have a valid
  authorization for the VPC peering connection that you want to delete..

  Once a valid authorization exists, call this operation from the Amazon Web
  Services account that is
  used to manage the Amazon GameLift Servers fleets. Identify the connection to
  delete by the connection ID
  and fleet ID. If successful, the connection is removed.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec delete_vpc_peering_connection(map(), delete_vpc_peering_connection_input(), list()) ::
          {:ok, delete_vpc_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_peering_connection_errors()}
  def delete_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcPeeringConnection", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Anywhere

  Removes a compute resource from an Anywhere fleet.

  Deregistered computes can no longer
  host game sessions through Amazon GameLift Servers. Use this operation with an
  Anywhere fleet that
  doesn't use the Amazon GameLift Servers Agent For Anywhere fleets with the
  Agent, the Agent handles all
  compute registry tasks for you.

  To deregister a compute, call this operation from the compute that's being
  deregistered and specify the compute name and the fleet ID.
  """
  @spec deregister_compute(map(), deregister_compute_input(), list()) ::
          {:ok, deregister_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_compute_errors()}
  def deregister_compute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterCompute", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Removes the game server from a
  game server group.

  As a result of this operation, the deregistered game server can no
  longer be claimed and will not be returned in a list of active game servers.

  To deregister a game server, specify the game server group and game server ID.
  If
  successful, this operation emits a CloudWatch event with termination timestamp
  and
  reason.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec deregister_game_server(map(), deregister_game_server_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_game_server_errors()}
  def deregister_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterGameServer", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves properties for an alias.

  This operation returns all alias metadata and
  settings. To get an alias's target fleet ID only, use `ResolveAlias`.

  To get alias properties, specify the alias ID. If successful, the requested
  alias
  record is returned.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_alias(map(), describe_alias_input(), list()) ::
          {:ok, describe_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_alias_errors()}
  def describe_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAlias", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves properties for a custom game build.

  To request a build resource, specify a
  build ID. If successful, an object containing the build properties is returned.

  ## Learn more

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_build(map(), describe_build_input(), list()) ::
          {:ok, describe_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_build_errors()}
  def describe_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBuild", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves properties for a specific compute resource in an Amazon GameLift
  Servers fleet.

  You can list
  all computes in a fleet by calling
  [ListCompute](https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html).

  ## Request options

  Provide the fleet ID and compute name. The compute name varies depending on the
  type
  of fleet.

    *
  For a compute in a managed EC2 fleet, provide an instance ID. Each instance in
  the fleet is a compute.

    *
  For a compute in a managed container fleet, provide a compute name. In a
  container fleet, each game server container group on a fleet instance is
  assigned a compute name.

    *
  For a compute in an Anywhere fleet, provide a registered compute name.
  Anywhere fleet computes are created when you register a hosting resource with
  the fleet.

  ## Results

  If successful, this operation returns details for the requested compute
  resource.
  Depending on the fleet's compute type, the result includes the following
  information:

    *
  For a managed EC2 fleet, this operation returns information about the EC2
  instance.

    *
  For an Anywhere fleet, this operation returns information about the registered
  compute.
  """
  @spec describe_compute(map(), describe_compute_input(), list()) ::
          {:ok, describe_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_compute_errors()}
  def describe_compute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCompute", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Retrieves the properties for a container fleet.

  When requesting attributes for
  multiple fleets, use the pagination parameters to retrieve results as a set of
  sequential pages.

  ## Request options

    *
  Get container fleet properties for a single fleet. Provide either the fleet ID
  or ARN value.

  ## Results

  If successful, a `ContainerFleet` object is returned. This object includes
  the fleet properties, including information about the most recent deployment.

  Some API operations limit the number of fleet IDs that allowed in one request.
  If
  a request exceeds this limit, the request fails and the error message contains
  the
  maximum allowed number.
  """
  @spec describe_container_fleet(map(), describe_container_fleet_input(), list()) ::
          {:ok, describe_container_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_container_fleet_errors()}
  def describe_container_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContainerFleet", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Retrieves the properties of a container group definition, including all
  container
  definitions in the group.

  ## Request options:

    *
  Retrieve the latest version of a container group definition. Specify the
  container
  group definition name only, or use an ARN value without a version number.

    *
  Retrieve a particular version. Specify the container group definition name and a
  version number, or use an ARN value that includes the version number.

  ## Results:

  If successful, this operation returns the complete properties of a container
  group
  definition version.

  ## Learn more

    *

  [Manage a container group definition](https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html)
  """
  @spec describe_container_group_definition(
          map(),
          describe_container_group_definition_input(),
          list()
        ) ::
          {:ok, describe_container_group_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_container_group_definition_errors()}
  def describe_container_group_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeContainerGroupDefinition", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves the instance limits and current utilization for an Amazon Web Services
  Region or location.

  Instance limits control the number of instances, per instance type, per
  location, that
  your Amazon Web Services account can use. Learn more at [Amazon EC2 Instance Types](http://aws.amazon.com/ec2/instance-types/). The information
  returned includes the maximum number of instances allowed and your account's
  current
  usage across all fleets. This information can affect your ability to scale your
  Amazon GameLift Servers
  fleets. You can request a limit increase for your account by using the **Service
  limits** page in the Amazon GameLift Servers console.

  Instance limits differ based on whether the instances are deployed in a fleet's
  home
  Region or in a remote location. For remote locations, limits also differ based
  on the
  combination of home Region and remote location. All requests must specify an
  Amazon Web Services
  Region (either explicitly or as your default settings). To get the limit for a
  remote
  location, you must also specify the location. For example, the following
  requests all
  return different results:

    *
  Request specifies the Region `ap-northeast-1` with no location. The
  result is limits and usage data on all instance types that are deployed in
  `us-east-2`, by all of the fleets that reside in
  `ap-northeast-1`.

    *
  Request specifies the Region `us-east-1` with location
  `ca-central-1`. The result is limits and usage data on all
  instance types that are deployed in `ca-central-1`, by all of the
  fleets that reside in `us-east-2`. These limits do not affect fleets
  in any other Regions that deploy instances to `ca-central-1`.

    *
  Request specifies the Region `eu-west-1` with location
  `ca-central-1`. The result is limits and usage data on all
  instance types that are deployed in `ca-central-1`, by all of the
  fleets that reside in `eu-west-1`.

  This operation can be used in the following ways:

    *
  To get limit and usage data for all instance types that are deployed in an
  Amazon Web Services Region by fleets that reside in the same Region: Specify the
  Region only.
  Optionally, specify a single instance type to retrieve information for.

    *
  To get limit and usage data for all instance types that are deployed to a
  remote location by fleets that reside in different Amazon Web Services Region:
  Provide both
  the Amazon Web Services Region and the remote location. Optionally, specify a
  single instance
  type to retrieve information for.

  If successful, an `EC2InstanceLimits` object is returned with limits and
  usage data for each requested instance type.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_ec2_instance_limits(map(), describe_ec2_instance_limits_input(), list()) ::
          {:ok, describe_ec2_instance_limits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_ec2_instance_limits_errors()}
  def describe_ec2_instance_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEC2InstanceLimits", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves core fleet-wide properties for fleets in an Amazon Web Services
  Region.

  Properties include the computing
  hardware and deployment configuration for instances in the fleet.

  You can use this operation in the following ways:

    *
  To get attributes for specific fleets, provide a list of fleet IDs or fleet
  ARNs.

    *
  To get attributes for all fleets, do not provide a fleet identifier.

  When requesting attributes for multiple fleets, use the pagination parameters to
  retrieve results as a set of sequential pages.

  If successful, a `FleetAttributes` object is returned for each fleet
  requested, unless the fleet identifier is not found.

  Some API operations limit the number of fleet IDs that allowed in one request.
  If
  a request exceeds this limit, the request fails and the error message contains
  the
  maximum allowed number.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_fleet_attributes(map(), describe_fleet_attributes_input(), list()) ::
          {:ok, describe_fleet_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_attributes_errors()}
  def describe_fleet_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetAttributes", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Retrieves the resource capacity settings for one or more fleets.

  For a container
  fleet, this operation also returns counts for game server container groups.

  With multi-location fleets, this operation retrieves data for the fleet's home
  Region
  only. To retrieve capacity for remote locations, see
  [https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html). 
  This operation can be used in the following ways:

    *
  To get capacity data for one or more specific fleets, provide a list of fleet
  IDs or fleet ARNs.

    *
  To get capacity data for all fleets, do not provide a fleet identifier.

  When requesting multiple fleets, use the pagination parameters to retrieve
  results as
  a set of sequential pages.

  If successful, a `FleetCapacity` object is returned for each requested
  fleet ID. Each `FleetCapacity` object includes a `Location`
  property, which is set to the fleet's home Region. Capacity values are returned
  only for
  fleets that currently exist.

  Some API operations may limit the number of fleet IDs that are allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message
  includes the maximum allowed.

  ## Learn more

  [Setting up Amazon GameLift Servers
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [GameLift metrics for fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)
  """
  @spec describe_fleet_capacity(map(), describe_fleet_capacity_input(), list()) ::
          {:ok, describe_fleet_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_capacity_errors()}
  def describe_fleet_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetCapacity", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Retrieves information about a managed container fleet deployment.

  ## Request options

    *
  Get information about the latest deployment for a specific fleet. Provide the
  fleet ID or ARN.

    *
  Get information about a specific deployment. Provide the fleet ID or ARN and
  the deployment ID.

  ## Results

  If successful, a `FleetDeployment` object is returned.
  """
  @spec describe_fleet_deployment(map(), describe_fleet_deployment_input(), list()) ::
          {:ok, describe_fleet_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_deployment_errors()}
  def describe_fleet_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetDeployment", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves entries from a fleet's event log.

  Fleet events are initiated by changes in
  status, such as during fleet creation and termination, changes in capacity, etc.
  If a
  fleet has multiple locations, events are also initiated by changes to status and
  capacity in remote locations.

  You can specify a time range to limit the result set. Use the pagination
  parameters to
  retrieve results as a set of sequential pages.

  If successful, a collection of event log entries matching the request are
  returned.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_fleet_events(map(), describe_fleet_events_input(), list()) ::
          {:ok, describe_fleet_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_events_errors()}
  def describe_fleet_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetEvents", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Retrieves information on a fleet's remote locations, including life-cycle status
  and
  any suspended fleet activity.

  This operation can be used in the following ways:

    *
  To get data for specific locations, provide a fleet identifier and a list of
  locations. Location data is returned in the order that it is requested.

    *
  To get data for all locations, provide a fleet identifier only. Location data
  is returned in no particular order.

  When requesting attributes for multiple locations, use the pagination parameters
  to
  retrieve results as a set of sequential pages.

  If successful, a `LocationAttributes` object is returned for each requested
  location. If the fleet does not have a requested location, no information is
  returned.
  This operation does not return the home Region. To get information on a fleet's
  home
  Region, call `DescribeFleetAttributes`.

  ## Learn more

  [Setting up Amazon GameLift Servers
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [
  Amazon GameLift Servers service
  locations](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
  for managed hosting
  """
  @spec describe_fleet_location_attributes(
          map(),
          describe_fleet_location_attributes_input(),
          list()
        ) ::
          {:ok, describe_fleet_location_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_location_attributes_errors()}
  def describe_fleet_location_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetLocationAttributes", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Retrieves the resource capacity settings for a fleet location.

  The data returned
  includes the current capacity (number of EC2 instances) and some scaling
  settings for
  the requested fleet location. For a managed container fleet, this operation also
  returns counts
  for game server container groups.

  Use this operation to retrieve capacity information for a fleet's remote
  location or
  home Region (you can also retrieve home Region capacity by calling
  `DescribeFleetCapacity`).

  To retrieve capacity data, identify a fleet and location.

  If successful, a `FleetCapacity` object is returned for the requested fleet
  location.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [ Amazon GameLift Servers service locations](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
  for managed hosting

  [GameLift metrics for fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)
  """
  @spec describe_fleet_location_capacity(map(), describe_fleet_location_capacity_input(), list()) ::
          {:ok, describe_fleet_location_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_location_capacity_errors()}
  def describe_fleet_location_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetLocationCapacity", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves current usage data for a fleet location.

  Utilization data provides a
  snapshot of current game hosting activity at the requested location. Use this
  operation
  to retrieve utilization information for a fleet's remote location or home Region
  (you
  can also retrieve home Region utilization by calling
  `DescribeFleetUtilization`).

  To retrieve utilization data, identify a fleet and location.

  If successful, a `FleetUtilization` object is returned for the requested
  fleet location.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [ Amazon GameLift Servers service locations](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
  for managed hosting

  [GameLift metrics for fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)
  """
  @spec describe_fleet_location_utilization(
          map(),
          describe_fleet_location_utilization_input(),
          list()
        ) ::
          {:ok, describe_fleet_location_utilization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_location_utilization_errors()}
  def describe_fleet_location_utilization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetLocationUtilization", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Retrieves a fleet's inbound connection permissions.

  Connection permissions specify IP
  addresses and port settings that incoming traffic can use to access server
  processes in
  the fleet. Game server processes that are running in the fleet must use a port
  that
  falls within this range.

  Use this operation in the following ways:

    *
  To retrieve the port settings for a fleet, identify the fleet's unique
  identifier.

    *
  To check the status of recent updates to a fleet remote location, specify the
  fleet ID and a location. Port setting updates can take time to propagate across
  all locations.

  If successful, a set of `IpPermission` objects is returned for the
  requested fleet ID. When specifying a location, this operation returns a pending
  status.
  If the requested fleet has been deleted, the result set is empty.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_fleet_port_settings(map(), describe_fleet_port_settings_input(), list()) ::
          {:ok, describe_fleet_port_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_port_settings_errors()}
  def describe_fleet_port_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetPortSettings", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Retrieves utilization statistics for one or more fleets.

  Utilization data provides a
  snapshot of how the fleet's hosting resources are currently being used. For
  fleets with
  remote locations, this operation retrieves data for the fleet's home Region
  only. See
  [DescribeFleetLocationUtilization](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationUtilization.html) to get utilization statistics for a
  fleet's remote locations.

  This operation can be used in the following ways:

    *
  To get utilization data for one or more specific fleets, provide a list of
  fleet IDs or fleet ARNs.

    *
  To get utilization data for all fleets, do not provide a fleet identifier.

  When requesting multiple fleets, use the pagination parameters to retrieve
  results as
  a set of sequential pages.

  If successful, a
  [FleetUtilization](https://docs.aws.amazon.com/gamelift/latest/apireference/API_FleetUtilization.html)
  object is returned for each requested fleet ID, unless the
  fleet identifier is not found. Each fleet utilization object includes a
  `Location` property, which is set to the fleet's home Region.

  Some API operations may limit the number of fleet IDs allowed in one request. If
  a
  request exceeds this limit, the request fails and the error message includes the
  maximum allowed.

  ## Learn more

  [Setting up Amazon GameLift Servers Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [GameLift Metrics for Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)
  """
  @spec describe_fleet_utilization(map(), describe_fleet_utilization_input(), list()) ::
          {:ok, describe_fleet_utilization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fleet_utilization_errors()}
  def describe_fleet_utilization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetUtilization", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Retrieves information for a
  registered game server.

  Information includes game server status, health check info, and
  the instance that the game server is running on.

  To retrieve game server information, specify the game server ID. If successful,
  the
  requested game server object is returned.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec describe_game_server(map(), describe_game_server_input(), list()) ::
          {:ok, describe_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_game_server_errors()}
  def describe_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameServer", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Retrieves information on a
  game server group.

  This operation returns only properties related to Amazon GameLift Servers
  FleetIQ. To view or
  update properties for the corresponding Auto Scaling group, such as launch
  template,
  auto scaling policies, and maximum/minimum group size, access the Auto Scaling
  group
  directly.

  To get attributes for a game server group, provide a group name or ARN value. If
  successful, a `GameServerGroup` object is returned.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec describe_game_server_group(map(), describe_game_server_group_input(), list()) ::
          {:ok, describe_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_game_server_group_errors()}
  def describe_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameServerGroup", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Retrieves status
  information about the Amazon EC2 instances associated with a Amazon GameLift
  Servers FleetIQ game server group.

  Use this operation to detect when instances are active or not available to host
  new game
  servers.

  To request status for all instances in the game server group, provide a game
  server
  group ID only. To request status for specific instances, provide the game server
  group
  ID and one or more instance IDs. Use the pagination parameters to retrieve
  results in
  sequential segments. If successful, a collection of `GameServerInstance`
  objects is returned.

  This operation is not designed to be called with every game server claim
  request; this
  practice can cause you to exceed your API limit, which results in errors.
  Instead, as a
  best practice, cache the results and refresh your cache no more than once every
  10
  seconds.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec describe_game_server_instances(map(), describe_game_server_instances_input(), list()) ::
          {:ok, describe_game_server_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_game_server_instances_errors()}
  def describe_game_server_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameServerInstances", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves additional game session properties, including the game session
  protection
  policy in force, a set of one or more game sessions in a specific fleet
  location.

  You
  can optionally filter the results by current game session status.

  This operation can be used in the following ways:

    *
  To retrieve details for all game sessions that are currently running on all
  locations in a fleet, provide a fleet or alias ID, with an optional status
  filter. This approach returns details from the fleet's home Region and all
  remote locations.

    *
  To retrieve details for all game sessions that are currently running on a
  specific fleet location, provide a fleet or alias ID and a location name, with
  optional status filter. The location can be the fleet's home Region or any
  remote location.

    *
  To retrieve details for a specific game session, provide the game session ID.
  This approach looks for the game session ID in all fleets that reside in the
  Amazon Web Services Region defined in the request.

  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, a `GameSessionDetail` object is returned for each game
  session that matches the request.

  ## Learn more

  [Find a game session](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_game_session_details(map(), describe_game_session_details_input(), list()) ::
          {:ok, describe_game_session_details_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_game_session_details_errors()}
  def describe_game_session_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameSessionDetails", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves information, including current status, about a game session placement
  request.

  To get game session placement details, specify the placement ID.

  This operation is not designed to be continually called to track game session
  status.
  This practice can cause you to exceed your API limit, which results in errors.
  Instead,
  you must configure an Amazon Simple Notification Service (SNS) topic to receive
  notifications from FlexMatch or
  queues. Continuously polling with `DescribeGameSessionPlacement` should only
  be used for games in development with low game session usage.
  """
  @spec describe_game_session_placement(map(), describe_game_session_placement_input(), list()) ::
          {:ok, describe_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_game_session_placement_errors()}
  def describe_game_session_placement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameSessionPlacement", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves the properties for one or more game session queues.

  When requesting multiple
  queues, use the pagination parameters to retrieve results as a set of sequential
  pages.
  When specifying a list of queues, objects are returned only for queues that
  currently
  exist in the Region.

  ## Learn more

  [
  View Your
  Queues](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html)
  """
  @spec describe_game_session_queues(map(), describe_game_session_queues_input(), list()) ::
          {:ok, describe_game_session_queues_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_game_session_queues_errors()}
  def describe_game_session_queues(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameSessionQueues", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves a set of one or more game sessions in a specific fleet location.

  You can
  optionally filter the results by current game session status.

  This operation can be used in the following ways:

    *
  To retrieve all game sessions that are currently running on all locations in a
  fleet, provide a fleet or alias ID, with an optional status filter. This
  approach returns all game sessions in the fleet's home Region and all remote
  locations.

    *
  To retrieve all game sessions that are currently running on a specific fleet
  location, provide a fleet or alias ID and a location name, with optional status
  filter. The location can be the fleet's home Region or any remote
  location.

    *
  To retrieve a specific game session, provide the game session ID. This
  approach looks for the game session ID in all fleets that reside in the Amazon
  Web Services
  Region defined in the request.

  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, a `GameSession` object is returned for each game session
  that matches the request.

  This operation is not designed to be continually called to track game session
  status.
  This practice can cause you to exceed your API limit, which results in errors.
  Instead,
  you must configure an Amazon Simple Notification Service (SNS) topic to receive
  notifications from FlexMatch or
  queues. Continuously polling with `DescribeGameSessions` should only be used
  for games in development with low game session usage.

  *Available in Amazon GameLift Servers Local.*

  ## Learn more

  [Find a game session](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_game_sessions(map(), describe_game_sessions_input(), list()) ::
          {:ok, describe_game_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_game_sessions_errors()}
  def describe_game_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameSessions", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves information about the EC2 instances in an Amazon GameLift Servers
  managed fleet, including
  instance ID, connection data, and status.

  You can use this operation with a
  multi-location fleet to get location-specific instance information. As an
  alternative,
  use the operations
  [https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute](https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute) and
  [https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute)
  to retrieve information for compute resources, including EC2 and Anywhere
  fleets.

  You can call this operation in the following ways:

    *
  To get information on all instances in a fleet's home Region, specify the
  fleet ID.

    *
  To get information on all instances in a fleet's remote location, specify the
  fleet ID and location name.

    *
  To get information on a specific instance in a fleet, specify the fleet ID and
  instance ID.

  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, this operation returns `Instance` objects for each requested
  instance, listed in no particular order. If you call this operation for an
  Anywhere
  fleet, you receive an InvalidRequestException.

  ## Learn more

  [Remotely connect to fleet
  instances](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html)

  [Debug fleet issues](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_instances(map(), describe_instances_input(), list()) ::
          {:ok, describe_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instances_errors()}
  def describe_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstances", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves one or more matchmaking tickets.

  Use this operation to retrieve ticket
  information, including--after a successful match is made--connection information
  for the
  resulting new game session.

  To request matchmaking tickets, provide a list of up to 10 ticket IDs. If the
  request
  is successful, a ticket object is returned for each requested ID that currently
  exists.

  This operation is not designed to be continually called to track matchmaking
  ticket
  status. This practice can cause you to exceed your API limit, which results in
  errors.
  Instead, as a best practice, set up an Amazon Simple Notification Service to
  receive notifications, and provide
  the topic ARN in the matchmaking configuration.

  ## Learn more

  [
  Add FlexMatch to a game
  client](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html)

  [ Set Up FlexMatch event notification](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html)
  """
  @spec describe_matchmaking(map(), describe_matchmaking_input(), list()) ::
          {:ok, describe_matchmaking_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_matchmaking_errors()}
  def describe_matchmaking(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMatchmaking", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves the details of FlexMatch matchmaking configurations.

  This operation offers the following options: (1) retrieve all matchmaking
  configurations, (2) retrieve configurations for a specified list, or (3)
  retrieve all
  configurations that use a specified rule set name. When requesting multiple
  items, use
  the pagination parameters to retrieve results as a set of sequential pages.

  If successful, a configuration is returned for each requested name. When
  specifying a
  list of names, only configurations that currently exist are returned.

  ## Learn more

  [ Setting up FlexMatch matchmakers](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/matchmaker-build.html)
  """
  @spec describe_matchmaking_configurations(
          map(),
          describe_matchmaking_configurations_input(),
          list()
        ) ::
          {:ok, describe_matchmaking_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_matchmaking_configurations_errors()}
  def describe_matchmaking_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMatchmakingConfigurations", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves the details for FlexMatch matchmaking rule sets.

  You can request all existing
  rule sets for the Region, or provide a list of one or more rule set names. When
  requesting multiple items, use the pagination parameters to retrieve results as
  a set of
  sequential pages. If successful, a rule set is returned for each requested name.

  ## Learn more

    *

  [Build a rule set](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html)
  """
  @spec describe_matchmaking_rule_sets(map(), describe_matchmaking_rule_sets_input(), list()) ::
          {:ok, describe_matchmaking_rule_sets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_matchmaking_rule_sets_errors()}
  def describe_matchmaking_rule_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMatchmakingRuleSets", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves properties for one or more player sessions.

  This action can be used in the following ways:

    *
  To retrieve a specific player session, provide the player session ID
  only.

    *
  To retrieve all player sessions in a game session, provide the game session ID
  only.

    *
  To retrieve all player sessions for a specific player, provide a player ID
  only.

  To request player sessions, specify either a player session ID, game session ID,
  or
  player ID. You can filter this request by player session status. If you provide
  a specific `PlayerSessionId` or `PlayerId`, Amazon GameLift Servers ignores the
  filter criteria.
  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, a `PlayerSession` object is returned for each session that
  matches the request.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_player_sessions(map(), describe_player_sessions_input(), list()) ::
          {:ok, describe_player_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_player_sessions_errors()}
  def describe_player_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePlayerSessions", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves a fleet's runtime configuration settings.

  The runtime configuration
  determines which server processes run, and how, on computes in the fleet. For
  managed
  EC2 fleets, the runtime configuration describes server processes that run on
  each fleet
  instance. You can update a fleet's runtime configuration at any time using
  [UpdateRuntimeConfiguration](https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateRuntimeConfiguration.html). 
  To get the current runtime configuration for a fleet, provide the fleet ID.

  If successful, a `RuntimeConfiguration` object is returned for the
  requested fleet. If the requested fleet has been deleted, the result set is
  empty.

  ## Learn more

  [Setting up Amazon GameLift Servers
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [Running multiple processes on a
  fleet](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html)
  """
  @spec describe_runtime_configuration(map(), describe_runtime_configuration_input(), list()) ::
          {:ok, describe_runtime_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_runtime_configuration_errors()}
  def describe_runtime_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRuntimeConfiguration", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves all scaling policies applied to a fleet.

  To get a fleet's scaling policies, specify the fleet ID. You can filter this
  request
  by policy status, such as to retrieve only active scaling policies. Use the
  pagination
  parameters to retrieve results as a set of sequential pages. If successful, set
  of
  `ScalingPolicy` objects is returned for the fleet.

  A fleet may have all of its scaling policies suspended. This operation does not
  affect
  the status of the scaling policies, which remains ACTIVE.
  """
  @spec describe_scaling_policies(map(), describe_scaling_policies_input(), list()) ::
          {:ok, describe_scaling_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scaling_policies_errors()}
  def describe_scaling_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingPolicies", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves properties for a Realtime script.

  To request a script record, specify the script ID. If successful, an object
  containing
  the script properties is returned.

  ## Learn more

  [Amazon GameLift Servers Amazon GameLift Servers Realtime](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_script(map(), describe_script_input(), list()) ::
          {:ok, describe_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_script_errors()}
  def describe_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScript", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves valid VPC peering authorizations that are pending for the Amazon Web
  Services account.

  This operation returns all VPC peering authorizations and requests for peering.
  This
  includes those initiated and received by this account.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_vpc_peering_authorizations(
          map(),
          describe_vpc_peering_authorizations_input(),
          list()
        ) ::
          {:ok, describe_vpc_peering_authorizations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vpc_peering_authorizations_errors()}
  def describe_vpc_peering_authorizations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcPeeringAuthorizations", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves information on VPC peering connections.

  Use this operation to get peering
  information for all fleets or for one specific fleet ID.

  To retrieve connection information, call this operation from the Amazon Web
  Services account that is
  used to manage the Amazon GameLift Servers fleets. Specify a fleet ID or leave
  the parameter empty to
  retrieve all connection records. If successful, the retrieved information
  includes both
  active and pending connections. Active connections identify the IpV4 CIDR block
  that the
  VPC uses to connect.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_vpc_peering_connections(map(), describe_vpc_peering_connections_input(), list()) ::
          {:ok, describe_vpc_peering_connections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vpc_peering_connections_errors()}
  def describe_vpc_peering_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcPeeringConnections", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Requests authorization to remotely connect to a hosting resource in a Amazon
  GameLift Servers managed
  fleet.

  This operation is not used with Amazon GameLift Servers Anywhere fleets.

  ## Request options

  Provide the fleet ID and compute name. The compute name varies depending on the
  type
  of fleet.

    *
  For a compute in a managed EC2 fleet, provide an instance ID. Each instance in
  the fleet is a compute.

    *
  For a compute in a managed container fleet, provide a compute name. In a
  container fleet, each game server container group on a fleet instance is
  assigned a compute name.

  ## Results

  If successful, this operation returns a set of temporary Amazon Web Services
  credentials, including
  a two-part access key and a session token.

    *
  With a managed EC2 fleet (where compute type is `EC2`), use these
  credentials with Amazon EC2 Systems Manager (SSM) to start a session with the
  compute. For more
  details, see [ Starting a session (CLI)](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html#sessions-start-cli)
  in the *Amazon EC2 Systems Manager User
  Guide*.
  """
  @spec get_compute_access(map(), get_compute_access_input(), list()) ::
          {:ok, get_compute_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_compute_access_errors()}
  def get_compute_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComputeAccess", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Requests an authentication token from Amazon GameLift Servers for a compute
  resource in an Amazon GameLift Servers
  fleet.

  Game servers that are running on the compute use this token to communicate
  with the Amazon GameLift Servers service, such as when calling the Amazon
  GameLift Servers server SDK action
  `InitSDK()`. Authentication tokens are valid for a limited time span, so
  you need to request a fresh token before the current token expires.

  ## Request options

    *
  For managed EC2 fleets (compute type `EC2`), auth token retrieval
  and refresh is handled automatically. All game servers that are running on all
  fleet instances have access to a valid auth token.

    *
  For Anywhere fleets (compute type `ANYWHERE`), if you're using the
  Amazon GameLift Servers Agent, auth token retrieval and refresh is handled
  automatically for any
  compute where the Agent is running. If you're not using
  the Agent, create a mechanism to retrieve and refresh auth tokens for computes
  that are running game server processes.

  ## Learn more

    *

  [Create an Anywhere
  fleet](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-anywhere.html)

    *

  [Test your integration](https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing.html)

    *

  [Server SDK reference
  guides](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html)
  (for version 5.x)
  """
  @spec get_compute_auth_token(map(), get_compute_auth_token_input(), list()) ::
          {:ok, get_compute_auth_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_compute_auth_token_errors()}
  def get_compute_auth_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComputeAuthToken", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves the location of stored game session logs for a specified game session
  on
  Amazon GameLift Servers managed fleets.

  When a game session is terminated, Amazon GameLift Servers automatically stores
  the logs in Amazon S3 and retains them for 14 days. Use this URL to download the
  logs.

  See the [Amazon Web Services Service Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift)
  page for maximum log file sizes. Log files that exceed this limit
  are not saved.

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec get_game_session_log_url(map(), get_game_session_log_url_input(), list()) ::
          {:ok, get_game_session_log_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_game_session_log_url_errors()}
  def get_game_session_log_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGameSessionLogUrl", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Requests authorization to remotely connect to an instance in an Amazon GameLift
  Servers managed fleet.

  Use this operation to connect to instances with game servers that use Amazon
  GameLift Servers server SDK
  4.x or earlier. To connect to instances with game servers that use server SDK
  5.x or
  later, call
  [https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess](https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess).   To request access to an instance, specify IDs for the instance and the fleet it
  belongs to. You can retrieve instance IDs for a fleet by calling
  [DescribeInstances](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeInstances.html)
  with the fleet ID.

  If successful, this operation returns an IP address and credentials. The
  returned
  credentials match the operating system of the instance, as follows:

    *
  For a Windows instance: returns a user name and secret (password) for use with
  a Windows Remote Desktop client.

    *
  For a Linux instance: returns a user name and secret (RSA private key) for use
  with an SSH client. You must save the secret to a `.pem` file. If
  you're using the CLI, see the example [ Get credentials for a Linux instance](https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess.html#API_GetInstanceAccess_Examples)
  for tips on automatically
  saving the secret to a `.pem` file.

  ## Learn more

  [Remotely connect to fleet
  instances](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html)

  [Debug fleet issues](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec get_instance_access(map(), get_instance_access_input(), list()) ::
          {:ok, get_instance_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_access_errors()}
  def get_instance_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstanceAccess", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves all aliases for this Amazon Web Services account.

  You can filter the result set by alias
  name and/or routing strategy type. Use the pagination parameters to retrieve
  results in
  sequential pages.

  Returned aliases are not listed in any particular order.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec list_aliases(map(), list_aliases_input(), list()) ::
          {:ok, list_aliases_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_aliases_errors()}
  def list_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAliases", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves build resources for all builds associated with the Amazon Web Services
  account in use.

  You
  can limit results to builds that are in a specific status by using the
  `Status` parameter. Use the pagination parameters to retrieve results in

  Build resources are not listed in any particular order.

  ## Learn more

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec list_builds(map(), list_builds_input(), list()) ::
          {:ok, list_builds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_builds_errors()}
  def list_builds(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuilds", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves information on the compute resources in an Amazon GameLift Servers
  fleet.

  Use the pagination
  parameters to retrieve results in a set of sequential pages.

  ## Request options

    *
  Retrieve a list of all computes in a fleet. Specify a fleet ID.

    *
  Retrieve a list of all computes in a specific fleet location. Specify a fleet
  ID and location.

  ## Results

  If successful, this operation returns information on a set of computes.
  Depending on
  the type of fleet, the result includes the following information:

    *
  For a managed EC2 fleet (compute type `EC2`), this operation
  returns information about the EC2 instance. Compute names are EC2 instance
  IDs.

    *
  For an Anywhere fleet (compute type `ANYWHERE`), this operation
  returns compute names and details from when the compute was registered with
  `RegisterCompute`. This includes
  `GameLiftServiceSdkEndpoint` or
  `GameLiftAgentEndpoint`.
  """
  @spec list_compute(map(), list_compute_input(), list()) ::
          {:ok, list_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_compute_errors()}
  def list_compute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCompute", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Retrieves a collection of container fleet resources in an Amazon Web Services
  Region.

  For fleets
  that have multiple locations, this operation retrieves fleets based on their
  home Region
  only.

  ## Request options

    *
  Get a list of all fleets. Call this operation without specifying a container
  group definition.

    *
  Get a list of fleets filtered by container group definition. Provide the
  container group definition name or ARN value.

    *
  To get a list of all Amazon GameLift Servers Realtime fleets with a specific
  configuration script,
  provide the script ID.

  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, this operation returns a collection of container fleets that
  match the request
  parameters. A NextToken value is also returned if there are more result pages to
  retrieve.

  Fleet IDs are returned in no particular order.
  """
  @spec list_container_fleets(map(), list_container_fleets_input(), list()) ::
          {:ok, list_container_fleets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_container_fleets_errors()}
  def list_container_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContainerFleets", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Retrieves all versions of a container group definition.

  Use the pagination parameters to
  retrieve results in a set of sequential pages.

  ## Request options:

    *
  Get all versions of a specified container group definition. Specify the
  container
  group definition name or ARN value. (If the ARN value has a version number, it's
  ignored.)

  ## Results:

  If successful, this operation returns the complete properties of a set of
  container group
  definition versions that match the request.

  This operation returns the list of container group definitions in descending
  version
  order (latest first).

  ## Learn more

    *

  [Manage a container group definition](https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html)
  """
  @spec list_container_group_definition_versions(
          map(),
          list_container_group_definition_versions_input(),
          list()
        ) ::
          {:ok, list_container_group_definition_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_container_group_definition_versions_errors()}
  def list_container_group_definition_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContainerGroupDefinitionVersions", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Retrieves container group definitions for the Amazon Web Services account and
  Amazon Web Services Region.

  Use the pagination parameters to retrieve results in a set of sequential
  pages.

  This operation returns only the latest version of each definition. To retrieve
  all
  versions of a container group definition, use
  [ListContainerGroupDefinitionVersions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitionVersions.html).

  ## Request options:

    *
  Retrieve the most recent versions of all container group definitions.

    *
  Retrieve the most recent versions of all container group definitions, filtered
  by
  type. Specify the container group type to filter on.

  ## Results:

  If successful, this operation returns the complete properties of a set of
  container group
  definition versions that match the request.

  This operation returns the list of container group definitions in no particular
  order.
  """
  @spec list_container_group_definitions(map(), list_container_group_definitions_input(), list()) ::
          {:ok, list_container_group_definitions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_container_group_definitions_errors()}
  def list_container_group_definitions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContainerGroupDefinitions", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Retrieves a collection of container fleet deployments in an Amazon Web Services
  Region.

  Use the
  pagination parameters to retrieve results as a set of sequential pages.

  ## Request options

    *
  Get a list of all deployments. Call this operation without specifying a fleet
  ID.

    *
  Get a list of all deployments for a fleet. Specify the container fleet ID or ARN
  value.

  ## Results

  If successful, this operation returns a list of deployments that match the
  request
  parameters. A NextToken value is also returned if there are more result pages to
  retrieve.

  Deployments are returned starting with the latest.
  """
  @spec list_fleet_deployments(map(), list_fleet_deployments_input(), list()) ::
          {:ok, list_fleet_deployments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fleet_deployments_errors()}
  def list_fleet_deployments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFleetDeployments", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves a collection of fleet resources in an Amazon Web Services Region.

  You can filter the
  result set to find only those fleets that are deployed with a specific build or
  script.
  For fleets that have multiple locations, this operation retrieves fleets based
  on their
  home Region only.

  You can use operation in the following ways:

    *
  To get a list of all fleets in a Region, don't provide a build or script
  identifier.

    *
  To get a list of all fleets where a specific game build is deployed, provide
  the build ID.

    *
  To get a list of all Amazon GameLift Servers Realtime fleets with a specific
  configuration script,
  provide the script ID.

  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, this operation returns a list of fleet IDs that match the request
  parameters. A NextToken value is also returned if there are more result pages to
  retrieve.

  Fleet IDs are returned in no particular order.
  """
  @spec list_fleets(map(), list_fleets_input(), list()) ::
          {:ok, list_fleets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fleets_errors()}
  def list_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFleets", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Lists a game server groups.
  """
  @spec list_game_server_groups(map(), list_game_server_groups_input(), list()) ::
          {:ok, list_game_server_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_game_server_groups_errors()}
  def list_game_server_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGameServerGroups", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Retrieves information on all game
  servers that are currently active in a specified game server group.

  You can opt to sort
  the list by game server age. Use the pagination parameters to retrieve results
  in a set
  of sequential segments.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec list_game_servers(map(), list_game_servers_input(), list()) ::
          {:ok, list_game_servers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_game_servers_errors()}
  def list_game_servers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGameServers", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Anywhere

  Lists all custom and Amazon Web Services locations where Amazon GameLift Servers
  can host game servers.

  Note that if you call this API using a location that doesn't have a service
  endpoint,
  such as one that can only be a remote location in a multi-location fleet, the
  API
  returns an error.

  Consult the table of supported locations in [Amazon GameLift Servers service locations](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
  to identify home Regions that support single and multi-location
  fleets.

  ## Learn more

  [Service locations](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html)
  """
  @spec list_locations(map(), list_locations_input(), list()) ::
          {:ok, list_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_locations_errors()}
  def list_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLocations", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves script records for all Realtime scripts that are associated with the
  Amazon Web Services
  account in use.

  ## Learn more

  [Amazon GameLift Servers Amazon GameLift Servers Realtime](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec list_scripts(map(), list_scripts_input(), list()) ::
          {:ok, list_scripts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scripts_errors()}
  def list_scripts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListScripts", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves all tags assigned to a Amazon GameLift Servers resource.

  Use resource tags to organize Amazon Web Services
  resources for a range of purposes. This operation handles the permissions
  necessary to
  manage tags for Amazon GameLift Servers resources that support tagging.

  To list tags for a resource, specify the unique ARN value for the resource.

  ## Learn more

  [Tagging Amazon Web Services Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*

  [
  Amazon Web Services Tagging
  Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Creates or updates a scaling policy for a fleet.

  Scaling policies are used to
  automatically scale a fleet's hosting capacity to meet player demand. An active
  scaling
  policy instructs Amazon GameLift Servers to track a fleet metric and
  automatically change the fleet's
  capacity when a certain threshold is reached. There are two types of scaling
  policies:
  target-based and rule-based. Use a target-based policy to quickly and
  efficiently manage
  fleet scaling; this option is the most commonly used. Use rule-based policies
  when you
  need to exert fine-grained control over auto-scaling.

  Fleets can have multiple scaling policies of each type in force at the same
  time; you
  can have one target-based policy, one or multiple rule-based scaling policies,
  or both.
  We recommend caution, however, because multiple auto-scaling policies can have
  unintended consequences.

  Learn more about how to work with auto-scaling in [Set Up Fleet Automatic Scaling](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html).

  ## Target-based policy

  A target-based policy tracks a single metric: PercentAvailableGameSessions. This
  metric tells us how much of a fleet's hosting capacity is ready to host game
  sessions
  but is not currently in use. This is the fleet's buffer; it measures the
  additional
  player demand that the fleet could handle at current capacity. With a
  target-based
  policy, you set your ideal buffer size and leave it to Amazon GameLift Servers
  to take whatever action is
  needed to maintain that target.

  For example, you might choose to maintain a 10% buffer for a fleet that has the
  capacity to host 100 simultaneous game sessions. This policy tells Amazon
  GameLift Servers to take action
  whenever the fleet's available capacity falls below or rises above 10 game
  sessions.
  Amazon GameLift Servers will start new instances or stop unused instances in
  order to return to the 10%
  buffer.

  To create or update a target-based policy, specify a fleet ID and name, and set
  the
  policy type to "TargetBased". Specify the metric to track
  (PercentAvailableGameSessions)
  and reference a `TargetConfiguration` object with your desired buffer value.
  Exclude all other parameters. On a successful request, the policy name is
  returned. The
  scaling policy is automatically in force as soon as it's successfully created.
  If the
  fleet's auto-scaling actions are temporarily suspended, the new policy will be
  in force
  once the fleet actions are restarted.

  ## Rule-based policy

  A rule-based policy tracks specified fleet metric, sets a threshold value, and
  specifies the type of action to initiate when triggered. With a rule-based
  policy, you
  can select from several available fleet metrics. Each policy specifies whether
  to scale
  up or scale down (and by how much), so you need one policy for each type of
  action.

  For example, a policy may make the following statement: "If the percentage of
  idle
  instances is greater than 20% for more than 15 minutes, then reduce the fleet
  capacity
  by 10%."

  A policy's rule statement has the following structure:

  If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by `[ScalingAdjustment]`.   To implement the example, the rule statement would look like this:

  If `[PercentIdleInstances]` is `[GreaterThanThreshold]` `[20]` for `[15]` minutes, then `[PercentChangeInCapacity]` to/by `[10]`.

  To create or update a scaling policy, specify a unique combination of name and
  fleet
  ID, and set the policy type to "RuleBased". Specify the parameter values for a
  policy
  rule statement. On a successful request, the policy name is returned. Scaling
  policies
  are automatically in force as soon as they're successfully created. If the
  fleet's
  auto-scaling actions are temporarily suspended, the new policy will be in force
  once the
  fleet actions are restarted.
  """
  @spec put_scaling_policy(map(), put_scaling_policy_input(), list()) ::
          {:ok, put_scaling_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_scaling_policy_errors()}
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutScalingPolicy", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Anywhere, Container

  Registers a compute resource in an Amazon GameLift Servers Anywhere fleet.

  For an Anywhere fleet that's running the Amazon GameLift Servers Agent, the
  Agent
  handles all compute registry tasks for you. For an Anywhere fleet that doesn't
  use the
  Agent, call this operation to register fleet computes.

  To register a compute, give the compute a name (must be unique within the
  fleet) and specify the compute resource's DNS name or IP address. Provide a
  fleet ID and a fleet location to associate with the compute being registered.
  You can
  optionally include the path to a TLS certificate on the compute resource.

  If successful, this operation returns compute details, including an Amazon
  GameLift Servers SDK
  endpoint or Agent endpoint. Game server processes running on the compute can use
  this
  endpoint to communicate with the Amazon GameLift Servers service. Each server
  process includes the SDK
  endpoint in its call to the Amazon GameLift Servers server SDK action
  `InitSDK()`.

  To view compute details, call
  [DescribeCompute](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute.html) with the compute name.

  ## Learn more

    *

  [Create an
  Anywhere
  fleet](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-anywhere.html)

    *

  [Test your integration](https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing.html)

    *

  [Server SDK reference
  guides](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html)
  (for version 5.x)
  """
  @spec register_compute(map(), register_compute_input(), list()) ::
          {:ok, register_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_compute_errors()}
  def register_compute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterCompute", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Creates a new game server
  resource and notifies Amazon GameLift Servers FleetIQ that the game server is
  ready to host gameplay and players.

  This operation is called by a game server process that is running on an instance
  in a
  game server group. Registering game servers enables Amazon GameLift Servers
  FleetIQ to track available game
  servers and enables game clients and services to claim a game server for a new
  game
  session.

  To register a game server, identify the game server group and instance where the
  game
  server is running, and provide a unique identifier for the game server. You can
  also
  include connection and game server data.

  Once a game server is successfully registered, it is put in status
  `AVAILABLE`. A request to register a game server may fail if the instance
  it is running on is in the process of shutting down as part of instance
  balancing or
  scale-down activity.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec register_game_server(map(), register_game_server_input(), list()) ::
          {:ok, register_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_game_server_errors()}
  def register_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterGameServer", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Retrieves a fresh set of credentials for use when uploading a new set of game
  build
  files to Amazon GameLift Servers's Amazon S3.

  This is done as part of the build creation process; see
  [CreateBuild](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateBuild.html). 
  To request new credentials, specify the build ID as returned with an initial
  `CreateBuild` request. If successful, a new set of credentials are
  returned, along with the S3 storage location associated with the build ID.

  ## Learn more

  [ Create a Build with Files in
  S3](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec request_upload_credentials(map(), request_upload_credentials_input(), list()) ::
          {:ok, request_upload_credentials_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, request_upload_credentials_errors()}
  def request_upload_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RequestUploadCredentials", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Attempts to retrieve a fleet ID that is associated with an alias.

  Specify a unique
  alias identifier.

  If the alias has a `SIMPLE` routing strategy, Amazon GameLift Servers returns a
  fleet ID.
  If the alias has a `TERMINAL` routing strategy, the result is a
  `TerminalRoutingStrategyException`.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec resolve_alias(map(), resolve_alias_input(), list()) ::
          {:ok, resolve_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resolve_alias_errors()}
  def resolve_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResolveAlias", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Reinstates activity on a game
  server group after it has been suspended.

  A game server group might be suspended by the
  [SuspendGameServerGroup](gamelift/latest/apireference/API_SuspendGameServerGroup.html) operation, or it might be suspended involuntarily
  due to a configuration problem. In the second case, you can manually resume
  activity on
  the group once the configuration problem has been resolved. Refer to the game
  server
  group status and status reason for more information on why group activity is
  suspended.

  To resume activity, specify a game server group ARN and the type of activity to
  be
  resumed. If successful, a `GameServerGroup` object is returned showing that
  the resumed activity is no longer listed in `SuspendedActions`.

  ## Learn more

  [Amazon GameLift Servers FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec resume_game_server_group(map(), resume_game_server_group_input(), list()) ::
          {:ok, resume_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_game_server_group_errors()}
  def resume_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeGameServerGroup", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Retrieves all active game sessions that match a set of search criteria and sorts
  them
  into a specified order.

  This operation is not designed to continually track game session status because
  that practice can cause you to exceed your API limit and generate errors.
  Instead, configure an Amazon Simple Notification Service (Amazon SNS) topic to
  receive notifications from a matchmaker or a game session placement queue.

  When searching for game sessions, you specify exactly where you want to search
  and
  provide a search filter expression, a sort expression, or both. A search request
  can
  search only one fleet, but it can search all of a fleet's locations.

  This operation can be used in the following ways:

    *
  To search all game sessions that are currently running on all locations in a
  fleet, provide a fleet or alias ID. This approach returns game sessions in the
  fleet's home Region and all remote locations that fit the search
  criteria.

    *
  To search all game sessions that are currently running on a specific fleet
  location, provide a fleet or alias ID and a location name. For location, you can
  specify a fleet's home Region or any remote location.

  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, a `GameSession` object is returned for each game session
  that matches the request. Search finds game sessions that are in `ACTIVE`
  status only. To retrieve information on game sessions in other statuses, use
  [DescribeGameSessions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessions.html).   To set search and sort criteria, create a filter expression using the following
  game session attributes. For game session search examples, see the Examples
  section of this topic.

    *

  **gameSessionId** -- A unique identifier for the game session. You can use
  either a
  `GameSessionId` or `GameSessionArn` value.

    *

  **gameSessionName** -- Name assigned to a game
  session. Game session names do not need to be unique to a game session.

    *

  **gameSessionProperties** -- A set of key-value pairs that can store custom data
  in a game session.
  For example: `{"Key": "difficulty", "Value": "novice"}`.
  The filter expression must specify the
  [https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameProperty](https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameProperty)
  -- a `Key` and a string `Value` to search for the game sessions.

  For example, to search for the above key-value pair, specify the following
  search filter: `gameSessionProperties.difficulty = "novice"`.
  All game property values are searched as strings.

  For examples of searching game sessions, see the ones below, and also see
  [Search game sessions by game property](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-search).

    *

  **maximumSessions** -- Maximum number of player
  sessions allowed for a game session.

    *

  **creationTimeMillis** -- Value indicating when a
  game session was created. It is expressed in Unix time as milliseconds.

    *

  **playerSessionCount** -- Number of players
  currently connected to a game session. This value changes rapidly as players
  join the session or drop out.

    *

  **hasAvailablePlayerSessions** -- Boolean value
  indicating whether a game session has reached its maximum number of players. It
  is highly recommended that all search requests include this filter attribute to
  optimize search performance and return only sessions that players can join.

  Returned values for `playerSessionCount` and
  `hasAvailablePlayerSessions` change quickly as players join sessions
  and others drop out. Results should be considered a snapshot in time. Be sure to
  refresh search results often, and handle sessions that fill up before a player
  can
  join.

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec search_game_sessions(map(), search_game_sessions_input(), list()) ::
          {:ok, search_game_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_game_sessions_errors()}
  def search_game_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchGameSessions", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Resumes certain types of activity on fleet instances that were suspended with
  [StopFleetActions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html).  For multi-location fleets, fleet actions are managed
  separately for each location. Currently, this operation is used to restart a
  fleet's
  auto-scaling activity.

  This operation can be used in the following ways:

    *
  To restart actions on instances in the fleet's home Region, provide a fleet ID
  and the type of actions to resume.

    *
  To restart actions on instances in one of the fleet's remote locations,
  provide a fleet ID, a location name, and the type of actions to resume.

  If successful, Amazon GameLift Servers once again initiates scaling events as
  triggered by the fleet's
  scaling policies. If actions on the fleet location were never stopped, this
  operation
  will have no effect.

  ## Learn more

  [Setting up Amazon GameLift Servers
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec start_fleet_actions(map(), start_fleet_actions_input(), list()) ::
          {:ok, start_fleet_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_fleet_actions_errors()}
  def start_fleet_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFleetActions", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Makes a request to start a new game session using a game session queue.

  When
  processing a placement request, Amazon GameLift Servers looks for the best
  possible available resource to
  host the game session, based on how the queue is configured to prioritize
  factors such
  as resource cost, latency, and location. After selecting an available resource,
  Amazon GameLift Servers
  prompts the resource to start a game session. A placement request can include a
  list of
  players to create a set of player sessions. The request can also include
  information to
  pass to the new game session, such as to specify a game map or other options.

  ## Request options

  Use this operation to make the following types of requests.

    *
  Request a placement using the queue's default prioritization process (see the
  default prioritization described in
  [PriorityConfiguration](https://docs.aws.amazon.com/gamelift/latest/apireference/API_PriorityConfiguration.html)). Include these required parameters:

      *

  `GameSessionQueueName`

      *

  `MaximumPlayerSessionCount`

      *

  `PlacementID`

    *
  Request a placement and prioritize based on latency. Include these
  parameters:

      *
  Required parameters `GameSessionQueueName`,
  `MaximumPlayerSessionCount`,
  `PlacementID`.

      *

  `PlayerLatencies`. Include a set of latency values for
  destinations in the queue. When a request includes latency data, Amazon GameLift
  Servers
  automatically reorder the queue's locations priority list based on
  lowest available latency values. If a request includes latency data for
  multiple players, Amazon GameLift Servers calculates each location's average
  latency for
  all players and reorders to find the lowest latency across all players.

      *
  Don't include `PriorityConfigurationOverride`.

      *
  Prioritize based on a custom list of locations. If you're using a
  queue that's configured to prioritize location first (see
  [PriorityConfiguration](https://docs.aws.amazon.com/gamelift/latest/apireference/API_PriorityConfiguration.html)
  for game session queues), you can
  optionally use the *PriorityConfigurationOverride*
  parameter to substitute a different location priority list for this
  placement request. Amazon GameLift Servers searches each location on the
  priority
  override list to find an available hosting resource for the new game
  session. Specify a fallback strategy to use in the event that Amazon GameLift
  Servers
  fails to place the game session in any of the locations on the override
  list.

    *
  Request a placement and prioritized based on a custom list of locations.

    *
  You can request new player sessions for a group of players. Include the
  *DesiredPlayerSessions* parameter and include at minimum
  a unique player ID for each. You can also include player-specific data to pass
  to the new game session.

  ## Result

  If successful, this operation generates a new game session placement request and
  adds
  it to the game session queue for processing. You can track the status of
  individual
  placement requests by calling
  [DescribeGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionPlacement.html)
  or by monitoring queue notifications. When the
  request status is `FULFILLED`, a new game session has started and the
  placement request is updated with connection information for the game session
  (IP
  address and port). If the request included player session data, Amazon GameLift
  Servers creates a player
  session for each player ID in the request.

  The request results in a `InvalidRequestException` in the following
  situations:

    *
  If the request includes both *PlayerLatencies* and
  *PriorityConfigurationOverride* parameters.

    *
  If the request includes the *PriorityConfigurationOverride*
  parameter and specifies a queue that doesn't prioritize locations.

  Amazon GameLift Servers continues to retry each placement request until it
  reaches the queue's timeout
  setting. If a request times out, you can resubmit the request to the same queue
  or try a
  different queue.
  """
  @spec start_game_session_placement(map(), start_game_session_placement_input(), list()) ::
          {:ok, start_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_game_session_placement_errors()}
  def start_game_session_placement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartGameSessionPlacement", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Finds new players to fill open slots in currently running game sessions.

  The backfill
  match process is essentially identical to the process of forming new matches.
  Backfill
  requests use the same matchmaker that was used to make the original match, and
  they
  provide matchmaking data for all players currently in the game session.
  FlexMatch uses
  this information to select new players so that backfilled match continues to
  meet the
  original match requirements.

  When using FlexMatch with Amazon GameLift Servers managed hosting, you can
  request a backfill match from
  a client service by calling this operation with a `GameSessions` ID. You also
  have the option of making backfill requests directly from your game server. In
  response
  to a request, FlexMatch creates player sessions for the new players, updates the
  `GameSession` resource, and sends updated matchmaking data to the game
  server. You can request a backfill match at any point after a game session is
  started.
  Each game session can have only one active backfill request at a time; a
  subsequent
  request automatically replaces the earlier request.

  When using FlexMatch as a standalone component, request a backfill match by
  calling this
  operation without a game session identifier. As with newly formed matches,
  matchmaking
  results are returned in a matchmaking event so that your game can update the
  game
  session that is being backfilled.

  To request a backfill match, specify a unique ticket ID, the original
  matchmaking
  configuration, and matchmaking data for all current players in the game session
  being
  backfilled. Optionally, specify the `GameSession` ARN. If successful, a match
  backfill ticket is created and returned with status set to QUEUED. Track the
  status of
  backfill tickets using the same method for tracking tickets for new matches.

  Only game sessions created by FlexMatch are supported for match backfill.

  ## Learn more

  [
  Backfill existing games with
  FlexMatch](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html)

  [
  Matchmaking
  events](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html)
  (reference)

  [
  How Amazon GameLift Servers FlexMatch
  works](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html)
  """
  @spec start_match_backfill(map(), start_match_backfill_input(), list()) ::
          {:ok, start_match_backfill_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_match_backfill_errors()}
  def start_match_backfill(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMatchBackfill", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Uses FlexMatch to create a game match for a group of players based on custom
  matchmaking
  rules.

  With games that use Amazon GameLift Servers managed hosting, this operation also
  triggers Amazon GameLift Servers
  to find hosting resources and start a new game session for the new match. Each
  matchmaking request includes information on one or more players and specifies
  the
  FlexMatch matchmaker to use. When a request is for multiple players, FlexMatch
  attempts to
  build a match that includes all players in the request, placing them in the same
  team
  and finding additional players as needed to fill the match.

  To start matchmaking, provide a unique ticket ID, specify a matchmaking
  configuration,
  and include the players to be matched. You must also include any player
  attributes that
  are required by the matchmaking configuration's rule set. If successful, a
  matchmaking
  ticket is returned with status set to `QUEUED`.

  Track matchmaking events to respond as needed and acquire game session
  connection
  information for successfully completed matches. Ticket status updates are
  tracked using
  event notification through Amazon Simple Notification Service, which is defined
  in the matchmaking
  configuration.

  ## Learn more

  [
  Add FlexMatch to a game
  client](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html)

  [ Set Up FlexMatch event notification](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html)

  [
  How Amazon GameLift Servers FlexMatch
  works](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html)
  """
  @spec start_matchmaking(map(), start_matchmaking_input(), list()) ::
          {:ok, start_matchmaking_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_matchmaking_errors()}
  def start_matchmaking(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMatchmaking", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Suspends certain types of activity in a fleet location.

  Currently, this operation is
  used to stop auto-scaling activity. For multi-location fleets, fleet actions are
  managed
  separately for each location.

  Stopping fleet actions has several potential purposes. It allows you to
  temporarily
  stop auto-scaling activity but retain your scaling policies for use in the
  future. For
  multi-location fleets, you can set up fleet-wide auto-scaling, and then opt out
  of it
  for certain locations.

  This operation can be used in the following ways:

    *
  To stop actions on instances in the fleet's home Region, provide a fleet ID
  and the type of actions to suspend.

    *
  To stop actions on instances in one of the fleet's remote locations, provide a
  fleet ID, a location name, and the type of actions to suspend.

  If successful, Amazon GameLift Servers no longer initiates scaling events except
  in response to manual
  changes using
  [UpdateFleetCapacity](https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html). To restart fleet actions again, call
  [StartFleetActions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartFleetActions.html).

  ## Learn more

  [Setting up Amazon GameLift Servers Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec stop_fleet_actions(map(), stop_fleet_actions_input(), list()) ::
          {:ok, stop_fleet_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_fleet_actions_errors()}
  def stop_fleet_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopFleetActions", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Cancels a game session placement that's in `PENDING` status.

  To stop a
  placement, provide the placement ID value.

  Results

  If successful, this operation removes the placement request from the queue and
  moves
  the `GameSessionPlacement` to `CANCELLED` status.

  This operation results in an `InvalidRequestExecption` (400) error if a
  game session has already been created for this placement. You can clean up an
  unneeded
  game session by calling
  [TerminateGameSession](https://docs.aws.amazon.com/gamelift/latest/apireference/API_TerminateGameSession).
  """
  @spec stop_game_session_placement(map(), stop_game_session_placement_input(), list()) ::
          {:ok, stop_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_game_session_placement_errors()}
  def stop_game_session_placement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopGameSessionPlacement", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Cancels a matchmaking ticket or match backfill ticket that is currently being
  processed.

  To stop the matchmaking operation, specify the ticket ID. If successful, work
  on the ticket is stopped, and the ticket status is changed to
  `CANCELLED`.

  This call is also used to turn off automatic backfill for an individual game
  session.
  This is for game sessions that are created with a matchmaking configuration that
  has
  automatic backfill enabled. The ticket ID is included in the `MatchmakerData`
  of an updated game session object, which is provided to the game server.

  If the operation is successful, the service sends back an empty JSON struct with
  the HTTP 200 response (not an empty HTTP body).

  ## Learn more

  [
  Add FlexMatch to a game
  client](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html)
  """
  @spec stop_matchmaking(map(), stop_matchmaking_input(), list()) ::
          {:ok, stop_matchmaking_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_matchmaking_errors()}
  def stop_matchmaking(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopMatchmaking", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Temporarily stops activity on
  a game server group without terminating instances or the game server group.

  You can
  restart activity by calling
  [ResumeGameServerGroup](gamelift/latest/apireference/API_ResumeGameServerGroup.html). You can suspend the following activity:

    *

  **Instance type replacement** - This activity
  evaluates the current game hosting viability of all Spot instance types that are
  defined for the game server group. It updates the Auto Scaling group to remove
  nonviable Spot Instance types, which have a higher chance of game server
  interruptions. It then balances capacity across the remaining viable Spot
  Instance types. When this activity is suspended, the Auto Scaling group
  continues with its current balance, regardless of viability. Instance
  protection, utilization metrics, and capacity scaling activities continue to be
  active.

  To suspend activity, specify a game server group ARN and the type of activity to
  be
  suspended. If successful, a `GameServerGroup` object is returned showing that
  the activity is listed in `SuspendedActions`.

  ## Learn more

  [Amazon GameLift Servers FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec suspend_game_server_group(map(), suspend_game_server_group_input(), list()) ::
          {:ok, suspend_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, suspend_game_server_group_errors()}
  def suspend_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SuspendGameServerGroup", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Assigns a tag to an Amazon GameLift Servers resource.

  You can use tags to organize resources, create
  IAM permissions policies to manage access to groups of resources, customize
  Amazon Web Services cost
  breakdowns, and more. This operation handles the permissions necessary to manage
  tags
  for Amazon GameLift Servers resources that support tagging.

  To add a tag to a resource, specify the unique ARN value for the resource and
  provide
  a tag list containing one or more tags. The operation succeeds even if the list
  includes
  tags that are already assigned to the resource.

  ## Learn more

  [Tagging Amazon Web Services Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*

  [
  Amazon Web Services Tagging
  Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Ends a game session that's currently in progress.

  Use this action to terminate any
  game session that isn't in `ERROR` status. Terminating a game session is the
  most efficient way to free up a server process when it's hosting a game session
  that's
  in a bad state or not ending properly. You can use this action to terminate a
  game
  session that's being hosted on any type of Amazon GameLift Servers fleet
  compute, including computes for
  managed EC2, managed container, and Anywhere fleets. The game server must be
  integrated
  with Amazon GameLift Servers server SDK 5.x or greater.

  ## Request options

  Request termination for a single game session. Provide the game session ID and
  the
  termination mode. There are two potential methods for terminating a game
  session:

    *
  Initiate a graceful termination using the normal game session shutdown
  sequence. With this mode, the Amazon GameLift Servers service prompts the server
  process that's
  hosting the game session by calling the server SDK callback method
  `OnProcessTerminate()`. The callback implementation is part of
  the custom game server code. It might involve a variety of actions to gracefully
  end a game session, such as notifying players, before stopping the server
  process.

    *
  Force an immediate game session termination. With this mode, the Amazon GameLift
  Servers
  service takes action to stop the server process, which ends the game session
  without the normal game session shutdown sequence.

  ## Results

  If successful, game session termination is initiated. During this activity, the
  game
  session status is changed to `TERMINATING`. When completed, the server
  process that was hosting the game session has been stopped and replaced with a
  new
  server process that's ready to host a new game session. The old game session's
  status is
  changed to `TERMINATED` with a status reason that indicates the termination
  method used.

  ## Learn more

  [Add Amazon GameLift Servers to your game server](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html)

  Amazon GameLift Servers server SDK 5 reference guide for `OnProcessTerminate()`
  ([C++](https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-cpp-initsdk.html))  ([C#](https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-csharp-initsdk.html))

  ([Unreal](https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-unreal-initsdk.html))  ([Go](https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk-go-initsdk.html))
  """
  @spec terminate_game_session(map(), terminate_game_session_input(), list()) ::
          {:ok, terminate_game_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_game_session_errors()}
  def terminate_game_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateGameSession", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Removes a tag assigned to a Amazon GameLift Servers resource.

  You can use resource tags to organize
  Amazon Web Services resources for a range of purposes. This operation handles
  the permissions
  necessary to manage tags for Amazon GameLift Servers resources that support
  tagging.

  To remove a tag from a resource, specify the unique ARN value for the resource
  and
  provide a string list containing one or more tags to remove. This operation
  succeeds
  even if the list includes tags that aren't assigned to the resource.

  ## Learn more

  [Tagging Amazon Web Services Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*

  [
  Amazon Web Services Tagging
  Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Updates properties for an alias.

  Specify the unique identifier of the alias to be
  updated and the new property values.

  When reassigning an alias to a new fleet, provide
  an updated routing strategy. If successful, the updated alias record is
  returned.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec update_alias(map(), update_alias_input(), list()) ::
          {:ok, update_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_alias_errors()}
  def update_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAlias", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Updates metadata in a build resource, including the build name and version.

  To update
  the metadata, specify the build ID to update and provide the new values. If
  successful,
  a build object containing the updated metadata is returned.

  ## Learn more

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec update_build(map(), update_build_input(), list()) ::
          {:ok, update_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_build_errors()}
  def update_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBuild", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Updates the properties of a managed container fleet.

  Depending on the properties being
  updated, this operation might initiate a fleet deployment. You can track
  deployments for
  a fleet using
  [https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetDeployment.html](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetDeployment.html). 
  A managed fleet's runtime environment, which depends on the fleet's
  Amazon Machine Image {AMI} version, can't be updated. You must create a new
  fleet. As a best practice, we recommend replacing your managed fleets every 30
  days to maintain a secure and up-to-date runtime environment for your hosted
  game
  servers. For guidance, see [
  Security best practices for Amazon GameLift
  Servers](https://docs.aws.amazon.com/gameliftservers/latest/developerguide/security-best-practices.html).

  ## Request options

  As with CreateContainerFleet, many fleet properties use common defaults or are
  calculated based on the fleet's container group definitions.

    *
  Update fleet properties that result in a fleet deployment. Include only those
  properties that you want to change. Specify deployment configuration
  settings.

    *
  Update fleet properties that don't result in a fleet deployment. Include only
  those properties that you want to change.

  Changes to the following properties initiate a fleet deployment:

    *

  `GameServerContainerGroupDefinition`

    *

  `PerInstanceContainerGroupDefinition`

    *

  `GameServerContainerGroupsPerInstance`

    *

  `InstanceInboundPermissions`

    *

  `InstanceConnectionPortRange`

    *

  `LogConfiguration`

  ## Results

  If successful, this operation updates the container fleet resource, and might
  initiate
  a new deployment of fleet resources using the deployment configuration provided.
  A
  deployment replaces existing fleet instances with new instances that are
  deployed with
  the updated fleet properties. The fleet is placed in `UPDATING` status until
  the deployment is complete, then return to `ACTIVE`.

  You can have only one update deployment active at a time for a fleet. If a
  second
  update request initiates a deployment while another deployment is in progress,
  the first
  deployment is cancelled.
  """
  @spec update_container_fleet(map(), update_container_fleet_input(), list()) ::
          {:ok, update_container_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_container_fleet_errors()}
  def update_container_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContainerFleet", input, options)
  end

  @doc """

  **This API works with the following fleet types:** Container

  Updates properties in an existing container group definition.

  This operation doesn't
  replace the definition. Instead, it creates a new version of the definition and
  saves it
  separately. You can access all versions that you choose to retain.

  The only property you can't update is the container group type.

  ## Request options:

    *
  Update based on the latest version of the container group definition. Specify
  the
  container group definition name only, or use an ARN value without a version
  number.
  Provide updated values for the properties that you want to change only. All
  other values
  remain the same as the latest version.

    *
  Update based on a specific version of the container group definition. Specify
  the
  container group definition name and a source version number, or use an ARN value
  with a
  version number. Provide updated values for the properties that you want to
  change only.
  All other values remain the same as the source version.

    *
  Change a game server container definition. Provide the updated container
  definition.

    *
  Add or change a support container definition. Provide a complete set of
  container
  definitions, including the updated definition.

    *
  Remove a support container definition. Provide a complete set of container
  definitions, excluding the definition to remove. If the container group has only
  one
  support container definition, provide an empty set.

  ## Results:

  If successful, this operation returns the complete properties of the new
  container group
  definition version.

  If the container group definition version is used in an active fleets, the
  update
  automatically initiates a new fleet deployment of the new version. You can track
  a fleet's
  deployments using
  [ListFleetDeployments](https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListFleetDeployments.html).
  """
  @spec update_container_group_definition(
          map(),
          update_container_group_definition_input(),
          list()
        ) ::
          {:ok, update_container_group_definition_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_container_group_definition_errors()}
  def update_container_group_definition(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContainerGroupDefinition", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Updates a fleet's mutable attributes, such as game session protection and
  resource
  creation limits.

  To update fleet attributes, specify the fleet ID and the property values that
  you want
  to change. If successful, Amazon GameLift Servers returns the identifiers for
  the updated fleet.

  A managed fleet's runtime environment, which depends on the fleet's
  Amazon Machine Image {AMI} version, can't be updated. You must create a new
  fleet. As a best practice, we recommend replacing your managed fleets every 30
  days to maintain a secure and up-to-date runtime environment for your hosted
  game
  servers. For guidance, see [
  Security best practices for Amazon GameLift
  Servers](https://docs.aws.amazon.com/gameliftservers/latest/developerguide/security-best-practices.html).

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec update_fleet_attributes(map(), update_fleet_attributes_input(), list()) ::
          {:ok, update_fleet_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_fleet_attributes_errors()}
  def update_fleet_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleetAttributes", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Updates capacity settings for a managed EC2 fleet or managed container fleet.

  For these
  fleets, you adjust capacity by changing the number of instances in the fleet.
  Fleet
  capacity determines the number of game sessions and players that the fleet can
  host
  based on its configuration. For fleets with multiple locations, use this
  operation to
  manage capacity settings in each location individually.

  Use this operation to set these fleet capacity properties:

    *
  Minimum/maximum size: Set hard limits on the number of Amazon EC2 instances
  allowed. If Amazon GameLift Servers receives a
  request--either through manual update or automatic scaling--it won't change the
  capacity
  to a value outside of this range.

    *
  Desired capacity: As an alternative to automatic scaling, manually set the
  number of Amazon EC2
  instances to be maintained.
  Before changing a fleet's desired capacity, check the maximum capacity of the
  fleet's Amazon EC2 instance type by calling
  [DescribeEC2InstanceLimits](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeEC2InstanceLimits.html). 

  To update capacity for a fleet's home Region, or if the fleet has no remote
  locations, omit the `Location` parameter. The fleet must be in
  `ACTIVE` status.

  To update capacity for a fleet's remote location, set the
  `Location` parameter to the location to update. The location must be in
  `ACTIVE` status.

  If successful, Amazon GameLift Servers updates the capacity settings and returns
  the identifiers for
  the updated fleet and/or location. If a requested change to desired capacity
  exceeds the
  instance type's limit, the `LimitExceeded` exception occurs.

  Updates often prompt an immediate change in fleet capacity, such as when current
  capacity is different than the new desired capacity or outside the new limits.
  In this
  scenario, Amazon GameLift Servers automatically initiates steps to add or remove
  instances in the fleet
  location. You can track a fleet's current capacity by calling
  [DescribeFleetCapacity](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html)
  or
  [DescribeFleetLocationCapacity](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html). 
  ## Learn more

  [Scaling fleet
  capacity](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-manage-capacity.html)
  """
  @spec update_fleet_capacity(map(), update_fleet_capacity_input(), list()) ::
          {:ok, update_fleet_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_fleet_capacity_errors()}
  def update_fleet_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleetCapacity", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Container

  Updates permissions that allow inbound traffic to connect to game sessions in
  the
  fleet.

  To update settings, specify the fleet ID to be updated and specify the changes
  to be
  made. List the permissions you want to add in
  `InboundPermissionAuthorizations`, and permissions you want to remove in
  `InboundPermissionRevocations`. Permissions to be removed must match
  existing fleet permissions.

  If successful, the fleet ID for the updated fleet is returned. For fleets with
  remote
  locations, port setting updates can take time to propagate across all locations.
  You can
  check the status of updates in each location by calling
  `DescribeFleetPortSettings` with a location name.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec update_fleet_port_settings(map(), update_fleet_port_settings_input(), list()) ::
          {:ok, update_fleet_port_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_fleet_port_settings_errors()}
  def update_fleet_port_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleetPortSettings", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Updates information about a registered game server to help Amazon GameLift
  Servers FleetIQ track game server
  availability.

  This operation is called by a game server process that is running on an
  instance in a game server group.

  Use this operation to update the following types of game server information. You
  can
  make all three types of updates in the same request:

    *
  To update the game server's utilization status from `AVAILABLE`
  (when the game server is available to be claimed) to `UTILIZED` (when
  the game server is currently hosting games). Identify the game server and game
  server group and specify the new utilization status. You can't change the status
  from to `UTILIZED` to `AVAILABLE` .

    *
  To report health status, identify the game server and game server group and
  set health check to `HEALTHY`. If a game server does not report
  health status for a certain length of time, the game server is no longer
  considered healthy. As a result, it will be eventually deregistered from the
  game server group to avoid affecting utilization metrics. The best practice is
  to report health every 60 seconds.

    *
  To change game server metadata, provide updated game server data.

  Once a game server is successfully updated, the relevant statuses and timestamps
  are
  updated.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec update_game_server(map(), update_game_server_input(), list()) ::
          {:ok, update_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_game_server_errors()}
  def update_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGameServer", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2 (FleetIQ)

  Updates Amazon GameLift Servers FleetIQ-specific
  properties for a game server group.

  Many Auto Scaling group properties are updated on
  the Auto Scaling group directly, including the launch template, Auto Scaling
  policies,
  and maximum/minimum/desired instance counts.

  To update the game server group, specify the game server group ID and provide
  the
  updated values. Before applying the updates, the new values are validated to
  ensure that
  Amazon GameLift Servers FleetIQ can continue to perform instance balancing
  activity. If successful, a
  `GameServerGroup` object is returned.

  ## Learn more

  [Amazon GameLift Servers FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec update_game_server_group(map(), update_game_server_group_input(), list()) ::
          {:ok, update_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_game_server_group_errors()}
  def update_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGameServerGroup", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Updates the mutable properties of a game session.

  To update a game session, specify the game session ID and the values you want to
  change.

  If successful, the updated `GameSession` object is returned.

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec update_game_session(map(), update_game_session_input(), list()) ::
          {:ok, update_game_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_game_session_errors()}
  def update_game_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGameSession", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Updates the configuration of a game session queue, which determines how the
  queue
  processes new game session requests.

  To update settings, specify the queue name to be
  updated and provide the new settings. When updating destinations, provide a
  complete
  list of destinations.

  ## Learn more

  [
  Using Multi-Region
  Queues](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html)
  """
  @spec update_game_session_queue(map(), update_game_session_queue_input(), list()) ::
          {:ok, update_game_session_queue_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_game_session_queue_errors()}
  def update_game_session_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGameSessionQueue", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Updates settings for a FlexMatch matchmaking configuration.

  These changes affect all
  matches and game sessions that are created after the update. To update settings,
  specify
  the configuration name to be updated and provide the new settings.

  ## Learn more

  [ Design a FlexMatch matchmaker](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html)
  """
  @spec update_matchmaking_configuration(map(), update_matchmaking_configuration_input(), list()) ::
          {:ok, update_matchmaking_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_matchmaking_configuration_errors()}
  def update_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMatchmakingConfiguration", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Updates the runtime configuration for the specified fleet.

  The runtime configuration
  tells Amazon GameLift Servers how to launch server processes on computes in
  managed EC2 and Anywhere fleets. You
  can update a fleet's runtime configuration at any time after the fleet is
  created; it
  does not need to be in `ACTIVE` status.

  To update runtime configuration, specify the fleet ID and provide a
  `RuntimeConfiguration` with an updated set of server process
  configurations.

  If successful, the fleet's runtime configuration settings are updated. Fleet
  computes
  that run game server processes regularly check for and receive updated runtime
  configurations. The computes immediately take action to comply with the new
  configuration by launching new server processes or by not replacing existing
  processes
  when they shut down. Updating a fleet's runtime configuration never affects
  existing
  server processes.

  ## Learn more

  [Setting up Amazon GameLift Servers fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec update_runtime_configuration(map(), update_runtime_configuration_input(), list()) ::
          {:ok, update_runtime_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_runtime_configuration_errors()}
  def update_runtime_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRuntimeConfiguration", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2

  Updates Realtime script metadata and content.

  To update script metadata, specify the script ID and provide updated name and/or
  version values.

  To update script content, provide an updated zip file by pointing to either a
  local
  file or an Amazon S3 bucket location. You can use either method regardless of
  how the
  original script was uploaded. Use the *Version* parameter to track
  updates to the script.

  If the call is successful, the updated metadata is stored in the script record
  and a
  revised script is uploaded to the Amazon GameLift Servers service. Once the
  script is updated and
  acquired by a fleet instance, the new version is used for all new game sessions.

  ## Learn more

  [Amazon GameLift Servers Amazon GameLift Servers Realtime](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec update_script(map(), update_script_input(), list()) ::
          {:ok, update_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_script_errors()}
  def update_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScript", input, options)
  end

  @doc """

  **This API works with the following fleet types:** EC2, Anywhere, Container

  Validates the syntax of a matchmaking rule or rule set.

  This operation checks that the
  rule set is using syntactically correct JSON and that it conforms to allowed
  property
  expressions. To validate syntax, provide a rule set JSON string.

  ## Learn more

    *

  [Build a rule set](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html)
  """
  @spec validate_matchmaking_rule_set(map(), validate_matchmaking_rule_set_input(), list()) ::
          {:ok, validate_matchmaking_rule_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_matchmaking_rule_set_errors()}
  def validate_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ValidateMatchmakingRuleSet", input, options)
  end
end
