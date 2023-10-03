# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockRuntime do
  @moduledoc """
  Describes the API operations for running inference using Bedrock models.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-runtime",
      global?: false,
      protocol: "rest-json",
      service_id: "Bedrock Runtime",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Invokes the specified Bedrock model to run inference using the input provided in
  the request body.

  You use InvokeModel to run inference for text models, image models, and
  embedding models.

  For more information, see [Run inference](https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html)
  in the Bedrock User Guide.

  For example requests, see Examples (after the Errors section).
  """
  def invoke_model(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke"

    {headers, input} =
      [
        {"accept", "Accept"},
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

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
  Invoke the specified Bedrock model to run inference using the input provided.

  Return the response in a stream.

  For more information, see [Run inference](https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html)
  in the Bedrock User Guide.

  For an example request and response, see Examples (after the Errors section).
  """
  def invoke_model_with_response_stream(%Client{} = client, model_id, input, options \\ []) do
    url_path = "/model/#{AWS.Util.encode_uri(model_id)}/invoke-with-response-stream"

    {headers, input} =
      [
        {"accept", "X-Amzn-Bedrock-Accept"},
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"X-Amzn-Bedrock-Content-Type", "contentType"}]
      )

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
