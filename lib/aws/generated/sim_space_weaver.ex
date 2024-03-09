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

  def metadata do
    %{
      api_version: "2022-10-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "simspaceweaver",
      global?: false,
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
  def create_snapshot(%Client{} = client, input, options \\ []) do
    url_path = "/createsnapshot"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes the instance of the given custom app.
  """
  def delete_app(%Client{} = client, input, options \\ []) do
    url_path = "/deleteapp"
    headers = []

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
      headers,
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
  def delete_simulation(%Client{} = client, input, options \\ []) do
    url_path = "/deletesimulation"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the state of the given custom app.
  """
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
  def start_app(%Client{} = client, input, options \\ []) do
    url_path = "/startapp"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Starts the simulation clock.
  """
  def start_clock(%Client{} = client, input, options \\ []) do
    url_path = "/startclock"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Starts a simulation with the given name.

  You must choose to start your
  simulation from a schema or from a snapshot.
  For more information about the schema, see the [schema reference](https://docs.aws.amazon.com/simspaceweaver/latest/userguide/schema-reference.html)
  in the *SimSpace Weaver User Guide*.
  For more information about snapshots, see
  [Snapshots](https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html)
  in the *SimSpace Weaver User Guide*.
  """
  def start_simulation(%Client{} = client, input, options \\ []) do
    url_path = "/startsimulation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Stops the given custom app and shuts down all of its allocated compute
  resources.
  """
  def stop_app(%Client{} = client, input, options \\ []) do
    url_path = "/stopapp"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Stops the simulation clock.
  """
  def stop_clock(%Client{} = client, input, options \\ []) do
    url_path = "/stopclock"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Stops the given simulation.

  You can't restart a simulation after you stop it. If you want to restart a
  simulation, then
  you must stop it, delete it, and start a new instance of it.
  """
  def stop_simulation(%Client{} = client, input, options \\ []) do
    url_path = "/stopsimulation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Adds tags to a SimSpace Weaver resource.

  For more information about tags, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the
  *Amazon Web Services General Reference*.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Removes tags from a SimSpace Weaver resource.

  For more information about tags, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the
  *Amazon Web Services General Reference*.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end
end
