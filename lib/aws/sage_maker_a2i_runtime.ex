# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerA2IRuntime do
  @moduledoc """
  <important> Amazon Augmented AI is in preview release and is subject to
  change. We do not recommend using this product in production environments.

  </important> Amazon Augmented AI (Amazon A2I) adds the benefit of human
  judgment to any machine learning application. When an AI application can't
  evaluate data with a high degree of confidence, human reviewers can take
  over. This human review is called a human review workflow. To create and
  start a human review workflow, you need three resources: a *worker task
  template*, a *flow definition*, and a *human loop*.

  For information about these resources and prerequisites for using Amazon
  A2I, see [Get Started with Amazon Augmented
  AI](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html)
  in the Amazon SageMaker Developer Guide.

  This API reference includes information about API actions and data types
  that you can use to interact with Amazon A2I programmatically. Use this
  guide to:

  <ul> <li> Start a human loop with the `StartHumanLoop` operation when using
  Amazon A2I with a *custom task type*. To learn more about the difference
  between custom and built-in task types, see [Use Task Types
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html).
  To learn how to start a human loop using this API, see [Create and Start a
  Human Loop for a Custom Task Type
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop)
  in the Amazon SageMaker Developer Guide.

  </li> <li> Manage your human loops. You can list all human loops that you
  have created, describe individual human loops, and stop and delete human
  loops. To learn more, see [Monitor and Manage Your Human Loop
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html)
  in the Amazon SageMaker Developer Guide.

  </li> </ul> Amazon A2I integrates APIs from various AWS services to create
  and start human review workflows for those services. To learn how Amazon
  A2I uses these APIs, see [Use APIs in Amazon
  A2I](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html)
  in the Amazon SageMaker Developer Guide.
  """

  @doc """
  Deletes the specified human loop for a flow definition.
  """
  def delete_human_loop(client, human_loop_name, input, options \\ []) do
    path_ = "/human-loops/#{URI.encode(human_loop_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns information about the specified human loop.
  """
  def describe_human_loop(client, human_loop_name, options \\ []) do
    path_ = "/human-loops/#{URI.encode(human_loop_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about human loops, given the specified parameters. If a
  human loop was deleted, it will not be included.
  """
  def list_human_loops(client, creation_time_after \\ nil, creation_time_before \\ nil, flow_definition_arn, max_results \\ nil, next_token \\ nil, sort_order \\ nil, options \\ []) do
    path_ = "/human-loops"
    headers = []
    query_ = []
    query_ = if !is_nil(sort_order) do
      [{"SortOrder", sort_order} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(flow_definition_arn) do
      [{"FlowDefinitionArn", flow_definition_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(creation_time_before) do
      [{"CreationTimeBefore", creation_time_before} | query_]
    else
      query_
    end
    query_ = if !is_nil(creation_time_after) do
      [{"CreationTimeAfter", creation_time_after} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Starts a human loop, provided that at least one activation condition is
  met.
  """
  def start_human_loop(client, input, options \\ []) do
    path_ = "/human-loops"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Stops the specified human loop.
  """
  def stop_human_loop(client, input, options \\ []) do
    path_ = "/human-loops/stop"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "sagemaker"}
    host = build_host("a2i-runtime.sagemaker", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
