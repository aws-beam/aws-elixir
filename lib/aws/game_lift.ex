# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GameLift do
  @moduledoc """
  Amazon GameLift Service

  GameLift provides solutions for hosting session-based multiplayer game
  servers in the cloud, including tools for deploying, operating, and scaling
  game servers. Built on AWS global computing infrastructure, GameLift helps
  you deliver high-performance, high-reliability, low-cost game servers while
  dynamically scaling your resource usage to meet player demand.

  **About GameLift solutions**

  Get more information on these GameLift solutions in the [Amazon GameLift
  Developer
  Guide](http://docs.aws.amazon.com/gamelift/latest/developerguide/).

  <ul> <li> Managed GameLift -- GameLift offers a fully managed service to
  set up and maintain computing machines for hosting, manage game session and
  player session life cycle, and handle security, storage, and performance
  tracking. You can use automatic scaling tools to balance hosting costs
  against meeting player demand., configure your game session management to
  minimize player latency, or add FlexMatch for matchmaking.

  </li> <li> Managed GameLift with Realtime Servers – With GameLift Realtime
  Servers, you can quickly configure and set up game servers for your game.
  Realtime Servers provides a game server framework with core Amazon GameLift
  infrastructure already built in.

  </li> <li> GameLift FleetIQ – Use GameLift FleetIQ as a standalone feature
  while managing your own EC2 instances and Auto Scaling groups for game
  hosting. GameLift FleetIQ provides optimizations that make low-cost Spot
  Instances viable for game hosting.

  </li> </ul> **About this API Reference**

  This reference guide describes the low-level service API for Amazon
  GameLift. You can find links to language-specific SDK guides and the AWS
  CLI reference with each operation and data type topic. Useful links:

  <ul> <li> [GameLift API operations listed by
  tasks](https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html)

  </li> <li> [ GameLift tools and
  resources](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html)

  </li> </ul>
  """

  @doc """
  Registers a player's acceptance or rejection of a proposed FlexMatch match.
  A matchmaking configuration may require player acceptance; if so, then
  matches built with that configuration cannot be completed unless all
  players accept the proposed match within a specified time limit.

  When FlexMatch builds a match, all the matchmaking tickets involved in the
  proposed match are placed into status `REQUIRES_ACCEPTANCE`. This is a
  trigger for your game to get acceptance from all players in the ticket.
  Acceptances are only valid for tickets when they are in this status; all
  other acceptances result in an error.

  To register acceptance, specify the ticket ID, a response, and one or more
  players. Once all players have registered acceptance, the matchmaking
  tickets advance to status `PLACING`, where a new game session is created
  for the match.

  If any player rejects the match, or if acceptances are not received before
  a specified timeout, the proposed match is dropped. The matchmaking tickets
  are then handled in one of two ways: For tickets where one or more players
  rejected the match, the ticket status is returned to `SEARCHING` to find a
  new match. For tickets where one or more players failed to respond, the
  ticket status is set to `CANCELLED`, and processing is terminated. A new
  matchmaking request for these players can be submitted as needed.

  **Learn more**

  [ Add FlexMatch to a Game
  Client](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html)

  [ FlexMatch Events
  Reference](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-events.html)

  **Related operations**

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> <li> `StartMatchBackfill`

  </li> </ul>
  """
  def accept_match(client, input, options \\ []) do
    request(client, "AcceptMatch", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Locates an available game server and temporarily reserves it to host
  gameplay and players. This operation is called from a game client or client
  service (such as a matchmaker) to request hosting resources for a new game
  session. In response, GameLift FleetIQ locates an available game server,
  places it in `CLAIMED` status for 60 seconds, and returns connection
  information that players can use to connect to the game server.

  To claim a game server, identify a game server group. You can also specify
  a game server ID, although this approach bypasses GameLift FleetIQ
  placement optimization. Optionally, include game data to pass to the game
  server at the start of a game session, such as a game map or player
  information.

  When a game server is successfully claimed, connection information is
  returned. A claimed game server's utilization status remains `AVAILABLE`
  while the claim status is set to `CLAIMED` for up to 60 seconds. This time
  period gives the game server time to update its status to `UTILIZED` (using
  `UpdateGameServer`) once players join. If the game server's status is not
  updated within 60 seconds, the game server reverts to unclaimed status and
  is available to be claimed by another request. The claim time period is a
  fixed value and is not configurable.

  If you try to claim a specific game server, this request will fail in the
  following cases:

  <ul> <li> If the game server utilization status is `UTILIZED`.

  </li> <li> If the game server claim status is `CLAIMED`.

  </li> </ul> <note> When claiming a specific game server, this request will
  succeed even if the game server is running on an instance in `DRAINING`
  status. To avoid this, first check the instance status by calling
  `DescribeGameServerInstances`.

  </note> **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `RegisterGameServer`

  </li> <li> `ListGameServers`

  </li> <li> `ClaimGameServer`

  </li> <li> `DescribeGameServer`

  </li> <li> `UpdateGameServer`

  </li> <li> `DeregisterGameServer`

  </li> </ul>
  """
  def claim_game_server(client, input, options \\ []) do
    request(client, "ClaimGameServer", input, options)
  end

  @doc """
  Creates an alias for a fleet. In most situations, you can use an alias ID
  in place of a fleet ID. An alias provides a level of abstraction for a
  fleet that is useful when redirecting player traffic from one fleet to
  another, such as when updating your game build.

  Amazon GameLift supports two types of routing strategies for aliases:
  simple and terminal. A simple alias points to an active fleet. A terminal
  alias is used to display messaging or link to a URL instead of routing
  players to an active fleet. For example, you might use a terminal alias
  when a game version is no longer supported and you want to direct players
  to an upgrade site.

  To create a fleet alias, specify an alias name, routing strategy, and
  optional description. Each simple alias can point to only one fleet, but a
  fleet can have multiple aliases. If successful, a new alias record is
  returned, including an alias ID and an ARN. You can reassign an alias to
  another fleet by calling `UpdateAlias`.

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Creates a new Amazon GameLift build resource for your game server binary
  files. Game server binaries must be combined into a zip file for use with
  Amazon GameLift.

  <important> When setting up a new game build for GameLift, we recommend
  using the AWS CLI command **
  [upload-build](https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html)
  **. This helper command combines two tasks: (1) it uploads your build files
  from a file directory to a GameLift Amazon S3 location, and (2) it creates
  a new build resource.

  </important> The `CreateBuild` operation can used in the following
  scenarios:

  <ul> <li> To create a new game build with build files that are in an S3
  location under an AWS account that you control. To use this option, you
  must first give Amazon GameLift access to the S3 bucket. With permissions
  in place, call `CreateBuild` and specify a build name, operating system,
  and the S3 storage location of your game build.

  </li> <li> To directly upload your build files to a GameLift S3 location.
  To use this option, first call `CreateBuild` and specify a build name and
  operating system. This operation creates a new build resource and also
  returns an S3 location with temporary access credentials. Use the
  credentials to manually upload your build files to the specified S3
  location. For more information, see [Uploading
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html)
  in the *Amazon S3 Developer Guide*. Build files can be uploaded to the
  GameLift S3 location once only; that can't be updated.

  </li> </ul> If successful, this operation creates a new build resource with
  a unique build ID and places it in `INITIALIZED` status. A build must be in
  `READY` status before you can create fleets with it.

  **Learn more**

  [Uploading Your
  Game](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  [ Create a Build with Files in Amazon
  S3](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)

  **Related operations**

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def create_build(client, input, options \\ []) do
    request(client, "CreateBuild", input, options)
  end

  @doc """
  Creates a new fleet to run your game servers. whether they are custom game
  builds or Realtime Servers with game-specific script. A fleet is a set of
  Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can host
  multiple game sessions. When creating a fleet, you choose the hardware
  specifications, set some configuration options, and specify the game server
  to deploy on the new fleet.

  To create a new fleet, provide the following: (1) a fleet name, (2) an EC2
  instance type and fleet type (spot or on-demand), (3) the build ID for your
  game build or script ID if using Realtime Servers, and (4) a runtime
  configuration, which determines how game servers will run on each instance
  in the fleet.

  If the `CreateFleet` call is successful, Amazon GameLift performs the
  following tasks. You can track the process of a fleet by checking the fleet
  status or by monitoring fleet creation events:

  <ul> <li> Creates a fleet resource. Status: `NEW`.

  </li> <li> Begins writing events to the fleet event log, which can be
  accessed in the Amazon GameLift console.

  </li> <li> Sets the fleet's target capacity to 1 (desired instances), which
  triggers Amazon GameLift to start one new EC2 instance.

  </li> <li> Downloads the game build or Realtime script to the new instance
  and installs it. Statuses: `DOWNLOADING`, `VALIDATING`, `BUILDING`.

  </li> <li> Starts launching server processes on the instance. If the fleet
  is configured to run multiple server processes per instance, Amazon
  GameLift staggers each process launch by a few seconds. Status:
  `ACTIVATING`.

  </li> <li> Sets the fleet's status to `ACTIVE` as soon as one server
  process is ready to host a game session.

  </li> </ul> **Learn more**

  [Setting Up
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [Debug Fleet Creation
  Issues](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def create_fleet(client, input, options \\ []) do
    request(client, "CreateFleet", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Creates a GameLift FleetIQ game server group for managing game hosting on a
  collection of Amazon EC2 instances for game hosting. This operation creates
  the game server group, creates an Auto Scaling group in your AWS account,
  and establishes a link between the two groups. You can view the status of
  your game server groups in the GameLift console. Game server group metrics
  and events are emitted to Amazon CloudWatch.

  Before creating a new game server group, you must have the following:

  <ul> <li> An Amazon EC2 launch template that specifies how to launch Amazon
  EC2 instances with your game server build. For more information, see [
  Launching an Instance from a Launch
  Template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
  in the *Amazon EC2 User Guide*.

  </li> <li> An IAM role that extends limited access to your AWS account to
  allow GameLift FleetIQ to create and interact with the Auto Scaling group.
  For more information, see [Create IAM roles for cross-service
  interaction](https://docs.aws.amazon.com/gamelift/latest/developerguide/gsg-iam-permissions-roles.html)
  in the *GameLift FleetIQ Developer Guide*.

  </li> </ul> To create a new game server group, specify a unique group name,
  IAM role and Amazon EC2 launch template, and provide a list of instance
  types that can be used in the group. You must also set initial maximum and
  minimum limits on the group's instance count. You can optionally set an
  Auto Scaling policy with target tracking based on a GameLift FleetIQ
  metric.

  Once the game server group and corresponding Auto Scaling group are
  created, you have full access to change the Auto Scaling group's
  configuration as needed. Several properties that are set when creating a
  game server group, including maximum/minimum size and auto-scaling policy
  settings, must be updated directly in the Auto Scaling group. Keep in mind
  that some Auto Scaling group properties are periodically updated by
  GameLift FleetIQ as part of its balancing activities to optimize for
  availability and cost.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `CreateGameServerGroup`

  </li> <li> `ListGameServerGroups`

  </li> <li> `DescribeGameServerGroup`

  </li> <li> `UpdateGameServerGroup`

  </li> <li> `DeleteGameServerGroup`

  </li> <li> `ResumeGameServerGroup`

  </li> <li> `SuspendGameServerGroup`

  </li> <li> `DescribeGameServerInstances`

  </li> </ul>
  """
  def create_game_server_group(client, input, options \\ []) do
    request(client, "CreateGameServerGroup", input, options)
  end

  @doc """
  Creates a multiplayer game session for players. This operation creates a
  game session record and assigns an available server process in the
  specified fleet to host the game session. A fleet must have an `ACTIVE`
  status before a game session can be created in it.

  To create a game session, specify either fleet ID or alias ID and indicate
  a maximum number of players to allow in the game session. You can also
  provide a name and game-specific properties for this game session. If
  successful, a `GameSession` object is returned containing the game session
  properties and other settings you specified.

  **Idempotency tokens.** You can add a token that uniquely identifies game
  session requests. This is useful for ensuring that game session requests
  are idempotent. Multiple requests with the same idempotency token are
  processed only once; subsequent requests return the original result. All
  response values are the same with the exception of game session status,
  which may change.

  **Resource creation limits.** If you are creating a game session on a fleet
  with a resource creation limit policy in force, then you must specify a
  creator ID. Without this ID, Amazon GameLift has no way to evaluate the
  policy for this new game session request.

  **Player acceptance policy.** By default, newly created game sessions are
  open to new players. You can restrict new player access by using
  `UpdateGameSession` to change the game session's player session creation
  policy.

  **Game session logs.** Logs are retained for all active game sessions for
  14 days. To access the logs, call `GetGameSessionLogUrl` to download the
  log files.

  *Available in Amazon GameLift Local.*

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def create_game_session(client, input, options \\ []) do
    request(client, "CreateGameSession", input, options)
  end

  @doc """
  Establishes a new queue for processing requests to place new game sessions.
  A queue identifies where new game sessions can be hosted -- by specifying a
  list of destinations (fleets or aliases) -- and how long requests can wait
  in the queue before timing out. You can set up a queue to try to place game
  sessions on fleets in multiple Regions. To add placement requests to a
  queue, call `StartGameSessionPlacement` and reference the queue name.

  **Destination order.** When processing a request for a game session, Amazon
  GameLift tries each destination in order until it finds one with available
  resources to host the new game session. A queue's default order is
  determined by how destinations are listed. The default order is overridden
  when a game session placement request provides player latency information.
  Player latency information enables Amazon GameLift to prioritize
  destinations where players report the lowest average latency, as a result
  placing the new game session where the majority of players will have the
  best possible gameplay experience.

  **Player latency policies.** For placement requests containing player
  latency information, use player latency policies to protect individual
  players from very high latencies. With a latency cap, even when a
  destination can deliver a low latency for most players, the game is not
  placed where any individual player is reporting latency higher than a
  policy's maximum. A queue can have multiple latency policies, which are
  enforced consecutively starting with the policy with the lowest latency
  cap. Use multiple policies to gradually relax latency controls; for
  example, you might set a policy with a low latency cap for the first 60
  seconds, a second policy with a higher cap for the next 60 seconds, etc.

  To create a new queue, provide a name, timeout value, a list of
  destinations and, if desired, a set of latency policies. If successful, a
  new queue object is returned.

  **Learn more**

  [ Design a Game Session
  Queue](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html)

  [ Create a Game Session
  Queue](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html)

  **Related operations**

  <ul> <li> `CreateGameSessionQueue`

  </li> <li> `DescribeGameSessionQueues`

  </li> <li> `UpdateGameSessionQueue`

  </li> <li> `DeleteGameSessionQueue`

  </li> </ul>
  """
  def create_game_session_queue(client, input, options \\ []) do
    request(client, "CreateGameSessionQueue", input, options)
  end

  @doc """
  Defines a new matchmaking configuration for use with FlexMatch. A
  matchmaking configuration sets out guidelines for matching players and
  getting the matches into games. You can set up multiple matchmaking
  configurations to handle the scenarios needed for your game. Each
  matchmaking ticket (`StartMatchmaking` or `StartMatchBackfill`) specifies a
  configuration for the match and provides player attributes to support the
  configuration being used.

  To create a matchmaking configuration, at a minimum you must specify the
  following: configuration name; a rule set that governs how to evaluate
  players and find acceptable matches; a game session queue to use when
  placing a new game session for the match; and the maximum time allowed for
  a matchmaking attempt.

  To track the progress of matchmaking tickets, set up an Amazon Simple
  Notification Service (SNS) to receive notifications, and provide the topic
  ARN in the matchmaking configuration. An alternative method, continuously
  poling ticket status with `DescribeMatchmaking`, should only be used for
  games in development with low matchmaking usage.

  **Learn more**

  [ Design a FlexMatch
  Matchmaker](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html)

  [ Set Up FlexMatch Event
  Notification](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html)

  **Related operations**

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> <li> `DeleteMatchmakingRuleSet`

  </li> </ul>
  """
  def create_matchmaking_configuration(client, input, options \\ []) do
    request(client, "CreateMatchmakingConfiguration", input, options)
  end

  @doc """
  Creates a new rule set for FlexMatch matchmaking. A rule set describes the
  type of match to create, such as the number and size of teams. It also sets
  the parameters for acceptable player matches, such as minimum skill level
  or character type. A rule set is used by a `MatchmakingConfiguration`.

  To create a matchmaking rule set, provide unique rule set name and the rule
  set body in JSON format. Rule sets must be defined in the same Region as
  the matchmaking configuration they are used with.

  Since matchmaking rule sets cannot be edited, it is a good idea to check
  the rule set syntax using `ValidateMatchmakingRuleSet` before creating a
  new rule set.

  **Learn more**

  <ul> <li> [Build a Rule
  Set](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html)

  </li> <li> [Design a
  Matchmaker](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html)

  </li> <li> [Matchmaking with
  FlexMatch](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html)

  </li> </ul> **Related operations**

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> <li> `DeleteMatchmakingRuleSet`

  </li> </ul>
  """
  def create_matchmaking_rule_set(client, input, options \\ []) do
    request(client, "CreateMatchmakingRuleSet", input, options)
  end

  @doc """
  Reserves an open player slot in an active game session. Before a player can
  be added, a game session must have an `ACTIVE` status, have a creation
  policy of `ALLOW_ALL`, and have an open player slot. To add a group of
  players to a game session, use `CreatePlayerSessions`. When the player
  connects to the game server and references a player session ID, the game
  server contacts the Amazon GameLift service to validate the player
  reservation and accept the player.

  To create a player session, specify a game session ID, player ID, and
  optionally a string of player data. If successful, a slot is reserved in
  the game session for the player and a new `PlayerSession` object is
  returned. Player sessions cannot be updated.

  *Available in Amazon GameLift Local.*

  <ul> <li> `CreatePlayerSession`

  </li> <li> `CreatePlayerSessions`

  </li> <li> `DescribePlayerSessions`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def create_player_session(client, input, options \\ []) do
    request(client, "CreatePlayerSession", input, options)
  end

  @doc """
  Reserves open slots in a game session for a group of players. Before
  players can be added, a game session must have an `ACTIVE` status, have a
  creation policy of `ALLOW_ALL`, and have an open player slot. To add a
  single player to a game session, use `CreatePlayerSession`. When a player
  connects to the game server and references a player session ID, the game
  server contacts the Amazon GameLift service to validate the player
  reservation and accept the player.

  To create player sessions, specify a game session ID, a list of player IDs,
  and optionally a set of player data strings. If successful, a slot is
  reserved in the game session for each player and a set of new
  `PlayerSession` objects is returned. Player sessions cannot be updated.

  *Available in Amazon GameLift Local.*

  <ul> <li> `CreatePlayerSession`

  </li> <li> `CreatePlayerSessions`

  </li> <li> `DescribePlayerSessions`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def create_player_sessions(client, input, options \\ []) do
    request(client, "CreatePlayerSessions", input, options)
  end

  @doc """
  Creates a new script record for your Realtime Servers script. Realtime
  scripts are JavaScript that provide configuration settings and optional
  custom game logic for your game. The script is deployed when you create a
  Realtime Servers fleet to host your game sessions. Script logic is executed
  during an active game session.

  To create a new script record, specify a script name and provide the script
  file(s). The script files and all dependencies must be zipped into a single
  file. You can pull the zip file from either of these locations:

  <ul> <li> A locally available directory. Use the *ZipFile* parameter for
  this option.

  </li> <li> An Amazon Simple Storage Service (Amazon S3) bucket under your
  AWS account. Use the *StorageLocation* parameter for this option. You'll
  need to have an Identity Access Management (IAM) role that allows the
  Amazon GameLift service to access your S3 bucket.

  </li> </ul> If the call is successful, a new script record is created with
  a unique script ID. If the script file is provided as a local file, the
  file is uploaded to an Amazon GameLift-owned S3 bucket and the script
  record's storage location reflects this location. If the script file is
  provided as an S3 bucket, Amazon GameLift accesses the file at this storage
  location as needed for deployment.

  **Learn more**

  [Amazon GameLift Realtime
  Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  [Set Up a Role for Amazon GameLift
  Access](https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html)

  **Related operations**

  <ul> <li> `CreateScript`

  </li> <li> `ListScripts`

  </li> <li> `DescribeScript`

  </li> <li> `UpdateScript`

  </li> <li> `DeleteScript`

  </li> </ul>
  """
  def create_script(client, input, options \\ []) do
    request(client, "CreateScript", input, options)
  end

  @doc """
  Requests authorization to create or delete a peer connection between the
  VPC for your Amazon GameLift fleet and a virtual private cloud (VPC) in
  your AWS account. VPC peering enables the game servers on your fleet to
  communicate directly with other AWS resources. Once you've received
  authorization, call `CreateVpcPeeringConnection` to establish the peering
  connection. For more information, see [VPC Peering with Amazon GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

  You can peer with VPCs that are owned by any AWS account you have access
  to, including the account that you use to manage your Amazon GameLift
  fleets. You cannot peer with VPCs that are in different Regions.

  To request authorization to create a connection, call this operation from
  the AWS account with the VPC that you want to peer to your Amazon GameLift
  fleet. For example, to enable your game servers to retrieve data from a
  DynamoDB table, use the account that manages that DynamoDB resource.
  Identify the following values: (1) The ID of the VPC that you want to peer
  with, and (2) the ID of the AWS account that you use to manage Amazon
  GameLift. If successful, VPC peering is authorized for the specified VPC.

  To request authorization to delete a connection, call this operation from
  the AWS account with the VPC that is peered with your Amazon GameLift
  fleet. Identify the following values: (1) VPC ID that you want to delete
  the peering connection for, and (2) ID of the AWS account that you use to
  manage Amazon GameLift.

  The authorization remains valid for 24 hours unless it is canceled by a
  call to `DeleteVpcPeeringAuthorization`. You must create or delete the
  peering connection while the authorization is valid.

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def create_vpc_peering_authorization(client, input, options \\ []) do
    request(client, "CreateVpcPeeringAuthorization", input, options)
  end

  @doc """
  Establishes a VPC peering connection between a virtual private cloud (VPC)
  in an AWS account with the VPC for your Amazon GameLift fleet. VPC peering
  enables the game servers on your fleet to communicate directly with other
  AWS resources. You can peer with VPCs in any AWS account that you have
  access to, including the account that you use to manage your Amazon
  GameLift fleets. You cannot peer with VPCs that are in different Regions.
  For more information, see [VPC Peering with Amazon GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html).

  Before calling this operation to establish the peering connection, you
  first need to call `CreateVpcPeeringAuthorization` and identify the VPC you
  want to peer with. Once the authorization for the specified VPC is issued,
  you have 24 hours to establish the connection. These two operations handle
  all tasks necessary to peer the two VPCs, including acceptance, updating
  routing tables, etc.

  To establish the connection, call this operation from the AWS account that
  is used to manage the Amazon GameLift fleets. Identify the following
  values: (1) The ID of the fleet you want to be enable a VPC peering
  connection for; (2) The AWS account with the VPC that you want to peer
  with; and (3) The ID of the VPC you want to peer with. This operation is
  asynchronous. If successful, a `VpcPeeringConnection` request is created.
  You can use continuous polling to track the request's status using
  `DescribeVpcPeeringConnections`, or by monitoring fleet events for success
  or failure using `DescribeFleetEvents`.

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def create_vpc_peering_connection(client, input, options \\ []) do
    request(client, "CreateVpcPeeringConnection", input, options)
  end

  @doc """
  Deletes an alias. This operation removes all record of the alias. Game
  clients attempting to access a server process using the deleted alias
  receive an error. To delete an alias, specify the alias ID to be deleted.

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def delete_alias(client, input, options \\ []) do
    request(client, "DeleteAlias", input, options)
  end

  @doc """
  Deletes a build. This operation permanently deletes the build resource and
  any uploaded build files. Deleting a build does not affect the status of
  any active fleets using the build, but you can no longer create new fleets
  with the deleted build.

  To delete a build, specify the build ID.

  **Learn more**

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  **Related operations**

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def delete_build(client, input, options \\ []) do
    request(client, "DeleteBuild", input, options)
  end

  @doc """
  Deletes everything related to a fleet. Before deleting a fleet, you must
  set the fleet's desired capacity to zero. See `UpdateFleetCapacity`.

  If the fleet being deleted has a VPC peering connection, you first need to
  get a valid authorization (good for 24 hours) by calling
  `CreateVpcPeeringAuthorization`. You do not need to explicitly delete the
  VPC peering connection--this is done as part of the delete fleet process.

  This operation removes the fleet and its resources. Once a fleet is
  deleted, you can no longer use any of the resource in that fleet.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def delete_fleet(client, input, options \\ []) do
    request(client, "DeleteFleet", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Terminates a game server group and permanently deletes the game server
  group record. You have several options for how these resources are impacted
  when deleting the game server group. Depending on the type of delete
  operation selected, this operation might affect these resources:

  <ul> <li> The game server group

  </li> <li> The corresponding Auto Scaling group

  </li> <li> All game servers that are currently running in the group

  </li> </ul> To delete a game server group, identify the game server group
  to delete and specify the type of delete operation to initiate. Game server
  groups can only be deleted if they are in `ACTIVE` or `ERROR` status.

  If the delete request is successful, a series of operations are kicked off.
  The game server group status is changed to `DELETE_SCHEDULED`, which
  prevents new game servers from being registered and stops automatic scaling
  activity. Once all game servers in the game server group are deregistered,
  GameLift FleetIQ can begin deleting resources. If any of the delete
  operations fail, the game server group is placed in `ERROR` status.

  GameLift FleetIQ emits delete events to Amazon CloudWatch.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `CreateGameServerGroup`

  </li> <li> `ListGameServerGroups`

  </li> <li> `DescribeGameServerGroup`

  </li> <li> `UpdateGameServerGroup`

  </li> <li> `DeleteGameServerGroup`

  </li> <li> `ResumeGameServerGroup`

  </li> <li> `SuspendGameServerGroup`

  </li> <li> `DescribeGameServerInstances`

  </li> </ul>
  """
  def delete_game_server_group(client, input, options \\ []) do
    request(client, "DeleteGameServerGroup", input, options)
  end

  @doc """
  Deletes a game session queue. Once a queue is successfully deleted,
  unfulfilled `StartGameSessionPlacement` requests that reference the queue
  will fail. To delete a queue, specify the queue name.

  **Learn more**

  [ Using Multi-Region
  Queues](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html)

  **Related operations**

  <ul> <li> `CreateGameSessionQueue`

  </li> <li> `DescribeGameSessionQueues`

  </li> <li> `UpdateGameSessionQueue`

  </li> <li> `DeleteGameSessionQueue`

  </li> </ul>
  """
  def delete_game_session_queue(client, input, options \\ []) do
    request(client, "DeleteGameSessionQueue", input, options)
  end

  @doc """
  Permanently removes a FlexMatch matchmaking configuration. To delete,
  specify the configuration name. A matchmaking configuration cannot be
  deleted if it is being used in any active matchmaking tickets.

  **Related operations**

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> <li> `DeleteMatchmakingRuleSet`

  </li> </ul>
  """
  def delete_matchmaking_configuration(client, input, options \\ []) do
    request(client, "DeleteMatchmakingConfiguration", input, options)
  end

  @doc """
  Deletes an existing matchmaking rule set. To delete the rule set, provide
  the rule set name. Rule sets cannot be deleted if they are currently being
  used by a matchmaking configuration.

  **Learn more**

  <ul> <li> [Build a Rule
  Set](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html)

  </li> </ul> **Related operations**

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> <li> `DeleteMatchmakingRuleSet`

  </li> </ul>
  """
  def delete_matchmaking_rule_set(client, input, options \\ []) do
    request(client, "DeleteMatchmakingRuleSet", input, options)
  end

  @doc """
  Deletes a fleet scaling policy. Once deleted, the policy is no longer in
  force and GameLift removes all record of it. To delete a scaling policy,
  specify both the scaling policy name and the fleet ID it is associated
  with.

  To temporarily suspend scaling policies, call `StopFleetActions`. This
  operation suspends all policies for the fleet.

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> Manage scaling policies:

  <ul> <li> `PutScalingPolicy` (auto-scaling)

  </li> <li> `DescribeScalingPolicies` (auto-scaling)

  </li> <li> `DeleteScalingPolicy` (auto-scaling)

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def delete_scaling_policy(client, input, options \\ []) do
    request(client, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Deletes a Realtime script. This operation permanently deletes the script
  record. If script files were uploaded, they are also deleted (files stored
  in an S3 bucket are not deleted).

  To delete a script, specify the script ID. Before deleting a script, be
  sure to terminate all fleets that are deployed with the script being
  deleted. Fleet instances periodically check for script updates, and if the
  script record no longer exists, the instance will go into an error state
  and be unable to host game sessions.

  **Learn more**

  [Amazon GameLift Realtime
  Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  **Related operations**

  <ul> <li> `CreateScript`

  </li> <li> `ListScripts`

  </li> <li> `DescribeScript`

  </li> <li> `UpdateScript`

  </li> <li> `DeleteScript`

  </li> </ul>
  """
  def delete_script(client, input, options \\ []) do
    request(client, "DeleteScript", input, options)
  end

  @doc """
  Cancels a pending VPC peering authorization for the specified VPC. If you
  need to delete an existing VPC peering connection, call
  `DeleteVpcPeeringConnection`.

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def delete_vpc_peering_authorization(client, input, options \\ []) do
    request(client, "DeleteVpcPeeringAuthorization", input, options)
  end

  @doc """
  Removes a VPC peering connection. To delete the connection, you must have a
  valid authorization for the VPC peering connection that you want to delete.
  You can check for an authorization by calling
  `DescribeVpcPeeringAuthorizations` or request a new one using
  `CreateVpcPeeringAuthorization`.

  Once a valid authorization exists, call this operation from the AWS account
  that is used to manage the Amazon GameLift fleets. Identify the connection
  to delete by the connection ID and fleet ID. If successful, the connection
  is removed.

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def delete_vpc_peering_connection(client, input, options \\ []) do
    request(client, "DeleteVpcPeeringConnection", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Removes the game server from a game server group. As a result of this
  operation, the deregistered game server can no longer be claimed and will
  not be returned in a list of active game servers.

  To deregister a game server, specify the game server group and game server
  ID. If successful, this operation emits a CloudWatch event with termination
  timestamp and reason.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `RegisterGameServer`

  </li> <li> `ListGameServers`

  </li> <li> `ClaimGameServer`

  </li> <li> `DescribeGameServer`

  </li> <li> `UpdateGameServer`

  </li> <li> `DeregisterGameServer`

  </li> </ul>
  """
  def deregister_game_server(client, input, options \\ []) do
    request(client, "DeregisterGameServer", input, options)
  end

  @doc """
  Retrieves properties for an alias. This operation returns all alias
  metadata and settings. To get an alias's target fleet ID only, use
  `ResolveAlias`.

  To get alias properties, specify the alias ID. If successful, the requested
  alias record is returned.

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def describe_alias(client, input, options \\ []) do
    request(client, "DescribeAlias", input, options)
  end

  @doc """
  Retrieves properties for a custom game build. To request a build resource,
  specify a build ID. If successful, an object containing the build
  properties is returned.

  **Learn more**

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  **Related operations**

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def describe_build(client, input, options \\ []) do
    request(client, "DescribeBuild", input, options)
  end

  @doc """
  Retrieves the following information for the specified EC2 instance type:

  <ul> <li> Maximum number of instances allowed per AWS account (service
  limit).

  </li> <li> Current usage for the AWS account.

  </li> </ul> To learn more about the capabilities of each instance type, see
  [Amazon EC2 Instance Types](http://aws.amazon.com/ec2/instance-types/).
  Note that the instance types offered may vary depending on the region.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def describe_e_c2_instance_limits(client, input, options \\ []) do
    request(client, "DescribeEC2InstanceLimits", input, options)
  end

  @doc """
  Retrieves core properties, including configuration, status, and metadata,
  for a fleet.

  To get attributes for one or more fleets, provide a list of fleet IDs or
  fleet ARNs. To get attributes for all fleets, do not specify a fleet
  identifier. When requesting attributes for multiple fleets, use the
  pagination parameters to retrieve results as a set of sequential pages. If
  successful, a `FleetAttributes` object is returned for each fleet
  requested, unless the fleet identifier is not found.

  <note> Some API operations may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed number.

  </note> **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetCapacity`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def describe_fleet_attributes(client, input, options \\ []) do
    request(client, "DescribeFleetAttributes", input, options)
  end

  @doc """
  Retrieves the current capacity statistics for one or more fleets. These
  statistics present a snapshot of the fleet's instances and provide insight
  on current or imminent scaling activity. To get statistics on game hosting
  activity in the fleet, see `DescribeFleetUtilization`.

  You can request capacity for all fleets or specify a list of one or more
  fleet identifiers. When requesting multiple fleets, use the pagination
  parameters to retrieve results as a set of sequential pages. If successful,
  a `FleetCapacity` object is returned for each requested fleet ID. When a
  list of fleet IDs is provided, attribute objects are returned only for
  fleets that currently exist.

  <note> Some API operations may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note> **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [GameLift Metrics for
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetCapacity`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def describe_fleet_capacity(client, input, options \\ []) do
    request(client, "DescribeFleetCapacity", input, options)
  end

  @doc """
  Retrieves entries from the specified fleet's event log. You can specify a
  time range to limit the result set. Use the pagination parameters to
  retrieve results as a set of sequential pages. If successful, a collection
  of event log entries matching the request are returned.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetCapacity`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def describe_fleet_events(client, input, options \\ []) do
    request(client, "DescribeFleetEvents", input, options)
  end

  @doc """
  Retrieves a fleet's inbound connection permissions. Connection permissions
  specify the range of IP addresses and port settings that incoming traffic
  can use to access server processes in the fleet. Game sessions that are
  running on instances in the fleet use connections that fall in this range.

  To get a fleet's inbound connection permissions, specify the fleet's unique
  identifier. If successful, a collection of `IpPermission` objects is
  returned for the requested fleet ID. If the requested fleet has been
  deleted, the result set is empty.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetCapacity`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def describe_fleet_port_settings(client, input, options \\ []) do
    request(client, "DescribeFleetPortSettings", input, options)
  end

  @doc """
  Retrieves utilization statistics for one or more fleets. These statistics
  provide insight into how available hosting resources are currently being
  used. To get statistics on available hosting resources, see
  `DescribeFleetCapacity`.

  You can request utilization data for all fleets, or specify a list of one
  or more fleet IDs. When requesting multiple fleets, use the pagination
  parameters to retrieve results as a set of sequential pages. If successful,
  a `FleetUtilization` object is returned for each requested fleet ID, unless
  the fleet identifier is not found.

  <note> Some API operations may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note> **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [GameLift Metrics for
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetCapacity`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def describe_fleet_utilization(client, input, options \\ []) do
    request(client, "DescribeFleetUtilization", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Retrieves information for a registered game server. Information includes
  game server status, health check info, and the instance that the game
  server is running on.

  To retrieve game server information, specify the game server ID. If
  successful, the requested game server object is returned.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `RegisterGameServer`

  </li> <li> `ListGameServers`

  </li> <li> `ClaimGameServer`

  </li> <li> `DescribeGameServer`

  </li> <li> `UpdateGameServer`

  </li> <li> `DeregisterGameServer`

  </li> </ul>
  """
  def describe_game_server(client, input, options \\ []) do
    request(client, "DescribeGameServer", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Retrieves information on a game server group. This operation returns only
  properties related to GameLift FleetIQ. To view or update properties for
  the corresponding Auto Scaling group, such as launch template, auto scaling
  policies, and maximum/minimum group size, access the Auto Scaling group
  directly.

  To get attributes for a game server group, provide a group name or ARN
  value. If successful, a `GameServerGroup` object is returned.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `CreateGameServerGroup`

  </li> <li> `ListGameServerGroups`

  </li> <li> `DescribeGameServerGroup`

  </li> <li> `UpdateGameServerGroup`

  </li> <li> `DeleteGameServerGroup`

  </li> <li> `ResumeGameServerGroup`

  </li> <li> `SuspendGameServerGroup`

  </li> <li> `DescribeGameServerInstances`

  </li> </ul>
  """
  def describe_game_server_group(client, input, options \\ []) do
    request(client, "DescribeGameServerGroup", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Retrieves status information about the Amazon EC2 instances associated with
  a GameLift FleetIQ game server group. Use this operation to detect when
  instances are active or not available to host new game servers. If you are
  looking for instance configuration information, call
  `DescribeGameServerGroup` or access the corresponding Auto Scaling group
  properties.

  To request status for all instances in the game server group, provide a
  game server group ID only. To request status for specific instances,
  provide the game server group ID and one or more instance IDs. Use the
  pagination parameters to retrieve results in sequential segments. If
  successful, a collection of `GameServerInstance` objects is returned.

  This operation is not designed to be called with every game server claim
  request; this practice can cause you to exceed your API limit, which
  results in errors. Instead, as a best practice, cache the results and
  refresh your cache no more than once every 10 seconds.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `CreateGameServerGroup`

  </li> <li> `ListGameServerGroups`

  </li> <li> `DescribeGameServerGroup`

  </li> <li> `UpdateGameServerGroup`

  </li> <li> `DeleteGameServerGroup`

  </li> <li> `ResumeGameServerGroup`

  </li> <li> `SuspendGameServerGroup`

  </li> <li> `DescribeGameServerInstances`

  </li> </ul>
  """
  def describe_game_server_instances(client, input, options \\ []) do
    request(client, "DescribeGameServerInstances", input, options)
  end

  @doc """
  Retrieves properties, including the protection policy in force, for one or
  more game sessions. This operation can be used in several ways: (1) provide
  a `GameSessionId` or `GameSessionArn` to request details for a specific
  game session; (2) provide either a `FleetId` or an `AliasId` to request
  properties for all game sessions running on a fleet.

  To get game session record(s), specify just one of the following: game
  session ID, fleet ID, or alias ID. You can filter this request by game
  session status. Use the pagination parameters to retrieve results as a set
  of sequential pages. If successful, a `GameSessionDetail` object is
  returned for each session matching the request.

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def describe_game_session_details(client, input, options \\ []) do
    request(client, "DescribeGameSessionDetails", input, options)
  end

  @doc """
  Retrieves properties and current status of a game session placement
  request. To get game session placement details, specify the placement ID.
  If successful, a `GameSessionPlacement` object is returned.

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def describe_game_session_placement(client, input, options \\ []) do
    request(client, "DescribeGameSessionPlacement", input, options)
  end

  @doc """
  Retrieves the properties for one or more game session queues. When
  requesting multiple queues, use the pagination parameters to retrieve
  results as a set of sequential pages. If successful, a `GameSessionQueue`
  object is returned for each requested queue. When specifying a list of
  queues, objects are returned only for queues that currently exist in the
  Region.

  **Learn more**

  [ View Your
  Queues](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html)

  **Related operations**

  <ul> <li> `CreateGameSessionQueue`

  </li> <li> `DescribeGameSessionQueues`

  </li> <li> `UpdateGameSessionQueue`

  </li> <li> `DeleteGameSessionQueue`

  </li> </ul>
  """
  def describe_game_session_queues(client, input, options \\ []) do
    request(client, "DescribeGameSessionQueues", input, options)
  end

  @doc """
  Retrieves a set of one or more game sessions. Request a specific game
  session or request all game sessions on a fleet. Alternatively, use
  `SearchGameSessions` to request a set of active game sessions that are
  filtered by certain criteria. To retrieve protection policy settings for
  game sessions, use `DescribeGameSessionDetails`.

  To get game sessions, specify one of the following: game session ID, fleet
  ID, or alias ID. You can filter this request by game session status. Use
  the pagination parameters to retrieve results as a set of sequential pages.
  If successful, a `GameSession` object is returned for each game session
  matching the request.

  *Available in Amazon GameLift Local.*

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def describe_game_sessions(client, input, options \\ []) do
    request(client, "DescribeGameSessions", input, options)
  end

  @doc """
  Retrieves information about a fleet's instances, including instance IDs.
  Use this operation to get details on all instances in the fleet or get
  details on one specific instance.

  To get a specific instance, specify fleet ID and instance ID. To get all
  instances in a fleet, specify a fleet ID only. Use the pagination
  parameters to retrieve results as a set of sequential pages. If successful,
  an `Instance` object is returned for each result.

  **Learn more**

  [Remotely Access Fleet
  Instances](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html)

  [Debug Fleet
  Issues](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html)

  **Related operations**

  <ul> <li> `DescribeInstances`

  </li> <li> `GetInstanceAccess`

  </li> </ul>
  """
  def describe_instances(client, input, options \\ []) do
    request(client, "DescribeInstances", input, options)
  end

  @doc """
  Retrieves one or more matchmaking tickets. Use this operation to retrieve
  ticket information, including--after a successful match is made--connection
  information for the resulting new game session.

  To request matchmaking tickets, provide a list of up to 10 ticket IDs. If
  the request is successful, a ticket object is returned for each requested
  ID that currently exists.

  This operation is not designed to be continually called to track
  matchmaking ticket status. This practice can cause you to exceed your API
  limit, which results in errors. Instead, as a best practice, set up an
  Amazon Simple Notification Service (SNS) to receive notifications, and
  provide the topic ARN in the matchmaking configuration. Continuously poling
  ticket status with `DescribeMatchmaking` should only be used for games in
  development with low matchmaking usage.

  <p/> **Learn more**

  [ Add FlexMatch to a Game
  Client](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html)

  [ Set Up FlexMatch Event
  Notification](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html)

  **Related operations**

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> <li> `StartMatchBackfill`

  </li> </ul>
  """
  def describe_matchmaking(client, input, options \\ []) do
    request(client, "DescribeMatchmaking", input, options)
  end

  @doc """
  Retrieves the details of FlexMatch matchmaking configurations.

  This operation offers the following options: (1) retrieve all matchmaking
  configurations, (2) retrieve configurations for a specified list, or (3)
  retrieve all configurations that use a specified rule set name. When
  requesting multiple items, use the pagination parameters to retrieve
  results as a set of sequential pages.

  If successful, a configuration is returned for each requested name. When
  specifying a list of names, only configurations that currently exist are
  returned.

  **Learn more**

  [ Setting Up FlexMatch
  Matchmakers](https://docs.aws.amazon.com/gamelift/latest/developerguide/matchmaker-build.html)

  **Related operations**

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> <li> `DeleteMatchmakingRuleSet`

  </li> </ul>
  """
  def describe_matchmaking_configurations(client, input, options \\ []) do
    request(client, "DescribeMatchmakingConfigurations", input, options)
  end

  @doc """
  Retrieves the details for FlexMatch matchmaking rule sets. You can request
  all existing rule sets for the Region, or provide a list of one or more
  rule set names. When requesting multiple items, use the pagination
  parameters to retrieve results as a set of sequential pages. If successful,
  a rule set is returned for each requested name.

  **Learn more**

  <ul> <li> [Build a Rule
  Set](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html)

  </li> </ul> **Related operations**

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> <li> `DeleteMatchmakingRuleSet`

  </li> </ul>
  """
  def describe_matchmaking_rule_sets(client, input, options \\ []) do
    request(client, "DescribeMatchmakingRuleSets", input, options)
  end

  @doc """
  Retrieves properties for one or more player sessions. This operation can be
  used in several ways: (1) provide a `PlayerSessionId` to request properties
  for a specific player session; (2) provide a `GameSessionId` to request
  properties for all player sessions in the specified game session; (3)
  provide a `PlayerId` to request properties for all player sessions of a
  specified player.

  To get game session record(s), specify only one of the following: a player
  session ID, a game session ID, or a player ID. You can filter this request
  by player session status. Use the pagination parameters to retrieve results
  as a set of sequential pages. If successful, a `PlayerSession` object is
  returned for each session matching the request.

  *Available in Amazon GameLift Local.*

  <ul> <li> `CreatePlayerSession`

  </li> <li> `CreatePlayerSessions`

  </li> <li> `DescribePlayerSessions`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def describe_player_sessions(client, input, options \\ []) do
    request(client, "DescribePlayerSessions", input, options)
  end

  @doc """
  Retrieves a fleet's runtime configuration settings. The runtime
  configuration tells Amazon GameLift which server processes to run (and how)
  on each instance in the fleet.

  To get a runtime configuration, specify the fleet's unique identifier. If
  successful, a `RuntimeConfiguration` object is returned for the requested
  fleet. If the requested fleet has been deleted, the result set is empty.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  [Running Multiple Processes on a
  Fleet](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> Describe fleets:

  <ul> <li> `DescribeFleetAttributes`

  </li> <li> `DescribeFleetCapacity`

  </li> <li> `DescribeFleetPortSettings`

  </li> <li> `DescribeFleetUtilization`

  </li> <li> `DescribeRuntimeConfiguration`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> `DescribeFleetEvents`

  </li> </ul> </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def describe_runtime_configuration(client, input, options \\ []) do
    request(client, "DescribeRuntimeConfiguration", input, options)
  end

  @doc """
  Retrieves all scaling policies applied to a fleet.

  To get a fleet's scaling policies, specify the fleet ID. You can filter
  this request by policy status, such as to retrieve only active scaling
  policies. Use the pagination parameters to retrieve results as a set of
  sequential pages. If successful, set of `ScalingPolicy` objects is returned
  for the fleet.

  A fleet may have all of its scaling policies suspended
  (`StopFleetActions`). This operation does not affect the status of the
  scaling policies, which remains ACTIVE. To see whether a fleet's scaling
  policies are in force or suspended, call `DescribeFleetAttributes` and
  check the stopped actions.

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> Manage scaling policies:

  <ul> <li> `PutScalingPolicy` (auto-scaling)

  </li> <li> `DescribeScalingPolicies` (auto-scaling)

  </li> <li> `DeleteScalingPolicy` (auto-scaling)

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def describe_scaling_policies(client, input, options \\ []) do
    request(client, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Retrieves properties for a Realtime script.

  To request a script record, specify the script ID. If successful, an object
  containing the script properties is returned.

  **Learn more**

  [Amazon GameLift Realtime
  Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  **Related operations**

  <ul> <li> `CreateScript`

  </li> <li> `ListScripts`

  </li> <li> `DescribeScript`

  </li> <li> `UpdateScript`

  </li> <li> `DeleteScript`

  </li> </ul>
  """
  def describe_script(client, input, options \\ []) do
    request(client, "DescribeScript", input, options)
  end

  @doc """
  Retrieves valid VPC peering authorizations that are pending for the AWS
  account. This operation returns all VPC peering authorizations and requests
  for peering. This includes those initiated and received by this account.

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def describe_vpc_peering_authorizations(client, input, options \\ []) do
    request(client, "DescribeVpcPeeringAuthorizations", input, options)
  end

  @doc """
  Retrieves information on VPC peering connections. Use this operation to get
  peering information for all fleets or for one specific fleet ID.

  To retrieve connection information, call this operation from the AWS
  account that is used to manage the Amazon GameLift fleets. Specify a fleet
  ID or leave the parameter empty to retrieve all connection records. If
  successful, the retrieved information includes both active and pending
  connections. Active connections identify the IpV4 CIDR block that the VPC
  uses to connect.

  <ul> <li> `CreateVpcPeeringAuthorization`

  </li> <li> `DescribeVpcPeeringAuthorizations`

  </li> <li> `DeleteVpcPeeringAuthorization`

  </li> <li> `CreateVpcPeeringConnection`

  </li> <li> `DescribeVpcPeeringConnections`

  </li> <li> `DeleteVpcPeeringConnection`

  </li> </ul>
  """
  def describe_vpc_peering_connections(client, input, options \\ []) do
    request(client, "DescribeVpcPeeringConnections", input, options)
  end

  @doc """
  Retrieves the location of stored game session logs for a specified game
  session. When a game session is terminated, Amazon GameLift automatically
  stores the logs in Amazon S3 and retains them for 14 days. Use this URL to
  download the logs.

  <note> See the [AWS Service
  Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift)
  page for maximum log file sizes. Log files that exceed this limit are not
  saved.

  </note> <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def get_game_session_log_url(client, input, options \\ []) do
    request(client, "GetGameSessionLogUrl", input, options)
  end

  @doc """
  Requests remote access to a fleet instance. Remote access is useful for
  debugging, gathering benchmarking data, or observing activity in real time.

  To remotely access an instance, you need credentials that match the
  operating system of the instance. For a Windows instance, Amazon GameLift
  returns a user name and password as strings for use with a Windows Remote
  Desktop client. For a Linux instance, Amazon GameLift returns a user name
  and RSA private key, also as strings, for use with an SSH client. The
  private key must be saved in the proper format to a `.pem` file before
  using. If you're making this request using the AWS CLI, saving the secret
  can be handled as part of the GetInstanceAccess request, as shown in one of
  the examples for this operation.

  To request access to a specific instance, specify the IDs of both the
  instance and the fleet it belongs to. You can retrieve a fleet's instance
  IDs by calling `DescribeInstances`. If successful, an `InstanceAccess`
  object is returned that contains the instance's IP address and a set of
  credentials.

  **Learn more**

  [Remotely Access Fleet
  Instances](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html)

  [Debug Fleet
  Issues](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html)

  **Related operations**

  <ul> <li> `DescribeInstances`

  </li> <li> `GetInstanceAccess`

  </li> </ul>
  """
  def get_instance_access(client, input, options \\ []) do
    request(client, "GetInstanceAccess", input, options)
  end

  @doc """
  Retrieves all aliases for this AWS account. You can filter the result set
  by alias name and/or routing strategy type. Use the pagination parameters
  to retrieve results in sequential pages.

  <note> Returned aliases are not listed in any particular order.

  </note> <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def list_aliases(client, input, options \\ []) do
    request(client, "ListAliases", input, options)
  end

  @doc """
  Retrieves build resources for all builds associated with the AWS account in
  use. You can limit results to builds that are in a specific status by using
  the `Status` parameter. Use the pagination parameters to retrieve results
  in a set of sequential pages.

  <note> Build resources are not listed in any particular order.

  </note> **Learn more**

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  **Related operations**

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def list_builds(client, input, options \\ []) do
    request(client, "ListBuilds", input, options)
  end

  @doc """
  Retrieves a collection of fleet resources for this AWS account. You can
  filter the result set to find only those fleets that are deployed with a
  specific build or script. Use the pagination parameters to retrieve results
  in sequential pages.

  <note> Fleet resources are not listed in a particular order.

  </note> **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def list_fleets(client, input, options \\ []) do
    request(client, "ListFleets", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Retrieves information on all game servers groups that exist in the current
  AWS account for the selected Region. Use the pagination parameters to
  retrieve results in a set of sequential segments.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `CreateGameServerGroup`

  </li> <li> `ListGameServerGroups`

  </li> <li> `DescribeGameServerGroup`

  </li> <li> `UpdateGameServerGroup`

  </li> <li> `DeleteGameServerGroup`

  </li> <li> `ResumeGameServerGroup`

  </li> <li> `SuspendGameServerGroup`

  </li> <li> `DescribeGameServerInstances`

  </li> </ul>
  """
  def list_game_server_groups(client, input, options \\ []) do
    request(client, "ListGameServerGroups", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Retrieves information on all game servers that are currently active in a
  specified game server group. You can opt to sort the list by game server
  age. Use the pagination parameters to retrieve results in a set of
  sequential segments.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `RegisterGameServer`

  </li> <li> `ListGameServers`

  </li> <li> `ClaimGameServer`

  </li> <li> `DescribeGameServer`

  </li> <li> `UpdateGameServer`

  </li> <li> `DeregisterGameServer`

  </li> </ul>
  """
  def list_game_servers(client, input, options \\ []) do
    request(client, "ListGameServers", input, options)
  end

  @doc """
  Retrieves script records for all Realtime scripts that are associated with
  the AWS account in use.

  **Learn more**

  [Amazon GameLift Realtime
  Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  **Related operations**

  <ul> <li> `CreateScript`

  </li> <li> `ListScripts`

  </li> <li> `DescribeScript`

  </li> <li> `UpdateScript`

  </li> <li> `DeleteScript`

  </li> </ul>
  """
  def list_scripts(client, input, options \\ []) do
    request(client, "ListScripts", input, options)
  end

  @doc """
  Retrieves all tags that are assigned to a GameLift resource. Resource tags
  are used to organize AWS resources for a range of purposes. This operation
  handles the permissions necessary to manage tags for the following GameLift
  resource types:

  <ul> <li> Build

  </li> <li> Script

  </li> <li> Fleet

  </li> <li> Alias

  </li> <li> GameSessionQueue

  </li> <li> MatchmakingConfiguration

  </li> <li> MatchmakingRuleSet

  </li> </ul> To list tags for a resource, specify the unique ARN value for
  the resource.

  **Learn more**

  [Tagging AWS
  Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)
  in the *AWS General Reference*

  [ AWS Tagging
  Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

  **Related operations**

  <ul> <li> `TagResource`

  </li> <li> `UntagResource`

  </li> <li> `ListTagsForResource`

  </li> </ul>
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a scaling policy for a fleet. Scaling policies are used
  to automatically scale a fleet's hosting capacity to meet player demand. An
  active scaling policy instructs Amazon GameLift to track a fleet metric and
  automatically change the fleet's capacity when a certain threshold is
  reached. There are two types of scaling policies: target-based and
  rule-based. Use a target-based policy to quickly and efficiently manage
  fleet scaling; this option is the most commonly used. Use rule-based
  policies when you need to exert fine-grained control over auto-scaling.

  Fleets can have multiple scaling policies of each type in force at the same
  time; you can have one target-based policy, one or multiple rule-based
  scaling policies, or both. We recommend caution, however, because multiple
  auto-scaling policies can have unintended consequences.

  You can temporarily suspend all scaling policies for a fleet by calling
  `StopFleetActions` with the fleet action AUTO_SCALING. To resume scaling
  policies, call `StartFleetActions` with the same fleet action. To stop just
  one scaling policy--or to permanently remove it, you must delete the policy
  with `DeleteScalingPolicy`.

  Learn more about how to work with auto-scaling in [Set Up Fleet Automatic
  Scaling](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html).

  **Target-based policy**

  A target-based policy tracks a single metric: PercentAvailableGameSessions.
  This metric tells us how much of a fleet's hosting capacity is ready to
  host game sessions but is not currently in use. This is the fleet's buffer;
  it measures the additional player demand that the fleet could handle at
  current capacity. With a target-based policy, you set your ideal buffer
  size and leave it to Amazon GameLift to take whatever action is needed to
  maintain that target.

  For example, you might choose to maintain a 10% buffer for a fleet that has
  the capacity to host 100 simultaneous game sessions. This policy tells
  Amazon GameLift to take action whenever the fleet's available capacity
  falls below or rises above 10 game sessions. Amazon GameLift will start new
  instances or stop unused instances in order to return to the 10% buffer.

  To create or update a target-based policy, specify a fleet ID and name, and
  set the policy type to "TargetBased". Specify the metric to track
  (PercentAvailableGameSessions) and reference a `TargetConfiguration` object
  with your desired buffer value. Exclude all other parameters. On a
  successful request, the policy name is returned. The scaling policy is
  automatically in force as soon as it's successfully created. If the fleet's
  auto-scaling actions are temporarily suspended, the new policy will be in
  force once the fleet actions are restarted.

  **Rule-based policy**

  A rule-based policy tracks specified fleet metric, sets a threshold value,
  and specifies the type of action to initiate when triggered. With a
  rule-based policy, you can select from several available fleet metrics.
  Each policy specifies whether to scale up or scale down (and by how much),
  so you need one policy for each type of action.

  For example, a policy may make the following statement: "If the percentage
  of idle instances is greater than 20% for more than 15 minutes, then reduce
  the fleet capacity by 10%."

  A policy's rule statement has the following structure:

  If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for
  `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by
  `[ScalingAdjustment]`.

  To implement the example, the rule statement would look like this:

  If `[PercentIdleInstances]` is `[GreaterThanThreshold]` `[20]` for `[15]`
  minutes, then `[PercentChangeInCapacity]` to/by `[10]`.

  To create or update a scaling policy, specify a unique combination of name
  and fleet ID, and set the policy type to "RuleBased". Specify the parameter
  values for a policy rule statement. On a successful request, the policy
  name is returned. Scaling policies are automatically in force as soon as
  they're successfully created. If the fleet's auto-scaling actions are
  temporarily suspended, the new policy will be in force once the fleet
  actions are restarted.

  <ul> <li> `DescribeFleetCapacity`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `DescribeEC2InstanceLimits`

  </li> <li> Manage scaling policies:

  <ul> <li> `PutScalingPolicy` (auto-scaling)

  </li> <li> `DescribeScalingPolicies` (auto-scaling)

  </li> <li> `DeleteScalingPolicy` (auto-scaling)

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def put_scaling_policy(client, input, options \\ []) do
    request(client, "PutScalingPolicy", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Creates a new game server resource and notifies GameLift FleetIQ that the
  game server is ready to host gameplay and players. This operation is called
  by a game server process that is running on an instance in a game server
  group. Registering game servers enables GameLift FleetIQ to track available
  game servers and enables game clients and services to claim a game server
  for a new game session.

  To register a game server, identify the game server group and instance
  where the game server is running, and provide a unique identifier for the
  game server. You can also include connection and game server data. When a
  game client or service requests a game server by calling `ClaimGameServer`,
  this information is returned in the response.

  Once a game server is successfully registered, it is put in status
  `AVAILABLE`. A request to register a game server may fail if the instance
  it is running on is in the process of shutting down as part of instance
  balancing or scale-down activity.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `RegisterGameServer`

  </li> <li> `ListGameServers`

  </li> <li> `ClaimGameServer`

  </li> <li> `DescribeGameServer`

  </li> <li> `UpdateGameServer`

  </li> <li> `DeregisterGameServer`

  </li> </ul>
  """
  def register_game_server(client, input, options \\ []) do
    request(client, "RegisterGameServer", input, options)
  end

  @doc """
  Retrieves a fresh set of credentials for use when uploading a new set of
  game build files to Amazon GameLift's Amazon S3. This is done as part of
  the build creation process; see `CreateBuild`.

  To request new credentials, specify the build ID as returned with an
  initial `CreateBuild` request. If successful, a new set of credentials are
  returned, along with the S3 storage location associated with the build ID.

  **Learn more**

  [ Create a Build with Files in
  S3](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)

  **Related operations**

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def request_upload_credentials(client, input, options \\ []) do
    request(client, "RequestUploadCredentials", input, options)
  end

  @doc """
  Retrieves the fleet ID that an alias is currently pointing to.

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def resolve_alias(client, input, options \\ []) do
    request(client, "ResolveAlias", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Reinstates activity on a game server group after it has been suspended. A
  game server group might be suspended by the`SuspendGameServerGroup`
  operation, or it might be suspended involuntarily due to a configuration
  problem. In the second case, you can manually resume activity on the group
  once the configuration problem has been resolved. Refer to the game server
  group status and status reason for more information on why group activity
  is suspended.

  To resume activity, specify a game server group ARN and the type of
  activity to be resumed. If successful, a `GameServerGroup` object is
  returned showing that the resumed activity is no longer listed in
  `SuspendedActions`.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `CreateGameServerGroup`

  </li> <li> `ListGameServerGroups`

  </li> <li> `DescribeGameServerGroup`

  </li> <li> `UpdateGameServerGroup`

  </li> <li> `DeleteGameServerGroup`

  </li> <li> `ResumeGameServerGroup`

  </li> <li> `SuspendGameServerGroup`

  </li> <li> `DescribeGameServerInstances`

  </li> </ul>
  """
  def resume_game_server_group(client, input, options \\ []) do
    request(client, "ResumeGameServerGroup", input, options)
  end

  @doc """
  Retrieves all active game sessions that match a set of search criteria and
  sorts them in a specified order. You can search or sort by the following
  game session attributes:

  <ul> <li> **gameSessionId** -- A unique identifier for the game session.
  You can use either a `GameSessionId` or `GameSessionArn` value.

  </li> <li> **gameSessionName** -- Name assigned to a game session. This
  value is set when requesting a new game session with `CreateGameSession` or
  updating with `UpdateGameSession`. Game session names do not need to be
  unique to a game session.

  </li> <li> **gameSessionProperties** -- Custom data defined in a game
  session's `GameProperty` parameter. `GameProperty` values are stored as
  key:value pairs; the filter expression must indicate the key and a string
  to search the data values for. For example, to search for game sessions
  with custom data containing the key:value pair "gameMode:brawl", specify
  the following: `gameSessionProperties.gameMode = "brawl"`. All custom data
  values are searched as strings.

  </li> <li> **maximumSessions** -- Maximum number of player sessions allowed
  for a game session. This value is set when requesting a new game session
  with `CreateGameSession` or updating with `UpdateGameSession`.

  </li> <li> **creationTimeMillis** -- Value indicating when a game session
  was created. It is expressed in Unix time as milliseconds.

  </li> <li> **playerSessionCount** -- Number of players currently connected
  to a game session. This value changes rapidly as players join the session
  or drop out.

  </li> <li> **hasAvailablePlayerSessions** -- Boolean value indicating
  whether a game session has reached its maximum number of players. It is
  highly recommended that all search requests include this filter attribute
  to optimize search performance and return only sessions that players can
  join.

  </li> </ul> <note> Returned values for `playerSessionCount` and
  `hasAvailablePlayerSessions` change quickly as players join sessions and
  others drop out. Results should be considered a snapshot in time. Be sure
  to refresh search results often, and handle sessions that fill up before a
  player can join.

  </note> To search or sort, specify either a fleet ID or an alias ID, and
  provide a search filter expression, a sort expression, or both. If
  successful, a collection of `GameSession` objects matching the request is
  returned. Use the pagination parameters to retrieve results as a set of
  sequential pages.

  You can search for game sessions one fleet at a time only. To find game
  sessions across multiple fleets, you must search each fleet separately and
  combine the results. This search feature finds only game sessions that are
  in `ACTIVE` status. To locate games in statuses other than active, use
  `DescribeGameSessionDetails`.

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def search_game_sessions(client, input, options \\ []) do
    request(client, "SearchGameSessions", input, options)
  end

  @doc """
  Resumes activity on a fleet that was suspended with `StopFleetActions`.
  Currently, this operation is used to restart a fleet's auto-scaling
  activity.

  To start fleet actions, specify the fleet ID and the type of actions to
  restart. When auto-scaling fleet actions are restarted, Amazon GameLift
  once again initiates scaling events as triggered by the fleet's scaling
  policies. If actions on the fleet were never stopped, this operation will
  have no effect. You can view a fleet's stopped actions using
  `DescribeFleetAttributes`.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def start_fleet_actions(client, input, options \\ []) do
    request(client, "StartFleetActions", input, options)
  end

  @doc """
  Places a request for a new game session in a queue (see
  `CreateGameSessionQueue`). When processing a placement request, Amazon
  GameLift searches for available resources on the queue's destinations,
  scanning each until it finds resources or the placement request times out.

  A game session placement request can also request player sessions. When a
  new game session is successfully created, Amazon GameLift creates a player
  session for each player included in the request.

  When placing a game session, by default Amazon GameLift tries each fleet in
  the order they are listed in the queue configuration. Ideally, a queue's
  destinations are listed in preference order.

  Alternatively, when requesting a game session with players, you can also
  provide latency data for each player in relevant Regions. Latency data
  indicates the performance lag a player experiences when connected to a
  fleet in the Region. Amazon GameLift uses latency data to reorder the list
  of destinations to place the game session in a Region with minimal lag. If
  latency data is provided for multiple players, Amazon GameLift calculates
  each Region's average lag for all players and reorders to get the best game
  play across all players.

  To place a new game session request, specify the following:

  <ul> <li> The queue name and a set of game session properties and settings

  </li> <li> A unique ID (such as a UUID) for the placement. You use this ID
  to track the status of the placement request

  </li> <li> (Optional) A set of player data and a unique player ID for each
  player that you are joining to the new game session (player data is
  optional, but if you include it, you must also provide a unique ID for each
  player)

  </li> <li> Latency data for all players (if you want to optimize game play
  for the players)

  </li> </ul> If successful, a new game session placement is created.

  To track the status of a placement request, call
  `DescribeGameSessionPlacement` and check the request's status. If the
  status is `FULFILLED`, a new game session has been created and a game
  session ARN and Region are referenced. If the placement request times out,
  you can resubmit the request or retry it with a different queue.

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def start_game_session_placement(client, input, options \\ []) do
    request(client, "StartGameSessionPlacement", input, options)
  end

  @doc """
  Finds new players to fill open slots in an existing game session. This
  operation can be used to add players to matched games that start with fewer
  than the maximum number of players or to replace players when they drop
  out. By backfilling with the same matchmaker used to create the original
  match, you ensure that new players meet the match criteria and maintain a
  consistent experience throughout the game session. You can backfill a match
  anytime after a game session has been created.

  To request a match backfill, specify a unique ticket ID, the existing game
  session's ARN, a matchmaking configuration, and a set of data that
  describes all current players in the game session. If successful, a match
  backfill ticket is created and returned with status set to QUEUED. The
  ticket is placed in the matchmaker's ticket pool and processed. Track the
  status of the ticket to respond as needed.

  The process of finding backfill matches is essentially identical to the
  initial matchmaking process. The matchmaker searches the pool and groups
  tickets together to form potential matches, allowing only one backfill
  ticket per potential match. Once the a match is formed, the matchmaker
  creates player sessions for the new players. All tickets in the match are
  updated with the game session's connection information, and the
  `GameSession` object is updated to include matchmaker data on the new
  players. For more detail on how match backfill requests are processed, see
  [ How Amazon GameLift FlexMatch
  Works](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html).

  **Learn more**

  [ Backfill Existing Games with
  FlexMatch](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html)

  [ How GameLift FlexMatch
  Works](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html)

  **Related operations**

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> <li> `StartMatchBackfill`

  </li> </ul>
  """
  def start_match_backfill(client, input, options \\ []) do
    request(client, "StartMatchBackfill", input, options)
  end

  @doc """
  Uses FlexMatch to create a game match for a group of players based on
  custom matchmaking rules, and starts a new game for the matched players.
  Each matchmaking request specifies the type of match to build (team
  configuration, rules for an acceptable match, etc.). The request also
  specifies the players to find a match for and where to host the new game
  session for optimal performance. A matchmaking request might start with a
  single player or a group of players who want to play together. FlexMatch
  finds additional players as needed to fill the match. Match type, rules,
  and the queue used to place a new game session are defined in a
  `MatchmakingConfiguration`.

  To start matchmaking, provide a unique ticket ID, specify a matchmaking
  configuration, and include the players to be matched. You must also include
  a set of player attributes relevant for the matchmaking configuration. If
  successful, a matchmaking ticket is returned with status set to `QUEUED`.

  Track the status of the ticket to respond as needed and acquire game
  session connection information for successfully completed matches. Ticket
  status updates are tracked using event notification through Amazon Simple
  Notification Service (SNS), which is defined in the matchmaking
  configuration.

  **Processing a matchmaking request** -- FlexMatch handles a matchmaking
  request as follows:

  <ol> <li> Your client code submits a `StartMatchmaking` request for one or
  more players and tracks the status of the request ticket.

  </li> <li> FlexMatch uses this ticket and others in process to build an
  acceptable match. When a potential match is identified, all tickets in the
  proposed match are advanced to the next status.

  </li> <li> If the match requires player acceptance (set in the matchmaking
  configuration), the tickets move into status `REQUIRES_ACCEPTANCE`. This
  status triggers your client code to solicit acceptance from all players in
  every ticket involved in the match, and then call `AcceptMatch` for each
  player. If any player rejects or fails to accept the match before a
  specified timeout, the proposed match is dropped (see `AcceptMatch` for
  more details).

  </li> <li> Once a match is proposed and accepted, the matchmaking tickets
  move into status `PLACING`. FlexMatch locates resources for a new game
  session using the game session queue (set in the matchmaking configuration)
  and creates the game session based on the match data.

  </li> <li> When the match is successfully placed, the matchmaking tickets
  move into `COMPLETED` status. Connection information (including game
  session endpoint and player session) is added to the matchmaking tickets.
  Matched players can use the connection information to join the game.

  </li> </ol> **Learn more**

  [ Add FlexMatch to a Game
  Client](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html)

  [ Set Up FlexMatch Event
  Notification](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html)

  [ FlexMatch Integration
  Roadmap](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-tasks.html)

  [ How GameLift FlexMatch
  Works](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-match.html)

  **Related operations**

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> <li> `StartMatchBackfill`

  </li> </ul>
  """
  def start_matchmaking(client, input, options \\ []) do
    request(client, "StartMatchmaking", input, options)
  end

  @doc """
  Suspends activity on a fleet. Currently, this operation is used to stop a
  fleet's auto-scaling activity. It is used to temporarily stop triggering
  scaling events. The policies can be retained and auto-scaling activity can
  be restarted using `StartFleetActions`. You can view a fleet's stopped
  actions using `DescribeFleetAttributes`.

  To stop fleet actions, specify the fleet ID and the type of actions to
  suspend. When auto-scaling fleet actions are stopped, Amazon GameLift no
  longer initiates scaling events except in response to manual changes using
  `UpdateFleetCapacity`.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> `UpdateFleetAttributes`

  </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def stop_fleet_actions(client, input, options \\ []) do
    request(client, "StopFleetActions", input, options)
  end

  @doc """
  Cancels a game session placement that is in `PENDING` status. To stop a
  placement, provide the placement ID values. If successful, the placement is
  moved to `CANCELLED` status.

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def stop_game_session_placement(client, input, options \\ []) do
    request(client, "StopGameSessionPlacement", input, options)
  end

  @doc """
  Cancels a matchmaking ticket or match backfill ticket that is currently
  being processed. To stop the matchmaking operation, specify the ticket ID.
  If successful, work on the ticket is stopped, and the ticket status is
  changed to `CANCELLED`.

  This call is also used to turn off automatic backfill for an individual
  game session. This is for game sessions that are created with a matchmaking
  configuration that has automatic backfill enabled. The ticket ID is
  included in the `MatchmakerData` of an updated game session object, which
  is provided to the game server.

  <note> If the operation is successful, the service sends back an empty JSON
  struct with the HTTP 200 response (not an empty HTTP body).

  </note> **Learn more**

  [ Add FlexMatch to a Game
  Client](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-client.html)

  **Related operations**

  <ul> <li> `StartMatchmaking`

  </li> <li> `DescribeMatchmaking`

  </li> <li> `StopMatchmaking`

  </li> <li> `AcceptMatch`

  </li> <li> `StartMatchBackfill`

  </li> </ul>
  """
  def stop_matchmaking(client, input, options \\ []) do
    request(client, "StopMatchmaking", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Temporarily stops activity on a game server group without terminating
  instances or the game server group. You can restart activity by calling
  `ResumeGameServerGroup`. You can suspend the following activity:

  <ul> <li> **Instance type replacement** - This activity evaluates the
  current game hosting viability of all Spot instance types that are defined
  for the game server group. It updates the Auto Scaling group to remove
  nonviable Spot Instance types, which have a higher chance of game server
  interruptions. It then balances capacity across the remaining viable Spot
  Instance types. When this activity is suspended, the Auto Scaling group
  continues with its current balance, regardless of viability. Instance
  protection, utilization metrics, and capacity scaling activities continue
  to be active.

  </li> </ul> To suspend activity, specify a game server group ARN and the
  type of activity to be suspended. If successful, a `GameServerGroup` object
  is returned showing that the activity is listed in `SuspendedActions`.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `CreateGameServerGroup`

  </li> <li> `ListGameServerGroups`

  </li> <li> `DescribeGameServerGroup`

  </li> <li> `UpdateGameServerGroup`

  </li> <li> `DeleteGameServerGroup`

  </li> <li> `ResumeGameServerGroup`

  </li> <li> `SuspendGameServerGroup`

  </li> <li> `DescribeGameServerInstances`

  </li> </ul>
  """
  def suspend_game_server_group(client, input, options \\ []) do
    request(client, "SuspendGameServerGroup", input, options)
  end

  @doc """
  Assigns a tag to a GameLift resource. AWS resource tags provide an
  additional management tool set. You can use tags to organize resources,
  create IAM permissions policies to manage access to groups of resources,
  customize AWS cost breakdowns, etc. This operation handles the permissions
  necessary to manage tags for the following GameLift resource types:

  <ul> <li> Build

  </li> <li> Script

  </li> <li> Fleet

  </li> <li> Alias

  </li> <li> GameSessionQueue

  </li> <li> MatchmakingConfiguration

  </li> <li> MatchmakingRuleSet

  </li> </ul> To add a tag to a resource, specify the unique ARN value for
  the resource and provide a tag list containing one or more tags. The
  operation succeeds even if the list includes tags that are already assigned
  to the specified resource.

  **Learn more**

  [Tagging AWS
  Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)
  in the *AWS General Reference*

  [ AWS Tagging
  Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

  **Related operations**

  <ul> <li> `TagResource`

  </li> <li> `UntagResource`

  </li> <li> `ListTagsForResource`

  </li> </ul>
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes a tag that is assigned to a GameLift resource. Resource tags are
  used to organize AWS resources for a range of purposes. This operation
  handles the permissions necessary to manage tags for the following GameLift
  resource types:

  <ul> <li> Build

  </li> <li> Script

  </li> <li> Fleet

  </li> <li> Alias

  </li> <li> GameSessionQueue

  </li> <li> MatchmakingConfiguration

  </li> <li> MatchmakingRuleSet

  </li> </ul> To remove a tag from a resource, specify the unique ARN value
  for the resource and provide a string list containing one or more tags to
  be removed. This operation succeeds even if the list includes tags that are
  not currently assigned to the specified resource.

  **Learn more**

  [Tagging AWS
  Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)
  in the *AWS General Reference*

  [ AWS Tagging
  Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)

  **Related operations**

  <ul> <li> `TagResource`

  </li> <li> `UntagResource`

  </li> <li> `ListTagsForResource`

  </li> </ul>
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates properties for an alias. To update properties, specify the alias ID
  to be updated and provide the information to be changed. To reassign an
  alias to another fleet, provide an updated routing strategy. If successful,
  the updated alias record is returned.

  <ul> <li> `CreateAlias`

  </li> <li> `ListAliases`

  </li> <li> `DescribeAlias`

  </li> <li> `UpdateAlias`

  </li> <li> `DeleteAlias`

  </li> <li> `ResolveAlias`

  </li> </ul>
  """
  def update_alias(client, input, options \\ []) do
    request(client, "UpdateAlias", input, options)
  end

  @doc """
  Updates metadata in a build resource, including the build name and version.
  To update the metadata, specify the build ID to update and provide the new
  values. If successful, a build object containing the updated metadata is
  returned.

  **Learn more**

  [ Upload a Custom Server
  Build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

  **Related operations**

  <ul> <li> `CreateBuild`

  </li> <li> `ListBuilds`

  </li> <li> `DescribeBuild`

  </li> <li> `UpdateBuild`

  </li> <li> `DeleteBuild`

  </li> </ul>
  """
  def update_build(client, input, options \\ []) do
    request(client, "UpdateBuild", input, options)
  end

  @doc """
  Updates fleet properties, including name and description, for a fleet. To
  update metadata, specify the fleet ID and the property values that you want
  to change. If successful, the fleet ID for the updated fleet is returned.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def update_fleet_attributes(client, input, options \\ []) do
    request(client, "UpdateFleetAttributes", input, options)
  end

  @doc """
  Updates capacity settings for a fleet. Use this operation to specify the
  number of EC2 instances (hosts) that you want this fleet to contain. Before
  calling this operation, you may want to call `DescribeEC2InstanceLimits` to
  get the maximum capacity based on the fleet's EC2 instance type.

  Specify minimum and maximum number of instances. Amazon GameLift will not
  change fleet capacity to values fall outside of this range. This is
  particularly important when using auto-scaling (see `PutScalingPolicy`) to
  allow capacity to adjust based on player demand while imposing limits on
  automatic adjustments.

  To update fleet capacity, specify the fleet ID and the number of instances
  you want the fleet to host. If successful, Amazon GameLift starts or
  terminates instances so that the fleet's active instance count matches the
  desired instance count. You can view a fleet's current capacity information
  by calling `DescribeFleetCapacity`. If the desired instance count is higher
  than the instance type's limit, the "Limit Exceeded" exception occurs.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def update_fleet_capacity(client, input, options \\ []) do
    request(client, "UpdateFleetCapacity", input, options)
  end

  @doc """
  Updates port settings for a fleet. To update settings, specify the fleet ID
  to be updated and list the permissions you want to update. List the
  permissions you want to add in `InboundPermissionAuthorizations`, and
  permissions you want to remove in `InboundPermissionRevocations`.
  Permissions to be removed must match existing fleet permissions. If
  successful, the fleet ID for the updated fleet is returned.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def update_fleet_port_settings(client, input, options \\ []) do
    request(client, "UpdateFleetPortSettings", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Updates information about a registered game server to help GameLift FleetIQ
  to track game server availability. This operation is called by a game
  server process that is running on an instance in a game server group.

  Use this operation to update the following types of game server
  information. You can make all three types of updates in the same request:

  <ul> <li> To update the game server's utilization status, identify the game
  server and game server group and specify the current utilization status.
  Use this status to identify when game servers are currently hosting games
  and when they are available to be claimed.

  </li> <li> To report health status, identify the game server and game
  server group and set health check to `HEALTHY`. If a game server does not
  report health status for a certain length of time, the game server is no
  longer considered healthy. As a result, it will be eventually deregistered
  from the game server group to avoid affecting utilization metrics. The best
  practice is to report health every 60 seconds.

  </li> <li> To change game server metadata, provide updated game server
  data.

  </li> </ul> Once a game server is successfully updated, the relevant
  statuses and timestamps are updated.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `RegisterGameServer`

  </li> <li> `ListGameServers`

  </li> <li> `ClaimGameServer`

  </li> <li> `DescribeGameServer`

  </li> <li> `UpdateGameServer`

  </li> <li> `DeregisterGameServer`

  </li> </ul>
  """
  def update_game_server(client, input, options \\ []) do
    request(client, "UpdateGameServer", input, options)
  end

  @doc """
  **This operation is used with the Amazon GameLift FleetIQ solution and game
  server groups.**

  Updates GameLift FleetIQ-specific properties for a game server group. Many
  Auto Scaling group properties are updated on the Auto Scaling group
  directly, including the launch template, Auto Scaling policies, and
  maximum/minimum/desired instance counts.

  To update the game server group, specify the game server group ID and
  provide the updated values. Before applying the updates, the new values are
  validated to ensure that GameLift FleetIQ can continue to perform instance
  balancing activity. If successful, a `GameServerGroup` object is returned.

  **Learn more**

  [GameLift FleetIQ
  Guide](https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html)

  **Related operations**

  <ul> <li> `CreateGameServerGroup`

  </li> <li> `ListGameServerGroups`

  </li> <li> `DescribeGameServerGroup`

  </li> <li> `UpdateGameServerGroup`

  </li> <li> `DeleteGameServerGroup`

  </li> <li> `ResumeGameServerGroup`

  </li> <li> `SuspendGameServerGroup`

  </li> <li> `DescribeGameServerInstances`

  </li> </ul>
  """
  def update_game_server_group(client, input, options \\ []) do
    request(client, "UpdateGameServerGroup", input, options)
  end

  @doc """
  Updates game session properties. This includes the session name, maximum
  player count, protection policy, which controls whether or not an active
  game session can be terminated during a scale-down event, and the player
  session creation policy, which controls whether or not new players can join
  the session. To update a game session, specify the game session ID and the
  values you want to change. If successful, an updated `GameSession` object
  is returned.

  <ul> <li> `CreateGameSession`

  </li> <li> `DescribeGameSessions`

  </li> <li> `DescribeGameSessionDetails`

  </li> <li> `SearchGameSessions`

  </li> <li> `UpdateGameSession`

  </li> <li> `GetGameSessionLogUrl`

  </li> <li> Game session placements

  <ul> <li> `StartGameSessionPlacement`

  </li> <li> `DescribeGameSessionPlacement`

  </li> <li> `StopGameSessionPlacement`

  </li> </ul> </li> </ul>
  """
  def update_game_session(client, input, options \\ []) do
    request(client, "UpdateGameSession", input, options)
  end

  @doc """
  Updates settings for a game session queue, which determines how new game
  session requests in the queue are processed. To update settings, specify
  the queue name to be updated and provide the new settings. When updating
  destinations, provide a complete list of destinations.

  **Learn more**

  [ Using Multi-Region
  Queues](https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html)

  **Related operations**

  <ul> <li> `CreateGameSessionQueue`

  </li> <li> `DescribeGameSessionQueues`

  </li> <li> `UpdateGameSessionQueue`

  </li> <li> `DeleteGameSessionQueue`

  </li> </ul>
  """
  def update_game_session_queue(client, input, options \\ []) do
    request(client, "UpdateGameSessionQueue", input, options)
  end

  @doc """
  Updates settings for a FlexMatch matchmaking configuration. These changes
  affect all matches and game sessions that are created after the update. To
  update settings, specify the configuration name to be updated and provide
  the new settings.

  **Learn more**

  [ Design a FlexMatch
  Matchmaker](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-configuration.html)

  **Related operations**

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> <li> `DeleteMatchmakingRuleSet`

  </li> </ul>
  """
  def update_matchmaking_configuration(client, input, options \\ []) do
    request(client, "UpdateMatchmakingConfiguration", input, options)
  end

  @doc """
  Updates the current runtime configuration for the specified fleet, which
  tells Amazon GameLift how to launch server processes on instances in the
  fleet. You can update a fleet's runtime configuration at any time after the
  fleet is created; it does not need to be in an `ACTIVE` status.

  To update runtime configuration, specify the fleet ID and provide a
  `RuntimeConfiguration` object with an updated set of server process
  configurations.

  Each instance in a Amazon GameLift fleet checks regularly for an updated
  runtime configuration and changes how it launches server processes to
  comply with the latest version. Existing server processes are not affected
  by the update; runtime configuration changes are applied gradually as
  existing processes shut down and new processes are launched during Amazon
  GameLift's normal process recycling activity.

  **Learn more**

  [Setting up GameLift
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html)

  **Related operations**

  <ul> <li> `CreateFleet`

  </li> <li> `ListFleets`

  </li> <li> `DeleteFleet`

  </li> <li> `DescribeFleetAttributes`

  </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> `StartFleetActions` or `StopFleetActions`

  </li> </ul>
  """
  def update_runtime_configuration(client, input, options \\ []) do
    request(client, "UpdateRuntimeConfiguration", input, options)
  end

  @doc """
  Updates Realtime script metadata and content.

  To update script metadata, specify the script ID and provide updated name
  and/or version values.

  To update script content, provide an updated zip file by pointing to either
  a local file or an Amazon S3 bucket location. You can use either method
  regardless of how the original script was uploaded. Use the *Version*
  parameter to track updates to the script.

  If the call is successful, the updated metadata is stored in the script
  record and a revised script is uploaded to the Amazon GameLift service.
  Once the script is updated and acquired by a fleet instance, the new
  version is used for all new game sessions.

  **Learn more**

  [Amazon GameLift Realtime
  Servers](https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html)

  **Related operations**

  <ul> <li> `CreateScript`

  </li> <li> `ListScripts`

  </li> <li> `DescribeScript`

  </li> <li> `UpdateScript`

  </li> <li> `DeleteScript`

  </li> </ul>
  """
  def update_script(client, input, options \\ []) do
    request(client, "UpdateScript", input, options)
  end

  @doc """
  Validates the syntax of a matchmaking rule or rule set. This operation
  checks that the rule set is using syntactically correct JSON and that it
  conforms to allowed property expressions. To validate syntax, provide a
  rule set JSON string.

  **Learn more**

  <ul> <li> [Build a Rule
  Set](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-rulesets.html)

  </li> </ul> **Related operations**

  <ul> <li> `CreateMatchmakingConfiguration`

  </li> <li> `DescribeMatchmakingConfigurations`

  </li> <li> `UpdateMatchmakingConfiguration`

  </li> <li> `DeleteMatchmakingConfiguration`

  </li> <li> `CreateMatchmakingRuleSet`

  </li> <li> `DescribeMatchmakingRuleSets`

  </li> <li> `ValidateMatchmakingRuleSet`

  </li> <li> `DeleteMatchmakingRuleSet`

  </li> </ul>
  """
  def validate_matchmaking_rule_set(client, input, options \\ []) do
    request(client, "ValidateMatchmakingRuleSet", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "gamelift"}
    host = build_host("gamelift", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "GameLift.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: 200, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
