# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerA2IRuntime do
  @moduledoc """
  Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any
  machine learning
  application.

  When an AI application can't evaluate data with a high degree of confidence,
  human reviewers can take over. This human review is called a human review
  workflow. To create
  and start a human review workflow, you need three resources: a *worker task
  template*, a *flow definition*, and a *human
  loop*.

  For information about these resources and prerequisites for using Amazon A2I,
  see [Get Started with Amazon Augmented
  AI](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html) in
  the Amazon SageMaker Developer Guide.

  This API reference includes information about API actions and data types that
  you can use
  to interact with Amazon A2I programmatically. Use this guide to:

    *
  Start a human loop with the `StartHumanLoop` operation when using
  Amazon A2I with a *custom task type*. To learn more about the
  difference between custom and built-in task types, see [Use Task Types
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html).
  To learn
  how to start a human loop using this API, see [Create and Start a Human Loop for a Custom Task Type
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop)
  in the
  Amazon SageMaker Developer Guide.

    *
  Manage your human loops. You can list all human loops that you have created,
  describe
  individual human loops, and stop and delete human loops. To learn more, see
  [Monitor and Manage Your Human Loop
  ](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html)
  in the Amazon SageMaker Developer Guide.

  Amazon A2I integrates APIs from various AWS services to create and start human
  review
  workflows for those services. To learn how Amazon A2I uses these APIs, see [Use APIs in
  Amazon
  A2I](https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html) in
  the Amazon SageMaker Developer Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_human_loop_request() :: %{}

  """
  @type delete_human_loop_request() :: %{}

  @typedoc """

  ## Example:

      delete_human_loop_response() :: %{}

  """
  @type delete_human_loop_response() :: %{}

  @typedoc """

  ## Example:

      describe_human_loop_request() :: %{}

  """
  @type describe_human_loop_request() :: %{}

  @typedoc """

  ## Example:

      describe_human_loop_response() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureCode" => String.t() | atom(),
        "FailureReason" => String.t() | atom(),
        "FlowDefinitionArn" => String.t() | atom(),
        "HumanLoopArn" => String.t() | atom(),
        "HumanLoopName" => String.t() | atom(),
        "HumanLoopOutput" => human_loop_output(),
        "HumanLoopStatus" => list(any())
      }

  """
  @type describe_human_loop_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      human_loop_data_attributes() :: %{
        "ContentClassifiers" => list(list(any())())
      }

  """
  @type human_loop_data_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      human_loop_input() :: %{
        "InputContent" => String.t() | atom()
      }

  """
  @type human_loop_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      human_loop_output() :: %{
        "OutputS3Uri" => String.t() | atom()
      }

  """
  @type human_loop_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      human_loop_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "FailureReason" => String.t() | atom(),
        "FlowDefinitionArn" => String.t() | atom(),
        "HumanLoopName" => String.t() | atom(),
        "HumanLoopStatus" => list(any())
      }

  """
  @type human_loop_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_human_loops_request() :: %{
        optional("CreationTimeAfter") => non_neg_integer(),
        optional("CreationTimeBefore") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortOrder") => list(any()),
        required("FlowDefinitionArn") => String.t() | atom()
      }

  """
  @type list_human_loops_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_human_loops_response() :: %{
        "HumanLoopSummaries" => list(human_loop_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_human_loops_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_human_loop_request() :: %{
        optional("DataAttributes") => human_loop_data_attributes(),
        required("FlowDefinitionArn") => String.t() | atom(),
        required("HumanLoopInput") => human_loop_input(),
        required("HumanLoopName") => String.t() | atom()
      }

  """
  @type start_human_loop_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_human_loop_response() :: %{
        "HumanLoopArn" => String.t() | atom()
      }

  """
  @type start_human_loop_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_human_loop_request() :: %{
        required("HumanLoopName") => String.t() | atom()
      }

  """
  @type stop_human_loop_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_human_loop_response() :: %{}

  """
  @type stop_human_loop_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type delete_human_loop_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type describe_human_loop_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type list_human_loops_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type start_human_loop_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()

  @type stop_human_loop_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2019-11-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "a2i-runtime.sagemaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SageMaker A2I Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Deletes the specified human loop for a flow definition.

  If the human loop was deleted, this operation will return a
  `ResourceNotFoundException`.
  """
  @spec delete_human_loop(map(), String.t() | atom(), delete_human_loop_request(), list()) ::
          {:ok, delete_human_loop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_human_loop_errors()}
  def delete_human_loop(%Client{} = client, human_loop_name, input, options \\ []) do
    url_path = "/human-loops/#{AWS.Util.encode_uri(human_loop_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about the specified human loop.

  If the human loop was deleted, this
  operation will return a `ResourceNotFoundException` error.
  """
  @spec describe_human_loop(map(), String.t() | atom(), list()) ::
          {:ok, describe_human_loop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_human_loop_errors()}
  def describe_human_loop(%Client{} = client, human_loop_name, options \\ []) do
    url_path = "/human-loops/#{AWS.Util.encode_uri(human_loop_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about human loops, given the specified parameters.

  If a human loop was deleted, it will not be included.
  """
  @spec list_human_loops(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_human_loops_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_human_loops_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a human loop, provided that at least one activation condition is met.
  """
  @spec start_human_loop(map(), start_human_loop_request(), list()) ::
          {:ok, start_human_loop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_human_loop_errors()}
  def start_human_loop(%Client{} = client, input, options \\ []) do
    url_path = "/human-loops"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops the specified human loop.
  """
  @spec stop_human_loop(map(), stop_human_loop_request(), list()) ::
          {:ok, stop_human_loop_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_human_loop_errors()}
  def stop_human_loop(%Client{} = client, input, options \\ []) do
    url_path = "/human-loops/stop"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
