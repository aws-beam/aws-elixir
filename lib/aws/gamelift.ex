# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.GameLift do
  @moduledoc """
  Amazon GameLift Service

  Amazon GameLift is a managed service for developers who need a scalable,
  dedicated server solution for their multiplayer games. Amazon GameLift
  provides tools to acquire computing resources and deploy game servers,
  scale game server capacity to meed player demand, and track in-depth
  metrics on player usage and server performance.

  The Amazon GameLift service API includes important functionality to:

  <ul> <li> Find game sessions and match players to games – Retrieve
  information on available game sessions; create new game sessions; send
  player requests to join a game session.

  </li> <li> Configure and manage game server resources – Manage builds,
  fleets, queues, and aliases; set autoscaling policies; retrieve logs and
  metrics.

  </li> </ul> This reference guide describes the low-level service API for
  Amazon GameLift. We recommend using either the Amazon Web Services software
  development kit ([AWS SDK](http://aws.amazon.com/tools/#sdk)), available in
  multiple languages, or the [AWS command-line
  interface](http://aws.amazon.com/cli/) (CLI) tool. Both of these align with
  the low-level service API. In addition, you can use the [AWS Management
  Console](https://console.aws.amazon.com/gamelift/home) for Amazon GameLift
  for many administrative actions.

  **MORE RESOURCES**

  <ul> <li> [Amazon GameLift Developer
  Guide](http://docs.aws.amazon.com/gamelift/latest/developerguide/) – Learn
  more about Amazon GameLift features and how to use them.

  </li> <li> [Lumberyard and Amazon GameLift
  Tutorials](https://gamedev.amazon.com/forums/tutorials) – Get started fast
  with walkthroughs and sample projects.

  </li> <li> [GameDev Blog](http://aws.amazon.com/blogs/gamedev/) – Stay up
  to date with new features and techniques.

  </li> <li> [GameDev
  Forums](https://gamedev.amazon.com/forums/spaces/123/gamelift-discussion.html)
  – Connect with the GameDev community.

  </li> <li> [Amazon GameLift Document
  History](http://docs.aws.amazon.com/gamelift/latest/developerguide/doc-history.html)
  – See changes to the Amazon GameLift service, SDKs, and documentation, as
  well as links to release notes.

  </li> </ul> **API SUMMARY**

  This list offers a functional overview of the Amazon GameLift service API.

  **Finding Games and Joining Players**

  You can enable players to connect to game servers on Amazon GameLift from a
  game client or through a game service (such as a matchmaking service). You
  can use these operations to discover actively running game or start new
  games. You can also match players to games, either singly or as a group.

  <ul> <li> **Discover existing game sessions**

  <ul> <li> `SearchGameSessions` – Get all available game sessions or search
  for game sessions that match a set of criteria.

  </li> </ul> </li> <li> **Start a new game session**

  <ul> <li> Game session placement – Use a queue to process new game session
  requests and create game sessions on fleets designated for the queue.

  <ul> <li> `StartGameSessionPlacement` – Request a new game session
  placement and add one or more players to it.

  </li> <li> `DescribeGameSessionPlacement` – Get details on a placement
  request, including status.

  </li> <li> `StopGameSessionPlacement` – Cancel a placement request.

  </li> </ul> </li> <li> `CreateGameSession` – Start a new game session on a
  specific fleet.

  </li> </ul> </li> <li> **Manage game session objects**

  <ul> <li> `DescribeGameSessionDetails` – Retrieve metadata and protection
  policies associated with one or more game sessions, including length of
  time active and current player count.

  </li> <li> `UpdateGameSession` – Change game session settings, such as
  maximum player count and join policy.

  </li> <li> `GetGameSessionLogUrl` – Get the location of saved logs for a
  game session.

  </li> </ul> </li> <li> **Manage player sessions objects**

  <ul> <li> `CreatePlayerSession` – Send a request for a player to join a
  game session.

  </li> <li> `CreatePlayerSessions` – Send a request for multiple players to
  join a game session.

  </li> <li> `DescribePlayerSessions` – Get details on player activity,
  including status, playing time, and player data.

  </li> </ul> </li> </ul> **Setting Up and Managing Game Servers**

  When setting up Amazon GameLift, first create a game build and upload the
  files to Amazon GameLift. Then use these operations to set up a fleet of
  resources to run your game servers. Manage games to scale capacity, adjust
  configuration settings, access raw utilization data, and more.

  <ul> <li> **Manage game builds**

  <ul> <li> `CreateBuild` – Create a new build by uploading files stored in
  an Amazon S3 bucket. (To create a build stored at a local file location,
  use the AWS CLI command `upload-build`.)

  </li> <li> `ListBuilds` – Get a list of all builds uploaded to a Amazon
  GameLift region.

  </li> <li> `DescribeBuild` – Retrieve information associated with a build.

  </li> <li> `UpdateBuild` – Change build metadata, including build name and
  version.

  </li> <li> `DeleteBuild` – Remove a build from Amazon GameLift.

  </li> </ul> </li> <li> **Manage fleets**

  <ul> <li> `CreateFleet` – Configure and activate a new fleet to run a
  build's game servers.

  </li> <li> `DeleteFleet` – Terminate a fleet that is no longer running game
  servers or hosting players.

  </li> <li> View / update fleet configurations.

  <ul> <li> `ListFleets` – Get a list of all fleet IDs in a Amazon GameLift
  region (all statuses).

  </li> <li> `DescribeFleetAttributes` / `UpdateFleetAttributes` – View or
  change a fleet's metadata and settings for game session protection and
  resource creation limits.

  </li> <li> `DescribeFleetPortSettings` / `UpdateFleetPortSettings` – View
  or change the inbound permissions (IP address and port setting ranges)
  allowed for a fleet.

  </li> <li> `DescribeRuntimeConfiguration` / `UpdateRuntimeConfiguration` –
  View or change what server processes (and how many) to run on each instance
  in a fleet.

  </li> <li> `DescribeInstances` – Get information on each instance in a
  fleet, including instance ID, IP address, and status.

  </li> </ul> </li> </ul> </li> <li> **Control fleet capacity**

  <ul> <li> `DescribeEC2InstanceLimits` – Retrieve maximum number of
  instances allowed for the current AWS account and the current usage level.

  </li> <li> `DescribeFleetCapacity` / `UpdateFleetCapacity` – Retrieve the
  capacity settings and the current number of instances in a fleet; adjust
  fleet capacity settings to scale up or down.

  </li> <li> Autoscale – Manage autoscaling rules and apply them to a fleet.

  <ul> <li> `PutScalingPolicy` – Create a new autoscaling policy, or update
  an existing one.

  </li> <li> `DescribeScalingPolicies` – Retrieve an existing autoscaling
  policy.

  </li> <li> `DeleteScalingPolicy` – Delete an autoscaling policy and stop it
  from affecting a fleet's capacity.

  </li> </ul> </li> </ul> </li> <li> **Access fleet activity statistics**

  <ul> <li> `DescribeFleetUtilization` – Get current data on the number of
  server processes, game sessions, and players currently active on a fleet.

  </li> <li> `DescribeFleetEvents` – Get a fleet's logged events for a
  specified time span.

  </li> <li> `DescribeGameSessions` – Retrieve metadata associated with one
  or more game sessions, including length of time active and current player
  count.

  </li> </ul> </li> <li> **Remotely access an instance**

  <ul> <li> `GetInstanceAccess` – Request access credentials needed to
  remotely connect to a specified instance on a fleet.

  </li> </ul> </li> <li> **Manage fleet aliases**

  <ul> <li> `CreateAlias` – Define a new alias and optionally assign it to a
  fleet.

  </li> <li> `ListAliases` – Get all fleet aliases defined in a Amazon
  GameLift region.

  </li> <li> `DescribeAlias` – Retrieve information on an existing alias.

  </li> <li> `UpdateAlias` – Change settings for a alias, such as redirecting
  it from one fleet to another.

  </li> <li> `DeleteAlias` – Remove an alias from the region.

  </li> <li> `ResolveAlias` – Get the fleet ID that a specified alias points
  to.

  </li> </ul> </li> <li> **Manage game session queues**

  <ul> <li> `CreateGameSessionQueue` – Create a queue for processing requests
  for new game sessions.

  </li> <li> `DescribeGameSessionQueues` – Get data on all game session
  queues defined in a Amazon GameLift region.

  </li> <li> `UpdateGameSessionQueue` – Change the configuration of a game
  session queue.

  </li> <li> `DeleteGameSessionQueue` – Remove a game session queue from the
  region.

  </li> </ul> </li> </ul>
  """

  @doc """
  Creates an alias and sets a target fleet. A fleet alias can be used in
  place of a fleet ID, such as when calling `CreateGameSession` from a game
  client or game service or adding destinations to a game session queue. By
  changing an alias's target fleet, you can switch your players to the new
  fleet without changing any other component. In production, this feature is
  particularly useful to redirect your player base seamlessly to the latest
  game server update.

  Amazon GameLift supports two types of routing strategies for aliases:
  simple and terminal. Use a simple alias to point to an active fleet. Use a
  terminal alias to display a message to incoming traffic instead of routing
  players to an active fleet. This option is useful when a game server is no
  longer supported but you want to provide better messaging than a standard
  404 error.

  To create a fleet alias, specify an alias name, routing strategy, and
  optional description. If successful, a new alias record is returned,
  including an alias ID, which you can reference when creating a game
  session. To reassign the alias to another fleet ID, call `UpdateAlias`.
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Creates a new Amazon GameLift build from a set of game server binary files
  stored in an Amazon Simple Storage Service (Amazon S3) location. When using
  this API call, you must create a `.zip` file containing all of the build
  files and store it in an Amazon S3 bucket under your AWS account. For help
  on packaging your build files and creating a build, see [Uploading Your
  Game to Amazon
  GameLift](http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html).

  <important> Use this API action ONLY if you are storing your game build
  files in an Amazon S3 bucket in your AWS account. To create a build using
  files stored in a directory, use the CLI command [ `upload-build`
  ](http://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html),
  which uploads the build files from a file location you specify and creates
  a build.

  </important> To create a new build using `CreateBuild`, identify the
  storage location and operating system of your game build. You also have the
  option of specifying a build name and version. If successful, this action
  creates a new build record with an unique build ID and in `INITIALIZED`
  status. Use the API call `DescribeBuild` to check the status of your build.
  A build must be in `READY` status before it can be used to create fleets to
  host your game.
  """
  def create_build(client, input, options \\ []) do
    request(client, "CreateBuild", input, options)
  end

  @doc """
  Creates a new fleet to run your game servers. A fleet is a set of Amazon
  Elastic Compute Cloud (Amazon EC2) instances, each of which can run
  multiple server processes to host game sessions. You configure a fleet to
  create instances with certain hardware specifications (see [Amazon EC2
  Instance Types](http://aws.amazon.com/ec2/instance-types/) for more
  information), and deploy a specified game build to each instance. A newly
  created fleet passes through several statuses; once it reaches the `ACTIVE`
  status, it can begin hosting game sessions.

  To create a new fleet, provide a fleet name, an EC2 instance type, and a
  build ID of the game build to deploy. You can also configure the new fleet
  with the following settings: (1) a runtime configuration describing what
  server processes to run on each instance in the fleet (required to create
  fleet), (2) access permissions for inbound traffic, (3) fleet-wide game
  session protection, and (4) the location of default log files for Amazon
  GameLift to upload and store.

  If the CreateFleet call is successful, Amazon GameLift performs the
  following tasks:

  <ul> <li> Creates a fleet record and sets the status to `NEW` (followed by
  other statuses as the fleet is activated).

  </li> <li> Sets the fleet's capacity to 1 "desired", which causes Amazon
  GameLift to start one new EC2 instance.

  </li> <li> Starts launching server processes on the instance. If the fleet
  is configured to run multiple server processes per instance, Amazon
  GameLift staggers each launch by a few seconds.

  </li> <li> Begins writing events to the fleet event log, which can be
  accessed in the Amazon GameLift console.

  </li> <li> Sets the fleet's status to `ACTIVE` once one server process in
  the fleet is ready to host a game session.

  </li> </ul> After a fleet is created, use the following actions to change
  fleet properties and configuration:

  <ul> <li> `UpdateFleetAttributes` -- Update fleet metadata, including name
  and description.

  </li> <li> `UpdateFleetCapacity` -- Increase or decrease the number of
  instances you want the fleet to maintain.

  </li> <li> `UpdateFleetPortSettings` -- Change the IP address and port
  ranges that allow access to incoming traffic.

  </li> <li> `UpdateRuntimeConfiguration` -- Change how server processes are
  launched in the fleet, including launch path, launch parameters, and the
  number of concurrent processes.

  </li> <li> `PutScalingPolicy` -- Create or update rules that are used to
  set the fleet's capacity (autoscaling).

  </li> </ul>
  """
  def create_fleet(client, input, options \\ []) do
    request(client, "CreateFleet", input, options)
  end

  @doc """
  Creates a multiplayer game session for players. This action creates a game
  session record and assigns an available server process in the specified
  fleet to host the game session. A fleet must have an `ACTIVE` status before
  a game session can be created in it.

  To create a game session, specify either fleet ID or alias ID, and indicate
  a maximum number of players to allow in the game session. You can also
  provide a name and game-specific properties for this game session. If
  successful, a `GameSession` object is returned containing session
  properties, including an IP address. By default, newly created game
  sessions allow new players to join. Use `UpdateGameSession` to change the
  game session's player session creation policy.

  When creating a game session on a fleet with a resource limit creation
  policy, the request should include a creator ID. If none is provided,
  Amazon GameLift does not evaluate the fleet's resource limit creation
  policy.
  """
  def create_game_session(client, input, options \\ []) do
    request(client, "CreateGameSession", input, options)
  end

  @doc """
  Establishes a new queue for processing requests for new game sessions. A
  queue identifies where new game sessions can be hosted--by specifying a
  list of fleet destinations--and how long a request can remain in the queue
  waiting to be placed before timing out. Requests for new game sessions are
  added to a queue by calling `StartGameSessionPlacement` and referencing the
  queue name.

  When processing a request for a game session, Amazon GameLift tries each
  destination in order until it finds one with available resources to host
  the new game session. A queue's default order is determined by how
  destinations are listed. This default order can be overridden in a game
  session placement request.

  To create a new queue, provide a name, timeout value, and a list of
  destinations. If successful, a new queue object is returned.
  """
  def create_game_session_queue(client, input, options \\ []) do
    request(client, "CreateGameSessionQueue", input, options)
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
  """
  def create_player_sessions(client, input, options \\ []) do
    request(client, "CreatePlayerSessions", input, options)
  end

  @doc """
  Deletes a fleet alias. This action removes all record of the alias. Game
  clients attempting to access a server process using the deleted alias
  receive an error. To delete an alias, specify the alias ID to be deleted.
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
  """
  def delete_build(client, input, options \\ []) do
    request(client, "DeleteBuild", input, options)
  end

  @doc """
  Deletes everything related to a fleet. Before deleting a fleet, you must
  set the fleet's desired capacity to zero. See `UpdateFleetCapacity`.

  This action removes the fleet's resources and the fleet record. Once a
  fleet is deleted, you can no longer use that fleet.
  """
  def delete_fleet(client, input, options \\ []) do
    request(client, "DeleteFleet", input, options)
  end

  @doc """
  Deletes a game session queue. This action means that any
  `StartGameSessionPlacement` requests that reference this queue will fail.
  To delete a queue, specify the queue name.
  """
  def delete_game_session_queue(client, input, options \\ []) do
    request(client, "DeleteGameSessionQueue", input, options)
  end

  @doc """
  Deletes a fleet scaling policy. This action means that the policy is no
  longer in force and removes all record of it. To delete a scaling policy,
  specify both the scaling policy name and the fleet ID it is associated
  with.
  """
  def delete_scaling_policy(client, input, options \\ []) do
    request(client, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Retrieves properties for a fleet alias. This operation returns all alias
  metadata and settings. To get just the fleet ID an alias is currently
  pointing to, use `ResolveAlias`.

  To get alias properties, specify the alias ID. If successful, an `Alias`
  object is returned.
  """
  def describe_alias(client, input, options \\ []) do
    request(client, "DescribeAlias", input, options)
  end

  @doc """
  Retrieves properties for a build. To get a build record, specify a build
  ID. If successful, an object containing the build properties is returned.
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

  </note>
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

  </note>
  """
  def describe_fleet_capacity(client, input, options \\ []) do
    request(client, "DescribeFleetCapacity", input, options)
  end

  @doc """
  Retrieves entries from the specified fleet's event log. You can specify a
  time range to limit the result set. Use the pagination parameters to
  retrieve results as a set of sequential pages. If successful, a collection
  of event log entries matching the request are returned.
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

  </note>
  """
  def describe_fleet_utilization(client, input, options \\ []) do
    request(client, "DescribeFleetUtilization", input, options)
  end

  @doc """
  Retrieves properties, including the protection policy in force, for one or
  more game sessions. This action can be used in several ways: (1) provide a
  `GameSessionId` to request details for a specific game session; (2) provide
  either a `FleetId` or an `AliasId` to request properties for all game
  sessions running on a fleet.

  To get game session record(s), specify just one of the following: game
  session ID, fleet ID, or alias ID. You can filter this request by game
  session status. Use the pagination parameters to retrieve results as a set
  of sequential pages. If successful, a `GameSessionDetail` object is
  returned for each session matching the request.
  """
  def describe_game_session_details(client, input, options \\ []) do
    request(client, "DescribeGameSessionDetails", input, options)
  end

  @doc """
  Retrieves properties and current status of a game session placement
  request. To get game session placement details, specify the placement ID.
  If successful, a `GameSessionPlacement` object is returned.
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
  Retrieves properties for one or more player sessions. This action can be
  used in several ways: (1) provide a `PlayerSessionId` parameter to request
  properties for a specific player session; (2) provide a `GameSessionId`
  parameter to request properties for all player sessions in the specified
  game session; (3) provide a `PlayerId` parameter to request properties for
  all player sessions of a specified player.

  To get game session record(s), specify only one of the following: a player
  session ID, a game session ID, or a player ID. You can filter this request
  by player session status. Use the pagination parameters to retrieve results
  as a set of sequential pages. If successful, a `PlayerSession` object is
  returned for each session matching the request.
  """
  def describe_player_sessions(client, input, options \\ []) do
    request(client, "DescribePlayerSessions", input, options)
  end

  @doc """
  Retrieves the current runtime configuration for the specified fleet. The
  runtime configuration tells Amazon GameLift how to launch server processes
  on instances in the fleet.
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
  """
  def describe_scaling_policies(client, input, options \\ []) do
    request(client, "DescribeScalingPolicies", input, options)
  end

  @doc """
  Retrieves the location of stored game session logs for a specified game
  session. When a game session is terminated, Amazon GameLift automatically
  stores the logs in Amazon S3. Use this URL to download the logs.

  <note> See the [AWS Service
  Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift)
  page for maximum log file sizes. Log files that exceed this limit are not
  saved.

  </note>
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
  Instance](http://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html).

  To request access to a specific instance, specify the IDs of the instance
  and the fleet it belongs to. If successful, an `InstanceAccess` object is
  returned containing the instance's IP address and a set of credentials.
  """
  def get_instance_access(client, input, options \\ []) do
    request(client, "GetInstanceAccess", input, options)
  end

  @doc """
  Retrieves a collection of alias records for this AWS account. You can
  filter the result set by alias name and/or routing strategy type. Use the
  pagination parameters to retrieve results in sequential pages.

  <note> Aliases are not listed in any particular order.

  </note>
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

  </note>
  """
  def list_builds(client, input, options \\ []) do
    request(client, "ListBuilds", input, options)
  end

  @doc """
  Retrieves a collection of fleet records for this AWS account. You can
  filter the result set by build ID. Use the pagination parameters to
  retrieve results in sequential pages.

  <note> Fleet records are not listed in any particular order.

  </note>
  """
  def list_fleets(client, input, options \\ []) do
    request(client, "ListFleets", input, options)
  end

  @doc """
  Creates or updates a scaling policy for a fleet. An active scaling policy
  prompts Amazon GameLift to track a certain metric for a fleet and
  automatically change the fleet's capacity in specific circumstances. Each
  scaling policy contains one rule statement. Fleets can have multiple
  scaling policies in force simultaneously.

  A scaling policy rule statement has the following structure:

  If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for
  `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by
  `[ScalingAdjustment]`.

  For example, this policy: "If the number of idle instances exceeds 20 for
  more than 15 minutes, then reduce the fleet capacity by 10 instances" could
  be implemented as the following rule statement:

  If [IdleInstances] is [GreaterThanOrEqualToThreshold] [20] for [15]
  minutes, then [ChangeInCapacity] by [-10].

  To create or update a scaling policy, specify a unique combination of name
  and fleet ID, and set the rule values. All parameters for this action are
  required. If successful, the policy name is returned. Scaling policies
  cannot be suspended or made inactive. To stop enforcing a scaling policy,
  call `DeleteScalingPolicy`.
  """
  def put_scaling_policy(client, input, options \\ []) do
    request(client, "PutScalingPolicy", input, options)
  end

  @doc """
  *This API call is not currently in use. * Retrieves a fresh set of upload
  credentials and the assigned Amazon S3 storage location for a specific
  build. Valid credentials are required to upload your game build files to
  Amazon S3.
  """
  def request_upload_credentials(client, input, options \\ []) do
    request(client, "RequestUploadCredentials", input, options)
  end

  @doc """
  Retrieves the fleet ID that a specified alias is currently pointing to.
  """
  def resolve_alias(client, input, options \\ []) do
    request(client, "ResolveAlias", input, options)
  end

  @doc """
  Retrieves a set of game sessions that match a set of search criteria and
  sorts them in a specified order. Currently a game session search is limited
  to a single fleet. Search results include only game sessions that are in
  `ACTIVE` status. If you need to retrieve game sessions with a status other
  than active, use `DescribeGameSessions`. If you need to retrieve the
  protection policy for each game session, use `DescribeGameSessionDetails`.

  You can search or sort by the following game session attributes:

  <ul> <li> **gameSessionId** -- ID value assigned to a game session. This
  unique value is returned in a `GameSession` object when a new game session
  is created.

  </li> <li> **gameSessionName** -- Name assigned to a game session. This
  value is set when requesting a new game session with `CreateGameSession` or
  updating with `UpdateGameSession`. Game session names do not need to be
  unique to a game session.

  </li> <li> **creationTimeMillis** -- Value indicating when a game session
  was created. It is expressed in Unix time as milliseconds.

  </li> <li> **playerSessionCount** -- Number of players currently connected
  to a game session. This value changes rapidly as players join the session
  or drop out.

  </li> <li> **maximumSessions** -- Maximum number of player sessions allowed
  for a game session. This value is set when requesting a new game session
  with `CreateGameSession` or updating with `UpdateGameSession`.

  </li> <li> **hasAvailablePlayerSessions** -- Boolean value indicating
  whether or not a game session has reached its maximum number of players.
  When searching with this attribute, the search value must be `true` or
  `false`. It is highly recommended that all search requests include this
  filter attribute to optimize search performance and return only sessions
  that players can join.

  </li> </ul> To search or sort, specify either a fleet ID or an alias ID,
  and provide a search filter expression, a sort expression, or both. Use the
  pagination parameters to retrieve results as a set of sequential pages. If
  successful, a collection of `GameSession` objects matching the request is
  returned.

  <note> Returned values for `playerSessionCount` and
  `hasAvailablePlayerSessions` change quickly as players join sessions and
  others drop out. Results should be considered a snapshot in time. Be sure
  to refresh search results often, and handle sessions that fill up before a
  player can join.

  </note>
  """
  def search_game_sessions(client, input, options \\ []) do
    request(client, "SearchGameSessions", input, options)
  end

  @doc """
  Places a request for a new game session in a queue (see
  `CreateGameSessionQueue`). When processing a placement request, Amazon
  GameLift attempts to create a new game session on one of the fleets
  associated with the queue. If no resources are available, Amazon GameLift
  tries again with another and so on until resources are found or the
  placement request times out. A game session placement request can also
  request player sessions. When a new game session is successfully created,
  Amazon GameLift creates a player session for each player included in the
  request.

  When placing a game session, by default Amazon GameLift tries each fleet in
  the order they are listed in the queue configuration. Ideally, a queue's
  destinations are listed in preference order. Alternatively, when requesting
  a game session with players, you can also provide latency data for each
  player in relevant regions. Latency data indicates the performance lag a
  player experiences when connected to a fleet in the region. Amazon GameLift
  uses latency data to reorder the list of destinations to place the game
  session in a region with minimal lag. If latency data is provided for
  multiple players, Amazon GameLift calculates each region's average lag for
  all players and reorders to get the best game play across all players.

  To place a new game session request, specify the queue name and a set of
  game session properties and settings. Also provide a unique ID (such as a
  UUID) for the placement. You'll use this ID to track the status of the
  placement request. Optionally, provide a set of IDs and player data for
  each player you want to join to the new game session. To optimize game play
  for the players, also provide latency data for all players. If successful,
  a new game session placement is created. To track the status of a placement
  request, call `DescribeGameSessionPlacement` and check the request's
  status. If the status is Fulfilled, a new game session has been created and
  a game session ARN and region are referenced. If the placement request
  times out, you have the option of resubmitting the request or retrying it
  with a different queue.
  """
  def start_game_session_placement(client, input, options \\ []) do
    request(client, "StartGameSessionPlacement", input, options)
  end

  @doc """
  Cancels a game session placement that is in Pending status. To stop a
  placement, provide the placement ID values. If successful, the placement is
  moved to Cancelled status.
  """
  def stop_game_session_placement(client, input, options \\ []) do
    request(client, "StopGameSessionPlacement", input, options)
  end

  @doc """
  Updates properties for a fleet alias. To update properties, specify the
  alias ID to be updated and provide the information to be changed. To
  reassign an alias to another fleet, provide an updated routing strategy. If
  successful, the updated alias record is returned.
  """
  def update_alias(client, input, options \\ []) do
    request(client, "UpdateAlias", input, options)
  end

  @doc """
  Updates metadata in a build record, including the build name and version.
  To update the metadata, specify the build ID to update and provide the new
  values. If successful, a build object containing the updated metadata is
  returned.
  """
  def update_build(client, input, options \\ []) do
    request(client, "UpdateBuild", input, options)
  end

  @doc """
  Updates fleet properties, including name and description, for a fleet. To
  update metadata, specify the fleet ID and the property values you want to
  change. If successful, the fleet ID for the updated fleet is returned.
  """
  def update_fleet_attributes(client, input, options \\ []) do
    request(client, "UpdateFleetAttributes", input, options)
  end

  @doc """
  Updates capacity settings for a fleet. Use this action to specify the
  number of EC2 instances (hosts) that you want this fleet to contain. Before
  calling this action, you may want to call `DescribeEC2InstanceLimits` to
  get the maximum capacity based on the fleet's EC2 instance type.

  If you're using autoscaling (see `PutScalingPolicy`), you may want to
  specify a minimum and/or maximum capacity. If you don't provide these,
  autoscaling can set capacity anywhere between zero and the [service
  limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift).

  To update fleet capacity, specify the fleet ID and the number of instances
  you want the fleet to host. If successful, Amazon GameLift starts or
  terminates instances so that the fleet's active instance count matches the
  desired instance count. You can view a fleet's current capacity information
  by calling `DescribeFleetCapacity`. If the desired instance count is higher
  than the instance type's limit, the "Limit Exceeded" exception occurs.
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
  """
  def update_game_session(client, input, options \\ []) do
    request(client, "UpdateGameSession", input, options)
  end

  @doc """
  Updates settings for a game session queue, which determines how new game
  session requests in the queue are processed. To update settings, specify
  the queue name to be updated and provide the new settings. When updating
  destinations, provide a complete list of destinations.
  """
  def update_game_session_queue(client, input, options \\ []) do
    request(client, "UpdateGameSessionQueue", input, options)
  end

  @doc """
  Updates the current runtime configuration for the specified fleet, which
  tells Amazon GameLift how to launch server processes on instances in the
  fleet. You can update a fleet's runtime configuration at any time after the
  fleet is created; it does not need to be in an `ACTIVE` status.

  To update runtime configuration, specify the fleet ID and provide a
  `RuntimeConfiguration` object with the updated collection of server process
  configurations.

  Each instance in a Amazon GameLift fleet checks regularly for an updated
  runtime configuration and changes how it launches server processes to
  comply with the latest version. Existing server processes are not affected
  by the update; they continue to run until they end, while Amazon GameLift
  simply adds new server processes to fit the current runtime configuration.
  As a result, the runtime configuration changes are applied gradually as
  existing processes shut down and new processes are launched in Amazon
  GameLift's normal process recycling activity.
  """
  def update_runtime_configuration(client, input, options \\ []) do
    request(client, "UpdateRuntimeConfiguration", input, options)
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
