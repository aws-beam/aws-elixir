# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Braket do
  @moduledoc """
  The Amazon Braket API Reference provides information about the operations and
  structures supported in Amazon Braket.

  Additional Resources:

    * [Amazon Braket Developer Guide](https://docs.aws.amazon.com/braket/latest/developerguide/what-is-braket.html)
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
  Cancels an Amazon Braket job.
  """
  def cancel_job(%Client{} = client, job_arn, input, options \\ []) do
    url_path = "/job/#{AWS.Util.encode_uri(job_arn)}/cancel"
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
  Cancels the specified task.
  """
  def cancel_quantum_task(%Client{} = client, quantum_task_arn, input, options \\ []) do
    url_path = "/quantum-task/#{AWS.Util.encode_uri(quantum_task_arn)}/cancel"
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
  Creates an Amazon Braket job.
  """
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/job"
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

  For backwards compatibility with older versions of BraketSchemas, OpenQASM
  information is omitted from GetDevice API calls. To get this information the
  user-agent needs to present a recent version of the BraketSchemas (1.8.0 or
  later). The Braket SDK automatically reports this for you. If you do not see
  OpenQASM results in the GetDevice response when using a Braket SDK, you may need
  to set AWS_EXECUTION_ENV environment variable to configure user-agent. See the
  code examples provided below for how to do this for the AWS CLI, Boto3, and the
  Go, Java, and JavaScript/TypeScript SDKs.
  """
  def get_device(%Client{} = client, device_arn, options \\ []) do
    url_path = "/device/#{AWS.Util.encode_uri(device_arn)}"
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
  Retrieves the specified Amazon Braket job.
  """
  def get_job(%Client{} = client, job_arn, options \\ []) do
    url_path = "/job/#{AWS.Util.encode_uri(job_arn)}"
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
    url_path = "/quantum-task/#{AWS.Util.encode_uri(quantum_task_arn)}"
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
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Searches for Amazon Braket jobs that match the specified filter values.
  """
  def search_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
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
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
