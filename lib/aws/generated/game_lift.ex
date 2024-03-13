# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GameLift do
  @moduledoc """
  Amazon GameLift provides solutions for hosting session-based multiplayer game
  servers in the
  cloud, including tools for deploying, operating, and scaling game servers.

  Built on
  Amazon Web Services global computing infrastructure, GameLift helps you deliver
  high-performance,
  high-reliability, low-cost game servers while dynamically scaling your resource
  usage to
  meet player demand.

  ## About Amazon GameLift solutions

  Get more information on these Amazon GameLift solutions in the [Amazon GameLift Developer Guide](https://docs.aws.amazon.com/gamelift/latest/developerguide/).

    *
  Amazon GameLift managed hosting -- Amazon GameLift offers a fully managed
  service to set up
  and maintain computing machines for hosting, manage game session and player
  session life cycle, and handle security, storage, and performance tracking. You
  can use automatic scaling tools to balance player demand and hosting costs,
  configure your game session management to minimize player latency, and add
  FlexMatch for matchmaking.

    *
  Managed hosting with Realtime Servers -- With Amazon GameLift Realtime Servers,
  you can quickly configure
  and set up ready-to-go game servers for your game. Realtime Servers provides a
  game server
  framework with core Amazon GameLift infrastructure already built in. Then use
  the full
  range of Amazon GameLift managed hosting features, including FlexMatch, for your
  game.

    *
  Amazon GameLift FleetIQ -- Use Amazon GameLift FleetIQ as a standalone service
  while hosting your games using EC2
  instances and Auto Scaling groups. Amazon GameLift FleetIQ provides
  optimizations for game
  hosting, including boosting the viability of low-cost Spot Instances gaming. For
  a complete solution, pair the Amazon GameLift FleetIQ and FlexMatch standalone
  services.

    *
  Amazon GameLift FlexMatch -- Add matchmaking to your game hosting solution.
  FlexMatch is a
  customizable matchmaking service for multiplayer games. Use FlexMatch as
  integrated with Amazon GameLift managed hosting or incorporate FlexMatch as a
  standalone
  service into your own hosting solution.

  ## About this API Reference

  This reference guide describes the low-level service API for Amazon GameLift.
  With each topic
  in this guide, you can find links to language-specific SDK guides and the Amazon
  Web Services CLI
  reference. Useful links:

    *

  [Amazon GameLift API operations listed by
  tasks](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html)

    *

  [ Amazon GameLift tools and
  resources](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_game_server_input() :: %{
        optional("GameServerData") => String.t(),
        optional("HealthCheck") => list(any()),
        optional("UtilizationStatus") => list(any()),
        required("GameServerGroupName") => String.t(),
        required("GameServerId") => String.t()
      }
      
  """
  @type update_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_fleet_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_fleet_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_server_group_input() :: %{
        optional("BalancingStrategy") => list(any()),
        optional("GameServerProtectionPolicy") => list(any()),
        optional("InstanceDefinitions") => list(instance_definition()()),
        optional("RoleArn") => String.t(),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type update_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compute_input() :: %{
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type list_compute_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_utilization() :: %{
        "ActiveGameSessionCount" => integer(),
        "ActiveServerProcessCount" => integer(),
        "CurrentPlayerSessionCount" => integer(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "Location" => String.t(),
        "MaximumPlayerSessionCount" => integer()
      }
      
  """
  @type fleet_utilization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_port_settings_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type update_fleet_port_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_compute_output() :: %{}
      
  """
  @type deregister_compute_output() :: %{}

  @typedoc """

  ## Example:
      
      game_session_connection_info() :: %{
        "DnsName" => String.t(),
        "GameSessionArn" => String.t(),
        "IpAddress" => String.t(),
        "MatchedPlayerSessions" => list(matched_player_session()()),
        "Port" => integer()
      }
      
  """
  @type game_session_connection_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_input() :: %{
        required("TicketIds") => list(String.t()())
      }
      
  """
  @type describe_matchmaking_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_access() :: %{
        "Credentials" => instance_credentials(),
        "FleetId" => String.t(),
        "InstanceId" => String.t(),
        "IpAddress" => String.t(),
        "OperatingSystem" => list(any())
      }
      
  """
  @type instance_access() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_locations_output() :: %{
        "Locations" => list(location_model()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_locations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      player_latency() :: %{
        "LatencyInMilliseconds" => float(),
        "PlayerId" => String.t(),
        "RegionIdentifier" => String.t()
      }
      
  """
  @type player_latency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tagging_failed_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type tagging_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_server_instance() :: %{
        "GameServerGroupArn" => String.t(),
        "GameServerGroupName" => String.t(),
        "InstanceId" => String.t(),
        "InstanceStatus" => list(any())
      }
      
  """
  @type game_server_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_compute_output() :: %{
        "ComputeList" => list(compute()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_compute_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      priority_configuration() :: %{
        "LocationOrder" => list(String.t()()),
        "PriorityOrder" => list(list(any())())
      }
      
  """
  @type priority_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_port_settings_input() :: %{
        optional("Location") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_fleet_port_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_location_input() :: %{
        optional("Tags") => list(tag()()),
        required("LocationName") => String.t()
      }
      
  """
  @type create_location_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_script_input() :: %{
        required("ScriptId") => String.t()
      }
      
  """
  @type delete_script_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_scaling_policy_output() :: %{
        "Name" => String.t()
      }
      
  """
  @type put_scaling_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_alias_input() :: %{
        required("AliasId") => String.t()
      }
      
  """
  @type resolve_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matched_player_session() :: %{
        "PlayerId" => String.t(),
        "PlayerSessionId" => String.t()
      }
      
  """
  @type matched_player_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type create_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type describe_script_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type describe_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_capacity_output() :: %{
        "FleetCapacity" => fleet_capacity()
      }
      
  """
  @type describe_fleet_location_capacity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_output() :: %{
        "FleetIds" => list(String.t()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_fleets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_credentials() :: %{
        "Secret" => String.t(),
        "UserName" => String.t()
      }
      
  """
  @type instance_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_attributes_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "LocationAttributes" => list(location_attributes()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_location_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      build() :: %{
        "BuildArn" => String.t(),
        "BuildId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Name" => String.t(),
        "OperatingSystem" => list(any()),
        "ServerSdkVersion" => String.t(),
        "SizeOnDisk" => float(),
        "Status" => list(any()),
        "Version" => String.t()
      }
      
  """
  @type build() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_definition() :: %{
        "InstanceType" => list(any()),
        "WeightedCapacity" => String.t()
      }
      
  """
  @type instance_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_rule_set_output() :: %{}
      
  """
  @type delete_matchmaking_rule_set_output() :: %{}

  @typedoc """

  ## Example:
      
      start_matchmaking_output() :: %{
        "MatchmakingTicket" => matchmaking_ticket()
      }
      
  """
  @type start_matchmaking_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compute_output() :: %{
        "Compute" => compute()
      }
      
  """
  @type describe_compute_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      game_server_group() :: %{
        "AutoScalingGroupArn" => String.t(),
        "BalancingStrategy" => list(any()),
        "CreationTime" => non_neg_integer(),
        "GameServerGroupArn" => String.t(),
        "GameServerGroupName" => String.t(),
        "GameServerProtectionPolicy" => list(any()),
        "InstanceDefinitions" => list(instance_definition()()),
        "LastUpdatedTime" => non_neg_integer(),
        "RoleArn" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t(),
        "SuspendedActions" => list(list(any())())
      }
      
  """
  @type game_server_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t(),
        required("ResumeActions") => list(list(any())())
      }
      
  """
  @type resume_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_attributes_input() :: %{
        optional("Limit") => integer(),
        optional("Locations") => list(String.t()()),
        optional("NextToken") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_fleet_location_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_locations_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "LocationStates" => list(location_state()())
      }
      
  """
  @type delete_fleet_locations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_capacity_input() :: %{
        required("FleetId") => String.t(),
        required("Location") => String.t()
      }
      
  """
  @type describe_fleet_location_capacity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_queues_output() :: %{
        "GameSessionQueues" => list(game_session_queue()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_game_session_queues_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_player_sessions_output() :: %{
        "PlayerSessions" => list(player_session()())
      }
      
  """
  @type create_player_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_configuration_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_matchmaking_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_build_output() :: %{
        "Build" => build()
      }
      
  """
  @type update_build_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_matchmaking_rule_set_output() :: %{
        "Valid" => boolean()
      }
      
  """
  @type validate_matchmaking_rule_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute() :: %{
        "ComputeArn" => String.t(),
        "ComputeName" => String.t(),
        "ComputeStatus" => list(any()),
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "GameLiftServiceSdkEndpoint" => String.t(),
        "IpAddress" => String.t(),
        "Location" => String.t(),
        "OperatingSystem" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type compute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_game_session_queue_output() :: %{}
      
  """
  @type delete_game_session_queue_output() :: %{}

  @typedoc """

  ## Example:
      
      create_vpc_peering_connection_input() :: %{
        required("FleetId") => String.t(),
        required("PeerVpcAwsAccountId") => String.t(),
        required("PeerVpcId") => String.t()
      }
      
  """
  @type create_vpc_peering_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_utilization_output() :: %{
        "FleetUtilization" => fleet_utilization()
      }
      
  """
  @type describe_fleet_location_utilization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matchmaking_configuration() :: %{
        "AcceptanceRequired" => boolean(),
        "AcceptanceTimeoutSeconds" => integer(),
        "AdditionalPlayerCount" => integer(),
        "BackfillMode" => list(any()),
        "ConfigurationArn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "CustomEventData" => String.t(),
        "Description" => String.t(),
        "FlexMatchMode" => list(any()),
        "GameProperties" => list(game_property()()),
        "GameSessionData" => String.t(),
        "GameSessionQueueArns" => list(String.t()()),
        "Name" => String.t(),
        "NotificationTarget" => String.t(),
        "RequestTimeoutSeconds" => integer(),
        "RuleSetArn" => String.t(),
        "RuleSetName" => String.t()
      }
      
  """
  @type matchmaking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_authorizations_output() :: %{
        "VpcPeeringAuthorizations" => list(vpc_peering_authorization()())
      }
      
  """
  @type describe_vpc_peering_authorizations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suspend_game_server_group_input() :: %{
        required("GameServerGroupName") => String.t(),
        required("SuspendActions") => list(list(any())())
      }
      
  """
  @type suspend_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_server_group_auto_scaling_policy() :: %{
        "EstimatedInstanceWarmup" => integer(),
        "TargetTrackingConfiguration" => target_tracking_configuration()
      }
      
  """
  @type game_server_group_auto_scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      runtime_configuration() :: %{
        "GameSessionActivationTimeoutSeconds" => integer(),
        "MaxConcurrentGameSessionActivations" => integer(),
        "ServerProcesses" => list(server_process()())
      }
      
  """
  @type runtime_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      player_session() :: %{
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "GameSessionId" => String.t(),
        "IpAddress" => String.t(),
        "PlayerData" => String.t(),
        "PlayerId" => String.t(),
        "PlayerSessionId" => String.t(),
        "Port" => integer(),
        "Status" => list(any()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type player_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_input() :: %{
        required("FleetId") => String.t()
      }
      
  """
  @type delete_fleet_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      player() :: %{
        "LatencyInMs" => map(),
        "PlayerAttributes" => map(),
        "PlayerId" => String.t(),
        "Team" => String.t()
      }
      
  """
  @type player() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_attributes_input() :: %{
        optional("AnywhereConfiguration") => anywhere_configuration(),
        optional("Description") => String.t(),
        optional("MetricGroups") => list(String.t()()),
        optional("Name") => String.t(),
        optional("NewGameSessionProtectionPolicy") => list(any()),
        optional("ResourceCreationLimitPolicy") => resource_creation_limit_policy(),
        required("FleetId") => String.t()
      }
      
  """
  @type update_fleet_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_runtime_configuration_output() :: %{
        "RuntimeConfiguration" => runtime_configuration()
      }
      
  """
  @type describe_runtime_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_output() :: %{
        "Aliases" => list(alias()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_aliases_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      out_of_capacity_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type out_of_capacity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_policy() :: %{
        "ComparisonOperator" => list(any()),
        "EvaluationPeriods" => integer(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "Location" => String.t(),
        "MetricName" => list(any()),
        "Name" => String.t(),
        "PolicyType" => list(any()),
        "ScalingAdjustment" => integer(),
        "ScalingAdjustmentType" => list(any()),
        "Status" => list(any()),
        "TargetConfiguration" => target_configuration(),
        "Threshold" => float(),
        "UpdateStatus" => list(any())
      }
      
  """
  @type scaling_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_connections_output() :: %{
        "VpcPeeringConnections" => list(vpc_peering_connection()())
      }
      
  """
  @type describe_vpc_peering_connections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_builds_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_builds_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_game_session_log_url_output() :: %{
        "PreSignedUrl" => String.t()
      }
      
  """
  @type get_game_session_log_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_matchmaking_configuration_output() :: %{
        "Configuration" => matchmaking_configuration()
      }
      
  """
  @type update_matchmaking_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type describe_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ec2_instance_limits_input() :: %{
        optional("EC2InstanceType") => list(any()),
        optional("Location") => String.t()
      }
      
  """
  @type describe_ec2_instance_limits_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_port_settings_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "InboundPermissions" => list(ip_permission()()),
        "Location" => String.t(),
        "UpdateStatus" => list(any())
      }
      
  """
  @type describe_fleet_port_settings_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_connections_input() :: %{
        optional("FleetId") => String.t()
      }
      
  """
  @type describe_vpc_peering_connections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      placed_player_session() :: %{
        "PlayerId" => String.t(),
        "PlayerSessionId" => String.t()
      }
      
  """
  @type placed_player_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_game_server_input() :: %{
        required("GameServerGroupName") => String.t(),
        required("GameServerId") => String.t()
      }
      
  """
  @type deregister_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      desired_player_session() :: %{
        "PlayerData" => String.t(),
        "PlayerId" => String.t()
      }
      
  """
  @type desired_player_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type start_game_session_placement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_capacity_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type fleet_capacity_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_rule_set_input() :: %{
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("RuleSetBody") => String.t()
      }
      
  """
  @type create_matchmaking_rule_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_input() :: %{
        required("GameServerGroupName") => String.t(),
        required("GameServerId") => String.t()
      }
      
  """
  @type describe_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_capacity() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "InstanceCounts" => ec2_instance_counts(),
        "InstanceType" => list(any()),
        "Location" => String.t()
      }
      
  """
  @type fleet_capacity() :: %{String.t() => any()}

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
        required("FleetId") => String.t(),
        required("MetricName") => list(any()),
        required("Name") => String.t()
      }
      
  """
  @type put_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scripts_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_scripts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_port_settings_input() :: %{
        optional("InboundPermissionAuthorizations") => list(ip_permission()()),
        optional("InboundPermissionRevocations") => list(ip_permission()()),
        required("FleetId") => String.t()
      }
      
  """
  @type update_fleet_port_settings_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_match_input() :: %{
        required("AcceptanceType") => list(any()),
        required("PlayerIds") => list(String.t()()),
        required("TicketId") => String.t()
      }
      
  """
  @type accept_match_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_game_session_placement_input() :: %{
        required("PlacementId") => String.t()
      }
      
  """
  @type stop_game_session_placement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location_configuration() :: %{
        "Location" => String.t()
      }
      
  """
  @type location_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_process() :: %{
        "ConcurrentExecutions" => integer(),
        "LaunchPath" => String.t(),
        "Parameters" => String.t()
      }
      
  """
  @type server_process() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location_state() :: %{
        "Location" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type location_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_session_output() :: %{
        "GameSession" => game_session()
      }
      
  """
  @type create_game_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_alias_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type resolve_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_location_utilization_input() :: %{
        required("FleetId") => String.t(),
        required("Location") => String.t()
      }
      
  """
  @type describe_fleet_location_utilization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_upload_credentials_output() :: %{
        "StorageLocation" => s3_location(),
        "UploadCredentials" => aws_credentials()
      }
      
  """
  @type request_upload_credentials_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_configurations_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t(),
        optional("RuleSetName") => String.t()
      }
      
  """
  @type describe_matchmaking_configurations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type register_game_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_alias_input() :: %{
        required("AliasId") => String.t()
      }
      
  """
  @type delete_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type update_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_upload_credentials_input() :: %{
        required("BuildId") => String.t()
      }
      
  """
  @type request_upload_credentials_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session_queue() :: %{
        "CustomEventData" => String.t(),
        "Destinations" => list(game_session_queue_destination()()),
        "FilterConfiguration" => filter_configuration(),
        "GameSessionQueueArn" => String.t(),
        "Name" => String.t(),
        "NotificationTarget" => String.t(),
        "PlayerLatencyPolicies" => list(player_latency_policy()()),
        "PriorityConfiguration" => priority_configuration(),
        "TimeoutInSeconds" => integer()
      }
      
  """
  @type game_session_queue() :: %{String.t() => any()}

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
  @type location_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claim_game_server_input() :: %{
        optional("FilterOption") => claim_filter_option(),
        optional("GameServerData") => String.t(),
        optional("GameServerId") => String.t(),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type claim_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_game_server_groups_output() :: %{
        "GameServerGroups" => list(game_server_group()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_game_server_groups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_authorization_input() :: %{
        required("GameLiftAwsAccountId") => String.t(),
        required("PeerVpcId") => String.t()
      }
      
  """
  @type delete_vpc_peering_authorization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_connection_input() :: %{
        required("FleetId") => String.t(),
        required("VpcPeeringConnectionId") => String.t()
      }
      
  """
  @type delete_vpc_peering_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_utilization_output() :: %{
        "FleetUtilization" => list(fleet_utilization()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_utilization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_script_input() :: %{
        required("ScriptId") => String.t()
      }
      
  """
  @type describe_script_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_game_sessions_input() :: %{
        optional("AliasId") => String.t(),
        optional("FilterExpression") => String.t(),
        optional("FleetId") => String.t(),
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        optional("SortExpression") => String.t()
      }
      
  """
  @type search_game_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type update_script_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_session_queue_input() :: %{
        optional("CustomEventData") => String.t(),
        optional("Destinations") => list(game_session_queue_destination()()),
        optional("FilterConfiguration") => filter_configuration(),
        optional("NotificationTarget") => String.t(),
        optional("PlayerLatencyPolicies") => list(player_latency_policy()()),
        optional("PriorityConfiguration") => priority_configuration(),
        optional("TimeoutInSeconds") => integer(),
        required("Name") => String.t()
      }
      
  """
  @type update_game_session_queue_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_location_input() :: %{
        required("LocationName") => String.t()
      }
      
  """
  @type delete_location_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_capacity_input() :: %{
        optional("FleetIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_capacity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compute_access_output() :: %{
        "ComputeArn" => String.t(),
        "ComputeName" => String.t(),
        "Credentials" => aws_credentials(),
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type get_compute_access_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_rule_sets_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_matchmaking_rule_sets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_sessions_output() :: %{
        "GameSessions" => list(game_session()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_game_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_events_input() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("StartTime") => non_neg_integer(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_fleet_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_output() :: %{
        "TicketList" => list(matchmaking_ticket()())
      }
      
  """
  @type describe_matchmaking_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alias_input() :: %{
        required("AliasId") => String.t()
      }
      
  """
  @type describe_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_runtime_configuration_input() :: %{
        required("FleetId") => String.t(),
        required("RuntimeConfiguration") => runtime_configuration()
      }
      
  """
  @type update_runtime_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type create_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_session_queue_output() :: %{
        "GameSessionQueue" => game_session_queue()
      }
      
  """
  @type update_game_session_queue_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_capacity_input() :: %{
        optional("DesiredInstances") => integer(),
        optional("Location") => String.t(),
        optional("MaxSize") => integer(),
        optional("MinSize") => integer(),
        required("FleetId") => String.t()
      }
      
  """
  @type update_fleet_capacity_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_player_session_input() :: %{
        optional("PlayerData") => String.t(),
        required("GameSessionId") => String.t(),
        required("PlayerId") => String.t()
      }
      
  """
  @type create_player_session_input() :: %{String.t() => any()}

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
  @type ec2_instance_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type update_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fleet_locations_input() :: %{
        required("FleetId") => String.t(),
        required("Locations") => list(String.t()())
      }
      
  """
  @type delete_fleet_locations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_build_input() :: %{
        required("BuildId") => String.t()
      }
      
  """
  @type describe_build_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      player_latency_policy() :: %{
        "MaximumIndividualPlayerLatencyMilliseconds" => integer(),
        "PolicyDurationSeconds" => integer()
      }
      
  """
  @type player_latency_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_build_input() :: %{
        optional("Name") => String.t(),
        optional("Version") => String.t(),
        required("BuildId") => String.t()
      }
      
  """
  @type update_build_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_compute_output() :: %{
        "Compute" => compute()
      }
      
  """
  @type register_compute_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_permission() :: %{
        "FromPort" => integer(),
        "IpRange" => String.t(),
        "Protocol" => list(any()),
        "ToPort" => integer()
      }
      
  """
  @type ip_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_locations_input() :: %{
        required("FleetId") => String.t(),
        required("Locations") => list(location_configuration()())
      }
      
  """
  @type create_fleet_locations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_script_input() :: %{
        optional("Name") => String.t(),
        optional("StorageLocation") => s3_location(),
        optional("Version") => String.t(),
        optional("ZipFile") => binary(),
        required("ScriptId") => String.t()
      }
      
  """
  @type update_script_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_connection_output() :: %{}
      
  """
  @type delete_vpc_peering_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      describe_game_sessions_input() :: %{
        optional("AliasId") => String.t(),
        optional("FleetId") => String.t(),
        optional("GameSessionId") => String.t(),
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => String.t()
      }
      
  """
  @type describe_game_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_configuration() :: %{
        "AllowedLocations" => list(String.t()())
      }
      
  """
  @type filter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_rule_set_output() :: %{
        "RuleSet" => matchmaking_rule_set()
      }
      
  """
  @type create_matchmaking_rule_set_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_configuration_input() :: %{
        optional("AcceptanceTimeoutSeconds") => integer(),
        optional("AdditionalPlayerCount") => integer(),
        optional("BackfillMode") => list(any()),
        optional("CustomEventData") => String.t(),
        optional("Description") => String.t(),
        optional("FlexMatchMode") => list(any()),
        optional("GameProperties") => list(game_property()()),
        optional("GameSessionData") => String.t(),
        optional("GameSessionQueueArns") => list(String.t()()),
        optional("NotificationTarget") => String.t(),
        optional("Tags") => list(tag()()),
        required("AcceptanceRequired") => boolean(),
        required("Name") => String.t(),
        required("RequestTimeoutSeconds") => integer(),
        required("RuleSetName") => String.t()
      }
      
  """
  @type create_matchmaking_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_game_session_placement_input() :: %{
        optional("DesiredPlayerSessions") => list(desired_player_session()()),
        optional("GameProperties") => list(game_property()()),
        optional("GameSessionData") => String.t(),
        optional("GameSessionName") => String.t(),
        optional("PlayerLatencies") => list(player_latency()()),
        required("GameSessionQueueName") => String.t(),
        required("MaximumPlayerSessionCount") => integer(),
        required("PlacementId") => String.t()
      }
      
  """
  @type start_game_session_placement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_placement_input() :: %{
        required("PlacementId") => String.t()
      }
      
  """
  @type describe_game_session_placement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_locations_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "LocationStates" => list(location_state()())
      }
      
  """
  @type create_fleet_locations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_matchmaking_input() :: %{
        required("TicketId") => String.t()
      }
      
  """
  @type stop_matchmaking_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_authorization() :: %{
        "CreationTime" => non_neg_integer(),
        "ExpirationTime" => non_neg_integer(),
        "GameLiftAwsAccountId" => String.t(),
        "PeerVpcAwsAccountId" => String.t(),
        "PeerVpcId" => String.t()
      }
      
  """
  @type vpc_peering_authorization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_runtime_configuration_input() :: %{
        required("FleetId") => String.t()
      }
      
  """
  @type describe_runtime_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_alias_input() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("RoutingStrategy") => routing_strategy(),
        required("AliasId") => String.t()
      }
      
  """
  @type update_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_configuration_output() :: %{}
      
  """
  @type delete_matchmaking_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      get_compute_access_input() :: %{
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type get_compute_access_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute_value() :: %{
        "N" => float(),
        "S" => String.t(),
        "SDM" => map(),
        "SL" => list(String.t()())
      }
      
  """
  @type attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_matchmaking_configuration_output() :: %{
        "Configuration" => matchmaking_configuration()
      }
      
  """
  @type create_matchmaking_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      anywhere_configuration() :: %{
        "Cost" => String.t()
      }
      
  """
  @type anywhere_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "Bucket" => String.t(),
        "Key" => String.t(),
        "ObjectVersion" => String.t(),
        "RoleArn" => String.t()
      }
      
  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_build_input() :: %{
        required("BuildId") => String.t()
      }
      
  """
  @type delete_build_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_player_sessions_output() :: %{
        "NextToken" => String.t(),
        "PlayerSessions" => list(player_session()())
      }
      
  """
  @type describe_player_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instances_output() :: %{
        "Instances" => list(instance()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aliases_input() :: %{
        optional("Limit") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t(),
        optional("RoutingStrategyType") => list(any())
      }
      
  """
  @type list_aliases_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_utilization_input() :: %{
        optional("FleetIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_utilization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_access_input() :: %{
        required("FleetId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type get_instance_access_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_output() :: %{
        "FleetAttributes" => fleet_attributes(),
        "LocationStates" => list(location_state()())
      }
      
  """
  @type create_fleet_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fleet_attributes() :: %{
        "AnywhereConfiguration" => anywhere_configuration(),
        "BuildArn" => String.t(),
        "BuildId" => String.t(),
        "CertificateConfiguration" => certificate_configuration(),
        "ComputeType" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "FleetType" => list(any()),
        "InstanceRoleArn" => String.t(),
        "InstanceRoleCredentialsProvider" => list(any()),
        "InstanceType" => list(any()),
        "LogPaths" => list(String.t()()),
        "MetricGroups" => list(String.t()()),
        "Name" => String.t(),
        "NewGameSessionProtectionPolicy" => list(any()),
        "OperatingSystem" => list(any()),
        "ResourceCreationLimitPolicy" => resource_creation_limit_policy(),
        "ScriptArn" => String.t(),
        "ScriptId" => String.t(),
        "ServerLaunchParameters" => String.t(),
        "ServerLaunchPath" => String.t(),
        "Status" => list(any()),
        "StoppedActions" => list(list(any())()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type fleet_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_game_server_groups_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_game_server_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_player_sessions_input() :: %{
        optional("GameSessionId") => String.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("PlayerId") => String.t(),
        optional("PlayerSessionId") => String.t(),
        optional("PlayerSessionStatusFilter") => String.t()
      }
      
  """
  @type describe_player_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_session_input() :: %{
        optional("GameProperties") => list(game_property()()),
        optional("MaximumPlayerSessionCount") => integer(),
        optional("Name") => String.t(),
        optional("PlayerSessionCreationPolicy") => list(any()),
        optional("ProtectionPolicy") => list(any()),
        required("GameSessionId") => String.t()
      }
      
  """
  @type update_game_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matchmaking_ticket() :: %{
        "ConfigurationArn" => String.t(),
        "ConfigurationName" => String.t(),
        "EndTime" => non_neg_integer(),
        "EstimatedWaitTime" => integer(),
        "GameSessionConnectionInfo" => game_session_connection_info(),
        "Players" => list(player()()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t(),
        "StatusReason" => String.t(),
        "TicketId" => String.t()
      }
      
  """
  @type matchmaking_ticket() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_capacity_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "Location" => String.t()
      }
      
  """
  @type update_fleet_capacity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type update_game_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_session_queue_input() :: %{
        optional("CustomEventData") => String.t(),
        optional("Destinations") => list(game_session_queue_destination()()),
        optional("FilterConfiguration") => filter_configuration(),
        optional("NotificationTarget") => String.t(),
        optional("PlayerLatencyPolicies") => list(player_latency_policy()()),
        optional("PriorityConfiguration") => priority_configuration(),
        optional("Tags") => list(tag()()),
        optional("TimeoutInSeconds") => integer(),
        required("Name") => String.t()
      }
      
  """
  @type create_game_session_queue_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_details_input() :: %{
        optional("AliasId") => String.t(),
        optional("FleetId") => String.t(),
        optional("GameSessionId") => String.t(),
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => String.t()
      }
      
  """
  @type describe_game_session_details_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_fleet_actions_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type start_fleet_actions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validate_matchmaking_rule_set_input() :: %{
        required("RuleSetBody") => String.t()
      }
      
  """
  @type validate_matchmaking_rule_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_fleets_input() :: %{
        optional("BuildId") => String.t(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("ScriptId") => String.t()
      }
      
  """
  @type list_fleets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_game_servers_input() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        optional("SortOrder") => list(any()),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type list_game_servers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_fleet_input() :: %{
        optional("AnywhereConfiguration") => anywhere_configuration(),
        optional("BuildId") => String.t(),
        optional("CertificateConfiguration") => certificate_configuration(),
        optional("ComputeType") => list(any()),
        optional("Description") => String.t(),
        optional("EC2InboundPermissions") => list(ip_permission()()),
        optional("EC2InstanceType") => list(any()),
        optional("FleetType") => list(any()),
        optional("InstanceRoleArn") => String.t(),
        optional("InstanceRoleCredentialsProvider") => list(any()),
        optional("Locations") => list(location_configuration()()),
        optional("LogPaths") => list(String.t()()),
        optional("MetricGroups") => list(String.t()()),
        optional("NewGameSessionProtectionPolicy") => list(any()),
        optional("PeerVpcAwsAccountId") => String.t(),
        optional("PeerVpcId") => String.t(),
        optional("ResourceCreationLimitPolicy") => resource_creation_limit_policy(),
        optional("RuntimeConfiguration") => runtime_configuration(),
        optional("ScriptId") => String.t(),
        optional("ServerLaunchParameters") => String.t(),
        optional("ServerLaunchPath") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_fleet_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_matchmaking_input() :: %{
        optional("TicketId") => String.t(),
        required("ConfigurationName") => String.t(),
        required("Players") => list(player()())
      }
      
  """
  @type start_matchmaking_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_fleet_actions_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type stop_fleet_actions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claim_filter_option() :: %{
        "InstanceStatuses" => list(list(any())())
      }
      
  """
  @type claim_filter_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_game_session_queue_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_game_session_queue_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_compute_input() :: %{
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type deregister_compute_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_events_output() :: %{
        "Events" => list(event()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_authorization_output() :: %{
        "VpcPeeringAuthorization" => vpc_peering_authorization()
      }
      
  """
  @type create_vpc_peering_authorization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_session_queue_output() :: %{
        "GameSessionQueue" => game_session_queue()
      }
      
  """
  @type create_game_session_queue_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location_model() :: %{
        "LocationArn" => String.t(),
        "LocationName" => String.t()
      }
      
  """
  @type location_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "EventCode" => list(any()),
        "EventId" => String.t(),
        "EventTime" => non_neg_integer(),
        "Message" => String.t(),
        "PreSignedLogUrl" => String.t(),
        "ResourceId" => String.t()
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instances_input() :: %{
        optional("InstanceId") => String.t(),
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type describe_game_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_authorization_input() :: %{
        required("GameLiftAwsAccountId") => String.t(),
        required("PeerVpcId") => String.t()
      }
      
  """
  @type create_vpc_peering_authorization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_queues_input() :: %{
        optional("Limit") => integer(),
        optional("Names") => list(String.t()()),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_game_session_queues_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_game_sessions_output() :: %{
        "GameSessions" => list(game_session()()),
        "NextToken" => String.t()
      }
      
  """
  @type search_game_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_match_backfill_output() :: %{
        "MatchmakingTicket" => matchmaking_ticket()
      }
      
  """
  @type start_match_backfill_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      alias() :: %{
        "AliasArn" => String.t(),
        "AliasId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "RoutingStrategy" => routing_strategy()
      }
      
  """
  @type alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_runtime_configuration_output() :: %{
        "RuntimeConfiguration" => runtime_configuration()
      }
      
  """
  @type update_runtime_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "CreationTime" => non_neg_integer(),
        "DnsName" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "InstanceId" => String.t(),
        "IpAddress" => String.t(),
        "Location" => String.t(),
        "OperatingSystem" => list(any()),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_game_session_log_url_input() :: %{
        required("GameSessionId") => String.t()
      }
      
  """
  @type get_game_session_log_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_fleet_actions_input() :: %{
        optional("Location") => String.t(),
        required("Actions") => list(list(any())()),
        required("FleetId") => String.t()
      }
      
  """
  @type start_fleet_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_matchmaking_configuration_input() :: %{
        optional("AcceptanceRequired") => boolean(),
        optional("AcceptanceTimeoutSeconds") => integer(),
        optional("AdditionalPlayerCount") => integer(),
        optional("BackfillMode") => list(any()),
        optional("CustomEventData") => String.t(),
        optional("Description") => String.t(),
        optional("FlexMatchMode") => list(any()),
        optional("GameProperties") => list(game_property()()),
        optional("GameSessionData") => String.t(),
        optional("GameSessionQueueArns") => list(String.t()()),
        optional("NotificationTarget") => String.t(),
        optional("RequestTimeoutSeconds") => integer(),
        optional("RuleSetName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type update_matchmaking_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type resume_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_peering_authorization_output() :: %{}
      
  """
  @type delete_vpc_peering_authorization_output() :: %{}

  @typedoc """

  ## Example:
      
      unsupported_region_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_scripts_output() :: %{
        "NextToken" => String.t(),
        "Scripts" => list(script()())
      }
      
  """
  @type list_scripts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_game_server_group_input() :: %{
        optional("DeleteOption") => list(any()),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type delete_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session_full_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type game_session_full_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      aws_credentials() :: %{
        "AccessKeyId" => String.t(),
        "SecretAccessKey" => String.t(),
        "SessionToken" => String.t()
      }
      
  """
  @type aws_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_rule_sets_output() :: %{
        "NextToken" => String.t(),
        "RuleSets" => list(matchmaking_rule_set()())
      }
      
  """
  @type describe_matchmaking_rule_sets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_property() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type game_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suspend_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type suspend_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_access_output() :: %{
        "InstanceAccess" => instance_access()
      }
      
  """
  @type get_instance_access_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_attributes_input() :: %{
        optional("FleetIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type describe_fleet_attributes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_location_output() :: %{
        "Location" => location_model()
      }
      
  """
  @type create_location_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_game_session_input() :: %{
        optional("AliasId") => String.t(),
        optional("CreatorId") => String.t(),
        optional("FleetId") => String.t(),
        optional("GameProperties") => list(game_property()()),
        optional("GameSessionData") => String.t(),
        optional("GameSessionId") => String.t(),
        optional("IdempotencyToken") => String.t(),
        optional("Location") => String.t(),
        optional("Name") => String.t(),
        required("MaximumPlayerSessionCount") => integer()
      }
      
  """
  @type create_game_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      routing_strategy() :: %{
        "FleetId" => String.t(),
        "Message" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type routing_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session_queue_destination() :: %{
        "DestinationArn" => String.t()
      }
      
  """
  @type game_session_queue_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_instances_output() :: %{
        "GameServerInstances" => list(game_server_instance()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_game_server_instances_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compute_auth_token_output() :: %{
        "AuthToken" => String.t(),
        "ComputeArn" => String.t(),
        "ComputeName" => String.t(),
        "ExpirationTimestamp" => non_neg_integer(),
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type get_compute_auth_token_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ec2_instance_limits_output() :: %{
        "EC2InstanceLimits" => list(ec2_instance_limit()())
      }
      
  """
  @type describe_ec2_instance_limits_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_game_server_group_output() :: %{
        "GameServerGroup" => game_server_group()
      }
      
  """
  @type delete_game_server_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_build_output() :: %{
        "Build" => build()
      }
      
  """
  @type describe_build_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_scaling_policy_input() :: %{
        required("FleetId") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type delete_scaling_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_capacity_output() :: %{
        "FleetCapacity" => list(fleet_capacity()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_capacity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_locations_input() :: %{
        optional("Filters") => list(list(any())()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_locations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fleet_attributes_output() :: %{
        "FleetAttributes" => list(fleet_attributes()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_fleet_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      script() :: %{
        "CreationTime" => non_neg_integer(),
        "Name" => String.t(),
        "ScriptArn" => String.t(),
        "ScriptId" => String.t(),
        "SizeOnDisk" => float(),
        "StorageLocation" => s3_location(),
        "Version" => String.t()
      }
      
  """
  @type script() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_creation_limit_policy() :: %{
        "NewGameSessionsPerCreator" => integer(),
        "PolicyPeriodInMinutes" => integer()
      }
      
  """
  @type resource_creation_limit_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_server() :: %{
        "ClaimStatus" => list(any()),
        "ConnectionInfo" => String.t(),
        "GameServerData" => String.t(),
        "GameServerGroupArn" => String.t(),
        "GameServerGroupName" => String.t(),
        "GameServerId" => String.t(),
        "InstanceId" => String.t(),
        "LastClaimTime" => non_neg_integer(),
        "LastHealthCheckTime" => non_neg_integer(),
        "RegistrationTime" => non_neg_integer(),
        "UtilizationStatus" => list(any())
      }
      
  """
  @type game_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_player_session_output() :: %{
        "PlayerSession" => player_session()
      }
      
  """
  @type create_player_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_alias_output() :: %{
        "Alias" => alias()
      }
      
  """
  @type describe_alias_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type describe_game_session_placement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_game_session_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_game_session_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_compute_input() :: %{
        optional("CertificatePath") => String.t(),
        optional("DnsName") => String.t(),
        optional("IpAddress") => String.t(),
        optional("Location") => String.t(),
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type register_compute_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_location_output() :: %{}
      
  """
  @type delete_location_output() :: %{}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_matchmaking_output() :: %{}
      
  """
  @type stop_matchmaking_output() :: %{}

  @typedoc """

  ## Example:
      
      create_alias_input() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("RoutingStrategy") => routing_strategy()
      }
      
  """
  @type create_alias_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_match_backfill_input() :: %{
        optional("GameSessionArn") => String.t(),
        optional("TicketId") => String.t(),
        required("ConfigurationName") => String.t(),
        required("Players") => list(player()())
      }
      
  """
  @type start_match_backfill_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_limit() :: %{
        "CurrentInstances" => integer(),
        "EC2InstanceType" => list(any()),
        "InstanceLimit" => integer(),
        "Location" => String.t()
      }
      
  """
  @type ec2_instance_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_compute_auth_token_input() :: %{
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type get_compute_auth_token_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_configuration() :: %{
        "TargetValue" => float()
      }
      
  """
  @type target_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      launch_template_specification() :: %{
        "LaunchTemplateId" => String.t(),
        "LaunchTemplateName" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type launch_template_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      claim_game_server_output() :: %{
        "GameServer" => game_server()
      }
      
  """
  @type claim_game_server_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_input() :: %{
        optional("Limit") => integer(),
        optional("Location") => String.t(),
        optional("NextToken") => String.t(),
        optional("StatusFilter") => list(any()),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_scaling_policies_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_game_servers_output() :: %{
        "GameServers" => list(game_server()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_game_servers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_connection_status() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type vpc_peering_connection_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_policies_output() :: %{
        "NextToken" => String.t(),
        "ScalingPolicies" => list(scaling_policy()())
      }
      
  """
  @type describe_scaling_policies_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_matchmaking_rule_set_input() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_matchmaking_rule_set_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_build_input() :: %{
        optional("Name") => String.t(),
        optional("OperatingSystem") => list(any()),
        optional("ServerSdkVersion") => String.t(),
        optional("StorageLocation") => s3_location(),
        optional("Tags") => list(tag()()),
        optional("Version") => String.t()
      }
      
  """
  @type create_build_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_peering_connection() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "GameLiftVpcId" => String.t(),
        "IpV4CidrBlock" => String.t(),
        "PeerVpcId" => String.t(),
        "Status" => vpc_peering_connection_status(),
        "VpcPeeringConnectionId" => String.t()
      }
      
  """
  @type vpc_peering_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_fleet_attributes_output() :: %{
        "FleetArn" => String.t(),
        "FleetId" => String.t()
      }
      
  """
  @type update_fleet_attributes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_build_output() :: %{
        "Build" => build(),
        "StorageLocation" => s3_location(),
        "UploadCredentials" => aws_credentials()
      }
      
  """
  @type create_build_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_session_details_output() :: %{
        "GameSessionDetails" => list(game_session_detail()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_game_session_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_peering_connection_output() :: %{}
      
  """
  @type create_vpc_peering_connection_output() :: %{}

  @typedoc """

  ## Example:
      
      game_session_detail() :: %{
        "GameSession" => game_session(),
        "ProtectionPolicy" => list(any())
      }
      
  """
  @type game_session_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_game_session_placement_output() :: %{
        "GameSessionPlacement" => game_session_placement()
      }
      
  """
  @type stop_game_session_placement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_peering_authorizations_input() :: %{}
      
  """
  @type describe_vpc_peering_authorizations_input() :: %{}

  @typedoc """

  ## Example:
      
      create_game_server_group_input() :: %{
        optional("AutoScalingPolicy") => game_server_group_auto_scaling_policy(),
        optional("BalancingStrategy") => list(any()),
        optional("GameServerProtectionPolicy") => list(any()),
        optional("Tags") => list(tag()()),
        optional("VpcSubnets") => list(String.t()()),
        required("GameServerGroupName") => String.t(),
        required("InstanceDefinitions") => list(instance_definition()()),
        required("LaunchTemplate") => launch_template_specification(),
        required("MaxSize") => integer(),
        required("MinSize") => integer(),
        required("RoleArn") => String.t()
      }
      
  """
  @type create_game_server_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_fleet_actions_input() :: %{
        optional("Location") => String.t(),
        required("Actions") => list(list(any())()),
        required("FleetId") => String.t()
      }
      
  """
  @type stop_fleet_actions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_configuration() :: %{
        "CertificateType" => list(any())
      }
      
  """
  @type certificate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      matchmaking_rule_set() :: %{
        "CreationTime" => non_neg_integer(),
        "RuleSetArn" => String.t(),
        "RuleSetBody" => String.t(),
        "RuleSetName" => String.t()
      }
      
  """
  @type matchmaking_rule_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_compute_input() :: %{
        required("ComputeName") => String.t(),
        required("FleetId") => String.t()
      }
      
  """
  @type describe_compute_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_game_server_input() :: %{
        optional("ConnectionInfo") => String.t(),
        optional("GameServerData") => String.t(),
        required("GameServerGroupName") => String.t(),
        required("GameServerId") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type register_game_server_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_player_sessions_input() :: %{
        optional("PlayerDataMap") => map(),
        required("GameSessionId") => String.t(),
        required("PlayerIds") => list(String.t()())
      }
      
  """
  @type create_player_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session_placement() :: %{
        "DnsName" => String.t(),
        "EndTime" => non_neg_integer(),
        "GameProperties" => list(game_property()()),
        "GameSessionArn" => String.t(),
        "GameSessionData" => String.t(),
        "GameSessionId" => String.t(),
        "GameSessionName" => String.t(),
        "GameSessionQueueName" => String.t(),
        "GameSessionRegion" => String.t(),
        "IpAddress" => String.t(),
        "MatchmakerData" => String.t(),
        "MaximumPlayerSessionCount" => integer(),
        "PlacedPlayerSessions" => list(placed_player_session()()),
        "PlacementId" => String.t(),
        "PlayerLatencies" => list(player_latency()()),
        "Port" => integer(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type game_session_placement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      game_session() :: %{
        "CreationTime" => non_neg_integer(),
        "CreatorId" => String.t(),
        "CurrentPlayerSessionCount" => integer(),
        "DnsName" => String.t(),
        "FleetArn" => String.t(),
        "FleetId" => String.t(),
        "GameProperties" => list(game_property()()),
        "GameSessionData" => String.t(),
        "GameSessionId" => String.t(),
        "IpAddress" => String.t(),
        "Location" => String.t(),
        "MatchmakerData" => String.t(),
        "MaximumPlayerSessionCount" => integer(),
        "Name" => String.t(),
        "PlayerSessionCreationPolicy" => list(any()),
        "Port" => integer(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "TerminationTime" => non_neg_integer()
      }
      
  """
  @type game_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_game_session_output() :: %{
        "GameSession" => game_session()
      }
      
  """
  @type update_game_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_builds_output() :: %{
        "Builds" => list(build()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_builds_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_script_input() :: %{
        optional("Name") => String.t(),
        optional("StorageLocation") => s3_location(),
        optional("Tags") => list(tag()()),
        optional("Version") => String.t(),
        optional("ZipFile") => binary()
      }
      
  """
  @type create_script_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_script_output() :: %{
        "Script" => script()
      }
      
  """
  @type create_script_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target_tracking_configuration() :: %{
        "TargetValue" => float()
      }
      
  """
  @type target_tracking_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_matchmaking_configurations_output() :: %{
        "Configurations" => list(matchmaking_configuration()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_matchmaking_configurations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_game_server_instances_input() :: %{
        optional("InstanceIds") => list(String.t()()),
        optional("Limit") => integer(),
        optional("NextToken") => String.t(),
        required("GameServerGroupName") => String.t()
      }
      
  """
  @type describe_game_server_instances_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      terminal_routing_strategy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type terminal_routing_strategy_exception() :: %{String.t() => any()}

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

  @type create_fleet_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
          | not_found_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()
          | unauthorized_exception()
          | tagging_failed_exception()

  @type create_fleet_locations_errors() ::
          limit_exceeded_exception()
          | unsupported_region_exception()
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
          not_found_exception()
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
          not_found_exception()
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
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type describe_fleet_events_errors() ::
          not_found_exception()
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
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type get_compute_auth_token_errors() ::
          not_found_exception()
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
          invalid_request_exception() | internal_service_exception() | unauthorized_exception()

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
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type put_scaling_policy_errors() ::
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | unauthorized_exception()

  @type register_compute_errors() ::
          limit_exceeded_exception()
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
          not_found_exception()
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
          not_found_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | tagging_failed_exception()

  @type untag_resource_errors() ::
          not_found_exception()
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
          not_found_exception()
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
      protocol: "json",
      service_id: "GameLift",
      signature_version: "v4",
      signing_name: "gamelift",
      target_prefix: "GameLift"
    }
  end

  @doc """
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
  When all players have accepted, Amazon GameLift advances the matchmaking tickets
  to status
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
          | {:error, accept_match_errors()}
  def accept_match(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptMatch", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Locates an available game server and
  temporarily reserves it to host gameplay and players.

  This operation is called from a
  game client or client service (such as a matchmaker) to request hosting
  resources for a
  new game session. In response, Amazon GameLift FleetIQ locates an available game
  server, places it in
  `CLAIMED` status for 60 seconds, and returns connection information that
  players can use to connect to the game server.

  To claim a game server, identify a game server group. You can also specify a
  game
  server ID, although this approach bypasses Amazon GameLift FleetIQ placement
  optimization. Optionally,
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

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec claim_game_server(map(), claim_game_server_input(), list()) ::
          {:ok, claim_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, claim_game_server_errors()}
  def claim_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ClaimGameServer", input, options)
  end

  @doc """
  Creates an alias for a fleet.

  In most situations, you can use an alias ID in place of
  a fleet ID. An alias provides a level of abstraction for a fleet that is useful
  when
  redirecting player traffic from one fleet to another, such as when updating your
  game
  build.

  Amazon GameLift supports two types of routing strategies for aliases: simple and
  terminal. A
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
          | {:error, create_alias_errors()}
  def create_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAlias", input, options)
  end

  @doc """
  Creates a new Amazon GameLift build resource for your game server binary files.

  Combine game
  server binaries into a zip file for use with Amazon GameLift.

  When setting up a new game build for Amazon GameLift, we recommend using the CLI
  command **
  [upload-build](https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html)  **. This helper command combines two tasks: (1) it
  uploads your build files from a file directory to an Amazon GameLift Amazon S3
  location, and (2)
  it creates a new build resource.

  You can use the `CreateBuild` operation in the following scenarios:

    *
  Create a new game build with build files that are in an Amazon S3 location under
  an
  Amazon Web Services account that you control. To use this option, you give
  Amazon GameLift access to
  the Amazon S3 bucket. With permissions in place, specify a build name, operating
  system, and the Amazon S3 storage location of your game build.

    *
  Upload your build files to a Amazon GameLift Amazon S3 location. To use this
  option,
  specify a build name and operating system. This operation creates a new build
  resource and also returns an Amazon S3 location with temporary access
  credentials.
  Use the credentials to manually upload your build files to the specified Amazon
  S3
  location. For more information, see [Uploading
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html)
  in
  the *Amazon S3 Developer Guide*. After you upload build files to
  the Amazon GameLift Amazon S3 location, you can't update them.

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
          | {:error, create_build_errors()}
  def create_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBuild", input, options)
  end

  @doc """
  Creates a fleet of Amazon Elastic Compute Cloud (Amazon EC2) instances to host
  your custom game server or
  Realtime Servers.

  Use this operation to configure the computing resources for your fleet and
  provide instructions for running game servers on each instance.

  Most Amazon GameLift fleets can deploy instances to multiple locations,
  including the home
  Region (where the fleet is created) and an optional set of remote locations.
  Fleets that
  are created in the following Amazon Web Services Regions support multiple
  locations: us-east-1 (N.
  Virginia), us-west-2 (Oregon), eu-central-1 (Frankfurt), eu-west-1 (Ireland),
  ap-southeast-2 (Sydney), ap-northeast-1 (Tokyo), and ap-northeast-2 (Seoul).
  Fleets that
  are created in other Amazon GameLift Regions can deploy instances in the fleet's
  home Region
  only. All fleet instances use the same configuration regardless of location;
  however,
  you can adjust capacity settings and turn auto-scaling on/off for each location.

  To create a fleet, choose the hardware for your instances, specify a game server
  build
  or Realtime script to deploy, and provide a runtime configuration to direct
  Amazon GameLift how
  to start and run game servers on each instance in the fleet. Set permissions for
  inbound
  traffic to your game servers, and enable optional features as needed. When
  creating a
  multi-location fleet, provide a list of additional remote locations.

  If you need to debug your fleet, fetch logs, view performance metrics or other
  actions
  on the fleet, create the development fleet with port 22/3389 open. As a best
  practice,
  we recommend opening ports for remote access only when you need them and closing
  them
  when you're finished.

  If successful, this operation creates a new Fleet resource and places it in
  `NEW` status, which prompts Amazon GameLift to initiate the [fleet creation workflow](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow).
  You can track fleet creation by checking fleet status using
  `DescribeFleetAttributes` and `DescribeFleetLocationAttributes`/, or by
  monitoring fleet creation events
  using `DescribeFleetEvents`.

  When the fleet status changes to `ACTIVE`, you can enable automatic scaling
  with `PutScalingPolicy` and set capacity for the home Region with
  `UpdateFleetCapacity`. When the status of each remote location reaches
  `ACTIVE`, you can set capacity by location using `UpdateFleetCapacity`.

  ## Learn more

  [Setting up fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [Debug fleet creation issues](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation)

  [Multi-location fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec create_fleet(map(), create_fleet_input(), list()) ::
          {:ok, create_fleet_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFleet", input, options)
  end

  @doc """
  Adds remote locations to a fleet and begins populating the new locations with
  EC2
  instances.

  The new instances conform to the fleet's instance type, auto-scaling, and
  other configuration settings.

  This operation cannot be used with fleets that don't support remote locations.
  Fleets can have multiple locations only if they reside in Amazon Web Services
  Regions that support
  this feature and were created after the feature was released in March 2021.

  To add fleet locations, specify the fleet to be updated and provide a list of
  one or
  more locations.

  If successful, this operation returns the list of added locations with their
  status
  set to `NEW`. Amazon GameLift initiates the process of starting an instance in
  each
  added location. You can track the status of each new location by monitoring
  location
  creation events using
  [DescribeFleetEvents](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html). 
  ## Learn more

  [Setting up
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [Multi-location fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec create_fleet_locations(map(), create_fleet_locations_input(), list()) ::
          {:ok, create_fleet_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_locations_errors()}
  def create_fleet_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFleetLocations", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Creates a Amazon GameLift FleetIQ game server
  group for managing game hosting on a collection of Amazon Elastic Compute Cloud
  instances for game hosting.

  This operation creates the game server group, creates an Auto Scaling group in
  your
  Amazon Web Services account, and establishes a link between the two groups. You
  can view the status of
  your game server groups in the Amazon GameLift console. Game server group
  metrics and events are
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
  allow Amazon GameLift FleetIQ
  to create and interact with the Auto Scaling group. For more information, see
  [Create IAM roles for cross-service
  interaction](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-iam-permissions-roles.html)
  in the *Amazon GameLift FleetIQ Developer
  Guide*.

  To create a new game server group, specify a unique group name, IAM role and
  Amazon Elastic Compute Cloud
  launch template, and provide a list of instance types that can be used in the
  group. You
  must also set initial maximum and minimum limits on the group's instance count.
  You can
  optionally set an Auto Scaling policy with target tracking based on a Amazon
  GameLift FleetIQ
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
  Amazon GameLift FleetIQ as part of its balancing activities to optimize for
  availability and cost.

  ## Learn more

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec create_game_server_group(map(), create_game_server_group_input(), list()) ::
          {:ok, create_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_game_server_group_errors()}
  def create_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGameServerGroup", input, options)
  end

  @doc """
  Creates a multiplayer game session for players in a specific fleet location.

  This
  operation prompts an available server process to start a game session and
  retrieves
  connection information for the new game session. As an alternative, consider
  using the
  Amazon GameLift game session placement feature with
  [StartGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html) , which uses the FleetIQ algorithm and queues to
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

  If successful, Amazon GameLift initiates a workflow to start a new game session
  and returns a
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

  Amazon GameLift retains logs for active for 14 days. To access the logs, call
  [GetGameSessionLogUrl](https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetGameSessionLogUrl.html) to download the log files.

  *Available in Amazon GameLift Local.*

  ## Learn more

  [Start a game
  session](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_game_session(map(), create_game_session_input(), list()) ::
          {:ok, create_game_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_game_session_errors()}
  def create_game_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGameSession", input, options)
  end

  @doc """
  Creates a placement queue that processes requests for new game sessions.

  A queue uses
  FleetIQ algorithms to determine the best placement locations and find an
  available game
  server there, then prompts the game server process to start a new game session.

  A game session queue is configured with a set of destinations (Amazon GameLift
  fleets or
  aliases), which determine the locations where the queue can place new game
  sessions.
  These destinations can span multiple fleet types (Spot and On-Demand), instance
  types,
  and Amazon Web Services Regions. If the queue includes multi-location fleets,
  the queue is able to
  place game sessions in all of a fleet's remote locations. You can opt to filter
  out
  individual locations if needed.

  The queue configuration also determines how FleetIQ selects the best available
  placement
  for a new game session. Before searching for an available game server, FleetIQ
  first
  prioritizes the queue's destinations and locations, with the best placement
  locations on
  top. You can set up the queue to use the FleetIQ default prioritization or
  provide an
  alternate set of priorities.

  To create a new queue, provide a name, timeout value, and a list of
  destinations.
  Optionally, specify a sort configuration and/or a filter, and define a set of
  latency
  cap policies. You can also include the ARN for an Amazon Simple Notification
  Service
  (SNS) topic to receive notifications of game session placement activity.
  Notifications
  using SNS or CloudWatch events is the preferred way to track placement activity.

  If successful, a new `GameSessionQueue` object is returned with an assigned
  queue ARN. New game session requests, which are submitted to queue with
  [StartGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html) or
  [StartMatchmaking](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchmaking.html),
  reference a queue's name or ARN.

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
          | {:error, create_game_session_queue_errors()}
  def create_game_session_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGameSessionQueue", input, options)
  end

  @doc """
  Creates a custom location for use in an Anywhere fleet.
  """
  @spec create_location(map(), create_location_input(), list()) ::
          {:ok, create_location_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_location_errors()}
  def create_location(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLocation", input, options)
  end

  @doc """
  Defines a new matchmaking configuration for use with FlexMatch.

  Whether your are using
  FlexMatch with Amazon GameLift hosting or as a standalone matchmaking service,
  the matchmaking
  configuration sets out rules for matching players and forming teams. If you're
  also
  using Amazon GameLift hosting, it defines how to start game sessions for each
  match. Your
  matchmaking system can use multiple configurations to handle different game
  scenarios.
  All matchmaking requests identify the matchmaking configuration to use and
  provide
  player attributes consistent with that configuration.

  To create a matchmaking configuration, you must provide the following:
  configuration
  name and FlexMatch mode (with or without Amazon GameLift hosting); a rule set
  that specifies how
  to evaluate players and find acceptable matches; whether player acceptance is
  required;
  and the maximum time allowed for a matchmaking attempt. When using FlexMatch
  with Amazon GameLift
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
          | {:error, create_matchmaking_configuration_errors()}
  def create_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMatchmakingConfiguration", input, options)
  end

  @doc """
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
          | {:error, create_matchmaking_rule_set_errors()}
  def create_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMatchmakingRuleSet", input, options)
  end

  @doc """
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
  Amazon GameLift
  service. Player sessions cannot be updated.

  The maximum number of players per game session is 200. It is not adjustable.

  ## Related actions

  [All APIs by
  task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_player_session(map(), create_player_session_input(), list()) ::
          {:ok, create_player_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_player_session_errors()}
  def create_player_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePlayerSession", input, options)
  end

  @doc """
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
  Amazon GameLift service. Player sessions cannot be updated.

  The maximum number of players per game session is 200. It is not adjustable.

  ## Related actions

  [All APIs by
  task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_player_sessions(map(), create_player_sessions_input(), list()) ::
          {:ok, create_player_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_player_sessions_errors()}
  def create_player_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePlayerSessions", input, options)
  end

  @doc """
  Creates a new script record for your Realtime Servers script.

  Realtime scripts are JavaScript that
  provide configuration settings and optional custom game logic for your game. The
  script
  is deployed when you create a Realtime Servers fleet to host your game sessions.
  Script logic is
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
  service
  to access your S3 bucket.

  If the call is successful, a new script record is created with a unique script
  ID. If
  the script file is provided as a local file, the file is uploaded to an Amazon
  GameLift-owned S3
  bucket and the script record's storage location reflects this location. If the
  script
  file is provided as an S3 bucket, Amazon GameLift accesses the file at this
  storage location as
  needed for deployment.

  ## Learn more

  [Amazon GameLift Realtime Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  [Set Up a Role for Amazon GameLift Access](https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_script(map(), create_script_input(), list()) ::
          {:ok, create_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_script_errors()}
  def create_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScript", input, options)
  end

  @doc """
  Requests authorization to create or delete a peer connection between the VPC for
  your
  Amazon GameLift fleet and a virtual private cloud (VPC) in your Amazon Web
  Services account.

  VPC peering enables the game servers on
  your fleet to communicate directly with other Amazon Web Services resources.
  After you've received
  authorization, use
  [CreateVpcPeeringConnection](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringConnection.html) to establish the peering connection. For more
  information, see [VPC Peering with Amazon GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

  You can peer with VPCs that are owned by any Amazon Web Services account you
  have access to,
  including the account that you use to manage your Amazon GameLift fleets. You
  cannot peer with
  VPCs that are in different Regions.

  To request authorization to create a connection, call this operation from the
  Amazon Web Services
  account with the VPC that you want to peer to your Amazon GameLift fleet. For
  example, to enable
  your game servers to retrieve data from a DynamoDB table, use the account that
  manages
  that DynamoDB resource. Identify the following values: (1) The ID of the VPC
  that you
  want to peer with, and (2) the ID of the Amazon Web Services account that you
  use to manage Amazon GameLift. If
  successful, VPC peering is authorized for the specified VPC.

  To request authorization to delete a connection, call this operation from the
  Amazon Web Services
  account with the VPC that is peered with your Amazon GameLift fleet. Identify
  the following
  values: (1) VPC ID that you want to delete the peering connection for, and (2)
  ID of the
  Amazon Web Services account that you use to manage Amazon GameLift.

  The authorization remains valid for 24 hours unless it is canceled. You must
  create or
  delete the peering connection while the authorization is valid.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec create_vpc_peering_authorization(map(), create_vpc_peering_authorization_input(), list()) ::
          {:ok, create_vpc_peering_authorization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpc_peering_authorization_errors()}
  def create_vpc_peering_authorization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcPeeringAuthorization", input, options)
  end

  @doc """
  Establishes a VPC peering connection between a virtual private cloud (VPC) in an
  Amazon Web Services account with the VPC
  for your Amazon GameLift fleet.

  VPC peering enables the game servers on your fleet to communicate
  directly with other Amazon Web Services resources. You can peer with VPCs in any
  Amazon Web Services account that
  you have access to, including the account that you use to manage your Amazon
  GameLift fleets. You
  cannot peer with VPCs that are in different Regions. For more information, see
  [VPC Peering with Amazon GameLift
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
  to manage the Amazon GameLift fleets. Identify the following values: (1) The ID
  of the fleet you
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
          | {:error, create_vpc_peering_connection_errors()}
  def create_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcPeeringConnection", input, options)
  end

  @doc """
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
          | {:error, delete_alias_errors()}
  def delete_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAlias", input, options)
  end

  @doc """
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
          | {:error, delete_build_errors()}
  def delete_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBuild", input, options)
  end

  @doc """
  Deletes all resources and information related a fleet.

  Any current fleet instances,
  including those in remote locations, are shut down. You don't need to call
  `DeleteFleetLocations` separately.

  If the fleet being deleted has a VPC peering connection, you first need to get a
  valid authorization (good for 24 hours) by calling
  [CreateVpcPeeringAuthorization](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html). You do not need to explicitly delete the
  VPC peering connection.

  To delete a fleet, specify the fleet ID to be terminated. During the deletion
  process
  the fleet status is changed to `DELETING`. When completed, the status
  switches to `TERMINATED` and the fleet event `FLEET_DELETED` is
  sent.

  ## Learn more

  [Setting up Amazon GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec delete_fleet(map(), delete_fleet_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleet", input, options)
  end

  @doc """
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

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec delete_fleet_locations(map(), delete_fleet_locations_input(), list()) ::
          {:ok, delete_fleet_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_locations_errors()}
  def delete_fleet_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFleetLocations", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

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
  servers in the game server group are deregistered, Amazon GameLift FleetIQ can
  begin deleting resources.
  If any of the delete operations fail, the game server group is placed in
  `ERROR` status.

  Amazon GameLift FleetIQ emits delete events to Amazon CloudWatch.

  ## Learn more

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec delete_game_server_group(map(), delete_game_server_group_input(), list()) ::
          {:ok, delete_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_game_server_group_errors()}
  def delete_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGameServerGroup", input, options)
  end

  @doc """
  Deletes a game session queue.

  Once a queue is successfully deleted, unfulfilled
  [StartGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html)
  requests that reference the queue will fail. To
  delete a queue, specify the queue name.
  """
  @spec delete_game_session_queue(map(), delete_game_session_queue_input(), list()) ::
          {:ok, delete_game_session_queue_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_game_session_queue_errors()}
  def delete_game_session_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGameSessionQueue", input, options)
  end

  @doc """
  Deletes a custom location.

  Before deleting a custom location, review any fleets currently using the custom
  location and deregister the location if it is in use. For more information, see
  [DeregisterCompute](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeregisterCompute.html).
  """
  @spec delete_location(map(), delete_location_input(), list()) ::
          {:ok, delete_location_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_location_errors()}
  def delete_location(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLocation", input, options)
  end

  @doc """
  Permanently removes a FlexMatch matchmaking configuration.

  To delete, specify the
  configuration name. A matchmaking configuration cannot be deleted if it is being
  used in
  any active matchmaking tickets.
  """
  @spec delete_matchmaking_configuration(map(), delete_matchmaking_configuration_input(), list()) ::
          {:ok, delete_matchmaking_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_matchmaking_configuration_errors()}
  def delete_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMatchmakingConfiguration", input, options)
  end

  @doc """
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
          | {:error, delete_matchmaking_rule_set_errors()}
  def delete_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMatchmakingRuleSet", input, options)
  end

  @doc """
  Deletes a fleet scaling policy.

  Once deleted, the policy is no longer in force and
  Amazon GameLift removes all record of it. To delete a scaling policy, specify
  both the scaling
  policy name and the fleet ID it is associated with.

  To temporarily suspend scaling policies, use
  [StopFleetActions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html).
  This operation suspends all policies for the
  fleet.
  """
  @spec delete_scaling_policy(map(), delete_scaling_policy_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_scaling_policy_errors()}
  def delete_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScalingPolicy", input, options)
  end

  @doc """
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

  [Amazon GameLift Realtime Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec delete_script(map(), delete_script_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_script_errors()}
  def delete_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScript", input, options)
  end

  @doc """
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
          | {:error, delete_vpc_peering_authorization_errors()}
  def delete_vpc_peering_authorization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcPeeringAuthorization", input, options)
  end

  @doc """
  Removes a VPC peering connection.

  To delete the connection, you must have a valid
  authorization for the VPC peering connection that you want to delete..

  Once a valid authorization exists, call this operation from the Amazon Web
  Services account that is
  used to manage the Amazon GameLift fleets. Identify the connection to delete by
  the connection ID
  and fleet ID. If successful, the connection is removed.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec delete_vpc_peering_connection(map(), delete_vpc_peering_connection_input(), list()) ::
          {:ok, delete_vpc_peering_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpc_peering_connection_errors()}
  def delete_vpc_peering_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcPeeringConnection", input, options)
  end

  @doc """
  Removes a compute resource from an Amazon GameLift Anywhere fleet.

  Deregistered computes can no
  longer host game sessions through Amazon GameLift.
  """
  @spec deregister_compute(map(), deregister_compute_input(), list()) ::
          {:ok, deregister_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_compute_errors()}
  def deregister_compute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterCompute", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

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

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec deregister_game_server(map(), deregister_game_server_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_game_server_errors()}
  def deregister_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterGameServer", input, options)
  end

  @doc """
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
          | {:error, describe_alias_errors()}
  def describe_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAlias", input, options)
  end

  @doc """
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
          | {:error, describe_build_errors()}
  def describe_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBuild", input, options)
  end

  @doc """
  Retrieves properties for a compute resource in an Amazon GameLift fleet.

  Call `ListCompute` to get a list of compute resources in a fleet. You can
  request information for computes in either managed EC2 fleets or Anywhere
  fleets.

  To request compute properties, specify the compute name and fleet ID.

  If successful, this operation returns details for the requested compute
  resource. For
  managed EC2 fleets, this operation returns the fleet's EC2 instances. For
  Anywhere
  fleets, this operation returns the fleet's registered computes.
  """
  @spec describe_compute(map(), describe_compute_input(), list()) ::
          {:ok, describe_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_compute_errors()}
  def describe_compute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCompute", input, options)
  end

  @doc """
  Retrieves the instance limits and current utilization for an Amazon Web Services
  Region or location.

  Instance limits control the number of instances, per instance type, per
  location, that
  your Amazon Web Services account can use. Learn more at [Amazon EC2 Instance Types](http://aws.amazon.com/ec2/instance-types/). The information
  returned includes the maximum number of instances allowed and your account's
  current
  usage across all fleets. This information can affect your ability to scale your
  Amazon GameLift
  fleets. You can request a limit increase for your account by using the **Service
  limits** page in the Amazon GameLift console.

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

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_ec2_instance_limits(map(), describe_ec2_instance_limits_input(), list()) ::
          {:ok, describe_ec2_instance_limits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_ec2_instance_limits_errors()}
  def describe_ec2_instance_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEC2InstanceLimits", input, options)
  end

  @doc """
  Retrieves core fleet-wide properties, including the computing hardware and
  deployment
  configuration for all instances in the fleet.

  This operation can be used in the following ways:

    *
  To get attributes for one or more specific fleets, provide a list of fleet IDs
  or fleet ARNs.

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

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_fleet_attributes(map(), describe_fleet_attributes_input(), list()) ::
          {:ok, describe_fleet_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_attributes_errors()}
  def describe_fleet_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetAttributes", input, options)
  end

  @doc """
  Retrieves the resource capacity settings for one or more fleets.

  The data returned
  includes the current fleet capacity (number of EC2 instances), and settings that
  can
  control how capacity scaling. For fleets with remote locations, this operation
  retrieves
  data for the fleet's home Region only.

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
  fleet ID. Each FleetCapacity object includes a `Location` property, which is
  set to the fleet's home Region. When a list of fleet IDs is provided, attribute
  objects
  are returned only for fleets that currently exist.

  Some API operations may limit the number of fleet IDs that are allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message
  includes the maximum allowed.

  ## Learn more

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [GameLift metrics for fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)
  """
  @spec describe_fleet_capacity(map(), describe_fleet_capacity_input(), list()) ::
          {:ok, describe_fleet_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_capacity_errors()}
  def describe_fleet_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetCapacity", input, options)
  end

  @doc """
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

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_fleet_events(map(), describe_fleet_events_input(), list()) ::
          {:ok, describe_fleet_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_events_errors()}
  def describe_fleet_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetEvents", input, options)
  end

  @doc """
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

  [Setting up Amazon GameLift
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_fleet_location_attributes(
          map(),
          describe_fleet_location_attributes_input(),
          list()
        ) ::
          {:ok, describe_fleet_location_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_location_attributes_errors()}
  def describe_fleet_location_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetLocationAttributes", input, options)
  end

  @doc """
  Retrieves the resource capacity settings for a fleet location.

  The data returned
  includes the current capacity (number of EC2 instances) and some scaling
  settings for
  the requested fleet location. Use this operation to retrieve capacity
  information for a
  fleet's remote location or home Region (you can also retrieve home Region
  capacity by
  calling `DescribeFleetCapacity`).

  To retrieve capacity data, identify a fleet and location.

  If successful, a `FleetCapacity` object is returned for the requested fleet
  location.

  ## Learn more

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [GameLift metrics for fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)
  """
  @spec describe_fleet_location_capacity(map(), describe_fleet_location_capacity_input(), list()) ::
          {:ok, describe_fleet_location_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_location_capacity_errors()}
  def describe_fleet_location_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetLocationCapacity", input, options)
  end

  @doc """
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

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [GameLift metrics for fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)
  """
  @spec describe_fleet_location_utilization(
          map(),
          describe_fleet_location_utilization_input(),
          list()
        ) ::
          {:ok, describe_fleet_location_utilization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_location_utilization_errors()}
  def describe_fleet_location_utilization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetLocationUtilization", input, options)
  end

  @doc """
  Retrieves a fleet's inbound connection permissions.

  Connection permissions specify the
  range of IP addresses and port settings that incoming traffic can use to access
  server
  processes in the fleet. Game sessions that are running on instances in the fleet
  must
  use connections that fall in this range.

  This operation can be used in the following ways:

    *
  To retrieve the inbound connection permissions for a fleet, identify the
  fleet's unique identifier.

    *
  To check the status of recent updates to a fleet remote location, specify the
  fleet ID and a location. Port setting updates can take time to propagate across
  all locations.

  If successful, a set of `IpPermission` objects is returned for the
  requested fleet ID. When a location is specified, a pending status is included.
  If the
  requested fleet has been deleted, the result set is empty.

  ## Learn more

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec describe_fleet_port_settings(map(), describe_fleet_port_settings_input(), list()) ::
          {:ok, describe_fleet_port_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_port_settings_errors()}
  def describe_fleet_port_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetPortSettings", input, options)
  end

  @doc """
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

  [Setting up Amazon GameLift Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [GameLift Metrics for Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)
  """
  @spec describe_fleet_utilization(map(), describe_fleet_utilization_input(), list()) ::
          {:ok, describe_fleet_utilization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_utilization_errors()}
  def describe_fleet_utilization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFleetUtilization", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Retrieves information for a
  registered game server.

  Information includes game server status, health check info, and
  the instance that the game server is running on.

  To retrieve game server information, specify the game server ID. If successful,
  the
  requested game server object is returned.

  ## Learn more

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec describe_game_server(map(), describe_game_server_input(), list()) ::
          {:ok, describe_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_server_errors()}
  def describe_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameServer", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Retrieves information on a
  game server group.

  This operation returns only properties related to Amazon GameLift FleetIQ. To
  view or
  update properties for the corresponding Auto Scaling group, such as launch
  template,
  auto scaling policies, and maximum/minimum group size, access the Auto Scaling
  group
  directly.

  To get attributes for a game server group, provide a group name or ARN value. If
  successful, a `GameServerGroup` object is returned.

  ## Learn more

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec describe_game_server_group(map(), describe_game_server_group_input(), list()) ::
          {:ok, describe_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_server_group_errors()}
  def describe_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameServerGroup", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Retrieves status
  information about the Amazon EC2 instances associated with a Amazon GameLift
  FleetIQ game server group.

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

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec describe_game_server_instances(map(), describe_game_server_instances_input(), list()) ::
          {:ok, describe_game_server_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_server_instances_errors()}
  def describe_game_server_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameServerInstances", input, options)
  end

  @doc """
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
          | {:error, describe_game_session_details_errors()}
  def describe_game_session_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameSessionDetails", input, options)
  end

  @doc """
  Retrieves information, including current status, about a game session placement
  request.

  To get game session placement details, specify the placement ID.

  This operation is not designed to be continually called to track game session
  status.
  This practice can cause you to exceed your API limit, which results in errors.
  Instead,
  you must configure configure an Amazon Simple Notification Service (SNS) topic
  to receive notifications from
  FlexMatch or queues. Continuously polling with `DescribeGameSessionPlacement`
  should only be used for games in development with low game session usage.
  """
  @spec describe_game_session_placement(map(), describe_game_session_placement_input(), list()) ::
          {:ok, describe_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_session_placement_errors()}
  def describe_game_session_placement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameSessionPlacement", input, options)
  end

  @doc """
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
          | {:error, describe_game_session_queues_errors()}
  def describe_game_session_queues(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameSessionQueues", input, options)
  end

  @doc """
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

  *Available in Amazon GameLift Local.*

  ## Learn more

  [Find a game session](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_game_sessions(map(), describe_game_sessions_input(), list()) ::
          {:ok, describe_game_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_game_sessions_errors()}
  def describe_game_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeGameSessions", input, options)
  end

  @doc """
  Retrieves information about the EC2 instances in an Amazon GameLift managed
  fleet, including
  instance ID, connection data, and status.

  You can use this operation with a
  multi-location fleet to get location-specific instance information. As an
  alternative,
  use the operations `ListCompute` and `DescribeCompute`
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
          | {:error, describe_instances_errors()}
  def describe_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstances", input, options)
  end

  @doc """
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
          | {:error, describe_matchmaking_errors()}
  def describe_matchmaking(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMatchmaking", input, options)
  end

  @doc """
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
          | {:error, describe_matchmaking_configurations_errors()}
  def describe_matchmaking_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMatchmakingConfigurations", input, options)
  end

  @doc """
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
          | {:error, describe_matchmaking_rule_sets_errors()}
  def describe_matchmaking_rule_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMatchmakingRuleSets", input, options)
  end

  @doc """
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
  a specific `PlayerSessionId` or `PlayerId`, Amazon GameLift ignores the filter
  criteria.
  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, a `PlayerSession` object is returned for each session that
  matches the request.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_player_sessions(map(), describe_player_sessions_input(), list()) ::
          {:ok, describe_player_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_player_sessions_errors()}
  def describe_player_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePlayerSessions", input, options)
  end

  @doc """
  Retrieves a fleet's runtime configuration settings.

  The runtime configuration tells
  Amazon GameLift which server processes to run (and how) on each instance in the
  fleet.

  To get the runtime configuration that is currently in forces for a fleet,
  provide the
  fleet ID.

  If successful, a `RuntimeConfiguration` object is returned for the
  requested fleet. If the requested fleet has been deleted, the result set is
  empty.

  ## Learn more

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [Running multiple processes on a
  fleet](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html)
  """
  @spec describe_runtime_configuration(map(), describe_runtime_configuration_input(), list()) ::
          {:ok, describe_runtime_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_runtime_configuration_errors()}
  def describe_runtime_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRuntimeConfiguration", input, options)
  end

  @doc """
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
          | {:error, describe_scaling_policies_errors()}
  def describe_scaling_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Retrieves properties for a Realtime script.

  To request a script record, specify the script ID. If successful, an object
  containing
  the script properties is returned.

  ## Learn more

  [Amazon GameLift Realtime Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec describe_script(map(), describe_script_input(), list()) ::
          {:ok, describe_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_script_errors()}
  def describe_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScript", input, options)
  end

  @doc """
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
          | {:error, describe_vpc_peering_authorizations_errors()}
  def describe_vpc_peering_authorizations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcPeeringAuthorizations", input, options)
  end

  @doc """
  Retrieves information on VPC peering connections.

  Use this operation to get peering
  information for all fleets or for one specific fleet ID.

  To retrieve connection information, call this operation from the Amazon Web
  Services account that is
  used to manage the Amazon GameLift fleets. Specify a fleet ID or leave the
  parameter empty to
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
          | {:error, describe_vpc_peering_connections_errors()}
  def describe_vpc_peering_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcPeeringConnections", input, options)
  end

  @doc """
  Requests authorization to remotely connect to a compute resource in an Amazon
  GameLift fleet.

  Call this action to connect to an instance in a managed EC2 fleet if the fleet's
  game
  build uses Amazon GameLift server SDK 5.x or later. To connect to instances with
  game builds
  that use server SDK 4.x or earlier, call `GetInstanceAccess`.

  To request access to a compute, identify the specific EC2 instance and the fleet
  it
  belongs to. You can retrieve instances for a managed EC2 fleet by calling
  `ListCompute`.

  If successful, this operation returns a set of temporary Amazon Web Services
  credentials, including
  a two-part access key and a session token. Use these credentials with Amazon EC2
  Systems Manager (SSM)
  to start a session with the compute. For more details, see [ Starting a session (CLI)](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html#sessions-start-cli)
  in the *Amazon EC2 Systems Manager User Guide*.

  ## Learn more

  [Remotely connect to fleet instances](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html)

  [Debug fleet issues](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html)
  """
  @spec get_compute_access(map(), get_compute_access_input(), list()) ::
          {:ok, get_compute_access_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_compute_access_errors()}
  def get_compute_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComputeAccess", input, options)
  end

  @doc """
  Requests an authentication token from Amazon GameLift for a registered compute
  in an Anywhere
  fleet.

  The game servers that are running on the compute use this token to authenticate
  with the Amazon GameLift service. Each server process must provide a valid
  authentication token
  in its call to the Amazon GameLift server SDK action `InitSDK()`.

  Authentication tokens are valid for a limited time span. Use a mechanism to
  regularly
  request a fresh authentication token before the current token expires.

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
          | {:error, get_compute_auth_token_errors()}
  def get_compute_auth_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetComputeAuthToken", input, options)
  end

  @doc """
  Retrieves the location of stored game session logs for a specified game session
  on
  Amazon GameLift managed fleets.

  When a game session is terminated, Amazon GameLift automatically stores
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
          | {:error, get_game_session_log_url_errors()}
  def get_game_session_log_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGameSessionLogUrl", input, options)
  end

  @doc """
  Requests authorization to remotely connect to an instance in an Amazon GameLift
  managed fleet.

  Use this operation to connect to instances with game servers that use Amazon
  GameLift server SDK
  4.x or earlier. To connect to instances with game servers that use server SDK
  5.x or
  later, call `GetComputeAccess`.

  To request access to an instance, specify IDs for the instance and the fleet it
  belongs to. You can retrieve instance IDs for a fleet by calling
  [DescribeInstances](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeInstances.html) with the fleet ID.

  If successful, this operation returns an IP address and credentials. The
  returned
  credentials match the operating system of the instance, as follows:

    *
  For a Windows instance: returns a user name and secret (password) for use with
  a Windows Remote Desktop client.

    *
  For a Linux instance: returns a user name and secret (RSA private key) for use
  with an SSH client. You must save the secret to a `.pem` file. If
  you're using the CLI, see the example [ Get credentials for a Linux
  instance](https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess.html#API_GetInstanceAccess_Examples)
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
          | {:error, get_instance_access_errors()}
  def get_instance_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstanceAccess", input, options)
  end

  @doc """
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
          | {:error, list_aliases_errors()}
  def list_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAliases", input, options)
  end

  @doc """
  Retrieves build resources for all builds associated with the Amazon Web Services
  account in use.

  You
  can limit results to builds that are in a specific status by using the
  `Status` parameter. Use the pagination parameters to retrieve results in
  a set of sequential pages.

  Build resources are not listed in any particular order.

  ## Learn more

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec list_builds(map(), list_builds_input(), list()) ::
          {:ok, list_builds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_builds_errors()}
  def list_builds(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBuilds", input, options)
  end

  @doc """
  Retrieves the compute resources in an Amazon GameLift fleet.

  You can request information for
  either managed EC2 fleets or Anywhere fleets.

  To request a list of computes, specify the fleet ID. You can filter the result
  set by
  location. Use the pagination parameters to retrieve results in a set of
  sequential
  pages.

  If successful, this operation returns the compute resource for the requested
  fleet.
  For managed EC2 fleets, it returns a list of EC2 instances. For Anywhere fleets,
  it
  returns a list of registered compute names.
  """
  @spec list_compute(map(), list_compute_input(), list()) ::
          {:ok, list_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_compute_errors()}
  def list_compute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCompute", input, options)
  end

  @doc """
  Retrieves a collection of fleet resources in an Amazon Web Services Region.

  You can call this
  operation to get fleets in a previously selected default Region (see
  [https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-region.html](https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-region.html)or specify a Region in your request. You can filter the result set to find only
  those
  fleets that are deployed with a specific build or script. For fleets that have
  multiple
  locations, this operation retrieves fleets based on their home Region only.

  This operation can be used in the following ways:

    *
  To get a list of all fleets in a Region, don't provide a build or script
  identifier.

    *
  To get a list of all fleets where a specific custom game build is deployed,
  provide the build ID.

    *
  To get a list of all Realtime Servers fleets with a specific configuration
  script,
  provide the script ID.

  Use the pagination parameters to retrieve results as a set of sequential pages.

  If successful, a list of fleet IDs that match the request parameters is
  returned. A
  NextToken value is also returned if there are more result pages to retrieve.

  Fleet resources are not listed in a particular order.

  ## Learn more

  [Setting up Amazon GameLift
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec list_fleets(map(), list_fleets_input(), list()) ::
          {:ok, list_fleets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleets_errors()}
  def list_fleets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFleets", input, options)
  end

  @doc """
  Lists a game server groups.
  """
  @spec list_game_server_groups(map(), list_game_server_groups_input(), list()) ::
          {:ok, list_game_server_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_game_server_groups_errors()}
  def list_game_server_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGameServerGroups", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Retrieves information on all game
  servers that are currently active in a specified game server group.

  You can opt to sort
  the list by game server age. Use the pagination parameters to retrieve results
  in a set
  of sequential segments.

  ## Learn more

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec list_game_servers(map(), list_game_servers_input(), list()) ::
          {:ok, list_game_servers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_game_servers_errors()}
  def list_game_servers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGameServers", input, options)
  end

  @doc """
  Lists all custom and Amazon Web Services locations.
  """
  @spec list_locations(map(), list_locations_input(), list()) ::
          {:ok, list_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_locations_errors()}
  def list_locations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLocations", input, options)
  end

  @doc """
  Retrieves script records for all Realtime scripts that are associated with the
  Amazon Web Services
  account in use.

  ## Learn more

  [Amazon GameLift Realtime Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec list_scripts(map(), list_scripts_input(), list()) ::
          {:ok, list_scripts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_scripts_errors()}
  def list_scripts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListScripts", input, options)
  end

  @doc """
  Retrieves all tags assigned to a Amazon GameLift resource.

  Use resource tags to organize Amazon Web Services
  resources for a range of purposes. This operation handles the permissions
  necessary to
  manage tags for Amazon GameLift resources that support tagging.

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
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a scaling policy for a fleet.

  Scaling policies are used to
  automatically scale a fleet's hosting capacity to meet player demand. An active
  scaling
  policy instructs Amazon GameLift to track a fleet metric and automatically
  change the fleet's
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
  policy, you set your ideal buffer size and leave it to Amazon GameLift to take
  whatever action is
  needed to maintain that target.

  For example, you might choose to maintain a 10% buffer for a fleet that has the
  capacity to host 100 simultaneous game sessions. This policy tells Amazon
  GameLift to take action
  whenever the fleet's available capacity falls below or rises above 10 game
  sessions.
  Amazon GameLift will start new instances or stop unused instances in order to
  return to the 10%
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
          | {:error, put_scaling_policy_errors()}
  def put_scaling_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutScalingPolicy", input, options)
  end

  @doc """
  Registers a compute resource to an Amazon GameLift Anywhere fleet.

  With Anywhere fleets you can
  incorporate your own computing hardware into an Amazon GameLift game hosting
  solution.

  To register a compute to a fleet, give the compute a name (must be unique within
  the
  fleet) and specify the compute resource's DNS name or IP address. Provide the
  Anywhere
  fleet ID and a fleet location to associate with the compute being registered.
  You can
  optionally include the path to a TLS certificate on the compute resource.

  If successful, this operation returns the compute details, including an Amazon
  GameLift SDK
  endpoint. Game server processes that run on the compute use this endpoint to
  communicate
  with the Amazon GameLift service. Each server process includes the SDK endpoint
  in its call to
  the Amazon GameLift server SDK action `InitSDK()`.

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
  @spec register_compute(map(), register_compute_input(), list()) ::
          {:ok, register_compute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_compute_errors()}
  def register_compute(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterCompute", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Creates a new game server
  resource and notifies Amazon GameLift FleetIQ that the game server is ready to
  host gameplay and players.

  This operation is called by a game server process that is running on an instance
  in a
  game server group. Registering game servers enables Amazon GameLift FleetIQ to
  track available game
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

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec register_game_server(map(), register_game_server_input(), list()) ::
          {:ok, register_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_game_server_errors()}
  def register_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterGameServer", input, options)
  end

  @doc """
  Retrieves a fresh set of credentials for use when uploading a new set of game
  build
  files to Amazon GameLift's Amazon S3.

  This is done as part of the build creation process; see
  [GameSession](https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateBuild.html). 
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
          | {:error, request_upload_credentials_errors()}
  def request_upload_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RequestUploadCredentials", input, options)
  end

  @doc """
  Retrieves the fleet ID that an alias is currently pointing to.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec resolve_alias(map(), resolve_alias_input(), list()) ::
          {:ok, resolve_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resolve_alias_errors()}
  def resolve_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResolveAlias", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

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

  [Amazon GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec resume_game_server_group(map(), resume_game_server_group_input(), list()) ::
          {:ok, resume_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resume_game_server_group_errors()}
  def resume_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeGameServerGroup", input, options)
  end

  @doc """
  Retrieves all active game sessions that match a set of search criteria and sorts
  them
  into a specified order.

  This operation is not designed to continually track game session status because
  that practice can cause you to exceed your API limit and generate errors.
  Instead, configure an Amazon Simple Notification Service (Amazon SNS) topic to
  receive notifications from a matchmaker or game session placement queue.

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
  [DescribeGameSessions](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessions.html) .

  To set search and sort criteria, create a filter expression using the following
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
  The filter expression must specify the `GameProperty` -- a `Key` and a string
  `Value` to search for the game sessions.

  For example, to search for the above key-value pair, specify the following
  search filter: `gameSessionProperties.difficulty = "novice"`.
  All game property values are searched as strings.

  For examples of searching game sessions, see the ones below, and also see
  [Search game sessions by game
  property](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-search).

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
          | {:error, search_game_sessions_errors()}
  def search_game_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchGameSessions", input, options)
  end

  @doc """
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

  If successful, Amazon GameLift once again initiates scaling events as triggered
  by the fleet's
  scaling policies. If actions on the fleet location were never stopped, this
  operation
  will have no effect.

  ## Learn more

  [Setting up Amazon GameLift
  fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec start_fleet_actions(map(), start_fleet_actions_input(), list()) ::
          {:ok, start_fleet_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_fleet_actions_errors()}
  def start_fleet_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFleetActions", input, options)
  end

  @doc """
  Places a request for a new game session in a queue.

  When processing a placement
  request, Amazon GameLift searches for available resources on the queue's
  destinations, scanning
  each until it finds resources or the placement request times out.

  A game session placement request can also request player sessions. When a new
  game
  session is successfully created, Amazon GameLift creates a player session for
  each player
  included in the request.

  When placing a game session, by default Amazon GameLift tries each fleet in the
  order they are
  listed in the queue configuration. Ideally, a queue's destinations are listed in
  preference order.

  Alternatively, when requesting a game session with players, you can also provide
  latency data for each player in relevant Regions. Latency data indicates the
  performance
  lag a player experiences when connected to a fleet in the Region. Amazon
  GameLift uses latency
  data to reorder the list of destinations to place the game session in a Region
  with
  minimal lag. If latency data is provided for multiple players, Amazon GameLift
  calculates each
  Region's average lag for all players and reorders to get the best game play
  across all
  players.

  To place a new game session request, specify the following:

    *
  The queue name and a set of game session properties and settings

    *
  A unique ID (such as a UUID) for the placement. You use this ID to track the
  status of the placement request

    *
  (Optional) A set of player data and a unique player ID for each player that
  you are joining to the new game session (player data is optional, but if you
  include it, you must also provide a unique ID for each player)

    *
  Latency data for all players (if you want to optimize game play for the
  players)

  If successful, a new game session placement is created.

  To track the status of a placement request, call
  [DescribeGameSessionPlacement](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionPlacement.html)
  and check the request's status. If the status
  is `FULFILLED`, a new game session has been created and a game session ARN
  and Region are referenced. If the placement request times out, you can resubmit
  the
  request or retry it with a different queue.
  """
  @spec start_game_session_placement(map(), start_game_session_placement_input(), list()) ::
          {:ok, start_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_game_session_placement_errors()}
  def start_game_session_placement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartGameSessionPlacement", input, options)
  end

  @doc """
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

  When using FlexMatch with Amazon GameLift managed hosting, you can request a
  backfill match from
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
  How Amazon GameLift FlexMatch
  works](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html)
  """
  @spec start_match_backfill(map(), start_match_backfill_input(), list()) ::
          {:ok, start_match_backfill_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_match_backfill_errors()}
  def start_match_backfill(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMatchBackfill", input, options)
  end

  @doc """
  Uses FlexMatch to create a game match for a group of players based on custom
  matchmaking
  rules.

  With games that use Amazon GameLift managed hosting, this operation also
  triggers Amazon GameLift
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
  How Amazon GameLift FlexMatch
  works](https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html)
  """
  @spec start_matchmaking(map(), start_matchmaking_input(), list()) ::
          {:ok, start_matchmaking_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_matchmaking_errors()}
  def start_matchmaking(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartMatchmaking", input, options)
  end

  @doc """
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

  If successful, Amazon GameLift no longer initiates scaling events except in
  response to manual
  changes using
  [UpdateFleetCapacity](https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html). 
  ## Learn more

  [Setting up Amazon GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec stop_fleet_actions(map(), stop_fleet_actions_input(), list()) ::
          {:ok, stop_fleet_actions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_fleet_actions_errors()}
  def stop_fleet_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopFleetActions", input, options)
  end

  @doc """
  Cancels a game session placement that is in `PENDING` status.

  To stop a
  placement, provide the placement ID values. If successful, the placement is
  moved to
  `CANCELLED` status.
  """
  @spec stop_game_session_placement(map(), stop_game_session_placement_input(), list()) ::
          {:ok, stop_game_session_placement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_game_session_placement_errors()}
  def stop_game_session_placement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopGameSessionPlacement", input, options)
  end

  @doc """
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
          | {:error, stop_matchmaking_errors()}
  def stop_matchmaking(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopMatchmaking", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

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

  [Amazon GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec suspend_game_server_group(map(), suspend_game_server_group_input(), list()) ::
          {:ok, suspend_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, suspend_game_server_group_errors()}
  def suspend_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SuspendGameServerGroup", input, options)
  end

  @doc """
  Assigns a tag to an Amazon GameLift resource.

  You can use tags to organize resources, create
  IAM permissions policies to manage access to groups of resources, customize
  Amazon Web Services cost
  breakdowns, and more. This operation handles the permissions necessary to manage
  tags
  for Amazon GameLift resources that support tagging.

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
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag assigned to a Amazon GameLift resource.

  You can use resource tags to organize
  Amazon Web Services resources for a range of purposes. This operation handles
  the permissions
  necessary to manage tags for Amazon GameLift resources that support tagging.

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
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates properties for an alias.

  To update properties, specify the alias ID to be
  updated and provide the information to be changed. To reassign an alias to
  another
  fleet, provide an updated routing strategy. If successful, the updated alias
  record is
  returned.

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec update_alias(map(), update_alias_input(), list()) ::
          {:ok, update_alias_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_alias_errors()}
  def update_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAlias", input, options)
  end

  @doc """
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
          | {:error, update_build_errors()}
  def update_build(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBuild", input, options)
  end

  @doc """
  Updates a fleet's mutable attributes, including game session protection and
  resource
  creation limits.

  To update fleet attributes, specify the fleet ID and the property values that
  you want
  to change.

  If successful, an updated `FleetAttributes` object is returned.

  ## Learn more

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec update_fleet_attributes(map(), update_fleet_attributes_input(), list()) ::
          {:ok, update_fleet_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_attributes_errors()}
  def update_fleet_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleetAttributes", input, options)
  end

  @doc """
  Updates capacity settings for a fleet.

  For fleets with multiple locations, use this
  operation to manage capacity settings in each location individually. Fleet
  capacity
  determines the number of game sessions and players that can be hosted based on
  the fleet
  configuration. Use this operation to set the following fleet capacity
  properties:

    *
  Minimum/maximum size: Set hard limits on fleet capacity. Amazon GameLift cannot
  set
  the fleet's capacity to a value outside of this range, whether the capacity is
  changed manually or through automatic scaling.

    *
  Desired capacity: Manually set the number of Amazon EC2 instances to be
  maintained
  in a fleet location. Before changing a fleet's desired capacity, you may want to
  call
  [DescribeEC2InstanceLimits](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeEC2InstanceLimits.html) to get the maximum capacity of the
  fleet's Amazon EC2 instance type. Alternatively, consider using automatic
  scaling to
  adjust capacity based on player demand.

  This operation can be used in the following ways:

    *
  To update capacity for a fleet's home Region, or if the fleet has no remote
  locations, omit the `Location` parameter. The fleet must be in
  `ACTIVE` status.

    *
  To update capacity for a fleet's remote location, include the
  `Location` parameter set to the location to be updated. The
  location must be in `ACTIVE` status.

  If successful, capacity settings are updated immediately. In response a change
  in
  desired capacity, Amazon GameLift initiates steps to start new instances or
  terminate existing
  instances in the requested fleet location. This continues until the location's
  active
  instance count matches the new desired instance count. You can track a fleet's
  current
  capacity by calling
  [DescribeFleetCapacity](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html)
  or
  [DescribeFleetLocationCapacity](https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html). If the requested desired instance count is
  higher than the instance type's limit, the `LimitExceeded` exception
  occurs.

  ## Learn more

  [Scaling fleet
  capacity](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-manage-capacity.html)
  """
  @spec update_fleet_capacity(map(), update_fleet_capacity_input(), list()) ::
          {:ok, update_fleet_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_capacity_errors()}
  def update_fleet_capacity(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleetCapacity", input, options)
  end

  @doc """
  Updates permissions that allow inbound traffic to connect to game sessions that
  are
  being hosted on instances in the fleet.

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

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec update_fleet_port_settings(map(), update_fleet_port_settings_input(), list()) ::
          {:ok, update_fleet_port_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_fleet_port_settings_errors()}
  def update_fleet_port_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFleetPortSettings", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Updates information about a registered game server to help Amazon GameLift
  FleetIQ track game server
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

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec update_game_server(map(), update_game_server_input(), list()) ::
          {:ok, update_game_server_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_game_server_errors()}
  def update_game_server(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGameServer", input, options)
  end

  @doc """

  ## This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.

  Updates Amazon GameLift FleetIQ-specific
  properties for a game server group.

  Many Auto Scaling group properties are updated on
  the Auto Scaling group directly, including the launch template, Auto Scaling
  policies,
  and maximum/minimum/desired instance counts.

  To update the game server group, specify the game server group ID and provide
  the
  updated values. Before applying the updates, the new values are validated to
  ensure that
  Amazon GameLift FleetIQ can continue to perform instance balancing activity. If
  successful, a
  `GameServerGroup` object is returned.

  ## Learn more

  [Amazon GameLift FleetIQ Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)
  """
  @spec update_game_server_group(map(), update_game_server_group_input(), list()) ::
          {:ok, update_game_server_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_game_server_group_errors()}
  def update_game_server_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGameServerGroup", input, options)
  end

  @doc """
  Updates the mutable properties of a game session.

  To update a game session, specify the game session ID and the values you want to
  change.

  If successful, the updated `GameSession` object is returned.

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec update_game_session(map(), update_game_session_input(), list()) ::
          {:ok, update_game_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_game_session_errors()}
  def update_game_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGameSession", input, options)
  end

  @doc """
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
          | {:error, update_game_session_queue_errors()}
  def update_game_session_queue(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGameSessionQueue", input, options)
  end

  @doc """
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
          | {:error, update_matchmaking_configuration_errors()}
  def update_matchmaking_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMatchmakingConfiguration", input, options)
  end

  @doc """
  Updates the current runtime configuration for the specified fleet, which tells
  Amazon GameLift
  how to launch server processes on all instances in the fleet.

  You can update a fleet's
  runtime configuration at any time after the fleet is created; it does not need
  to be in
  `ACTIVE` status.

  To update runtime configuration, specify the fleet ID and provide a
  `RuntimeConfiguration` with an updated set of server process
  configurations.

  If successful, the fleet's runtime configuration settings are updated. Each
  instance
  in the fleet regularly checks for and retrieves updated runtime configurations.
  Instances immediately begin complying with the new configuration by launching
  new server
  processes or not replacing existing processes when they shut down. Updating a
  fleet's
  runtime configuration never affects existing server processes.

  ## Learn more

  [Setting up Amazon GameLift fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)
  """
  @spec update_runtime_configuration(map(), update_runtime_configuration_input(), list()) ::
          {:ok, update_runtime_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_runtime_configuration_errors()}
  def update_runtime_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRuntimeConfiguration", input, options)
  end

  @doc """
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
  revised script is uploaded to the Amazon GameLift service. Once the script is
  updated and
  acquired by a fleet instance, the new version is used for all new game sessions.

  ## Learn more

  [Amazon GameLift Realtime Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  ## Related actions

  [All APIs by task](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)
  """
  @spec update_script(map(), update_script_input(), list()) ::
          {:ok, update_script_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_script_errors()}
  def update_script(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScript", input, options)
  end

  @doc """
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
          | {:error, validate_matchmaking_rule_set_errors()}
  def validate_matchmaking_rule_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ValidateMatchmakingRuleSet", input, options)
  end
end
