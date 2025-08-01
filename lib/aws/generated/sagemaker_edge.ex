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
        "Sum" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type checksum() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      definition() :: %{
        "Checksum" => checksum(),
        "ModelHandle" => String.t() | atom(),
        "S3Url" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_model() :: %{
        "DesiredState" => list(any()),
        "ModelHandle" => String.t() | atom(),
        "ModelName" => String.t() | atom(),
        "ModelVersion" => String.t() | atom(),
        "RollbackFailureReason" => String.t() | atom(),
        "State" => list(any()),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom()
      }

  """
  @type deployment_model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_result() :: %{
        "DeploymentEndTime" => non_neg_integer(),
        "DeploymentModels" => list(deployment_model()),
        "DeploymentName" => String.t() | atom(),
        "DeploymentStartTime" => non_neg_integer(),
        "DeploymentStatus" => String.t() | atom(),
        "DeploymentStatusMessage" => String.t() | atom()
      }

  """
  @type deployment_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      edge_deployment() :: %{
        "Definitions" => list(definition()),
        "DeploymentName" => String.t() | atom(),
        "FailureHandlingPolicy" => list(any()),
        "Type" => list(any())
      }

  """
  @type edge_deployment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      edge_metric() :: %{
        "Dimension" => String.t() | atom(),
        "MetricName" => String.t() | atom(),
        "Timestamp" => non_neg_integer(),
        "Value" => float()
      }

  """
  @type edge_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployments_request() :: %{
        required("DeviceFleetName") => String.t() | atom(),
        required("DeviceName") => String.t() | atom()
      }

  """
  @type get_deployments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployments_result() :: %{
        "Deployments" => list(edge_deployment())
      }

  """
  @type get_deployments_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_registration_request() :: %{
        required("DeviceFleetName") => String.t() | atom(),
        required("DeviceName") => String.t() | atom()
      }

  """
  @type get_device_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_registration_result() :: %{
        "CacheTTL" => String.t() | atom(),
        "DeviceRegistration" => String.t() | atom()
      }

  """
  @type get_device_registration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      model() :: %{
        "LatestInference" => non_neg_integer(),
        "LatestSampleTime" => non_neg_integer(),
        "ModelMetrics" => list(edge_metric()),
        "ModelName" => String.t() | atom(),
        "ModelVersion" => String.t() | atom()
      }

  """
  @type model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_heartbeat_request() :: %{
        optional("AgentMetrics") => list(edge_metric()),
        optional("DeploymentResult") => deployment_result(),
        optional("Models") => list(model()),
        required("AgentVersion") => String.t() | atom(),
        required("DeviceFleetName") => String.t() | atom(),
        required("DeviceName") => String.t() | atom()
      }

  """
  @type send_heartbeat_request() :: %{(String.t() | atom()) => any()}

  @type get_deployments_errors() :: internal_service_exception()

  @type get_device_registration_errors() :: internal_service_exception()

  @type send_heartbeat_errors() :: internal_service_exception()

  def metadata do
    %{
      api_version: "2020-09-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "edge.sagemaker",
      global?: false,
      hostname: nil,
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
          | {:error, term()}
          | {:error, get_deployments_errors()}
  def get_deployments(%Client{} = client, input, options \\ []) do
    url_path = "/GetDeployments"
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
  Use to check if a device is registered with SageMaker Edge Manager.
  """
  @spec get_device_registration(map(), get_device_registration_request(), list()) ::
          {:ok, get_device_registration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_device_registration_errors()}
  def get_device_registration(%Client{} = client, input, options \\ []) do
    url_path = "/GetDeviceRegistration"
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
  Use to get the current status of devices registered on SageMaker Edge Manager.
  """
  @spec send_heartbeat(map(), send_heartbeat_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_heartbeat_errors()}
  def send_heartbeat(%Client{} = client, input, options \\ []) do
    url_path = "/SendHeartbeat"
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
