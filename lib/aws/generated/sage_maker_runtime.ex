# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerRuntime do
  @moduledoc """
  The Amazon SageMaker runtime API.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-05-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "runtime.sagemaker",
      global?: false,
      protocol: "rest-json",
      service_id: "SageMaker Runtime",
      signature_version: "v4",
      signing_name: "sagemaker",
      target_prefix: nil
    }
  end

  @doc """
  After you deploy a model into production using Amazon SageMaker hosting
  services, your client applications use this API to get inferences from the model
  hosted at the specified endpoint.

  For an overview of Amazon SageMaker, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).

  Amazon SageMaker strips all POST headers except those supported by the API.
  Amazon SageMaker might add additional headers. You should not rely on the
  behavior of headers outside those enumerated in the request syntax.

  Calls to `InvokeEndpoint` are authenticated by using AWS Signature Version 4.
  For information, see [Authenticating Requests (AWS Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon S3 API Reference*.

  A customer's model containers must respond to requests within 60 seconds. The
  model itself can have a maximum processing time of 60 seconds before responding
  to invocations. If your model is going to take 50-60 seconds of processing time,
  the SDK socket timeout should be set to be 70 seconds.

  Endpoints are scoped to an individual account, and are not public. The URL does
  not contain the account ID, but Amazon SageMaker determines the account ID from
  the authentication token that is supplied by the caller.
  """
  def invoke_endpoint(%Client{} = client, endpoint_name, input, options \\ []) do
    url_path = "/endpoints/#{URI.encode(endpoint_name)}/invocations"

    {headers, input} =
      [
        {"Accept", "Accept"},
        {"ContentType", "Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"InferenceId", "X-Amzn-SageMaker-Inference-Id"},
        {"TargetContainerHostname", "X-Amzn-SageMaker-Target-Container-Hostname"},
        {"TargetModel", "X-Amzn-SageMaker-Target-Model"},
        {"TargetVariant", "X-Amzn-SageMaker-Target-Variant"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Content-Type", "ContentType"},
          {"X-Amzn-SageMaker-Custom-Attributes", "CustomAttributes"},
          {"x-Amzn-Invoked-Production-Variant", "InvokedProductionVariant"}
        ]
      )

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    options =
      Keyword.put(
        options,
        :receive_body_as_binary?,
        true
      )

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
