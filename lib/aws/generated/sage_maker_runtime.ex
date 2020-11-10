# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerRuntime do
  @moduledoc """
  The Amazon SageMaker runtime API.
  """

  @doc """
  After you deploy a model into production using Amazon SageMaker hosting
  services, your client applications use this API to get inferences from the model
  hosted at the specified endpoint.

  For an overview of Amazon SageMaker, see [How It Works](https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html).

  Amazon SageMaker strips all POST headers except those supported by the API.
  Amazon SageMaker might add additional headers. You should not rely on the
  behavior of headers outside those enumerated in the request syntax.

  Calls to `InvokeEndpoint` are authenticated by using AWS Signature Version 4.
  For information, see [Authenticating Requests (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon S3 API Reference*.

  A customer's model containers must respond to requests within 60 seconds. The
  model itself can have a maximum processing time of 60 seconds before responding
  to the /invocations. If your model is going to take 50-60 seconds of processing
  time, the SDK socket timeout should be set to be 70 seconds.

  Endpoints are scoped to an individual account, and are not public. The URL does
  not contain the account ID, but Amazon SageMaker determines the account ID from
  the authentication token that is supplied by the caller.
  """
  def invoke_endpoint(client, endpoint_name, input, options \\ []) do
    path_ = "/endpoints/#{URI.encode(endpoint_name)}/invocations"
    {headers, input} =
      [
        {"Accept", "Accept"},
        {"ContentType", "Content-Type"},
        {"CustomAttributes", "X-Amzn-SageMaker-Custom-Attributes"},
        {"TargetModel", "X-Amzn-SageMaker-Target-Model"},
        {"TargetVariant", "X-Amzn-SageMaker-Target-Variant"},
      ]
      |> AWS.Request.build_params(input)
    query_ = []
    case request(client, :post, path_, query_, headers, input, options, nil) do
      {:ok, body, response} when not is_nil(body) ->
        body =
          [
            {"Content-Type", "ContentType"},
            {"X-Amzn-SageMaker-Custom-Attributes", "CustomAttributes"},
            {"x-Amzn-Invoked-Production-Variant", "InvokedProductionVariant"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "sagemaker"}
    host = build_host("runtime.sagemaker", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
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

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
