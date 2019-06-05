# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.GameLift do
  @moduledoc """
  Amazon GameLift Service

  Amazon GameLift is a managed service for developers who need a scalable,
  dedicated server solution for their multiplayer games. Use Amazon GameLift
  for these tasks: (1) set up computing resources and deploy your game
  servers, (2) run game sessions and get players into games, (3)
  automatically scale your resources to meet player demand and manage costs,
  and (4) track in-depth metrics on game server performance and player usage.

  The Amazon GameLift service API includes two important function sets:

  <ul> <li> **Manage game sessions and player access** -- Retrieve
  information on available game sessions; create new game sessions; send
  player requests to join a game session.

  </li> <li> **Configure and manage game server resources** -- Manage builds,
  fleets, queues, and aliases; set auto-scaling policies; retrieve logs and
  metrics.

  </li> </ul> This reference guide describes the low-level service API for
  Amazon GameLift. You can use the API functionality with these tools:

  <ul> <li> The Amazon Web Services software development kit ([AWS
  SDK](http://aws.amazon.com/tools/#sdk)) is available in [multiple
  languages](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-supported.html#gamelift-supported-clients)
  including C++ and C#. Use the SDK to access the API programmatically from
  an application, such as a game client.

  </li> <li> The [AWS command-line
  interface](https://docs.aws.amazon.com/cli/latest/userguide/) (CLI) tool is
  primarily useful for handling administrative actions, such as setting up
  and managing Amazon GameLift settings and resources. You can use the AWS
  CLI to manage all of your AWS services.

  </li> <li> The [AWS Management
  Console](https://console.aws.amazon.com/gamelift/home) for Amazon GameLift
  provides a web interface to manage your Amazon GameLift settings and
  resources. The console includes a dashboard for tracking key resources,
  including builds and fleets, and displays usage and performance metrics for
  your games as customizable graphs.

  </li> <li> Amazon GameLift Local is a tool for testing your game's
  integration with Amazon GameLift before deploying it on the service. This
  tools supports a subset of key API actions, which can be called from either
  the AWS CLI or programmatically. See [Testing an
  Integration](https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing-local.html).

  </li> </ul> **Learn more**

  <ul> <li> [ Developer
  Guide](https://docs.aws.amazon.com/gamelift/latest/developerguide/) -- Read
  about Amazon GameLift features and how to use them.

  </li> <li> [Tutorials](https://gamedev.amazon.com/forums/tutorials) -- Get
  started fast with walkthroughs and sample projects.

  </li> <li> [GameDev Blog](https://gamedev.amazon.com/blogs/gamedev/) --
  Stay up to date with new features and techniques.

  </li> <li> [GameDev
  Forums](https://gamedev.amazon.com/forums/spaces/123/gamelift-discussion.html)
  -- Connect with the GameDev community.

  </li> <li> [Release
  notes](https://aws.amazon.com/releasenotes/Amazon-GameLift/) and [document
  history](https://docs.aws.amazon.com/gamelift/latest/developerguide/doc-history.html)
  -- Stay current with updates to the Amazon GameLift service, SDKs, and
  documentation.

  </li> </ul> **API SUMMARY**

  This list offers a functional overview of the Amazon GameLift service API.

  **Managing Games and Players**

  Use these actions to start new game sessions, find existing game sessions,
  track game session status and other information, and enable player access
  to game sessions.

  <ul> <li> **Discover existing game sessions**

  <ul> <li> `SearchGameSessions` -- Retrieve all available game sessions or
  search for game sessions that match a set of criteria.

  </li> </ul> </li> <li> **Start new game sessions**

  <ul> <li> Start new games with Queues to find the best available hosting
  resources across multiple regions, minimize player latency, and balance
  game session activity for efficiency and cost effectiveness.

  <ul> <li> `StartGameSessionPlacement` -- Request a new game session
  placement and add one or more players to it.

  </li> <li> `DescribeGameSessionPlacement` -- Get details on a placement
  request, including status.

  </li> <li> `StopGameSessionPlacement` -- Cancel a placement request.

  </li> </ul> </li> <li> `CreateGameSession` -- Start a new game session on a
  specific fleet. *Available in Amazon GameLift Local.*

  </li> </ul> </li> <li> **Match players to game sessions with FlexMatch
  matchmaking**

  <ul> <li> `StartMatchmaking` -- Request matchmaking for one players or a
  group who want to play together.

  </li> <li> `StartMatchBackfill` - Request additional player matches to fill
  empty slots in an existing game session.

  </li> <li> `DescribeMatchmaking` -- Get details on a matchmaking request,
  including status.

  </li> <li> `AcceptMatch` -- Register that a player accepts a proposed
  match, for matches that require player acceptance.

  </li> <li> `StopMatchmaking` -- Cancel a matchmaking request.

  </li> </ul> </li> <li> **Manage game session data**

  <ul> <li> `DescribeGameSessions` -- Retrieve metadata for one or more game
  sessions, including length of time active and current player count.
  *Available in Amazon GameLift Local.*

  </li> <li> `DescribeGameSessionDetails` -- Retrieve metadata and the game
  session protection setting for one or more game sessions.

  </li> <li> `UpdateGameSession` -- Change game session settings, such as
  maximum player count and join policy.

  </li> <li> `GetGameSessionLogUrl` -- Get the location of saved logs for a
  game session.

  </li> </ul> </li> <li> **Manage player sessions**

  <ul> <li> `CreatePlayerSession` -- Send a request for a player to join a
  game session. *Available in Amazon GameLift Local.*

  </li> <li> `CreatePlayerSessions` -- Send a request for multiple players to
  join a game session. *Available in Amazon GameLift Local.*

  </li> <li> `DescribePlayerSessions` -- Get details on player activity,
  including status, playing time, and player data. *Available in Amazon
  GameLift Local.*

  </li> </ul> </li> </ul> **Setting Up and Managing Game Servers**

  When setting up Amazon GameLift resources for your game, you first [create
  a game
  build](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)
  and upload it to Amazon GameLift. You can then use these actions to
  configure and manage a fleet of resources to run your game servers, scale
  capacity to meet player demand, access performance and utilization metrics,
  and more.

  <ul> <li> **Manage game builds**

  <ul> <li> `CreateBuild` -- Create a new build using files stored in an
  Amazon S3 bucket. To create a build and upload files from a local path, use
  the AWS CLI command `upload-build`.

  </li> <li> `ListBuilds` -- Get a list of all builds uploaded to a Amazon
  GameLift region.

  </li> <li> `DescribeBuild` -- Retrieve information associated with a build.

  </li> <li> `UpdateBuild` -- Change build metadata, including build name and
  version.

  </li> <li> `DeleteBuild` -- Remove a build from Amazon GameLift.

  </li> </ul> </li> <li> **Manage fleets**

  <ul> <li> `CreateFleet` -- Configure and activate a new fleet to run a
  build's game servers.

  </li> <li> `ListFleets` -- Get a list of all fleet IDs in a Amazon GameLift
  region (all statuses).

  </li> <li> `DeleteFleet` -- Terminate a fleet that is no longer running
  game servers or hosting players.

  </li> <li> View / update fleet configurations.

  <ul> <li> `DescribeFleetAttributes` / `UpdateFleetAttributes` -- View or
  change a fleet's metadata and settings for game session protection and
  resource creation limits.

  </li> <li> `DescribeFleetPortSettings` / `UpdateFleetPortSettings` -- View
  or change the inbound permissions (IP address and port setting ranges)
  allowed for a fleet.

  </li> <li> `DescribeRuntimeConfiguration` / `UpdateRuntimeConfiguration` --
  View or change what server processes (and how many) to run on each instance
  in a fleet.

  </li> </ul> </li> </ul> </li> <li> **Control fleet capacity**

  <ul> <li> `DescribeEC2InstanceLimits` -- Retrieve maximum number of
  instances allowed for the current AWS account and the current usage level.

  </li> <li> `DescribeFleetCapacity` / `UpdateFleetCapacity` -- Retrieve the
  capacity settings and the current number of instances in a fleet; adjust
  fleet capacity settings to scale up or down.

  </li> <li> Autoscale -- Manage auto-scaling rules and apply them to a
  fleet.

  <ul> <li> `PutScalingPolicy` -- Create a new auto-scaling policy, or update
  an existing one.

  </li> <li> `DescribeScalingPolicies` -- Retrieve an existing auto-scaling
  policy.

  </li> <li> `DeleteScalingPolicy` -- Delete an auto-scaling policy and stop
  it from affecting a fleet's capacity.

  </li> <li> `StartFleetActions` -- Restart a fleet's auto-scaling policies.

  </li> <li> `StopFleetActions` -- Suspend a fleet's auto-scaling policies.

  </li> </ul> </li> </ul> </li> <li> **Manage game session queues**

  <ul> <li> `CreateGameSessionQueue` -- Create a queue for processing
  requests for new game sessions.

  </li> <li> `DescribeGameSessionQueues` -- Retrieve game session queues
  defined in a Amazon GameLift region.

  </li> <li> `UpdateGameSessionQueue` -- Change the configuration of a game
  session queue.

  </li> <li> `DeleteGameSessionQueue` -- Remove a game session queue from the
  region.

  </li> </ul> </li> <li> **Manage FlexMatch resources**

  <ul> <li> `CreateMatchmakingConfiguration` -- Create a matchmaking
  configuration with instructions for building a player group and placing in
  a new game session.

  </li> <li> `DescribeMatchmakingConfigurations` -- Retrieve matchmaking
  configurations defined a Amazon GameLift region.

  </li> <li> `UpdateMatchmakingConfiguration` -- Change settings for
  matchmaking configuration. queue.

  </li> <li> `DeleteMatchmakingConfiguration` -- Remove a matchmaking
  configuration from the region.

  </li> <li> `CreateMatchmakingRuleSet` -- Create a set of rules to use when
  searching for player matches.

  </li> <li> `DescribeMatchmakingRuleSets` -- Retrieve matchmaking rule sets
  defined in a Amazon GameLift region.

  </li> <li> `ValidateMatchmakingRuleSet` -- Verify syntax for a set of
  matchmaking rules.

  </li> <li> `DeleteMatchmakingRuleSet` -- Remove a matchmaking rule set from
  the region.

  </li> </ul> </li> <li> **Access fleet activity statistics**

  <ul> <li> `DescribeFleetUtilization` -- Get current data on the number of
  server processes, game sessions, and players currently active on a fleet.

  </li> <li> `DescribeFleetEvents` -- Get a fleet's logged events for a
  specified time span.

  </li> <li> `DescribeGameSessions` -- Retrieve metadata associated with one
  or more game sessions, including length of time active and current player
  count.

  </li> </ul> </li> <li> **Remotely access an instance**

  <ul> <li> `DescribeInstances` -- Get information on each instance in a
  fleet, including instance ID, IP address, and status.

  </li> <li> `GetInstanceAccess` -- Request access credentials needed to
  remotely connect to a specified instance in a fleet.

  </li> </ul> </li> <li> **Manage fleet aliases**

  <ul> <li> `CreateAlias` -- Define a new alias and optionally assign it to a
  fleet.

  </li> <li> `ListAliases` -- Get all fleet aliases defined in a Amazon
  GameLift region.

  </li> <li> `DescribeAlias` -- Retrieve information on an existing alias.

  </li> <li> `UpdateAlias` -- Change settings for a alias, such as
  redirecting it from one fleet to another.

  </li> <li> `DeleteAlias` -- Remove an alias from the region.

  </li> <li> `ResolveAlias` -- Get the fleet ID that a specified alias points
  to.

  </li> </ul> </li> <li> **Manage VPC peering connections for fleets**

  <ul> <li> `CreateVpcPeeringAuthorization` -- Authorize a peering connection
  to one of your VPCs.

  </li> <li> `DescribeVpcPeeringAuthorizations` -- Retrieve valid peering
  connection authorizations.

  </li> <li> `DeleteVpcPeeringAuthorization` -- Delete a peering connection
  authorization.

  </li> <li> `CreateVpcPeeringConnection` -- Establish a peering connection
  between the VPC for a Amazon GameLift fleet and one of your VPCs.

  </li> <li> `DescribeVpcPeeringConnections` -- Retrieve information on
  active or pending VPC peering connections with a Amazon GameLift fleet.

  </li> <li> `DeleteVpcPeeringConnection` -- Delete a VPC peering connection
  with a Amazon GameLift fleet.

  </li> </ul> </li> </ul>
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
  are then handled in one of two ways: For tickets where all players accepted
  the match, the ticket status is returned to `SEARCHING` to find a new
  match. For tickets where one or more players failed to accept the match,
  the ticket status is set to `FAILED`, and processing is terminated. A new
  matchmaking request for these players can be submitted as needed.

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
  Creates an alias for a fleet. In most situations, you can use an alias ID
  in place of a fleet ID. By using a fleet alias instead of a specific fleet
  ID, you can switch gameplay and players to a new fleet without changing
  your game client or other game components. For example, for games in
  production, using an alias allows you to seamlessly redirect your player
  base to a new game server update.

  Amazon GameLift supports two types of routing strategies for aliases:
  simple and terminal. A simple alias points to an active fleet. A terminal
  alias is used to display messaging or link to a URL instead of routing
  players to an active fleet. For example, you might use a terminal alias
  when a game version is no longer supported and you want to direct players
  to an upgrade site.

  To create a fleet alias, specify an alias name, routing strategy, and
  optional description. Each simple alias can point to only one fleet, but a
  fleet can have multiple aliases. If successful, a new alias record is
  returned, including an alias ID, which you can reference when creating a
  game session. You can reassign an alias to another fleet by calling
  `UpdateAlias`.

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
  Creates a new Amazon GameLift build record for your game server binary
  files and points to the location of your game server build files in an
  Amazon Simple Storage Service (Amazon S3) location.

  Game server binaries must be combined into a `.zip` file for use with
  Amazon GameLift.

  <important> To create new builds quickly and easily, use the AWS CLI
  command **
  [upload-build](https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html)
  **. This helper command uploads your build and creates a new build record
  in one step, and automatically handles the necessary permissions.

  </important> The `CreateBuild` operation should be used only when you need
  to manually upload your build files, as in the following scenarios:

  <ul> <li> Store a build file in an Amazon S3 bucket under your own AWS
  account. To use this option, you must first give Amazon GameLift access to
  that Amazon S3 bucket. To create a new build record using files in your
  Amazon S3 bucket, call `CreateBuild` and specify a build name, operating
  system, and the storage location of your game build.

  </li> <li> Upload a build file directly to Amazon GameLift's Amazon S3
  account. To use this option, you first call `CreateBuild` with a build name
  and operating system. This action creates a new build record and returns an
  Amazon S3 storage location (bucket and key only) and temporary access
  credentials. Use the credentials to manually upload your build file to the
  storage location (see the Amazon S3 topic [Uploading
  Objects](https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html)).
  You can upload files to a location only once.

  </li> </ul> If successful, this operation creates a new build record with a
  unique build ID and places it in `INITIALIZED` status. You can use
  `DescribeBuild` to check the status of your build. A build must be in
  `READY` status before it can be used to create fleets.

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
  Creates a new fleet to run your game servers. A fleet is a set of Amazon
  Elastic Compute Cloud (Amazon EC2) instances, each of which can run
  multiple server processes to host game sessions. You set up a fleet to use
  instances with certain hardware specifications (see [Amazon EC2 Instance
  Types](http://aws.amazon.com/ec2/instance-types/)), and deploy your game
  build to the fleet.

  To create a new fleet, you must provide the following: (1) a fleet name,
  (2) an EC2 instance type, (3) the build ID for your game build, and (4) a
  run-time configuration, which specifies the server processes to run on each
  instance in the fleet. If fleet type is not set, the new fleet will use
  on-demand instances by default.

  If the `CreateFleet` call is successful, Amazon GameLift performs the
  following tasks. You can track the process of a fleet by checking the fleet
  status or by monitoring fleet creation events:

  <ul> <li> Creates a fleet record. Status: `NEW`.

  </li> <li> Begins writing events to the fleet event log, which can be
  accessed in the Amazon GameLift console.

  Sets the fleet's target capacity to 1 (desired instances), which triggers
  Amazon GameLift to start one new EC2 instance.

  </li> <li> Downloads the game build to the new instance and installs it.
  Statuses: `DOWNLOADING`, `VALIDATING`, `BUILDING`.

  </li> <li> Starts launching server processes on the instance. If the fleet
  is configured to run multiple server processes per instance, Amazon
  GameLift staggers each launch by a few seconds. Status: `ACTIVATING`.

  </li> <li> Sets the fleet's status to `ACTIVE` as soon as one server
  process is ready to host a game session.

  </li> </ul> **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def create_fleet(client, input, options \\ []) do
    request(client, "CreateFleet", input, options)
  end

  @doc """
  Creates a multiplayer game session for players. This action creates a game
  session record and assigns an available server process in the specified
  fleet to host the game session. A fleet must have an `ACTIVE` status before
  a game session can be created in it.

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
  sessions on fleets in multiple regions. To add placement requests to a
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

  **Player acceptance** -- In each configuration, you have the option to
  require that all players accept participation in a proposed match. To
  enable this feature, set *AcceptanceRequired* to true and specify a time
  limit for player acceptance. Players have the option to accept or reject a
  proposed match, and a match does not move ahead to game session placement
  unless all matched players accept.

  **Matchmaking status notification** -- There are two ways to track the
  progress of matchmaking tickets: (1) polling ticket status with
  `DescribeMatchmaking`; or (2) receiving notifications with Amazon Simple
  Notification Service (SNS). To use notifications, you first need to set up
  an SNS topic to receive the notifications, and provide the topic ARN in the
  matchmaking configuration (see [ Setting up Notifications for
  Matchmaking](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-notification.html)).
  Since notifications promise only "best effort" delivery, we recommend
  calling `DescribeMatchmaking` if no notifications are received within 30
  seconds.

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
  type of match to create, such as the number and size of teams, and sets the
  parameters for acceptable player matches, such as minimum skill level or
  character type. A rule set is used by a `MatchmakingConfiguration`.

  To create a matchmaking rule set, provide unique rule set name and the rule
  set body in JSON format. Rule sets must be defined in the same region as
  the matchmaking configuration they will be used with.

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
  Adds a player to a game session and creates a player session record. Before
  a player can be added, a game session must have an `ACTIVE` status, have a
  creation policy of `ALLOW_ALL`, and have an open player slot. To add a
  group of players to a game session, use `CreatePlayerSessions`.

  To create a player session, specify a game session ID, player ID, and
  optionally a string of player data. If successful, the player is added to
  the game session and a new `PlayerSession` object is returned. Player
  sessions cannot be updated.

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
  Adds a group of players to a game session. This action is useful with a
  team matching feature. Before players can be added, a game session must
  have an `ACTIVE` status, have a creation policy of `ALLOW_ALL`, and have an
  open player slot. To add a single player to a game session, use
  `CreatePlayerSession`.

  To create player sessions, specify a game session ID, a list of player IDs,
  and optionally a set of player data strings. If successful, the players are
  added to the game session and a set of new `PlayerSession` objects is
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
  def create_player_sessions(client, input, options \\ []) do
    request(client, "CreatePlayerSessions", input, options)
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
  fleets. You cannot peer with VPCs that are in different regions.

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
  GameLift fleets. You cannot peer with VPCs that are in different regions.
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
  Deletes an alias. This action removes all record of the alias. Game clients
  attempting to access a server process using the deleted alias receive an
  error. To delete an alias, specify the alias ID to be deleted.

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
  Deletes a build. This action permanently deletes the build record and any
  uploaded build files.

  To delete a build, specify its ID. Deleting a build does not affect the
  status of any active fleets using the build, but you can no longer create
  new fleets with the deleted build.

  **Learn more**

  [ Working with
  Builds](https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html)

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

  This action removes the fleet's resources and the fleet record. Once a
  fleet is deleted, you can no longer use that fleet.

  **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def delete_fleet(client, input, options \\ []) do
    request(client, "DeleteFleet", input, options)
  end

  @doc """
  Deletes a game session queue. This action means that any
  `StartGameSessionPlacement` requests that reference this queue will fail.
  To delete a queue, specify the queue name.

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
  Deletes a fleet scaling policy. This action means that the policy is no
  longer in force and removes all record of it. To delete a scaling policy,
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
  Cancels a pending VPC peering authorization for the specified VPC. If the
  authorization has already been used to create a peering connection, call
  `DeleteVpcPeeringConnection` to remove the connection.

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
  Retrieves properties for a build. To request a build record, specify a
  build ID. If successful, an object containing the build properties is
  returned.

  **Learn more**

  [ Working with
  Builds](https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html)

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

  <ul> <li> maximum number of instances allowed per AWS account (service
  limit)

  </li> <li> current usage level for the AWS account

  </li> </ul> Service limits vary depending on region. Available regions for
  Amazon GameLift can be found in the AWS Management Console for Amazon
  GameLift (see the drop-down list in the upper right corner).

  **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def describe_e_c2_instance_limits(client, input, options \\ []) do
    request(client, "DescribeEC2InstanceLimits", input, options)
  end

  @doc """
  Retrieves fleet properties, including metadata, status, and configuration,
  for one or more fleets. You can request attributes for all fleets, or
  specify a list of one or more fleet IDs. When requesting multiple fleets,
  use the pagination parameters to retrieve results as a set of sequential
  pages. If successful, a `FleetAttributes` object is returned for each
  requested fleet ID. When specifying a list of fleet IDs, attribute objects
  are returned only for fleets that currently exist.

  <note> Some API actions may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note> **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def describe_fleet_attributes(client, input, options \\ []) do
    request(client, "DescribeFleetAttributes", input, options)
  end

  @doc """
  Retrieves the current status of fleet capacity for one or more fleets. This
  information includes the number of instances that have been requested for
  the fleet and the number currently active. You can request capacity for all
  fleets, or specify a list of one or more fleet IDs. When requesting
  multiple fleets, use the pagination parameters to retrieve results as a set
  of sequential pages. If successful, a `FleetCapacity` object is returned
  for each requested fleet ID. When specifying a list of fleet IDs, attribute
  objects are returned only for fleets that currently exist.

  <note> Some API actions may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note> **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
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

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def describe_fleet_events(client, input, options \\ []) do
    request(client, "DescribeFleetEvents", input, options)
  end

  @doc """
  Retrieves the inbound connection permissions for a fleet. Connection
  permissions include a range of IP addresses and port settings that incoming
  traffic can use to access server processes in the fleet. To get a fleet's
  inbound connection permissions, specify a fleet ID. If successful, a
  collection of `IpPermission` objects is returned for the requested fleet
  ID. If the requested fleet has been deleted, the result set is empty.

  **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def describe_fleet_port_settings(client, input, options \\ []) do
    request(client, "DescribeFleetPortSettings", input, options)
  end

  @doc """
  Retrieves utilization statistics for one or more fleets. You can request
  utilization data for all fleets, or specify a list of one or more fleet
  IDs. When requesting multiple fleets, use the pagination parameters to
  retrieve results as a set of sequential pages. If successful, a
  `FleetUtilization` object is returned for each requested fleet ID. When
  specifying a list of fleet IDs, utilization objects are returned only for
  fleets that currently exist.

  <note> Some API actions may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note> **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def describe_fleet_utilization(client, input, options \\ []) do
    request(client, "DescribeFleetUtilization", input, options)
  end

  @doc """
  Retrieves properties, including the protection policy in force, for one or
  more game sessions. This action can be used in several ways: (1) provide a
  `GameSessionId` or `GameSessionArn` to request details for a specific game
  session; (2) provide either a `FleetId` or an `AliasId` to request
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
  region.

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
  Use this action to get details on all instances in the fleet or get details
  on one specific instance.

  To get a specific instance, specify fleet ID and instance ID. To get all
  instances in a fleet, specify a fleet ID only. Use the pagination
  parameters to retrieve results as a set of sequential pages. If successful,
  an `Instance` object is returned for each result.
  """
  def describe_instances(client, input, options \\ []) do
    request(client, "DescribeInstances", input, options)
  end

  @doc """
  Retrieves one or more matchmaking tickets. Use this operation to retrieve
  ticket information, including status and--once a successful match is
  made--acquire connection information for the resulting new game session.

  You can use this operation to track the progress of matchmaking requests
  (through polling) as an alternative to using event notifications. See more
  details on tracking matchmaking requests through polling or notifications
  in `StartMatchmaking`.

  To request matchmaking tickets, provide a list of up to 10 ticket IDs. If
  the request is successful, a ticket object is returned for each requested
  ID that currently exists.

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
  Retrieves the details of FlexMatch matchmaking configurations. with this
  operation, you have the following options: (1) retrieve all existing
  configurations, (2) provide the names of one or more configurations to
  retrieve, or (3) retrieve all configurations that use a specified rule set
  name. When requesting multiple items, use the pagination parameters to
  retrieve results as a set of sequential pages. If successful, a
  configuration is returned for each requested name. When specifying a list
  of names, only configurations that currently exist are returned.

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
  all existing rule sets for the region, or provide a list of one or more
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
  Retrieves properties for one or more player sessions. This action can be
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
  Retrieves the current run-time configuration for the specified fleet. The
  run-time configuration tells Amazon GameLift how to launch server processes
  on instances in the fleet.

  **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
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
  (`StopFleetActions`). This action does not affect the status of the scaling
  policies, which remains ACTIVE. To see whether a fleet's scaling policies
  are in force or suspended, call `DescribeFleetAttributes` and check the
  stopped actions.

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
  debugging, gathering benchmarking data, or watching activity in real time.

  Access requires credentials that match the operating system of the
  instance. For a Windows instance, Amazon GameLift returns a user name and
  password as strings for use with a Windows Remote Desktop client. For a
  Linux instance, Amazon GameLift returns a user name and RSA private key,
  also as strings, for use with an SSH client. The private key must be saved
  in the proper format to a `.pem` file before using. If you're making this
  request using the AWS CLI, saving the secret can be handled as part of the
  GetInstanceAccess request. (See the example later in this topic). For more
  information on remote access, see [Remotely Accessing an
  Instance](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html).

  To request access to a specific instance, specify the IDs of both the
  instance and the fleet it belongs to. You can retrieve a fleet's instance
  IDs by calling `DescribeInstances`. If successful, an `InstanceAccess`
  object is returned containing the instance's IP address and a set of
  credentials.
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
  Retrieves build records for all builds associated with the AWS account in
  use. You can limit results to builds that are in a specific status by using
  the `Status` parameter. Use the pagination parameters to retrieve results
  in a set of sequential pages.

  <note> Build records are not listed in any particular order.

  </note> **Learn more**

  [ Working with
  Builds](https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html)

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
  Retrieves a collection of fleet records for this AWS account. You can
  filter the result set by build ID. Use the pagination parameters to
  retrieve results in sequential pages.

  <note> Fleet records are not listed in any particular order.

  </note> **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def list_fleets(client, input, options \\ []) do
    request(client, "ListFleets", input, options)
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
  Retrieves a fresh set of credentials for use when uploading a new set of
  game build files to Amazon GameLift's Amazon S3. This is done as part of
  the build creation process; see `CreateBuild`.

  To request new credentials, specify the build ID as returned with an
  initial `CreateBuild` request. If successful, a new set of credentials are
  returned, along with the S3 storage location associated with the build ID.

  **Learn more**

  [Uploading Your
  Game](https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html)

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
  Retrieves the fleet ID that a specified alias is currently pointing to.

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
  Retrieves all active game sessions that match a set of search criteria and
  sorts them in a specified order. You can search or sort by the following
  game session attributes:

  <ul> <li> **gameSessionId** -- Unique identifier for the game session. You
  can use either a `GameSessionId` or `GameSessionArn` value.

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

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
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
  provide latency data for each player in relevant regions. Latency data
  indicates the performance lag a player experiences when connected to a
  fleet in the region. Amazon GameLift uses latency data to reorder the list
  of destinations to place the game session in a region with minimal lag. If
  latency data is provided for multiple players, Amazon GameLift calculates
  each region's average lag for all players and reorders to get the best game
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
  session ARN and region are referenced. If the placement request times out,
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
  status of the ticket to respond as needed. For more detail how to set up
  backfilling, see [ Backfill Existing Games with
  FlexMatch](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-backfill.html).

  The process of finding backfill matches is essentially identical to the
  initial matchmaking process. The matchmaker searches the pool and groups
  tickets together to form potential matches, allowing only one backfill
  ticket per potential match. Once the a match is formed, the matchmaker
  creates player sessions for the new players. All tickets in the match are
  updated with the game session's connection information, and the
  `GameSession` object is updated to include matchmaker data on the new
  players. For more detail on how match backfill requests are processed, see
  [ How Amazon GameLift FlexMatch
  Works](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

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
  `MatchmakingConfiguration`. For complete information on setting up and
  using FlexMatch, see the topic [ Adding FlexMatch to Your
  Game](https://docs.aws.amazon.com/gamelift/latest/developerguide/match-intro.html).

  To start matchmaking, provide a unique ticket ID, specify a matchmaking
  configuration, and include the players to be matched. You must also include
  a set of player attributes relevant for the matchmaking configuration. If
  successful, a matchmaking ticket is returned with status set to `QUEUED`.
  Track the status of the ticket to respond as needed and acquire game
  session connection information for successfully completed matches.

  **Tracking ticket status** -- A couple of options are available for
  tracking the status of matchmaking requests:

  <ul> <li> Polling -- Call `DescribeMatchmaking`. This operation returns the
  full ticket object, including current status and (for completed tickets)
  game session connection info. We recommend polling no more than once every
  10 seconds.

  </li> <li> Notifications -- Get event notifications for changes in ticket
  status using Amazon Simple Notification Service (SNS). Notifications are
  easy to set up (see `CreateMatchmakingConfiguration`) and typically deliver
  match status changes faster and more efficiently than polling. We recommend
  that you use polling to back up to notifications (since delivery is not
  guaranteed) and call `DescribeMatchmaking` only when notifications are not
  received within 30 seconds.

  </li> </ul> **Processing a matchmaking request** -- FlexMatch handles a
  matchmaking request as follows:

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

  </li> </ol> <ul> <li> `StartMatchmaking`

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
  fleet's auto-scaling activity. It is used to temporarily stop scaling
  events triggered by the fleet's scaling policies. The policies can be
  retained and auto-scaling activity can be restarted using
  `StartFleetActions`. You can view a fleet's stopped actions using
  `DescribeFleetAttributes`.

  To stop fleet actions, specify the fleet ID and the type of actions to
  suspend. When auto-scaling fleet actions are stopped, Amazon GameLift no
  longer initiates scaling events except to maintain the fleet's desired
  instances setting (`FleetCapacity`. Changes to the fleet's capacity must be
  done manually using `UpdateFleetCapacity`.

  **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
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
  Cancels a matchmaking ticket that is currently being processed. To stop the
  matchmaking operation, specify the ticket ID. If successful, work on the
  ticket is stopped, and the ticket status is changed to `CANCELLED`.

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
  Updates metadata in a build record, including the build name and version.
  To update the metadata, specify the build ID to update and provide the new
  values. If successful, a build object containing the updated metadata is
  returned.

  **Learn more**

  [ Working with
  Builds](https://docs.aws.amazon.com/gamelift/latest/developerguide/build-intro.html)

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

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def update_fleet_attributes(client, input, options \\ []) do
    request(client, "UpdateFleetAttributes", input, options)
  end

  @doc """
  Updates capacity settings for a fleet. Use this action to specify the
  number of EC2 instances (hosts) that you want this fleet to contain. Before
  calling this action, you may want to call `DescribeEC2InstanceLimits` to
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

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
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

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def update_fleet_port_settings(client, input, options \\ []) do
    request(client, "UpdateFleetPortSettings", input, options)
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
  Updates settings for a FlexMatch matchmaking configuration. To update
  settings, specify the configuration name to be updated and provide the new
  settings.

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
  Updates the current run-time configuration for the specified fleet, which
  tells Amazon GameLift how to launch server processes on instances in the
  fleet. You can update a fleet's run-time configuration at any time after
  the fleet is created; it does not need to be in an `ACTIVE` status.

  To update run-time configuration, specify the fleet ID and provide a
  `RuntimeConfiguration` object with the updated collection of server process
  configurations.

  Each instance in a Amazon GameLift fleet checks regularly for an updated
  run-time configuration and changes how it launches server processes to
  comply with the latest version. Existing server processes are not affected
  by the update; they continue to run until they end, while Amazon GameLift
  simply adds new server processes to fit the current run-time configuration.
  As a result, the run-time configuration changes are applied gradually as
  existing processes shut down and new processes are launched in Amazon
  GameLift's normal process recycling activity.

  **Learn more**

  [ Working with
  Fleets](https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html).

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

  </li> </ul> </li> <li> Update fleets:

  <ul> <li> `UpdateFleetAttributes`

  </li> <li> `UpdateFleetCapacity`

  </li> <li> `UpdateFleetPortSettings`

  </li> <li> `UpdateRuntimeConfiguration`

  </li> </ul> </li> <li> Manage fleet actions:

  <ul> <li> `StartFleetActions`

  </li> <li> `StopFleetActions`

  </li> </ul> </li> </ul>
  """
  def update_runtime_configuration(client, input, options \\ []) do
    request(client, "UpdateRuntimeConfiguration", input, options)
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

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "gamelift"}
    host = get_host("gamelift", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "GameLift.#{action}"}]
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
