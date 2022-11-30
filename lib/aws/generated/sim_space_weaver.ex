# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SimSpaceWeaver do
  @moduledoc """
  Amazon Web Services SimSpace Weaver (SimSpace Weaver) is a managed service that
  you can use to build and operate large-scale spatial simulations in the Amazon
  Web Services Cloud.

  For example, you can create a digital twin of a city, crowd simulations with
  millions of people and objects, and massilvely-multiplayer games with hundreds
  of thousands of connected players. For more information about SimSpace Weaver,
  see the * [Amazon Web Services SimSpace Weaver User Guide](https://docs.aws.amazon.com/simspaceweaver/latest/userguide/) *.

  This API reference describes the API operations and data types that you can use
  to communicate directly with SimSpace Weaver.

  SimSpace Weaver also provides the SimSpace Weaver app SDK, which you use for app
  development. The SimSpace Weaver app SDK API reference is included in the
  SimSpace Weaver app SDK documentation, which is part of the SimSpace Weaver app
  SDK distributable package.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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
      "DeleteApp",
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

  Your simulation uses resources in other Amazon Web Services services. This API
  operation doesn't delete resources in other Amazon Web Services services.
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
      "DeleteSimulation",
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

    Request.request_rest(
      client,
      meta,
      "DescribeApp",
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

    Request.request_rest(
      client,
      meta,
      "DescribeSimulation",
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

    Request.request_rest(
      client,
      meta,
      "ListApps",
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

    Request.request_rest(
      client,
      meta,
      "ListSimulations",
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
  Lists all tags on a SimSpace Weaver resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
      "StartApp",
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
      "StartClock",
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
  Starts a simulation with the given name and schema.
  """
  def start_simulation(%Client{} = client, input, options \\ []) do
    url_path = "/startsimulation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartSimulation",
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
      "StopApp",
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
      "StopClock",
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

  You can't restart a simulation after you stop it. If you need to restart a
  simulation, you must stop it, delete it, and start a new instance of it.
  """
  def stop_simulation(%Client{} = client, input, options \\ []) do
    url_path = "/stopsimulation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StopSimulation",
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
  the *Amazon Web Services General Reference*.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
  the *Amazon Web Services General Reference*.
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
      "UntagResource",
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
