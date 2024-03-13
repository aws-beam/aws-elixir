# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerMetrics do
  @moduledoc """
  Contains all data plane API operations and data types for Amazon SageMaker
  Metrics.

  Use these APIs to put and retrieve (get) features related to your training run.

    *

  [BatchPutMetrics](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_metrics_BatchPutMetrics.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      batch_put_metrics_error() :: %{
        "Code" => list(any()),
        "MetricIndex" => integer()
      }

  """
  @type batch_put_metrics_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_metrics_request() :: %{
        required("MetricData") => list(raw_metric_data()()),
        required("TrialComponentName") => String.t()
      }

  """
  @type batch_put_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_metrics_response() :: %{
        "Errors" => list(batch_put_metrics_error()())
      }

  """
  @type batch_put_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raw_metric_data() :: %{
        "MetricName" => String.t(),
        "Step" => integer(),
        "Timestamp" => non_neg_integer(),
        "Value" => float()
      }

  """
  @type raw_metric_data() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2022-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "metrics.sagemaker",
      global?: false,
      protocol: "rest-json",
      service_id: "SageMaker Metrics",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Used to ingest training metrics into SageMaker.

  These metrics can be visualized in SageMaker Studio and
  retrieved with the `GetMetrics` API.
  """
  @spec batch_put_metrics(map(), batch_put_metrics_request(), list()) ::
          {:ok, batch_put_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def batch_put_metrics(%Client{} = client, input, options \\ []) do
    url_path = "/BatchPutMetrics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
