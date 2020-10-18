# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Lambda do
  @moduledoc """
  AWS Lambda

  **Overview**

  This is the *AWS Lambda API Reference*. The AWS Lambda Developer Guide
  provides additional information. For the service overview, see [What is AWS
  Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html), and for
  information about how the service works, see [AWS Lambda: How it
  Works](https://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html)
  in the **AWS Lambda Developer Guide**.
  """

  @doc """
  Adds permissions to the resource-based policy of a version of an [AWS
  Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  Use this action to grant layer usage permission to other accounts. You can
  grant permission to a single account, all AWS accounts, or all accounts in
  an organization.

  To revoke permission, call `RemoveLayerVersionPermission` with the
  statement ID that you specified when you added it.
  """
  def add_layer_version_permission(client, layer_name, version_number, input, options \\ []) do
    path_ = "/2018-10-31/layers/#{URI.encode(layer_name)}/versions/#{URI.encode(version_number)}/policy"
    headers = []
    {query_, input} =
      [
        {"RevisionId", "RevisionId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Grants an AWS service or another account permission to use a function. You
  can apply the policy at the function level, or specify a qualifier to
  restrict access to a single version or alias. If you use a qualifier, the
  invoker must use the full Amazon Resource Name (ARN) of that version or
  alias to invoke the function.

  To grant permission to another account, specify the account ID as the
  `Principal`. For AWS services, the principal is a domain-style identifier
  defined by the service, like `s3.amazonaws.com` or `sns.amazonaws.com`. For
  AWS services, you can also specify the ARN of the associated resource as
  the `SourceArn`. If you grant permission to a service principal without
  specifying the source, other accounts could potentially configure resources
  in their account to invoke your Lambda function.

  This action adds a statement to a resource-based permissions policy for the
  function. For more information about function policies, see [Lambda
  Function
  Policies](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).
  """
  def add_permission(client, function_name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/policy"
    headers = []
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  for a Lambda function version. Use aliases to provide clients with a
  function identifier that you can update to invoke a different version.

  You can also map an alias to split invocation requests between two
  versions. Use the `RoutingConfig` parameter to specify a second version and
  the percentage of invocation requests that it receives.
  """
  def create_alias(client, function_name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/aliases"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a mapping between an event source and an AWS Lambda function.
  Lambda reads items from the event source and triggers the function.

  For details about each event source type, see the following topics.

  <ul> <li> [Using AWS Lambda with Amazon
  DynamoDB](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html)

  </li> <li> [Using AWS Lambda with Amazon
  Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html)

  </li> <li> [Using AWS Lambda with Amazon
  SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html)

  </li> <li> [Using AWS Lambda with Amazon
  MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

  </li> </ul> The following error handling options are only available for
  stream sources (DynamoDB and Kinesis):

  <ul> <li> `BisectBatchOnFunctionError` - If the function returns an error,
  split the batch in two and retry.

  </li> <li> `DestinationConfig` - Send discarded records to an Amazon SQS
  queue or Amazon SNS topic.

  </li> <li> `MaximumRecordAgeInSeconds` - Discard records older than the
  specified age. Default -1 (infinite). Minimum 60. Maximum 604800.

  </li> <li> `MaximumRetryAttempts` - Discard records after the specified
  number of retries. Default -1 (infinite). Minimum 0. Maximum 10000. When
  infinite, failed records will be retried until the record expires.

  </li> <li> `ParallelizationFactor` - Process multiple batches from each
  shard concurrently.

  </li> </ul>
  """
  def create_event_source_mapping(client, input, options \\ []) do
    path_ = "/2015-03-31/event-source-mappings/"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Creates a Lambda function. To create a function, you need a [deployment
  package](https://docs.aws.amazon.com/lambda/latest/dg/deployment-package-v2.html)
  and an [execution
  role](https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role).
  The deployment package contains your function code. The execution role
  grants the function permission to use AWS services, such as Amazon
  CloudWatch Logs for log streaming and AWS X-Ray for request tracing.

  When you create a function, Lambda provisions an instance of the function
  and its supporting resources. If your function connects to a VPC, this
  process can take a minute or so. During this time, you can't invoke or
  modify the function. The `State`, `StateReason`, and `StateReasonCode`
  fields in the response from `GetFunctionConfiguration` indicate when the
  function is ready to invoke. For more information, see [Function
  States](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  A function has an unpublished version, and can have published versions and
  aliases. The unpublished version changes when you update your function's
  code and configuration. A published version is a snapshot of your function
  code and configuration that can't be changed. An alias is a named resource
  that maps to a version, and can be changed to map to a different version.
  Use the `Publish` parameter to create version `1` of your function from its
  initial configuration.

  The other parameters let you configure version-specific and function-level
  settings. You can modify version-specific settings later with
  `UpdateFunctionConfiguration`. Function-level settings apply to both the
  unpublished and published versions of the function, and include tags
  (`TagResource`) and per-function concurrency limits
  (`PutFunctionConcurrency`).

  If another account or an AWS service invokes your function, use
  `AddPermission` to grant permission by creating a resource-based IAM
  policy. You can grant permissions at the function level, on a version, or
  on an alias.

  To invoke your function directly, use `Invoke`. To invoke your function in
  response to events in other AWS services, create an event source mapping
  (`CreateEventSourceMapping`), or configure a function trigger in the other
  service. For more information, see [Invoking
  Functions](https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html).
  """
  def create_function(client, input, options \\ []) do
    path_ = "/2015-03-31/functions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def delete_alias(client, function_name, name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/aliases/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an [event source
  mapping](https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html).
  You can get the identifier of a mapping from the output of
  `ListEventSourceMappings`.

  When you delete an event source mapping, it enters a `Deleting` state and
  might not be completely deleted for several seconds.
  """
  def delete_event_source_mapping(client, uuid, input, options \\ []) do
    path_ = "/2015-03-31/event-source-mappings/#{URI.encode(uuid)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Deletes a Lambda function. To delete a specific function version, use the
  `Qualifier` parameter. Otherwise, all versions and aliases are deleted.

  To delete Lambda event source mappings that invoke a function, use
  `DeleteEventSourceMapping`. For AWS services and resources that invoke your
  function directly, delete the trigger in the service where you originally
  configured it.
  """
  def delete_function(client, function_name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}"
    headers = []
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes a concurrent execution limit from a function.
  """
  def delete_function_concurrency(client, function_name, input, options \\ []) do
    path_ = "/2017-10-31/functions/#{URI.encode(function_name)}/concurrency"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the configuration for asynchronous invocation for a function,
  version, or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  def delete_function_event_invoke_config(client, function_name, input, options \\ []) do
    path_ = "/2019-09-25/functions/#{URI.encode(function_name)}/event-invoke-config"
    headers = []
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a version of an [AWS Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  Deleted versions can no longer be viewed or added to functions. To avoid
  breaking functions, a copy of the version remains in Lambda until no
  functions refer to it.
  """
  def delete_layer_version(client, layer_name, version_number, input, options \\ []) do
    path_ = "/2018-10-31/layers/#{URI.encode(layer_name)}/versions/#{URI.encode(version_number)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the provisioned concurrency configuration for a function.
  """
  def delete_provisioned_concurrency_config(client, function_name, input, options \\ []) do
    path_ = "/2019-09-30/functions/#{URI.encode(function_name)}/provisioned-concurrency"
    headers = []
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Retrieves details about your account's
  [limits](https://docs.aws.amazon.com/lambda/latest/dg/limits.html) and
  usage in an AWS Region.
  """
  def get_account_settings(client, options \\ []) do
    path_ = "/2016-08-19/account-settings/"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns details about a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def get_alias(client, function_name, name, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/aliases/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns details about an event source mapping. You can get the identifier
  of a mapping from the output of `ListEventSourceMappings`.
  """
  def get_event_source_mapping(client, uuid, options \\ []) do
    path_ = "/2015-03-31/event-source-mappings/#{URI.encode(uuid)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about the function or function version, with a link to
  download the deployment package that's valid for 10 minutes. If you specify
  a function version, only details that are specific to that version are
  returned.
  """
  def get_function(client, function_name, qualifier \\ nil, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(qualifier) do
      [{"Qualifier", qualifier} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns details about the reserved concurrency configuration for a
  function. To set a concurrency limit for a function, use
  `PutFunctionConcurrency`.
  """
  def get_function_concurrency(client, function_name, options \\ []) do
    path_ = "/2019-09-30/functions/#{URI.encode(function_name)}/concurrency"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the version-specific settings of a Lambda function or version. The
  output includes only options that can vary between versions of a function.
  To modify these settings, use `UpdateFunctionConfiguration`.

  To get all of a function's details, including function-level settings, use
  `GetFunction`.
  """
  def get_function_configuration(client, function_name, qualifier \\ nil, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/configuration"
    headers = []
    query_ = []
    query_ = if !is_nil(qualifier) do
      [{"Qualifier", qualifier} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration for asynchronous invocation for a function,
  version, or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  def get_function_event_invoke_config(client, function_name, qualifier \\ nil, options \\ []) do
    path_ = "/2019-09-25/functions/#{URI.encode(function_name)}/event-invoke-config"
    headers = []
    query_ = []
    query_ = if !is_nil(qualifier) do
      [{"Qualifier", qualifier} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about a version of an [AWS Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
  with a link to download the layer archive that's valid for 10 minutes.
  """
  def get_layer_version(client, layer_name, version_number, options \\ []) do
    path_ = "/2018-10-31/layers/#{URI.encode(layer_name)}/versions/#{URI.encode(version_number)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about a version of an [AWS Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
  with a link to download the layer archive that's valid for 10 minutes.
  """
  def get_layer_version_by_arn(client, arn, options \\ []) do
    path_ = "/2018-10-31/layers?find=LayerVersion"
    headers = []
    query_ = []
    query_ = if !is_nil(arn) do
      [{"Arn", arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the permission policy for a version of an [AWS Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  For more information, see `AddLayerVersionPermission`.
  """
  def get_layer_version_policy(client, layer_name, version_number, options \\ []) do
    path_ = "/2018-10-31/layers/#{URI.encode(layer_name)}/versions/#{URI.encode(version_number)}/policy"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the [resource-based IAM
  policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
  for a function, version, or alias.
  """
  def get_policy(client, function_name, qualifier \\ nil, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/policy"
    headers = []
    query_ = []
    query_ = if !is_nil(qualifier) do
      [{"Qualifier", qualifier} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the provisioned concurrency configuration for a function's alias
  or version.
  """
  def get_provisioned_concurrency_config(client, function_name, qualifier, options \\ []) do
    path_ = "/2019-09-30/functions/#{URI.encode(function_name)}/provisioned-concurrency"
    headers = []
    query_ = []
    query_ = if !is_nil(qualifier) do
      [{"Qualifier", qualifier} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Invokes a Lambda function. You can invoke a function synchronously (and
  wait for the response), or asynchronously. To invoke a function
  asynchronously, set `InvocationType` to `Event`.

  For [synchronous
  invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html),
  details about the function response, including errors, are included in the
  response body and headers. For either invocation type, you can find more
  information in the [execution
  log](https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html)
  and
  [trace](https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html).

  When an error occurs, your function may be invoked multiple times. Retry
  behavior varies by error type, client, event source, and invocation type.
  For example, if you invoke a function asynchronously and it returns an
  error, Lambda executes the function up to two more times. For more
  information, see [Retry
  Behavior](https://docs.aws.amazon.com/lambda/latest/dg/retries-on-errors.html).

  For [asynchronous
  invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html),
  Lambda adds events to a queue before sending them to your function. If your
  function does not have enough capacity to keep up with the queue, events
  may be lost. Occasionally, your function may receive the same event
  multiple times, even if no error occurs. To retain events that were not
  processed, configure your function with a [dead-letter
  queue](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq).

  The status code in the API response doesn't reflect function errors. Error
  codes are reserved for errors that prevent your function from executing,
  such as permissions errors, [limit
  errors](https://docs.aws.amazon.com/lambda/latest/dg/limits.html), or
  issues with your function's code and configuration. For example, Lambda
  returns `TooManyRequestsException` if executing the function would cause
  you to exceed a concurrency limit at either the account level
  (`ConcurrentInvocationLimitExceeded`) or function level
  (`ReservedFunctionConcurrentInvocationLimitExceeded`).

  For functions with a long timeout, your client might be disconnected during
  synchronous invocation while it waits for a response. Configure your HTTP
  client, SDK, firewall, proxy, or operating system to allow for long
  connections with timeout or keep-alive settings.

  This operation requires permission for the
  [lambda:InvokeFunction](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html)
  action.
  """
  def invoke(client, function_name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/invocations"
    {headers, input} =
      [
        {"ClientContext", "X-Amz-Client-Context"},
        {"InvocationType", "X-Amz-Invocation-Type"},
        {"LogType", "X-Amz-Log-Type"},
      ]
      |> AWS.Request.build_params(input)
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
      ]
      |> AWS.Request.build_params(input)
    case request(client, :post, path_, query_, headers, input, options, nil) do
      {:ok, body, response} when is_nil(body) == false ->
        body =
          [
            {"X-Amz-Executed-Version", "ExecutedVersion"},
            {"X-Amz-Function-Error", "FunctionError"},
            {"X-Amz-Log-Result", "LogResult"},
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

  @doc """
  <important> For asynchronous function invocation, use `Invoke`.

  </important> Invokes a function asynchronously.
  """
  def invoke_async(client, function_name, input, options \\ []) do
    path_ = "/2014-11-13/functions/#{URI.encode(function_name)}/invoke-async/"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Returns a list of
  [aliases](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  for a Lambda function.
  """
  def list_aliases(client, function_name, function_version \\ nil, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/aliases"
    headers = []
    query_ = []
    query_ = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"Marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(function_version) do
      [{"FunctionVersion", function_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists event source mappings. Specify an `EventSourceArn` to only show event
  source mappings for a single event source.
  """
  def list_event_source_mappings(client, event_source_arn \\ nil, function_name \\ nil, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2015-03-31/event-source-mappings/"
    headers = []
    query_ = []
    query_ = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"Marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(function_name) do
      [{"FunctionName", function_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(event_source_arn) do
      [{"EventSourceArn", event_source_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of configurations for asynchronous invocation for a
  function.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  def list_function_event_invoke_configs(client, function_name, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2019-09-25/functions/#{URI.encode(function_name)}/event-invoke-config/list"
    headers = []
    query_ = []
    query_ = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"Marker", marker} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Lambda functions, with the version-specific configuration
  of each. Lambda returns up to 50 functions per call.

  Set `FunctionVersion` to `ALL` to include all published versions of each
  function in addition to the unpublished version. To get more information
  about a function or version, use `GetFunction`.
  """
  def list_functions(client, function_version \\ nil, marker \\ nil, master_region \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2015-03-31/functions/"
    headers = []
    query_ = []
    query_ = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query_]
    else
      query_
    end
    query_ = if !is_nil(master_region) do
      [{"MasterRegion", master_region} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"Marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(function_version) do
      [{"FunctionVersion", function_version} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of an [AWS Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  Versions that have been deleted aren't listed. Specify a [runtime
  identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only versions that indicate that they're compatible with that
  runtime.
  """
  def list_layer_versions(client, layer_name, compatible_runtime \\ nil, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2018-10-31/layers/#{URI.encode(layer_name)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"Marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(compatible_runtime) do
      [{"CompatibleRuntime", compatible_runtime} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists [AWS Lambda
  layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
  and shows information about the latest version of each. Specify a [runtime
  identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only layers that indicate that they're compatible with that
  runtime.
  """
  def list_layers(client, compatible_runtime \\ nil, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2018-10-31/layers"
    headers = []
    query_ = []
    query_ = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"Marker", marker} | query_]
    else
      query_
    end
    query_ = if !is_nil(compatible_runtime) do
      [{"CompatibleRuntime", compatible_runtime} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of provisioned concurrency configurations for a function.
  """
  def list_provisioned_concurrency_configs(client, function_name, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2019-09-30/functions/#{URI.encode(function_name)}/provisioned-concurrency?List=ALL"
    headers = []
    query_ = []
    query_ = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"Marker", marker} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a function's
  [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html). You can
  also view tags with `GetFunction`.
  """
  def list_tags(client, resource, options \\ []) do
    path_ = "/2017-03-31/tags/#{URI.encode(resource)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of
  [versions](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html),
  with the version-specific configuration of each. Lambda returns up to 50
  versions per call.
  """
  def list_versions_by_function(client, function_name, marker \\ nil, max_items \\ nil, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(max_items) do
      [{"MaxItems", max_items} | query_]
    else
      query_
    end
    query_ = if !is_nil(marker) do
      [{"Marker", marker} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Creates an [AWS Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
  from a ZIP archive. Each time you call `PublishLayerVersion` with the same
  layer name, a new version is created.

  Add layers to your function with `CreateFunction` or
  `UpdateFunctionConfiguration`.
  """
  def publish_layer_version(client, layer_name, input, options \\ []) do
    path_ = "/2018-10-31/layers/#{URI.encode(layer_name)}/versions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a
  [version](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  from the current code and configuration of a function. Use versions to
  create a snapshot of your function code and configuration that doesn't
  change.

  AWS Lambda doesn't publish a version if the function's configuration and
  code haven't changed since the last version. Use `UpdateFunctionCode` or
  `UpdateFunctionConfiguration` to update the function before publishing a
  version.

  Clients can invoke versions directly or with an alias. To create an alias,
  use `CreateAlias`.
  """
  def publish_version(client, function_name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/versions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Sets the maximum number of simultaneous executions for a function, and
  reserves capacity for that concurrency level.

  Concurrency settings apply to the function as a whole, including all
  published versions and the unpublished version. Reserving concurrency both
  ensures that your function has capacity to process the specified number of
  events simultaneously, and prevents it from scaling beyond that level. Use
  `GetFunction` to see the current setting for a function.

  Use `GetAccountSettings` to see your Regional concurrency limit. You can
  reserve concurrency for as many functions as you like, as long as you leave
  at least 100 simultaneous executions unreserved for functions that aren't
  configured with a per-function limit. For more information, see [Managing
  Concurrency](https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).
  """
  def put_function_concurrency(client, function_name, input, options \\ []) do
    path_ = "/2017-10-31/functions/#{URI.encode(function_name)}/concurrency"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Configures options for [asynchronous
  invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html)
  on a function, version, or alias. If a configuration already exists for a
  function, version, or alias, this operation overwrites it. If you exclude
  any settings, they are removed. To set one option without affecting
  existing settings for other options, use `UpdateFunctionEventInvokeConfig`.

  By default, Lambda retries an asynchronous invocation twice if the function
  returns an error. It retains events in a queue for up to six hours. When an
  event fails all processing attempts or stays in the asynchronous invocation
  queue for too long, Lambda discards it. To retain discarded events,
  configure a dead-letter queue with `UpdateFunctionConfiguration`.

  To send an invocation record to a queue, topic, function, or event bus,
  specify a
  [destination](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations).
  You can configure separate destinations for successful invocations
  (on-success) and events that fail all processing attempts (on-failure). You
  can configure destinations in addition to or instead of a dead-letter
  queue.
  """
  def put_function_event_invoke_config(client, function_name, input, options \\ []) do
    path_ = "/2019-09-25/functions/#{URI.encode(function_name)}/event-invoke-config"
    headers = []
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds a provisioned concurrency configuration to a function's alias or
  version.
  """
  def put_provisioned_concurrency_config(client, function_name, input, options \\ []) do
    path_ = "/2019-09-30/functions/#{URI.encode(function_name)}/provisioned-concurrency"
    headers = []
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Removes a statement from the permissions policy for a version of an [AWS
  Lambda
  layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).
  For more information, see `AddLayerVersionPermission`.
  """
  def remove_layer_version_permission(client, layer_name, statement_id, version_number, input, options \\ []) do
    path_ = "/2018-10-31/layers/#{URI.encode(layer_name)}/versions/#{URI.encode(version_number)}/policy/#{URI.encode(statement_id)}"
    headers = []
    {query_, input} =
      [
        {"RevisionId", "RevisionId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Revokes function-use permission from an AWS service or another account. You
  can get the ID of the statement from the output of `GetPolicy`.
  """
  def remove_permission(client, function_name, statement_id, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/policy/#{URI.encode(statement_id)}"
    headers = []
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
        {"RevisionId", "RevisionId"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Adds [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to a
  function.
  """
  def tag_resource(client, resource, input, options \\ []) do
    path_ = "/2017-03-31/tags/#{URI.encode(resource)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html)
  from a function.
  """
  def untag_resource(client, resource, input, options \\ []) do
    path_ = "/2017-03-31/tags/#{URI.encode(resource)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates the configuration of a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def update_alias(client, function_name, name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/aliases/#{URI.encode(name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an event source mapping. You can change the function that AWS
  Lambda invokes, or pause invocation and resume later from the same
  location.

  The following error handling options are only available for stream sources
  (DynamoDB and Kinesis):

  <ul> <li> `BisectBatchOnFunctionError` - If the function returns an error,
  split the batch in two and retry.

  </li> <li> `DestinationConfig` - Send discarded records to an Amazon SQS
  queue or Amazon SNS topic.

  </li> <li> `MaximumRecordAgeInSeconds` - Discard records older than the
  specified age. Default -1 (infinite). Minimum 60. Maximum 604800.

  </li> <li> `MaximumRetryAttempts` - Discard records after the specified
  number of retries. Default -1 (infinite). Minimum 0. Maximum 10000. When
  infinite, failed records will be retried until the record expires.

  </li> <li> `ParallelizationFactor` - Process multiple batches from each
  shard concurrently.

  </li> </ul>
  """
  def update_event_source_mapping(client, uuid, input, options \\ []) do
    path_ = "/2015-03-31/event-source-mappings/#{URI.encode(uuid)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Updates a Lambda function's code.

  The function's code is locked when you publish a version. You can't modify
  the code of a published version, only the unpublished version.
  """
  def update_function_code(client, function_name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/code"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Modify the version-specific settings of a Lambda function.

  When you update a function, Lambda provisions an instance of the function
  and its supporting resources. If your function connects to a VPC, this
  process can take a minute. During this time, you can't modify the function,
  but you can still invoke it. The `LastUpdateStatus`,
  `LastUpdateStatusReason`, and `LastUpdateStatusReasonCode` fields in the
  response from `GetFunctionConfiguration` indicate when the update is
  complete and the function is processing events with the new configuration.
  For more information, see [Function
  States](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  These settings can vary between versions of a function and are locked when
  you publish a version. You can't modify the configuration of a published
  version, only the unpublished version.

  To configure function concurrency, use `PutFunctionConcurrency`. To grant
  invoke permissions to an account or AWS service, use `AddPermission`.
  """
  def update_function_configuration(client, function_name, input, options \\ []) do
    path_ = "/2015-03-31/functions/#{URI.encode(function_name)}/configuration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the configuration for asynchronous invocation for a function,
  version, or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  def update_function_event_invoke_config(client, function_name, input, options \\ []) do
    path_ = "/2019-09-25/functions/#{URI.encode(function_name)}/event-invoke-config"
    headers = []
    {query_, input} =
      [
        {"Qualifier", "Qualifier"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "lambda"}
    host = build_host("lambda", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end
