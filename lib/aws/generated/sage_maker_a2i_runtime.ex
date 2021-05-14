# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerA2IRuntime do
  @moduledoc """
  Amazon Augmented AI is in preview release and is subject to change.

  We do not recommend using this product in production environments.

  Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any
  machine learning application. When an AI application can't evaluate data with a
  high degree of confidence, human reviewers can take over. This human review is
  called a human review workflow. To create and start a human review workflow, you
  need three resources: a *worker task template*, a *flow definition*, and a
  *human loop*.

  For information about these resources and prerequisites for using Amazon A2I,
  see [Get Started with Amazon Augmented AI](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html) in
  the Amazon SageMaker Developer Guide.

  This API reference includes information about API actions and data types that
  you can use to interact with Amazon A2I programmatically. Use this guide to:

    * Start a human loop with the `StartHumanLoop` operation when using
  Amazon A2I with a *custom task type*. To learn more about the difference between
  custom and built-in task types, see [Use Task Types
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html).
  To learn how to start a human loop using this API, see [Create and Start a Human Loop for a Custom Task Type
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop)
  in the Amazon SageMaker Developer Guide.

    * Manage your human loops. You can list all human loops that you
  have created, describe individual human loops, and stop and delete human loops.
  To learn more, see [Monitor and Manage Your Human Loop
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html)
  in the Amazon SageMaker Developer Guide.

  Amazon A2I integrates APIs from various AWS services to create and start human
  review workflows for those services. To learn how Amazon A2I uses these APIs,
  see [Use APIs in Amazon A2I](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html) in
  the Amazon SageMaker Developer Guide.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-11-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "a2i-runtime.sagemaker",
      global?: false,
      protocol: "rest-json",
      service_id: "SageMaker A2I Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified human loop for a flow definition.
  """
  def delete_human_loop(%Client{} = client, human_loop_name, input, options \\ []) do
    url_path = "/human-loops/#{URI.encode(human_loop_name)}"
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
      nil
    )
  end

  @doc """
  Returns information about the specified human loop.
  """
  def describe_human_loop(%Client{} = client, human_loop_name, options \\ []) do
    url_path = "/human-loops/#{URI.encode(human_loop_name)}"
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
  Returns information about human loops, given the specified parameters.

  If a human loop was deleted, it will not be included.
  """
  def list_human_loops(
        %Client{} = client,
        creation_time_after \\ nil,
        creation_time_before \\ nil,
        flow_definition_arn,
        max_results \\ nil,
        next_token \\ nil,
        sort_order \\ nil,
        options \\ []
      ) do
    url_path = "/human-loops"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"SortOrder", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(flow_definition_arn) do
        [{"FlowDefinitionArn", flow_definition_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_before) do
        [{"CreationTimeBefore", creation_time_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(creation_time_after) do
        [{"CreationTimeAfter", creation_time_after} | query_params]
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
  Starts a human loop, provided that at least one activation condition is met.
  """
  def start_human_loop(%Client{} = client, input, options \\ []) do
    url_path = "/human-loops"
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
  Stops the specified human loop.
  """
  def stop_human_loop(%Client{} = client, input, options \\ []) do
    url_path = "/human-loops/stop"
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
end
