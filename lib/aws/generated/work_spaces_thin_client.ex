# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpacesThinClient do
  @moduledoc """
  Amazon WorkSpaces Thin Client is a affordable device built to work with Amazon
  Web Services End User Computing (EUC) virtual desktops to provide users with a
  complete cloud desktop solution.

  WorkSpaces Thin Client is a compact device designed to connect up to two
  monitors and USB devices like a keyboard, mouse, headset, and webcam. To
  maximize endpoint security, WorkSpaces Thin Client devices do not allow local
  data storage or installation of unapproved applications. The WorkSpaces Thin
  Client device ships preloaded with device management software.

  You can use these APIs to complete WorkSpaces Thin Client tasks, such as
  creating environments or viewing devices. For more information about WorkSpaces
  Thin Client, including the required permissions to use the service, see the
  [Amazon WorkSpaces Thin Client Administrator Guide](https://docs.aws.amazon.com/workspaces-thin-client/latest/ag/). For more
  information about using the Command Line Interface (CLI) to manage your
  WorkSpaces Thin Client resources, see the [WorkSpaces Thin Client section of the CLI
  Reference](https://docs.aws.amazon.com/cli/latest/reference/workspaces-thin-client/index.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-08-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "thinclient",
      global?: false,
      protocol: "rest-json",
      service_id: "WorkSpaces Thin Client",
      signature_version: "v4",
      signing_name: "thinclient",
      target_prefix: nil
    }
  end

  @doc """
  Creates an environment for your thin client devices.
  """
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environments"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
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
  Deletes a thin client device.
  """
  def delete_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
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
  Deletes an environment.
  """
  def delete_environment(%Client{} = client, id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
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
  Deregisters a thin client device.
  """
  def deregister_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/deregister-device/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
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
  Returns information for a thin client device.
  """
  def get_device(%Client{} = client, id, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information for an environment.
  """
  def get_environment(%Client{} = client, id, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information for a software set.
  """
  def get_software_set(%Client{} = client, id, options \\ []) do
    url_path = "/softwaresets/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of thin client devices.
  """
  def list_devices(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/devices"
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of environments.
  """
  def list_environments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/environments"
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of software sets.
  """
  def list_software_sets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/softwaresets"
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Removes a tag or tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Updates a thin client device.
  """
  def update_device(%Client{} = client, id, input, options \\ []) do
    url_path = "/devices/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
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
  Updates an environment.
  """
  def update_environment(%Client{} = client, id, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
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
  Updates a software set.
  """
  def update_software_set(%Client{} = client, id, input, options \\ []) do
    url_path = "/softwaresets/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end
end
