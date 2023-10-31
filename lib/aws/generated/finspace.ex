# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Finspace do
  @moduledoc """
  The FinSpace management service provides the APIs for managing FinSpace
  environments.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-03-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "finspace",
      global?: false,
      protocol: "rest-json",
      service_id: "finspace",
      signature_version: "v4",
      signing_name: "finspace",
      target_prefix: nil
    }
  end

  @doc """
  Create a new FinSpace environment.
  """
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environment"
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
      nil
    )
  end

  @doc """
  Creates a changeset for a kdb database.

  A changeset allows you to add and delete existing files by using an ordered list
  of change requests.
  """
  def create_kx_changeset(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/changesets"

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
      nil
    )
  end

  @doc """
  Creates a new kdb cluster.
  """
  def create_kx_cluster(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters"
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
      nil
    )
  end

  @doc """
  Creates a new kdb database in the environment.
  """
  def create_kx_database(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases"
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
      nil
    )
  end

  @doc """
  Creates a managed kdb environment for the account.
  """
  def create_kx_environment(%Client{} = client, input, options \\ []) do
    url_path = "/kx/environments"
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
      nil
    )
  end

  @doc """
  Creates a user in FinSpace kdb environment with an associated IAM role.
  """
  def create_kx_user(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users"
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
      nil
    )
  end

  @doc """
  Delete an FinSpace environment.
  """
  def delete_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environment/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

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
      nil
    )
  end

  @doc """
  Deletes a kdb cluster.
  """
  def delete_kx_cluster(%Client{} = client, cluster_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      nil
    )
  end

  @doc """
  Deletes the specified database and all of its associated data.

  This action is irreversible. You must copy any data out of the database before
  deleting it if the data is to be retained.
  """
  def delete_kx_database(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      nil
    )
  end

  @doc """
  Deletes the kdb environment.

  This action is irreversible. Deleting a kdb environment will remove all the
  associated data and any services running in it.
  """
  def delete_kx_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

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
      nil
    )
  end

  @doc """
  Deletes a user in the specified kdb environment.
  """
  def delete_kx_user(%Client{} = client, environment_id, user_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    query_params = []

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
      nil
    )
  end

  @doc """
  Returns the FinSpace environment object.
  """
  def get_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/environment/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about a kdb changeset.
  """
  def get_kx_changeset(
        %Client{} = client,
        changeset_id,
        database_name,
        environment_id,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/changesets/#{AWS.Util.encode_uri(changeset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a kdb cluster.
  """
  def get_kx_cluster(%Client{} = client, cluster_name, environment_id, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a connection string for a user to connect to a kdb cluster.

  You must call this API using the same role that you have defined while creating
  a user.
  """
  def get_kx_connection_string(
        %Client{} = client,
        environment_id,
        cluster_name,
        user_arn,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/connectionString"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_arn) do
        [{"userArn", user_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(cluster_name) do
        [{"clusterName", cluster_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns database information for the specified environment ID.
  """
  def get_kx_database(%Client{} = client, database_name, environment_id, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves all the information for the specified kdb environment.
  """
  def get_kx_environment(%Client{} = client, environment_id, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about the specified kdb user.
  """
  def get_kx_user(%Client{} = client, environment_id, user_name, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  A list of all of your FinSpace environments.
  """
  def list_environments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/environment"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of all the changesets for a database.
  """
  def list_kx_changesets(
        %Client{} = client,
        database_name,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}/changesets"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all the nodes in a kdb cluster.
  """
  def list_kx_cluster_nodes(
        %Client{} = client,
        cluster_name,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}/nodes"

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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of clusters.
  """
  def list_kx_clusters(
        %Client{} = client,
        environment_id,
        cluster_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters"
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

    query_params =
      if !is_nil(cluster_type) do
        [{"clusterType", cluster_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of all the databases in the kdb environment.
  """
  def list_kx_databases(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of kdb environments created in an account.
  """
  def list_kx_environments(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all the users in a kdb environment.
  """
  def list_kx_users(
        %Client{} = client,
        environment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  A list of all tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Adds metadata tags to a FinSpace resource.
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
      nil
    )
  end

  @doc """
  Removes metadata tags from a FinSpace resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      nil
    )
  end

  @doc """
  Update your FinSpace environment.
  """
  def update_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/environment/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Allows you to update code configuration on a running cluster.

  By using this API you can update the code, the initialization script path, and
  the command line arguments for a specific cluster. The configuration that you
  want to update will override any existing configurations on the cluster.
  """
  def update_kx_cluster_code_configuration(
        %Client{} = client,
        cluster_name,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}/configuration/code"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates the databases mounted on a kdb cluster, which includes the `changesetId`
  and all the dbPaths to be cached.

  This API does not allow you to change a database name or add a database if you
  created a cluster without one.

  Using this API you can point a cluster to a different changeset and modify a
  list of partitions being cached.
  """
  def update_kx_cluster_databases(
        %Client{} = client,
        cluster_name,
        environment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/clusters/#{AWS.Util.encode_uri(cluster_name)}/configuration/databases"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates information for the given kdb database.
  """
  def update_kx_database(%Client{} = client, database_name, environment_id, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/databases/#{AWS.Util.encode_uri(database_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates information for the given kdb environment.
  """
  def update_kx_environment(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates environment network to connect to your internal network by using a
  transit gateway.

  This API supports request to create a transit gateway attachment from FinSpace
  VPC to your transit gateway ID and create a custom Route-53 outbound resolvers.

  Once you send a request to update a network, you cannot change it again. Network
  update might require termination of any clusters that are running in the
  existing network.
  """
  def update_kx_environment_network(%Client{} = client, environment_id, input, options \\ []) do
    url_path = "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/network"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Updates the user details.

  You can only update the IAM role associated with a user.
  """
  def update_kx_user(%Client{} = client, environment_id, user_name, input, options \\ []) do
    url_path =
      "/kx/environments/#{AWS.Util.encode_uri(environment_id)}/users/#{AWS.Util.encode_uri(user_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end
end
