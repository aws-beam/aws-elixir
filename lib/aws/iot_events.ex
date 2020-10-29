# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTEvents do
  @moduledoc """
  AWS IoT Events monitors your equipment or device fleets for failures or
  changes in operation, and triggers actions when such events occur. You can
  use AWS IoT Events API operations to create, read, update, and delete
  inputs and detector models, and to list their versions.
  """

  @doc """
  Creates a detector model.
  """
  def create_detector_model(client, input, options \\ []) do
    path_ = "/detector-models"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an input.
  """
  def create_input(client, input, options \\ []) do
    path_ = "/inputs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes a detector model. Any active instances of the detector model are
  also deleted.
  """
  def delete_detector_model(client, detector_model_name, input, options \\ []) do
    path_ = "/detector-models/#{URI.encode(detector_model_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an input.
  """
  def delete_input(client, input_name, input, options \\ []) do
    path_ = "/inputs/#{URI.encode(input_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes a detector model. If the `version` parameter is not specified,
  information about the latest version is returned.
  """
  def describe_detector_model(client, detector_model_name, detector_model_version \\ nil, options \\ []) do
    path_ = "/detector-models/#{URI.encode(detector_model_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(detector_model_version) do
      [{"version", detector_model_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Describes an input.
  """
  def describe_input(client, input_name, options \\ []) do
    path_ = "/inputs/#{URI.encode(input_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the current settings of the AWS IoT Events logging options.
  """
  def describe_logging_options(client, options \\ []) do
    path_ = "/logging"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the versions of a detector model. Only the metadata associated
  with each detector model version is returned.
  """
  def list_detector_model_versions(client, detector_model_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/detector-models/#{URI.encode(detector_model_name)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the detector models you have created. Only the metadata associated
  with each detector model is returned.
  """
  def list_detector_models(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/detector-models"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the inputs you have created.
  """
  def list_inputs(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/inputs"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags (metadata) you have assigned to the resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags"
    headers = []
    query_ = []
    query_ = if !is_nil(resource_arn) do
      [{"resourceArn", resource_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Sets or updates the AWS IoT Events logging options.

  If you update the value of any `loggingOptions` field, it takes up to one
  minute for the change to take effect. If you change the policy attached to
  the role you specified in the `roleArn` field (for example, to correct an
  invalid policy), it takes up to five minutes for that change to take
  effect.
  """
  def put_logging_options(client, input, options \\ []) do
    path_ = "/logging"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds to or modifies the tags of the given resource. Tags are metadata that
  can be used to manage a resource.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/tags"
    headers = []
    {query_, input} =
      [
        {"resourceArn", "resourceArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the given tags (metadata) from the resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/tags"
    headers = []
    {query_, input} =
      [
        {"resourceArn", "resourceArn"},
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a detector model. Detectors (instances) spawned by the previous
  version are deleted and then re-created as new inputs arrive.
  """
  def update_detector_model(client, detector_model_name, input, options \\ []) do
    path_ = "/detector-models/#{URI.encode(detector_model_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an input.
  """
  def update_input(client, input_name, input, options \\ []) do
    path_ = "/inputs/#{URI.encode(input_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "iotevents"}
    host = build_host("iotevents", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
