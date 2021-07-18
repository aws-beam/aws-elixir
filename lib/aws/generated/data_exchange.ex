# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DataExchange do
  @moduledoc """
  This is the API reference for AWS Data Exchange.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "dataexchange",
      global?: false,
      protocol: "rest-json",
      service_id: "DataExchange",
      signature_version: "v4",
      signing_name: "dataexchange",
      target_prefix: nil
    }
  end

  @doc """
  This operation cancels a job.

  Jobs can be cancelled only when they are in the WAITING state.
  """
  def cancel_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v1/jobs/#{URI.encode(job_id)}"
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
      204
    )
  end

  @doc """
  This operation creates a data set.
  """
  def create_data_set(%Client{} = client, input, options \\ []) do
    url_path = "/v1/data-sets"
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
      201
    )
  end

  @doc """
  This operation creates a job.
  """
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/v1/jobs"
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
      201
    )
  end

  @doc """
  This operation creates a revision for a data set.
  """
  def create_revision(%Client{} = client, data_set_id, input, options \\ []) do
    url_path = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions"
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
      201
    )
  end

  @doc """
  This operation deletes an asset.
  """
  def delete_asset(%Client{} = client, asset_id, data_set_id, revision_id, input, options \\ []) do
    url_path =
      "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}/assets/#{URI.encode(asset_id)}"

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
      204
    )
  end

  @doc """
  This operation deletes a data set.
  """
  def delete_data_set(%Client{} = client, data_set_id, input, options \\ []) do
    url_path = "/v1/data-sets/#{URI.encode(data_set_id)}"
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
      204
    )
  end

  @doc """
  This operation deletes a revision.
  """
  def delete_revision(%Client{} = client, data_set_id, revision_id, input, options \\ []) do
    url_path = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}"
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
      204
    )
  end

  @doc """
  This operation returns information about an asset.
  """
  def get_asset(%Client{} = client, asset_id, data_set_id, revision_id, options \\ []) do
    url_path =
      "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}/assets/#{URI.encode(asset_id)}"

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
  This operation returns information about a data set.
  """
  def get_data_set(%Client{} = client, data_set_id, options \\ []) do
    url_path = "/v1/data-sets/#{URI.encode(data_set_id)}"
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
  This operation returns information about a job.
  """
  def get_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v1/jobs/#{URI.encode(job_id)}"
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
  This operation returns information about a revision.
  """
  def get_revision(%Client{} = client, data_set_id, revision_id, options \\ []) do
    url_path = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}"
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
  This operation lists a data set's revisions sorted by CreatedAt in descending
  order.
  """
  def list_data_set_revisions(
        %Client{} = client,
        data_set_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions"
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
      200
    )
  end

  @doc """
  This operation lists your data sets.

  When listing by origin OWNED, results are sorted by CreatedAt in descending
  order. When listing by origin ENTITLED, there is no order and the maxResults
  parameter is ignored.
  """
  def list_data_sets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        origin \\ nil,
        options \\ []
      ) do
    url_path = "/v1/data-sets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(origin) do
        [{"origin", origin} | query_params]
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
  This operation lists your jobs sorted by CreatedAt in descending order.
  """
  def list_jobs(
        %Client{} = client,
        data_set_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        revision_id \\ nil,
        options \\ []
      ) do
    url_path = "/v1/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(revision_id) do
        [{"revisionId", revision_id} | query_params]
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
      if !is_nil(data_set_id) do
        [{"dataSetId", data_set_id} | query_params]
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
  This operation lists a revision's assets sorted alphabetically in descending
  order.
  """
  def list_revision_assets(
        %Client{} = client,
        data_set_id,
        revision_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}/assets"

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
      200
    )
  end

  @doc """
  This operation lists the tags on the resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
  This operation starts a job.
  """
  def start_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/v1/jobs/#{URI.encode(job_id)}"
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
      202
    )
  end

  @doc """
  This operation tags a resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
      204
    )
  end

  @doc """
  This operation removes one or more tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  This operation updates an asset.
  """
  def update_asset(%Client{} = client, asset_id, data_set_id, revision_id, input, options \\ []) do
    url_path =
      "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}/assets/#{URI.encode(asset_id)}"

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
  This operation updates a data set.
  """
  def update_data_set(%Client{} = client, data_set_id, input, options \\ []) do
    url_path = "/v1/data-sets/#{URI.encode(data_set_id)}"
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
  This operation updates a revision.
  """
  def update_revision(%Client{} = client, data_set_id, revision_id, input, options \\ []) do
    url_path = "/v1/data-sets/#{URI.encode(data_set_id)}/revisions/#{URI.encode(revision_id)}"
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
