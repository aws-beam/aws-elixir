# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SimSpaceWeaver do
  @moduledoc """
  SimSpace Weaver (SimSpace Weaver) is a service that you can use to build and run
  large-scale spatial simulations in the Amazon Web Services Cloud.

  For example, you can create
  crowd simulations, large real-world environments, and immersive and interactive
  experiences.
  For more information about SimSpace Weaver, see the *
  [SimSpace Weaver User Guide](https://docs.aws.amazon.com/simspaceweaver/latest/userguide/)
  *.

  This API reference describes the API operations and data types that you can use
  to
  communicate directly with SimSpace Weaver.

  SimSpace Weaver also provides the SimSpace Weaver app SDK, which you use for app
  development. The
  SimSpace Weaver app SDK API reference is included in the SimSpace Weaver app SDK
  documentation. This
  documentation is part of the SimSpace Weaver app SDK distributable package.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      start_app_input() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("LaunchOverrides") => launch_overrides(),
        required("Domain") => String.t(),
        required("Name") => String.t(),
        required("Simulation") => String.t()
      }

  """
  @type start_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_simulation_output() :: %{
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("ExecutionId") => String.t()
      }

  """
  @type start_simulation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_clock() :: %{
        "Status" => String.t(),
        "TargetStatus" => String.t()
      }

  """
  @type simulation_clock() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_simulations_output() :: %{
        optional("NextToken") => String.t(),
        optional("Simulations") => list(simulation_metadata())
      }

  """
  @type list_simulations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_app_input() :: %{
        required("App") => String.t(),
        required("Domain") => String.t(),
        required("Simulation") => String.t()
      }

  """
  @type stop_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_app_endpoint_info() :: %{
        "Address" => String.t(),
        "IngressPortMappings" => list(simulation_app_port_mapping())
      }

  """
  @type simulation_app_endpoint_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_app_metadata() :: %{
        "Domain" => String.t(),
        "Name" => String.t(),
        "Simulation" => String.t(),
        "Status" => String.t(),
        "TargetStatus" => String.t()
      }

  """
  @type simulation_app_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_simulations_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_simulations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_clock_output() :: %{}

  """
  @type stop_clock_output() :: %{}

  @typedoc """

  ## Example:

      domain() :: %{
        "Lifecycle" => String.t(),
        "Name" => String.t()
      }

  """
  @type domain() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_clock_input() :: %{
        required("Simulation") => String.t()
      }

  """
  @type start_clock_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_configuration() :: %{
        "Destinations" => list(log_destination())
      }

  """
  @type logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_snapshot_output() :: %{}

  """
  @type create_snapshot_output() :: %{}

  @typedoc """

  ## Example:

      stop_clock_input() :: %{
        required("Simulation") => String.t()
      }

  """
  @type stop_clock_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_simulation_output() :: %{}

  """
  @type delete_simulation_output() :: %{}

  @typedoc """

  ## Example:

      stop_simulation_input() :: %{
        required("Simulation") => String.t()
      }

  """
  @type stop_simulation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_snapshot_input() :: %{
        required("Destination") => s3_destination(),
        required("Simulation") => String.t()
      }

  """
  @type create_snapshot_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      log_destination() :: %{
        "CloudWatchLogsLogGroup" => cloud_watch_logs_log_group()
      }

  """
  @type log_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_output() :: %{
        optional("Description") => String.t(),
        optional("Domain") => String.t(),
        optional("EndpointInfo") => simulation_app_endpoint_info(),
        optional("LaunchOverrides") => launch_overrides(),
        optional("Name") => String.t(),
        optional("Simulation") => String.t(),
        optional("Status") => String.t(),
        optional("TargetStatus") => String.t()
      }

  """
  @type describe_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_log_group() :: %{
        "LogGroupArn" => String.t()
      }

  """
  @type cloud_watch_logs_log_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_simulation_input() :: %{
        required("Simulation") => String.t()
      }

  """
  @type describe_simulation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "BucketName" => String.t(),
        "ObjectKey" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        "Tags" => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_destination() :: %{
        "BucketName" => String.t(),
        "ObjectKeyPrefix" => String.t()
      }

  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_apps_output() :: %{
        optional("Apps") => list(simulation_app_metadata()),
        optional("NextToken") => String.t()
      }

  """
  @type list_apps_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      launch_overrides() :: %{
        "LaunchCommands" => list(String.t())
      }

  """
  @type launch_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_simulation_input() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("MaximumDuration") => String.t(),
        optional("SchemaS3Location") => s3_location(),
        optional("SnapshotS3Location") => s3_location(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("RoleArn") => String.t()
      }

  """
  @type start_simulation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        "TagKeys" => list(String.t())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_app_port_mapping() :: %{
        "Actual" => integer(),
        "Declared" => integer()
      }

  """
  @type simulation_app_port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      stop_app_output() :: %{}

  """
  @type stop_app_output() :: %{}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      delete_app_output() :: %{}

  """
  @type delete_app_output() :: %{}

  @typedoc """

  ## Example:

      stop_simulation_output() :: %{}

  """
  @type stop_simulation_output() :: %{}

  @typedoc """

  ## Example:

      delete_simulation_input() :: %{
        required("Simulation") => String.t()
      }

  """
  @type delete_simulation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_input() :: %{
        required("App") => String.t(),
        required("Domain") => String.t(),
        required("Simulation") => String.t()
      }

  """
  @type describe_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_apps_input() :: %{
        optional("Domain") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Simulation") => String.t()
      }

  """
  @type list_apps_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      live_simulation_state() :: %{
        "Clocks" => list(simulation_clock()),
        "Domains" => list(domain())
      }

  """
  @type live_simulation_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_app_output() :: %{
        optional("Domain") => String.t(),
        optional("Name") => String.t(),
        optional("Simulation") => String.t()
      }

  """
  @type start_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_clock_output() :: %{}

  """
  @type start_clock_output() :: %{}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_simulation_output() :: %{
        optional("Arn") => String.t(),
        optional("CreationTime") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("ExecutionId") => String.t(),
        optional("LiveSimulationState") => live_simulation_state(),
        optional("LoggingConfiguration") => logging_configuration(),
        optional("MaximumDuration") => String.t(),
        optional("Name") => String.t(),
        optional("RoleArn") => String.t(),
        optional("SchemaError") => String.t(),
        optional("SchemaS3Location") => s3_location(),
        optional("SnapshotS3Location") => s3_location(),
        optional("StartError") => String.t(),
        optional("Status") => String.t(),
        optional("TargetStatus") => String.t()
      }

  """
  @type describe_simulation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_input() :: %{
        required("App") => String.t(),
        required("Domain") => String.t(),
        required("Simulation") => String.t()
      }

  """
  @type delete_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_metadata() :: %{
        "Arn" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => String.t(),
        "TargetStatus" => String.t()
      }

  """
  @type simulation_metadata() :: %{String.t() => any()}

  @type create_snapshot_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_simulation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_app_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_simulation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_apps_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_simulations_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type start_app_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type start_clock_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_simulation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type stop_app_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_clock_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_simulation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2022-10-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "simspaceweaver",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SimSpaceWeaver",
      signature_version: "v4",
      signing_name: "simspaceweaver",
      target_prefix: nil
    }
  end

  @doc """
  Creates a snapshot of the specified simulation.

  A snapshot is a file that contains simulation state data at a specific time.
  The state data saved in a snapshot includes entity data from the State Fabric,
  the simulation configuration specified in the schema, and the clock tick number.
  You can use the snapshot to initialize a new simulation.
  For more information about snapshots, see
  [Snapshots](https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html)
  in the *SimSpace Weaver User Guide*.

  You specify a `Destination` when you create a snapshot.
  The `Destination` is the name of an Amazon S3 bucket and an optional
  `ObjectKeyPrefix`. The `ObjectKeyPrefix` is
  usually the name of a folder in the bucket. SimSpace Weaver creates a
  `snapshot` folder inside the `Destination` and
  places the snapshot file there.

  The snapshot file is an Amazon S3 object. It has an object key with the
  form:

  ```

  *object-key-prefix*/snapshot/*simulation-name*-*YYMMdd*-*HHmm*-*ss*.zip
  ```

  , where:

    *

  ```

  *YY*

  ```

  is the 2-digit year

    *

  ```

  *MM*

  ```

  is the 2-digit month

    *

  ```

  *dd*

  ```

  is the 2-digit day of the month

    *

  ```

  *HH*

  ```

  is the 2-digit hour (24-hour clock)

    *

  ```

  *mm*

  ```

  is the 2-digit minutes

    *

  ```

  *ss*

  ```

  is the 2-digit seconds
  """
  @spec create_snapshot(map(), create_snapshot_input(), list()) ::
          {:ok, create_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_snapshot_errors()}
  def create_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/createsnapshot"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the instance of the given custom app.
  """
  @spec delete_app(map(), delete_app_input(), list()) ::
          {:ok, delete_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_errors()}
  def delete_app(%Client{} = client, input, options \\ []) do
    url_path = "/deleteapp"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"App", "app"},
        {"Domain", "domain"},
        {"Simulation", "simulation"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes all SimSpace Weaver resources assigned to the given simulation.

  Your simulation uses resources in other Amazon Web Services. This API operation
  doesn't delete
  resources in other Amazon Web Services.
  """
  @spec delete_simulation(map(), delete_simulation_input(), list()) ::
          {:ok, delete_simulation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_simulation_errors()}
  def delete_simulation(%Client{} = client, input, options \\ []) do
    url_path = "/deletesimulation"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Simulation", "simulation"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the state of the given custom app.
  """
  @spec describe_app(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_errors()}
  def describe_app(%Client{} = client, app, domain, simulation, options \\ []) do
    url_path = "/describeapp"
    headers = []
    query_params = []

    query_params =
      if !is_nil(simulation) do
        [{"simulation", simulation} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(app) do
        [{"app", app} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the current state of the given simulation.
  """
  @spec describe_simulation(map(), String.t(), list()) ::
          {:ok, describe_simulation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_simulation_errors()}
  def describe_simulation(%Client{} = client, simulation, options \\ []) do
    url_path = "/describesimulation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(simulation) do
        [{"simulation", simulation} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all custom apps or service apps for the given simulation and domain.
  """
  @spec list_apps(map(), String.t() | nil, String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_apps_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_apps_errors()}
  def list_apps(
        %Client{} = client,
        domain \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        simulation,
        options \\ []
      ) do
    url_path = "/listapps"
    headers = []
    query_params = []

    query_params =
      if !is_nil(simulation) do
        [{"simulation", simulation} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain) do
        [{"domain", domain} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the SimSpace Weaver simulations in the Amazon Web Services account used to
  make the API call.
  """
  @spec list_simulations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_simulations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_simulations_errors()}
  def list_simulations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/listsimulations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all tags on a SimSpace Weaver resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a custom app with the configuration specified in the simulation schema.
  """
  @spec start_app(map(), start_app_input(), list()) ::
          {:ok, start_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_app_errors()}
  def start_app(%Client{} = client, input, options \\ []) do
    url_path = "/startapp"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts the simulation clock.
  """
  @spec start_clock(map(), start_clock_input(), list()) ::
          {:ok, start_clock_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_clock_errors()}
  def start_clock(%Client{} = client, input, options \\ []) do
    url_path = "/startclock"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts a simulation with the given name.

  You must choose to start your
  simulation from a schema or from a snapshot.
  For more information about the schema, see the [schema reference](https://docs.aws.amazon.com/simspaceweaver/latest/userguide/schema-reference.html)
  in the *SimSpace Weaver User Guide*.
  For more information about snapshots, see
  [Snapshots](https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html)
  in the *SimSpace Weaver User Guide*.
  """
  @spec start_simulation(map(), start_simulation_input(), list()) ::
          {:ok, start_simulation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_simulation_errors()}
  def start_simulation(%Client{} = client, input, options \\ []) do
    url_path = "/startsimulation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops the given custom app and shuts down all of its allocated compute
  resources.
  """
  @spec stop_app(map(), stop_app_input(), list()) ::
          {:ok, stop_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_app_errors()}
  def stop_app(%Client{} = client, input, options \\ []) do
    url_path = "/stopapp"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops the simulation clock.
  """
  @spec stop_clock(map(), stop_clock_input(), list()) ::
          {:ok, stop_clock_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_clock_errors()}
  def stop_clock(%Client{} = client, input, options \\ []) do
    url_path = "/stopclock"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops the given simulation.

  You can't restart a simulation after you stop it. If you want to restart a
  simulation, then
  you must stop it, delete it, and start a new instance of it.
  """
  @spec stop_simulation(map(), stop_simulation_input(), list()) ::
          {:ok, stop_simulation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_simulation_errors()}
  def stop_simulation(%Client{} = client, input, options \\ []) do
    url_path = "/stopsimulation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds tags to a SimSpace Weaver resource.

  For more information about tags, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the
  *Amazon Web Services General Reference*.
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from a SimSpace Weaver resource.

  For more information about tags, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the
  *Amazon Web Services General Reference*.
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
