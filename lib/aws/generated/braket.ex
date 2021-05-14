# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Braket do
  @moduledoc """
  The Amazon Braket API Reference provides information about the operations and
  structures supported in Amazon Braket.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-09-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "braket",
      global?: false,
      protocol: "rest-json",
      service_id: "Braket",
      signature_version: "v4",
      signing_name: "braket",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the specified task.
  """
  def cancel_quantum_task(%Client{} = client, quantum_task_arn, input, options \\ []) do
    url_path = "/quantum-task/#{URI.encode(quantum_task_arn)}/cancel"
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
      200
    )
  end

  @doc """
  Creates a quantum task.
  """
  def create_quantum_task(%Client{} = client, input, options \\ []) do
    url_path = "/quantum-task"
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
  Retrieves the devices available in Amazon Braket.
  """
  def get_device(%Client{} = client, device_arn, options \\ []) do
    url_path = "/device/#{URI.encode(device_arn)}"
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
  Retrieves the specified quantum task.
  """
  def get_quantum_task(%Client{} = client, quantum_task_arn, options \\ []) do
    url_path = "/quantum-task/#{URI.encode(quantum_task_arn)}"
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
  Shows the tags associated with this resource.
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
  Searches for devices using the specified filters.
  """
  def search_devices(%Client{} = client, input, options \\ []) do
    url_path = "/devices"
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
      200
    )
  end

  @doc """
  Searches for tasks that match the specified filter values.
  """
  def search_quantum_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/quantum-tasks"
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
      200
    )
  end

  @doc """
  Add a tag to the specified resource.
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
      200
    )
  end

  @doc """
  Remove tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      200
    )
  end
end
