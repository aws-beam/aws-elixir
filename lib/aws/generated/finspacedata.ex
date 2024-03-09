# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Finspacedata do
  @moduledoc """
  The FinSpace APIs let you take actions inside the FinSpace.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2020-07-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "finspace-api",
      global?: false,
      protocol: "rest-json",
      service_id: "finspace data",
      signature_version: "v4",
      signing_name: "finspace-api",
      target_prefix: nil
    }
  end

  @doc """
  Adds a user to a permission group to grant permissions for actions a user can
  perform in FinSpace.
  """
  def associate_user_to_permission_group(
        %Client{} = client,
        permission_group_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Creates a new Changeset in a FinSpace Dataset.
  """
  def create_changeset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2"
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
  Creates a Dataview for a Dataset.
  """
  def create_data_view(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2"
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
  Creates a new FinSpace Dataset.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/datasetsv2"
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
  Creates a group of permissions for various actions that a user can perform in
  FinSpace.
  """
  def create_permission_group(%Client{} = client, input, options \\ []) do
    url_path = "/permission-group"
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
  Creates a new user in FinSpace.
  """
  def create_user(%Client{} = client, input, options \\ []) do
    url_path = "/user"
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
  Deletes a FinSpace Dataset.
  """
  def delete_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
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
      200
    )
  end

  @doc """
  Deletes a permission group.

  This action is irreversible.
  """
  def delete_permission_group(%Client{} = client, permission_group_id, input, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"
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
      200
    )
  end

  @doc """
  Denies access to the FinSpace web application and API for the specified user.
  """
  def disable_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/disable"
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
  Removes a user from a permission group.
  """
  def disassociate_user_from_permission_group(
        %Client{} = client,
        permission_group_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
      200
    )
  end

  @doc """
  Allows the specified user to access the FinSpace web application and API.
  """
  def enable_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/enable"
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
  Get information about a Changeset.
  """
  def get_changeset(%Client{} = client, changeset_id, dataset_id, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2/#{AWS.Util.encode_uri(changeset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Dataview.
  """
  def get_data_view(%Client{} = client, data_view_id, dataset_id, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2/#{AWS.Util.encode_uri(data_view_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a Dataset.
  """
  def get_dataset(%Client{} = client, dataset_id, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the credentials to access the external Dataview from an S3 location.

  To call this API:

    *
  You must retrieve the programmatic credentials.

    *
  You must be a member of a FinSpace user group, where the dataset that you want
  to access has `Read Dataset Data` permissions.
  """
  def get_external_data_view_access_details(
        %Client{} = client,
        data_view_id,
        dataset_id,
        input,
        options \\ []
      ) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2/#{AWS.Util.encode_uri(data_view_id)}/external-access-details"

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
  Retrieves the details of a specific permission group.
  """
  def get_permission_group(%Client{} = client, permission_group_id, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Request programmatic credentials to use with FinSpace SDK.

  For more information, see [Step 2. Access credentials programmatically using IAM access key id and secret access
  key](https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#accessing-credentials).
  """
  def get_programmatic_access_credentials(
        %Client{} = client,
        duration_in_minutes \\ nil,
        environment_id,
        options \\ []
      ) do
    url_path = "/credentials/programmatic"
    headers = []
    query_params = []

    query_params =
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(duration_in_minutes) do
        [{"durationInMinutes", duration_in_minutes} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for a specific user.
  """
  def get_user(%Client{} = client, user_id, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A temporary Amazon S3 location, where you can copy your files from a source
  location to stage or use
  as a scratch space in FinSpace notebook.
  """
  def get_working_location(%Client{} = client, input, options \\ []) do
    url_path = "/workingLocationV1"
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
  Lists the FinSpace Changesets for a Dataset.
  """
  def list_changesets(
        %Client{} = client,
        dataset_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2"
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
  Lists all available Dataviews for a Dataset.
  """
  def list_data_views(
        %Client{} = client,
        dataset_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2"
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
  Lists all of the active Datasets that a user has access to.
  """
  def list_datasets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/datasetsv2"
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
  Lists all available permission groups in FinSpace.
  """
  def list_permission_groups(%Client{} = client, max_results, next_token \\ nil, options \\ []) do
    url_path = "/permission-group"
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
  Lists all the permission groups that are associated with a specific user.
  """
  def list_permission_groups_by_user(
        %Client{} = client,
        user_id,
        max_results,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/permission-groups"
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
  Lists all available users in FinSpace.
  """
  def list_users(%Client{} = client, max_results, next_token \\ nil, options \\ []) do
    url_path = "/user"
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
  Lists details of all the users in a specific permission group.
  """
  def list_users_by_permission_group(
        %Client{} = client,
        permission_group_id,
        max_results,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users"
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
  Resets the password for a specified user ID and generates a temporary one.

  Only a superuser can reset password for other users. Resetting the password
  immediately invalidates the previous password associated with the user.
  """
  def reset_user_password(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/password"
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
  Updates a FinSpace Changeset.
  """
  def update_changeset(%Client{} = client, changeset_id, dataset_id, input, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2/#{AWS.Util.encode_uri(changeset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a FinSpace Dataset.
  """
  def update_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies the details of a permission group.

  You cannot modify a `permissionGroupID`.
  """
  def update_permission_group(%Client{} = client, permission_group_id, input, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies the details of the specified user.

  You cannot update the `userId` for a user.
  """
  def update_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
