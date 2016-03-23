# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.GameLift do
  @moduledoc """
  Amazon GameLift Service

  Welcome to the *Amazon GameLift API Reference*. Amazon GameLift is a
  managed Amazon Web Services (AWS) service for developers who need a
  scalable, server-based solution for multiplayer games. Amazon GameLift
  provides setup and deployment of game servers, and handles infrastructure
  scaling and session management. For more information about the GameLift
  service, including a feature overview, getting started guide, and tutorial,
  see the accompanying [Amazon GameLift Developer
  Guide](http://docs.aws.amazon.com/gamelift/latest/developerguide/).

  This reference describes the low-level service API for GameLift. You can
  call this API directly or use the [AWS SDK](https://aws.amazon.com/tools/)
  for your preferred language. The AWS SDK includes a set of high-level
  GameLift actions multiplayer game sessions. Alternatively, you can use the
  [AWS command-line interface](https://aws.amazon.com/cli/) (CLI) tool, which
  includes commands for GameLift. For administrative actions, you can use the
  Amazon GameLift console.

  **Managing Game and Player Sessions Through GameLift**

  Call these actions from your game clients and/or services to create and
  manage multiplayer game sessions.

  <ul> <li> **Game sessions** <ul> <li>`CreateGameSession`</li>
  <li>`DescribeGameSessions`</li> <li>`DescribeGameSessionDetails`</li>
  <li>`UpdateGameSession`</li> </ul> </li> <li> **Player sessions** <ul>
  <li>`CreatePlayerSession`</li> <li>`CreatePlayerSessions`</li>
  <li>`DescribePlayerSessions`</li> </ul> </li> <li> **Other actions:** <ul>
  <li>`GetGameSessionLogUrl`</li> </ul> </li> </ul> **Setting Up Game
  Servers**

  Use these administrative actions to configure GameLift to host your game
  servers. When configuring GameLift, you'll need to (1) configure a build
  for your game and provide build files, and (2) set up one or more fleets to
  host game sessions.

  <ul> <li> **Build actions:** <ul> <li>`ListBuilds`</li>
  <li>`CreateBuild`</li> <li>`DescribeBuild`</li> <li>`UpdateBuild`</li>
  <li>`DeleteBuild`</li> <li>`RequestUploadCredentials`</li> </ul> </li> <li>
  **Fleet actions:** <ul> <li>`ListFleets`</li> <li>`CreateFleet`</li>
  <li>Describe fleet actions: <ul> <li>`DescribeFleetAttributes`</li>
  <li>`DescribeFleetCapacity`</li> <li>`DescribeFleetPortSettings`</li>
  <li>`DescribeFleetUtilization`</li> <li>`DescribeEC2InstanceLimits`</li>
  <li>`DescribeFleetEvents`</li> </ul> </li> <li>Update fleet actions: <ul>
  <li>`UpdateFleetAttributes`</li> <li>`UpdateFleetCapacity`</li>
  <li>`UpdateFleetPortSettings`</li> </ul> </li> <li>`DeleteFleet`</li> </ul>
  </li> <li> **Alias actions:** <ul> <li>`ListAliases`</li>
  <li>`CreateAlias`</li> <li>`DescribeAlias`</li> <li>`UpdateAlias`</li>
  <li>`DeleteAlias`</li> <li>`ResolveAlias`</li> </ul> </li> <li> **Scaling
  policy actions:** <ul> <li>`PutScalingPolicy`</li>
  <li>`DescribeScalingPolicies`</li> <li>`DeleteScalingPolicy`</li> </ul>
  </li> </ul>
  """

  @doc """
  Creates an alias for a fleet. You can use an alias to anonymize your fleet
  by referencing an alias instead of a specific fleet when you create game
  sessions. Amazon GameLift supports two types of routing strategies for
  aliases: simple and terminal. Use a simple alias to point to an active
  fleet. Use a terminal alias to display a message to incoming traffic
  instead of routing players to an active fleet. This option is useful when a
  game server is no longer supported but you want to provide better messaging
  than a standard 404 error.

  To create a fleet alias, specify an alias name, routing strategy, and
  optional description. If successful, a new alias record is returned,
  including an alias ID, which you can reference when creating a game
  session. To reassign the alias to another fleet ID, call `UpdateAlias`.
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Initializes a new build record and generates information required to upload
  a game build to Amazon GameLift. Once the build record has been created and
  is in an INITIALIZED state, you can upload your game build.

  <important>To create a build, use the CLI command `upload-build`, which
  creates a new build record and uploads the build files in one step. (See
  the [Amazon GameLift Developer
  Guide](http://docs.aws.amazon.com/gamelift/latest/developerguide/) for more
  details on the CLI and the upload process.) Call the `CreateBuild` action
  only if you have your own Amazon Simple Storage Service (Amazon S3) client
  and need to manually upload your build files.

  </important> To create a new build, optionally specify a build name and
  version. This metadata is stored with other properties in the build record
  and is displayed in the GameLift console (but not visible to players). If
  successful, this action returns the newly created build record along with
  an Amazon S3 storage location and AWS account credentials. Use the location
  and credentials to upload your game build.
  """
  def create_build(client, input, options \\ []) do
    request(client, "CreateBuild", input, options)
  end

  @doc """
  Creates a new fleet to host game servers. A fleet consists of a set of
  Amazon Elastic Compute Cloud (Amazon EC2) instances of a certain type,
  which defines the CPU, memory, storage, and networking capacity of each
  host in the fleet. See [Amazon EC2 Instance
  Types](https://aws.amazon.com/ec2/instance-types/) for more information.
  Each instance in the fleet hosts a game server created from the specified
  game build. Once a fleet is in an ACTIVE state, it can begin hosting game
  sessions.

  To create a new fleet, provide a name and the EC2 instance type for the new
  fleet, and specify the build and server launch path. Builds must be in a
  READY state before they can be used to build fleets. When configuring the
  new fleet, you can optionally (1) provide a set of launch parameters to be
  passed to a game server when activated; (2) limit incoming traffic to a
  specified range of IP addresses and port numbers; (3) set game session
  protection for all instances in the fleet, and (4) configure Amazon
  GameLift to store game session logs by specifying the path to the logs
  stored in your game server files. If the call is successful, Amazon
  GameLift performs the following tasks:

  <ul> <li>Creates a fleet record and sets the state to NEW.</li> <li>Sets
  the fleet's capacity to 1 "desired" and 1 "active" EC2 instance count.</li>
  <li>Creates an EC2 instance and begins the process of initializing the
  fleet and activating a game server on the instance.</li> <li>Begins writing
  events to the fleet event log, which can be accessed in the GameLift
  console.</li> </ul> Once a fleet is created, use the following actions to
  change certain fleet properties (server launch parameters and log paths
  cannot be changed):

  <ul> <li> `UpdateFleetAttributes` -- Update fleet metadata, including name
  and description.</li> <li> `UpdateFleetCapacity` -- Increase or decrease
  the number of instances you want the fleet to maintain.</li> <li>
  `UpdateFleetPortSettings` -- Change the IP addresses and ports that allow
  access to incoming traffic.</li> </ul>
  """
  def create_fleet(client, input, options \\ []) do
    request(client, "CreateFleet", input, options)
  end

  @doc """
  Creates a multiplayer game session for players. This action creates a game
  session record and assigns the new session to an instance in the specified
  fleet, which activates the server initialization process in your game
  server. A fleet must be in an ACTIVE state before a game session can be
  created for it.

  To create a game session, specify either a fleet ID or an alias ID and
  indicate the maximum number of players the game session allows. You can
  also provide a name and a set of properties for your game (optional). If
  successful, a `GameSession` object is returned containing session
  properties, including an IP address. By default, newly created game
  sessions are set to accept adding any new players to the game session. Use
  `UpdateGameSession` to change the creation policy.
  """
  def create_game_session(client, input, options \\ []) do
    request(client, "CreateGameSession", input, options)
  end

  @doc """
  Adds a player to a game session and creates a player session record. A game
  session must be in an ACTIVE state, have a creation policy of ALLOW_ALL,
  and have an open player slot before players can be added to the session.

  To create a player session, specify a game session ID and player ID. If
  successful, the player is added to the game session and a new
  `PlayerSession` object is returned.
  """
  def create_player_session(client, input, options \\ []) do
    request(client, "CreatePlayerSession", input, options)
  end

  @doc """
  Adds a group of players to a game session. Similar to
  `CreatePlayerSession`, this action allows you to add multiple players in a
  single call, which is useful for games that provide party and/or
  matchmaking features. A game session must be in an ACTIVE state, have a
  creation policy of ALLOW_ALL, and have an open player slot before players
  can be added to the session.

  To create player sessions, specify a game session ID and a list of player
  IDs. If successful, the players are added to the game session and a set of
  new `PlayerSession` objects is returned.
  """
  def create_player_sessions(client, input, options \\ []) do
    request(client, "CreatePlayerSessions", input, options)
  end

  @doc """
  Deletes an alias. This action removes all record of the alias; game clients
  attempting to access a game server using the deleted alias receive an
  error. To delete an alias, specify the alias ID to be deleted.
  """
  def delete_alias(client, input, options \\ []) do
    request(client, "DeleteAlias", input, options)
  end

  @doc """
  Deletes a build. This action permanently deletes the build record and any
  uploaded build files.

  To delete a build, specify its ID. Deleting a build does not affect the
  status of any active fleets, but you can no longer create new fleets for
  the deleted build.
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
  Deletes a fleet scaling policy. This action means that the policy is no
  longer in force and removes all record of it. To delete a scaling policy,
  specify both the scaling policy name and the fleet ID it is associated
  with.
  """
  def delete_scaling_policy(client, input, options \\ []) do
    request(client, "DeleteScalingPolicy", input, options)
  end

  @doc """
  Retrieves properties for a specified alias. To get the alias, specify an
  alias ID. If successful, an `Alias` object is returned.
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

  <ul> <li>maximum number of instances allowed per AWS account (service
  limit)</li> <li>current usage level for the AWS account </li> </ul> Service
  limits vary depending on region. Available regions for GameLift can be
  found in the AWS Management Console for GameLift (see the drop-down list in
  the upper right corner).
  """
  def describe_e_c2_instance_limits(client, input, options \\ []) do
    request(client, "DescribeEC2InstanceLimits", input, options)
  end

  @doc """
  Retrieves fleet properties, including metadata, status, and configuration,
  for one or more fleets. You can request attributes for all fleets, or
  specify a list of one or more fleet IDs. When requesting all fleets, use
  the pagination parameters to retrieve results as a set of sequential pages.
  If successful, a `FleetAttributes` object is returned for each requested
  fleet ID. When specifying a list of fleet IDs, attribute objects are
  returned only for fleets that currently exist.

  <note>Some API actions may limit the number of fleet IDs allowed in one
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
  fleets, or specify a list of one or more fleet IDs. When requesting all
  fleets, use the pagination parameters to retrieve results as a set of
  sequential pages. If successful, a `FleetCapacity` object is returned for
  each requested fleet ID. When specifying a list of fleet IDs, attribute
  objects are returned only for fleets that currently exist.

  <note>Some API actions may limit the number of fleet IDs allowed in one
  request. If a request exceeds this limit, the request fails and the error
  message includes the maximum allowed.

  </note>
  """
  def describe_fleet_capacity(client, input, options \\ []) do
    request(client, "DescribeFleetCapacity", input, options)
  end

  @doc """
  Retrieves entries from the fleet event log. You can specify a time range to
  limit the result set. Use the pagination parameters to retrieve results as
  a set of sequential pages. If successful, a collection of event log entries
  matching the request are returned.
  """
  def describe_fleet_events(client, input, options \\ []) do
    request(client, "DescribeFleetEvents", input, options)
  end

  @doc """
  Retrieves the port settings for a fleet. Port settings are used to limit
  incoming traffic access to game servers in the fleet. To get a fleet's port
  settings, specify a fleet ID. If successful, an `IpPermission` object is
  returned for the requested fleet ID. If the requested fleet has been
  deleted, the result set will be empty.
  """
  def describe_fleet_port_settings(client, input, options \\ []) do
    request(client, "DescribeFleetPortSettings", input, options)
  end

  @doc """
  Retrieves utilization statistics for one or more fleets. You can request
  utilization data for all fleets, or specify a list of one or more fleet
  IDs. When requesting all fleets, use the pagination parameters to retrieve
  results as a set of sequential pages. If successful, a `FleetUtilization`
  object is returned for each requested fleet ID. When specifying a list of
  fleet IDs, utilization objects are returned only for fleets that currently
  exist.

  <note>Some API actions may limit the number of fleet IDs allowed in one
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
  *GameSessionId* to request details for a specific game session; (2) provide
  either a *FleetId* or an *AliasId* to request properties for all game
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
  Retrieves properties for one or more game sessions. This action can be used
  in several ways: (1) provide a *GameSessionId* to request properties for a
  specific game session; (2) provide a *FleetId* or an *AliasId* to request
  properties for all game sessions running on a fleet.

  To get game session record(s), specify just one of the following: game
  session ID, fleet ID, or alias ID. You can filter this request by game
  session status. Use the pagination parameters to retrieve results as a set
  of sequential pages. If successful, a `GameSession` object is returned for
  each session matching the request.
  """
  def describe_game_sessions(client, input, options \\ []) do
    request(client, "DescribeGameSessions", input, options)
  end

  @doc """
  Retrieves properties for one or more player sessions. This action can be
  used in several ways: (1) provide a *PlayerSessionId* parameter to request
  properties for a specific player session; (2) provide a *GameSessionId*
  parameter to request properties for all player sessions in the specified
  game session; (3) provide a *PlayerId* parameter to request properties for
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

  <note>See the [AWS Service
  Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift)
  page for maximum log file sizes. Log files that exceed this limit are not
  saved.

  </note>
  """
  def get_game_session_log_url(client, input, options \\ []) do
    request(client, "GetGameSessionLogUrl", input, options)
  end

  @doc """
  Retrieves a collection of alias records for this AWS account. You can
  filter the result set by alias name and/or routing strategy type. Use the
  pagination parameters to retrieve results in sequential pages.

  <note>Aliases are not listed in any particular order.

  </note>
  """
  def list_aliases(client, input, options \\ []) do
    request(client, "ListAliases", input, options)
  end

  @doc """
  Retrieves build records for all builds associated with an AWS account. You
  can filter the result set by build status. Use the pagination parameters to
  retrieve results in a set of sequential pages.

  <note>Build records are not listed in any particular order.

  </note>
  """
  def list_builds(client, input, options \\ []) do
    request(client, "ListBuilds", input, options)
  end

  @doc """
  Retrieves a collection of fleet records for this AWS account. You can
  filter the result set by build ID. Use the pagination parameters to
  retrieve results in sequential pages.

  <note>Fleet records are not listed in any particular order.

  </note>
  """
  def list_fleets(client, input, options \\ []) do
    request(client, "ListFleets", input, options)
  end

  @doc """
  Creates or updates a scaling policy for a fleet. An active scaling policy
  prompts GameLift to track a certain metric for a fleet and automatically
  change the fleet's capacity in specific circumstances. Each scaling policy
  contains one rule statement. Fleets can have multiple scaling policies in
  force simultaneously.

  A scaling policy rule statement has the following structure:

  If *[MetricName]* is *[ComparisonOperator]* *[Threshold]* for
  *[EvaluationPeriods]* minutes, then *[ScalingAdjustmentType]* to/by
  *[ScalingAdjustment]*.

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
  Retrieves a fresh set of upload credentials and the assigned Amazon S3
  storage location for a specific build. Valid credentials are required to
  upload your game build files to Amazon S3.

  <important>Call this action only if you need credentials for a build
  created with `CreateBuild`. This is a rare situation; in most cases, builds
  are created using the CLI command `upload-build`, which creates a build
  record and also uploads build files.

  </important> Upload credentials are returned when you create the build, but
  they have a limited lifespan. You can get fresh credentials and use them to
  re-upload game files until the state of that build changes to READY. Once
  this happens, you must create a brand new build.
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
  Updates properties for an alias. To update properties, specify the alias ID
  to be updated and provide the information to be changed. To reassign an
  alias to another fleet, provide an updated routing strategy. If successful,
  the updated alias record is returned.
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
  number of EC2 instances (hosts) you want this fleet to contain. Before
  calling this action, you may want to call `DescribeEC2InstanceLimits` to
  get the maximum capacity based on the fleet's EC2 instance type.

  If you're using auto-scaling (see `PutScalingPolicy`), you may want to
  specify a minimum and/or maximum capacity. If you don't provide these
  boundaries, auto-scaling can set capacity anywhere between zero and the
  [service
  limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift).

  To update fleet capacity, specify the fleet ID and the desired number of
  instances. If successful, Amazon GameLift starts or terminates instances so
  that the fleet's active instance count matches the desired instance count.
  You can view a fleet's current capacity information by calling
  `DescribeFleetCapacity`. If the desired instance count is higher than the
  instance type's limit, the "Limit Exceeded" exception will occur.
  """
  def update_fleet_capacity(client, input, options \\ []) do
    request(client, "UpdateFleetCapacity", input, options)
  end

  @doc """
  Updates port settings for a fleet. To update settings, specify the fleet ID
  to be updated and list the permissions you want to update. List the
  permissions you want to add in *InboundPermissionAuthorizations*, and
  permissions you want to remove in *InboundPermissionRevocations*.
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
