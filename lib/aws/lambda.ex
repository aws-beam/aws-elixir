# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Lambda do
  @moduledoc """
  AWS Lambda

  **Overview**

  This is the *AWS Lambda API Reference*. The AWS Lambda Developer Guide
  provides additional information. For the service overview, go to [What is
  AWS Lambda](http://docs.aws.amazon.com/lambda/latest/dg/welcome.html), and
  for information about how the service works, go to [AWS Lambda: How it
  Works](http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html)
  in the *AWS Lambda Developer Guide*.
  """

  @doc """
  Adds a permission to the access policy associated with the specified AWS
  Lambda function. In a "push event" model, the access policy attached to the
  Lambda function grants Amazon S3 or a user application permission for the
  Lambda `lambda:Invoke` action. For information about the push model, see
  [AWS Lambda: How it
  Works](http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html).
  Each Lambda function has one access policy associated with it. You can use
  the `AddPermission` API to add a permission to the policy. You have one
  access policy but it can have multiple permission statements.

  This operation requires permission for the `lambda:AddPermission` action.
  """
  def add_permission(client, function_name, input, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}/versions/HEAD/policy"
    headers = []
    request(client, :post, url, headers, input, http_options, 201)
  end

  @doc """
  Identifies a stream as an event source for a Lambda function. It can be
  either an Amazon Kinesis stream or an Amazon DynamoDB stream. AWS Lambda
  invokes the specified function when records are posted to the stream.

  This is the pull model, where AWS Lambda invokes the function. For more
  information, go to [AWS Lambda: How it
  Works](http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html)
  in the *AWS Lambda Developer Guide*.

  This association between an Amazon Kinesis stream and a Lambda function is
  called the event source mapping. You provide the configuration information
  (for example, which stream to read from and which Lambda function to
  invoke) for the event source mapping in the request body.

  Each event source, such as an Amazon Kinesis or a DynamoDB stream, can be
  associated with multiple AWS Lambda function. A given Lambda function can
  be associated with multiple AWS event sources.

  This operation requires permission for the
  `lambda:CreateEventSourceMapping` action.
  """
  def create_event_source_mapping(client, input, http_options \\ []) do
    url = "/2015-03-31/event-source-mappings/"
    headers = []
    request(client, :post, url, headers, input, http_options, 202)
  end

  @doc """
  Creates a new Lambda function. The function metadata is created from the
  request parameters, and the code for the function is provided by a .zip
  file in the request body. If the function name already exists, the
  operation will fail. Note that the function name is case-sensitive.

  This operation requires permission for the `lambda:CreateFunction` action.
  """
  def create_function(client, input, http_options \\ []) do
    url = "/2015-03-31/functions"
    headers = []
    request(client, :post, url, headers, input, http_options, 201)
  end

  @doc """
  Removes an event source mapping. This means AWS Lambda will no longer
  invoke the function for events in the associated source.

  This operation requires permission for the
  `lambda:DeleteEventSourceMapping` action.
  """
  def delete_event_source_mapping(client, uuid, input, http_options \\ []) do
    url = "/2015-03-31/event-source-mappings/#{URI.encode(uuid)}"
    headers = []
    request(client, :delete, url, headers, input, http_options, 202)
  end

  @doc """
  Deletes the specified Lambda function code and configuration.

  When you delete a function the associated access policy is also deleted.
  You will need to delete the event source mappings explicitly.

  This operation requires permission for the `lambda:DeleteFunction` action.
  """
  def delete_function(client, function_name, input, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}"
    headers = []
    request(client, :delete, url, headers, input, http_options, 204)
  end

  @doc """
  Returns configuration information for the specified event source mapping
  (see `CreateEventSourceMapping`).

  This operation requires permission for the `lambda:GetEventSourceMapping`
  action.
  """
  def get_event_source_mapping(client, uuid, http_options \\ []) do
    url = "/2015-03-31/event-source-mappings/#{URI.encode(uuid)}"
    headers = []
    request(client, :get, url, headers, nil, http_options, 200)
  end

  @doc """
  Returns the configuration information of the Lambda function and a
  presigned URL link to the .zip file you uploaded with `CreateFunction` so
  you can download the .zip file. Note that the URL is valid for up to 10
  minutes. The configuration information is the same information you provided
  as parameters when uploading the function.

  This operation requires permission for the `lambda:GetFunction` action.
  """
  def get_function(client, function_name, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}/versions/HEAD"
    headers = []
    request(client, :get, url, headers, nil, http_options, 200)
  end

  @doc """
  Returns the configuration information of the Lambda function. This the same
  information you provided as parameters when uploading the function by using
  `CreateFunction`.

  This operation requires permission for the
  `lambda:GetFunctionConfiguration` operation.
  """
  def get_function_configuration(client, function_name, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}/versions/HEAD/configuration"
    headers = []
    request(client, :get, url, headers, nil, http_options, 200)
  end

  @doc """
  Returns the access policy, containing a list of permissions granted via the
  `AddPermission` API, associated with the specified bucket.

  You need permission for the `lambda:GetPolicy action.`
  """
  def get_policy(client, function_name, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}/versions/HEAD/policy"
    headers = []
    request(client, :get, url, headers, nil, http_options, 200)
  end

  @doc """
  Invokes a specified Lambda function.

  This operation requires permission for the `lambda:InvokeFunction` action.
  """
  def invoke(client, function_name, input, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}/invocations"
    headers = []
    if Dict.has_key?(input, "ClientContext") do
      headers = [{"ClientContext", input["ClientContext"]}|headers]
      input = Dict.delete(input, "ClientContext")
    end
    if Dict.has_key?(input, "InvocationType") do
      headers = [{"InvocationType", input["InvocationType"]}|headers]
      input = Dict.delete(input, "InvocationType")
    end
    if Dict.has_key?(input, "LogType") do
      headers = [{"LogType", input["LogType"]}|headers]
      input = Dict.delete(input, "LogType")
    end
    case request(client, :post, url, headers, input, http_options, nil) do
      {:ok, body, response} ->
        if !is_nil(response.headers["FunctionError"]) do
          body = %{body | "FunctionError" => response.headers["FunctionError"]}
        end
        if !is_nil(response.headers["LogResult"]) do
          body = %{body | "LogResult" => response.headers["LogResult"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  <important>This API is deprecated. We recommend you use `Invoke` API (see
  `Invoke`).</important> Submits an invocation request to AWS Lambda. Upon
  receiving the request, Lambda executes the specified function
  asynchronously. To see the logs generated by the Lambda function execution,
  see the CloudWatch logs console.

  This operation requires permission for the `lambda:InvokeFunction` action.
  """
  def invoke_async(client, function_name, input, http_options \\ []) do
    url = "/2014-11-13/functions/#{URI.encode(function_name)}/invoke-async/"
    headers = []
    request(client, :post, url, headers, input, http_options, 202)
  end

  @doc """
  Returns a list of event source mappings you created using the
  `CreateEventSourceMapping` (see `CreateEventSourceMapping`), where you
  identify a stream as an event source. This list does not include Amazon S3
  event sources.

  For each mapping, the API returns configuration information. You can
  optionally specify filters to retrieve specific event source mappings.

  This operation requires permission for the `lambda:ListEventSourceMappings`
  action.
  """
  def list_event_source_mappings(client, http_options \\ []) do
    url = "/2015-03-31/event-source-mappings/"
    headers = []
    request(client, :get, url, headers, nil, http_options, 200)
  end

  @doc """
  Returns a list of your Lambda functions. For each function, the response
  includes the function configuration information. You must use `GetFunction`
  to retrieve the code for your function.

  This operation requires permission for the `lambda:ListFunctions` action.
  """
  def list_functions(client, http_options \\ []) do
    url = "/2015-03-31/functions/"
    headers = []
    request(client, :get, url, headers, nil, http_options, 200)
  end

  @doc """
  You can remove individual permissions from an access policy associated with
  a Lambda function by providing a Statement ID.

  Note that removal of a permission will cause an active event source to lose
  permission to the function.

  You need permission for the `lambda:RemovePermission` action.
  """
  def remove_permission(client, function_name, statement_id, input, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}/versions/HEAD/policy/#{URI.encode(statement_id)}"
    headers = []
    request(client, :delete, url, headers, input, http_options, 204)
  end

  @doc """
  You can update an event source mapping. This is useful if you want to
  change the parameters of the existing mapping without losing your position
  in the stream. You can change which function will receive the stream
  records, but to change the stream itself, you must create a new mapping.

  This operation requires permission for the
  `lambda:UpdateEventSourceMapping` action.
  """
  def update_event_source_mapping(client, uuid, input, http_options \\ []) do
    url = "/2015-03-31/event-source-mappings/#{URI.encode(uuid)}"
    headers = []
    request(client, :put, url, headers, input, http_options, 202)
  end

  @doc """
  Updates the code for the specified Lambda function. This operation must
  only be used on an existing Lambda function and cannot be used to update
  the function configuration.

  This operation requires permission for the `lambda:UpdateFunctionCode`
  action.
  """
  def update_function_code(client, function_name, input, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}/versions/HEAD/code"
    headers = []
    request(client, :put, url, headers, input, http_options, 200)
  end

  @doc """
  Updates the configuration parameters for the specified Lambda function by
  using the values provided in the request. You provide only the parameters
  you want to change. This operation must only be used on an existing Lambda
  function and cannot be used to update the function's code.

  This operation requires permission for the
  `lambda:UpdateFunctionConfiguration` action.
  """
  def update_function_configuration(client, function_name, input, http_options \\ []) do
    url = "/2015-03-31/functions/#{URI.encode(function_name)}/versions/HEAD/configuration"
    headers = []
    request(client, :put, url, headers, input, http_options, 200)
  end

  defp request(client, method, url, headers, input, http_options, success_status_code) do
    client = %{client | service: "lambda"}
    host = "lambda.#{client.region}.#{client.endpoint}"
    url = "https://#{host}#{url}"
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, http_options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, http_options, nil) do
    case HTTPoison.request(method, url, payload, headers, http_options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason, response}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, http_options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, http_options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason, response}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
