# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Amp do
  @moduledoc """
  Amazon Managed Service for Prometheus
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "aps",
      global?: false,
      protocol: "rest-json",
      service_id: "amp",
      signature_version: "v4",
      signing_name: "aps",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new AMP workspace.
  """
  def create_workspace(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces"
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
      202
    )
  end

  @doc """
  Deletes an AMP workspace.
  """
  def delete_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{URI.encode(workspace_id)}"
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
      202
    )
  end

  @doc """
  Describes an existing AMP workspace.
  """
  def describe_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{URI.encode(workspace_id)}"
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
  Lists all AMP workspaces, including workspaces being created or deleted.
  """
  def list_workspaces(
        %Client{} = client,
        alias \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces"
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
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
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
  Updates an AMP workspace alias.
  """
  def update_workspace_alias(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{URI.encode(workspace_id)}/alias"
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
end