# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SagemakerEdge do
  @moduledoc """
  SageMaker Edge Manager dataplane service for communicating with active agents.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  checksum() :: %{
    "Sum" => String.t(),
    "Type" => list(any())
  }
  """
  @type checksum() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  definition() :: %{
    "Checksum" => checksum(),
    "ModelHandle" => String.t(),
    "S3Url" => String.t(),
    "State" => list(any())
  }
  """
  @type definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_model() :: %{
    "DesiredState" => list(any()),
    "ModelHandle" => String.t(),
    "ModelName" => String.t(),
    "ModelVersion" => String.t(),
    "RollbackFailureReason" => String.t(),
    "State" => list(any()),
    "Status" => list(any()),
    "StatusReason" => String.t()
  }
  """
  @type deployment_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_result() :: %{
    "DeploymentEndTime" => non_neg_integer(),
    "DeploymentModels" => list(deployment_model()()),
    "DeploymentName" => String.t(),
    "DeploymentStartTime" => non_neg_integer(),
    "DeploymentStatus" => String.t(),
    "DeploymentStatusMessage" => String.t()
  }
  """
  @type deployment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  edge_deployment() :: %{
    "Definitions" => list(definition()()),
    "DeploymentName" => String.t(),
    "FailureHandlingPolicy" => list(any()),
    "Type" => list(any())
  }
  """
  @type edge_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  edge_metric() :: %{
    "Dimension" => String.t(),
    "MetricName" => String.t(),
    "Timestamp" => non_neg_integer(),
    "Value" => float()
  }
  """
  @type edge_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_deployments_request() :: %{
    required("DeviceFleetName") => String.t(),
    required("DeviceName") => String.t()
  }
  """
  @type get_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_deployments_result() :: %{
    "Deployments" => list(edge_deployment()())
  }
  """
  @type get_deployments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_device_registration_request() :: %{
    required("DeviceFleetName") => String.t(),
    required("DeviceName") => String.t()
  }
  """
  @type get_device_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_device_registration_result() :: %{
    "CacheTTL" => String.t(),
    "DeviceRegistration" => String.t()
  }
  """
  @type get_device_registration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_service_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  model() :: %{
    "LatestInference" => non_neg_integer(),
    "LatestSampleTime" => non_neg_integer(),
    "ModelMetrics" => list(edge_metric()()),
    "ModelName" => String.t(),
    "ModelVersion" => String.t()
  }
  """
  @type model() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  send_heartbeat_request() :: %{
    optional("AgentMetrics") => list(edge_metric()()),
    optional("DeploymentResult") => deployment_result(),
    optional("Models") => list(model()()),
    required("AgentVersion") => String.t(),
    required("DeviceFleetName") => String.t(),
    required("DeviceName") => String.t()
  }
  """
  @type send_heartbeat_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2020-09-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "edge.sagemaker",
      global?: false,
      protocol: "rest-json",
      service_id: "Sagemaker Edge",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  Use to get the active deployments from a device.
  """
  @spec get_deployments(map(), get_deployments_request(), list()) ::
          {:ok, get_deployments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_exception()}
  def get_deployments(%Client{} = client, input, options \\ []) do
    url_path = "/GetDeployments"
    headers = []
    query_params = []

    meta = metadata()

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
  Use to check if a device is registered with SageMaker Edge Manager.
  """
  @spec get_device_registration(map(), get_device_registration_request(), list()) ::
          {:ok, get_device_registration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_exception()}
  def get_device_registration(%Client{} = client, input, options \\ []) do
    url_path = "/GetDeviceRegistration"
    headers = []
    query_params = []

    meta = metadata()

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
  Use to get the current status of devices registered on SageMaker Edge Manager.
  """
  @spec send_heartbeat(map(), send_heartbeat_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_exception()}
  def send_heartbeat(%Client{} = client, input, options \\ []) do
    url_path = "/SendHeartbeat"
    headers = []
    query_params = []

    meta = metadata()

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
end
