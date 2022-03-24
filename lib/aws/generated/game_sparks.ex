# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GameSparks do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-08-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "gamesparks",
      global?: false,
      protocol: "rest-json",
      service_id: "GameSparks",
      signature_version: "v4",
      signing_name: "gamesparks",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new game with an empty configuration.

  After creating your game, you can update the configuration using
  `UpdateGameConfiguration` or `ImportGameConfiguration`.
  """
  def create_game(%Client{} = client, input, options \\ []) do
    url_path = "/game"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a snapshot of the game configuration.
  """
  def create_snapshot(%Client{} = client, game_name, input, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/snapshot"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new stage for stage-by-stage game development and deployment.
  """
  def create_stage(%Client{} = client, game_name, input, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/stage"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a game.
  """
  def delete_game(%Client{} = client, game_name, input, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a stage from a game, along with the associated game runtime.
  """
  def delete_stage(%Client{} = client, game_name, stage_name, input, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/stage/#{AWS.Util.encode_uri(stage_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disconnects a player from the game runtime.

  If a player has multiple connections, this operation attempts to close all of
  them.
  """
  def disconnect_player(
        %Client{} = client,
        game_name,
        player_id,
        stage_name,
        input,
        options \\ []
      ) do
    url_path =
      "/runtime/game/#{AWS.Util.encode_uri(game_name)}/stage/#{AWS.Util.encode_uri(stage_name)}/player/#{AWS.Util.encode_uri(player_id)}/disconnect"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Exports a game configuration snapshot.
  """
  def export_snapshot(%Client{} = client, game_name, snapshot_id, options \\ []) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/snapshot/#{AWS.Util.encode_uri(snapshot_id)}/export"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets details about a specified extension.
  """
  def get_extension(%Client{} = client, name, namespace, options \\ []) do
    url_path = "/extension/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets details about a specified extension version.
  """
  def get_extension_version(%Client{} = client, extension_version, name, namespace, options \\ []) do
    url_path =
      "/extension/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(extension_version)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets details about a game.
  """
  def get_game(%Client{} = client, game_name, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets the configuration of the game.
  """
  def get_game_configuration(%Client{} = client, game_name, sections \\ nil, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/configuration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sections) do
        [{"Sections", sections} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets details about a job that is generating code for a snapshot.
  """
  def get_generated_code_job(%Client{} = client, game_name, job_id, snapshot_id, options \\ []) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/snapshot/#{AWS.Util.encode_uri(snapshot_id)}/generated-sdk-code-job/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets the status of a player's connection to the game runtime.

  It's possible for a single player to have multiple connections to the game
  runtime. If a player is not connected, this operation returns an empty list.
  """
  def get_player_connection_status(
        %Client{} = client,
        game_name,
        player_id,
        stage_name,
        options \\ []
      ) do
    url_path =
      "/runtime/game/#{AWS.Util.encode_uri(game_name)}/stage/#{AWS.Util.encode_uri(stage_name)}/player/#{AWS.Util.encode_uri(player_id)}/connection"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets a copy of the game configuration in a snapshot.
  """
  def get_snapshot(%Client{} = client, game_name, snapshot_id, sections \\ nil, options \\ []) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/snapshot/#{AWS.Util.encode_uri(snapshot_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(sections) do
        [{"Sections", sections} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets information about a stage.
  """
  def get_stage(%Client{} = client, game_name, stage_name, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/stage/#{AWS.Util.encode_uri(stage_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets information about a stage deployment.
  """
  def get_stage_deployment(
        %Client{} = client,
        game_name,
        stage_name,
        deployment_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/stage/#{AWS.Util.encode_uri(stage_name)}/deployment"

    headers = []
    query_params = []

    query_params =
      if !is_nil(deployment_id) do
        [{"DeploymentId", deployment_id} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Imports a game configuration.

  This operation replaces the current configuration of the game with the provided
  input. This is not a reversible operation. If you want to preserve the previous
  configuration, use `CreateSnapshot` to make a new snapshot before importing.
  """
  def import_game_configuration(%Client{} = client, game_name, input, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/configuration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets a paginated list of available versions for the extension.

  Each time an API change is made to an extension, the version is incremented. The
  list retrieved by this operation shows the versions that are currently
  available.
  """
  def list_extension_versions(
        %Client{} = client,
        name,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/extension/#{AWS.Util.encode_uri(namespace)}/#{AWS.Util.encode_uri(name)}/version"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets a paginated list of available extensions.

  Extensions provide features that games can use from scripts.
  """
  def list_extensions(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/extension"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets a paginated list of games.
  """
  def list_games(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/game"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets a paginated list of code generation jobs for a snapshot.
  """
  def list_generated_code_jobs(
        %Client{} = client,
        game_name,
        snapshot_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/snapshot/#{AWS.Util.encode_uri(snapshot_id)}/generated-sdk-code-jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets a paginated list of snapshot summaries from the game.
  """
  def list_snapshots(
        %Client{} = client,
        game_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/snapshot"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets a paginated list of stage deployment summaries from the game.
  """
  def list_stage_deployments(
        %Client{} = client,
        game_name,
        stage_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/stage/#{AWS.Util.encode_uri(stage_name)}/deployments"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets a paginated list of stage summaries from the game.
  """
  def list_stages(
        %Client{} = client,
        game_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/stage"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the tags associated with a GameSparks resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Starts an asynchronous process that generates client code for system-defined and
  custom messages.

  The resulting code is collected as a .zip file and uploaded to a pre-signed
  Amazon S3 URL.
  """
  def start_generated_code_job(%Client{} = client, game_name, snapshot_id, input, options \\ []) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/snapshot/#{AWS.Util.encode_uri(snapshot_id)}/generated-sdk-code-job"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deploys a snapshot to the stage and creates a new game runtime.

  After you call this operation, you can check the deployment status by using
  `GetStageDeployment`.

  If there are any players connected to the previous game runtime, then both
  runtimes persist. Existing connections to the previous runtime are maintained.
  When players disconnect and reconnect, they connect to the new runtime. After
  there are no connections to the previous game runtime, it is deleted.
  """
  def start_stage_deployment(%Client{} = client, game_name, stage_name, input, options \\ []) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/stage/#{AWS.Util.encode_uri(stage_name)}/deployment"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds tags to a GameSparks resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from a GameSparks resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates details of the game.
  """
  def update_game(%Client{} = client, game_name, input, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates one or more sections of the game configuration.
  """
  def update_game_configuration(%Client{} = client, game_name, input, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/configuration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the metadata of a GameSparks snapshot.
  """
  def update_snapshot(%Client{} = client, game_name, snapshot_id, input, options \\ []) do
    url_path =
      "/game/#{AWS.Util.encode_uri(game_name)}/snapshot/#{AWS.Util.encode_uri(snapshot_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the metadata of a stage.
  """
  def update_stage(%Client{} = client, game_name, stage_name, input, options \\ []) do
    url_path = "/game/#{AWS.Util.encode_uri(game_name)}/stage/#{AWS.Util.encode_uri(stage_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
