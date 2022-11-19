# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTRoboRunner do
  @moduledoc """
  An example service, deployed with the Octane Service creator, which will echo
  the string
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "iotroborunner",
      global?: false,
      protocol: "rest-json",
      service_id: "IoT RoboRunner",
      signature_version: "v4",
      signing_name: "iotroborunner",
      target_prefix: nil
    }
  end

  @doc """
  Grants permission to create a destination
  """
  def create_destination(%Client{} = client, input, options \\ []) do
    url_path = "/createDestination"
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
  Grants permission to create a site
  """
  def create_site(%Client{} = client, input, options \\ []) do
    url_path = "/createSite"
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
  Grants permission to create a worker
  """
  def create_worker(%Client{} = client, input, options \\ []) do
    url_path = "/createWorker"
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
  Grants permission to create a worker fleet
  """
  def create_worker_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/createWorkerFleet"
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
  Grants permission to delete a destination
  """
  def delete_destination(%Client{} = client, input, options \\ []) do
    url_path = "/deleteDestination"
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
  Grants permission to delete a site
  """
  def delete_site(%Client{} = client, input, options \\ []) do
    url_path = "/deleteSite"
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
  Grants permission to delete a worker
  """
  def delete_worker(%Client{} = client, input, options \\ []) do
    url_path = "/deleteWorker"
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
  Grants permission to delete a worker fleet
  """
  def delete_worker_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/deleteWorkerFleet"
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
  Grants permission to get a destination
  """
  def get_destination(%Client{} = client, id, options \\ []) do
    url_path = "/getDestination"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to get a site
  """
  def get_site(%Client{} = client, id, options \\ []) do
    url_path = "/getSite"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to get a worker
  """
  def get_worker(%Client{} = client, id, options \\ []) do
    url_path = "/getWorker"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to get a worker fleet
  """
  def get_worker_fleet(%Client{} = client, id, options \\ []) do
    url_path = "/getWorkerFleet"
    headers = []
    query_params = []

    query_params =
      if !is_nil(id) do
        [{"id", id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to list destinations
  """
  def list_destinations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        site,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/listDestinations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(site) do
        [{"site", site} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to list sites
  """
  def list_sites(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/listSites"
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
  Grants permission to list worker fleets
  """
  def list_worker_fleets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        site,
        options \\ []
      ) do
    url_path = "/listWorkerFleets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(site) do
        [{"site", site} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to list workers
  """
  def list_workers(
        %Client{} = client,
        fleet \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        site,
        options \\ []
      ) do
    url_path = "/listWorkers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(site) do
        [{"site", site} | query_params]
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
      if !is_nil(fleet) do
        [{"fleet", fleet} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Grants permission to update a destination
  """
  def update_destination(%Client{} = client, input, options \\ []) do
    url_path = "/updateDestination"
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
  Grants permission to update a site
  """
  def update_site(%Client{} = client, input, options \\ []) do
    url_path = "/updateSite"
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
  Grants permission to update a worker
  """
  def update_worker(%Client{} = client, input, options \\ []) do
    url_path = "/updateWorker"
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
  Grants permission to update a worker fleet
  """
  def update_worker_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/updateWorkerFleet"
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
end
