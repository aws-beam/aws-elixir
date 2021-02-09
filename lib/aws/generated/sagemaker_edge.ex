# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SagemakerEdge do
  @moduledoc """
  SageMaker Edge Manager dataplane service for communicating with active agents.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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
  Use to check if a device is registered with SageMaker Edge Manager.
  """
  def get_device_registration(%Client{} = client, input, options \\ []) do
    url_path = "/GetDeviceRegistration"
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
  Use to get the current status of devices registered on SageMaker Edge Manager.
  """
  def send_heartbeat(%Client{} = client, input, options \\ []) do
    url_path = "/SendHeartbeat"
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