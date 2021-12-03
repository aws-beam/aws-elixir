# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Finspacedata do
  @moduledoc """
  The FinSpace APIs let you take actions inside the FinSpace.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  Creates a new Changeset in a FinSpace Dataset.
  """
  def create_changeset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2"
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
      nil
    )
  end

  @doc """
  Creates a Dataview for a Dataset.
  """
  def create_data_view(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2"
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
      nil
    )
  end

  @doc """
  Creates a new FinSpace Dataset.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/datasetsv2"
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
      nil
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

    Request.request_rest(
      client,
      metadata(),
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
  Get information about a Changeset.
  """
  def get_changeset(%Client{} = client, changeset_id, dataset_id, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2/#{AWS.Util.encode_uri(changeset_id)}"

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
      nil
    )
  end

  @doc """
  Gets information about a Dataview.
  """
  def get_data_view(%Client{} = client, data_view_id, dataset_id, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2/#{AWS.Util.encode_uri(data_view_id)}"

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
      nil
    )
  end

  @doc """
  Returns information about a Dataset.
  """
  def get_dataset(%Client{} = client, dataset_id, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
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
      nil
    )
  end

  @doc """
  Request programmatic credentials to use with FinSpace SDK.
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  A temporary Amazon S3 location, where you can copy your files from a source
  location to stage or use as a scratch space in FinSpace notebook.
  """
  def get_working_location(%Client{} = client, input, options \\ []) do
    url_path = "/workingLocationV1"
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
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
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

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a FinSpace Dataset.
  """
  def update_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
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
      nil
    )
  end
end
