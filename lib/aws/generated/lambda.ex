# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Lambda do
  @moduledoc """
  Lambda

  ## Overview

  Lambda is a compute service that lets you run code without provisioning or
  managing servers.

  Lambda runs your code on a high-availability compute infrastructure and performs
  all of the administration of the compute resources, including server and
  operating system maintenance, capacity provisioning and automatic scaling, code
  monitoring and logging. With Lambda, you can run code for virtually any type of
  application or backend service. For more information about the Lambda service,
  see [What is Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) in the **Lambda Developer Guide**.

  The *Lambda API Reference* provides information about each of the API methods,
  including details about the parameters in each API request and response.

  You can use Software Development Kits (SDKs), Integrated Development Environment
  (IDE) Toolkits, and command line tools to access the API. For installation
  instructions, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).

  For a list of Region-specific endpoints that Lambda supports, see [Lambda endpoints and quotas
  ](https://docs.aws.amazon.com/general/latest/gr/lambda-service.html/) in the
  *Amazon Web Services General Reference.*.

  When making the API calls, you will need to authenticate your request by
  providing a signature. Lambda supports signature version 4. For more
  information, see [Signature Version 4 signing process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  in the *Amazon Web Services General Reference.*.

  ## CA certificates

  Because Amazon Web Services SDKs use the CA certificates from your computer,
  changes to the certificates on the Amazon Web Services servers can cause
  connection failures when you attempt to use an SDK. You can prevent these
  failures by keeping your computer's CA certificates and operating system
  up-to-date. If you encounter this issue in a corporate environment and do not
  manage your own computer, you might need to ask an administrator to assist with
  the update process. The following list shows minimum operating system and Java
  versions:

    * Microsoft Windows versions that have updates from January 2005 or
  later installed contain at least one of the required CAs in their trust list.

    * Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February
  2007), Mac OS X 10.5 (October 2007), and later versions contain at least one of
  the required CAs in their trust list.

    * Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6,
  and 7 all contain at least one of the required CAs in their default trusted CA
  list.

    * Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all later
  versions, including Java 6 (December 2006), 7, and 8, contain at least one of
  the required CAs in their default trusted CA list.

  When accessing the Lambda management console or Lambda API endpoints, whether
  through browsers or programmatically, you will need to ensure your client
  machines support any of the following CAs:

    * Amazon Root CA 1

    * Starfield Services Root Certificate Authority - G2

    * Starfield Class 2 Certification Authority

  Root certificates from the first two authorities are available from [Amazon trust services](https://www.amazontrust.com/repository/), but keeping your
  computer up-to-date is the more straightforward solution. To learn more about
  ACM-provided certificates, see [Amazon Web Services Certificate Manager FAQs.](http://aws.amazon.com/certificate-manager/faqs/#certificates)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2015-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lambda",
      global?: false,
      protocol: "rest-json",
      service_id: "Lambda",
      signature_version: "v4",
      signing_name: "lambda",
      target_prefix: nil
    }
  end

  @doc """
  Adds permissions to the resource-based policy of a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  Use this action to grant layer usage permission to other accounts. You can grant
  permission to a single account, all accounts in an organization, or all Amazon
  Web Services accounts.

  To revoke permission, call `RemoveLayerVersionPermission` with the statement ID
  that you specified when you added it.
  """
  def add_layer_version_permission(
        %Client{} = client,
        layer_name,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy"

    headers = []

    {query_params, input} =
      [
        {"RevisionId", "RevisionId"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Grants an Amazon Web Services service, account, or organization permission to
  use a function.

  You can apply the policy at the function level, or specify a qualifier to
  restrict access to a single version or alias. If you use a qualifier, the
  invoker must use the full Amazon Resource Name (ARN) of that version or alias to
  invoke the function. Note: Lambda does not support adding policies to version
  $LATEST.

  To grant permission to another account, specify the account ID as the
  `Principal`. To grant permission to an organization defined in Organizations,
  specify the organization ID as the `PrincipalOrgID`. For Amazon Web Services
  services, the principal is a domain-style identifier defined by the service,
  like `s3.amazonaws.com` or `sns.amazonaws.com`. For Amazon Web Services
  services, you can also specify the ARN of the associated resource as the
  `SourceArn`. If you grant permission to a service principal without specifying
  the source, other accounts could potentially configure resources in their
  account to invoke your Lambda function.

  This action adds a statement to a resource-based permissions policy for the
  function. For more information about function policies, see [Lambda Function Policies](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).
  """
  def add_permission(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Creates an
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  for a Lambda function version.

  Use aliases to provide clients with a function identifier that you can update to
  invoke a different version.

  You can also map an alias to split invocation requests between two versions. Use
  the `RoutingConfig` parameter to specify a second version and the percentage of
  invocation requests that it receives.
  """
  def create_alias(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases"
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
      201
    )
  end

  @doc """
  Creates a code signing configuration.

  A [code signing configuration](https://docs.aws.amazon.com/lambda/latest/dg/configuration-trustedcode.html)
  defines a list of allowed signing profiles and defines the code-signing
  validation policy (action to be taken if deployment validation checks fail).
  """
  def create_code_signing_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs/"
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
      201
    )
  end

  @doc """
  Creates a mapping between an event source and an Lambda function.

  Lambda reads items from the event source and invokes the function.

  For details about how to configure different event sources, see the following
  topics.

    * [ Amazon DynamoDB Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

    * [ Amazon Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

    * [ Amazon SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

    * [ Amazon MQ and RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

    * [ Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

    * [ Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

  The following error handling options are available only for stream sources
  (DynamoDB and Kinesis):

    * `BisectBatchOnFunctionError` - If the function returns an error,
  split the batch in two and retry.

    * `DestinationConfig` - Send discarded records to an Amazon SQS
  queue or Amazon SNS topic.

    * `MaximumRecordAgeInSeconds` - Discard records older than the
  specified age. The default value is infinite (-1). When set to infinite (-1),
  failed records are retried until the record expires

    * `MaximumRetryAttempts` - Discard records after the specified
  number of retries. The default value is infinite (-1). When set to infinite
  (-1), failed records are retried until the record expires.

    * `ParallelizationFactor` - Process multiple batches from each shard
  concurrently.

  For information about which configuration parameters apply to each event source,
  see the following topics.

    * [ Amazon DynamoDB Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

    * [ Amazon Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

    * [ Amazon SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

    * [ Amazon MQ and RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

    * [ Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

    * [ Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)
  """
  def create_event_source_mapping(%Client{} = client, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/"
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
      202
    )
  end

  @doc """
  Creates a Lambda function.

  To create a function, you need a [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html)
  and an [execution role](https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role).
  The deployment package is a .zip file archive or container image that contains
  your function code. The execution role grants the function permission to use
  Amazon Web Services services, such as Amazon CloudWatch Logs for log streaming
  and X-Ray for request tracing.

  You set the package type to `Image` if the deployment package is a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html). For a
  container image, the code property must include the URI of a container image in
  the Amazon ECR registry. You do not need to specify the handler and runtime
  properties.

  You set the package type to `Zip` if the deployment package is a [.zip file archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip).
  For a .zip file archive, the code property specifies the location of the .zip
  file. You must also specify the handler and runtime properties. The code in the
  deployment package must be compatible with the target instruction set
  architecture of the function (`x86-64` or `arm64`). If you do not specify the
  architecture, the default value is `x86-64`.

  When you create a function, Lambda provisions an instance of the function and
  its supporting resources. If your function connects to a VPC, this process can
  take a minute or so. During this time, you can't invoke or modify the function.
  The `State`, `StateReason`, and `StateReasonCode` fields in the response from
  `GetFunctionConfiguration` indicate when the function is ready to invoke. For
  more information, see [Function States](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  A function has an unpublished version, and can have published versions and
  aliases. The unpublished version changes when you update your function's code
  and configuration. A published version is a snapshot of your function code and
  configuration that can't be changed. An alias is a named resource that maps to a
  version, and can be changed to map to a different version. Use the `Publish`
  parameter to create version `1` of your function from its initial configuration.

  The other parameters let you configure version-specific and function-level
  settings. You can modify version-specific settings later with
  `UpdateFunctionConfiguration`. Function-level settings apply to both the
  unpublished and published versions of the function, and include tags
  (`TagResource`) and per-function concurrency limits (`PutFunctionConcurrency`).

  You can use code signing if your deployment package is a .zip file archive. To
  enable code signing for this function, specify the ARN of a code-signing
  configuration. When a user attempts to deploy a code package with
  `UpdateFunctionCode`, Lambda checks that the code package has a valid signature
  from a trusted publisher. The code-signing configuration includes set set of
  signing profiles, which define the trusted publishers for this function.

  If another account or an Amazon Web Services service invokes your function, use
  `AddPermission` to grant permission by creating a resource-based IAM policy. You
  can grant permissions at the function level, on a version, or on an alias.

  To invoke your function directly, use `Invoke`. To invoke your function in
  response to events in other Amazon Web Services services, create an event source
  mapping (`CreateEventSourceMapping`), or configure a function trigger in the
  other service. For more information, see [Invoking Functions](https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html).
  """
  def create_function(%Client{} = client, input, options \\ []) do
    url_path = "/2015-03-31/functions"
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
      201
    )
  end

  @doc """
  Creates a Lambda function URL with the specified configuration parameters.

  A function URL is a dedicated HTTP(S) endpoint that you can use to invoke your
  function.
  """
  def create_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Deletes a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def delete_alias(%Client{} = client, function_name, name, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the code signing configuration.

  You can delete the code signing configuration only if no function is using it.
  """
  def delete_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        input,
        options \\ []
      ) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an [event source mapping](https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html).

  You can get the identifier of a mapping from the output of
  `ListEventSourceMappings`.

  When you delete an event source mapping, it enters a `Deleting` state and might
  not be completely deleted for several seconds.
  """
  def delete_event_source_mapping(%Client{} = client, uuid, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a Lambda function.

  To delete a specific function version, use the `Qualifier` parameter. Otherwise,
  all versions and aliases are deleted.

  To delete Lambda event source mappings that invoke a function, use
  `DeleteEventSourceMapping`. For Amazon Web Services services and resources that
  invoke your function directly, delete the trigger in the service where you
  originally configured it.
  """
  def delete_function(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes the code signing configuration from the function.
  """
  def delete_function_code_signing_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes a concurrent execution limit from a function.
  """
  def delete_function_concurrency(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2017-10-31/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the configuration for asynchronous invocation for a function, version,
  or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  def delete_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a Lambda function URL.

  When you delete a function URL, you can't recover it. Creating a new function
  URL results in a different URL address.
  """
  def delete_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  Deleted versions can no longer be viewed or added to functions. To avoid
  breaking functions, a copy of the version remains in Lambda until no functions
  refer to it.
  """
  def delete_layer_version(%Client{} = client, layer_name, version_number, input, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the provisioned concurrency configuration for a function.
  """
  def delete_provisioned_concurrency_config(
        %Client{} = client,
        function_name,
        input,
        options \\ []
      ) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Retrieves details about your account's
  [limits](https://docs.aws.amazon.com/lambda/latest/dg/limits.html) and usage in
  an Amazon Web Services Region.
  """
  def get_account_settings(%Client{} = client, options \\ []) do
    url_path = "/2016-08-19/account-settings/"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def get_alias(%Client{} = client, function_name, name, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified code signing configuration.
  """
  def get_code_signing_config(%Client{} = client, code_signing_config_arn, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about an event source mapping.

  You can get the identifier of a mapping from the output of
  `ListEventSourceMappings`.
  """
  def get_event_source_mapping(%Client{} = client, uuid, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the function or function version, with a link to
  download the deployment package that's valid for 10 minutes.

  If you specify a function version, only details that are specific to that
  version are returned.
  """
  def get_function(%Client{} = client, function_name, qualifier \\ nil, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the code signing configuration for the specified function.
  """
  def get_function_code_signing_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about the reserved concurrency configuration for a function.

  To set a concurrency limit for a function, use `PutFunctionConcurrency`.
  """
  def get_function_concurrency(%Client{} = client, function_name, options \\ []) do
    url_path = "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the version-specific settings of a Lambda function or version.

  The output includes only options that can vary between versions of a function.
  To modify these settings, use `UpdateFunctionConfiguration`.

  To get all of a function's details, including function-level settings, use
  `GetFunction`.
  """
  def get_function_configuration(
        %Client{} = client,
        function_name,
        qualifier \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/configuration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration for asynchronous invocation for a function, version,
  or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  def get_function_event_invoke_config(
        %Client{} = client,
        function_name,
        qualifier \\ nil,
        options \\ []
      ) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a Lambda function URL.
  """
  def get_function_url_config(%Client{} = client, function_name, qualifier \\ nil, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
  with a link to download the layer archive that's valid for 10 minutes.
  """
  def get_layer_version(%Client{} = client, layer_name, version_number, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
  with a link to download the layer archive that's valid for 10 minutes.
  """
  def get_layer_version_by_arn(%Client{} = client, arn, options \\ []) do
    url_path = "/2018-10-31/layers?find=LayerVersion"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"Arn", arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the permission policy for a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  For more information, see `AddLayerVersionPermission`.
  """
  def get_layer_version_policy(%Client{} = client, layer_name, version_number, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the [resource-based IAM policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
  for a function, version, or alias.
  """
  def get_policy(%Client{} = client, function_name, qualifier \\ nil, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the provisioned concurrency configuration for a function's alias or
  version.
  """
  def get_provisioned_concurrency_config(
        %Client{} = client,
        function_name,
        qualifier,
        options \\ []
      ) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Invokes a Lambda function.

  You can invoke a function synchronously (and wait for the response), or
  asynchronously. To invoke a function asynchronously, set `InvocationType` to
  `Event`.

  For [synchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html),
  details about the function response, including errors, are included in the
  response body and headers. For either invocation type, you can find more
  information in the [execution log](https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html) and
  [trace](https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html).  When an error occurs, your function may be invoked multiple times. Retry
  behavior varies by error type, client, event source, and invocation type. For
  example, if you invoke a function asynchronously and it returns an error, Lambda
  executes the function up to two more times. For more information, see [Retry
  Behavior](https://docs.aws.amazon.com/lambda/latest/dg/retries-on-errors.html).

  For [asynchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html),
  Lambda adds events to a queue before sending them to your function. If your
  function does not have enough capacity to keep up with the queue, events may be
  lost. Occasionally, your function may receive the same event multiple times,
  even if no error occurs. To retain events that were not processed, configure
  your function with a [dead-letter queue](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq).

  The status code in the API response doesn't reflect function errors. Error codes
  are reserved for errors that prevent your function from executing, such as
  permissions errors, [limit errors](https://docs.aws.amazon.com/lambda/latest/dg/limits.html), or issues
  with your function's code and configuration. For example, Lambda returns
  `TooManyRequestsException` if executing the function would cause you to exceed a
  concurrency limit at either the account level
  (`ConcurrentInvocationLimitExceeded`) or function level
  (`ReservedFunctionConcurrentInvocationLimitExceeded`).

  For functions with a long timeout, your client might be disconnected during
  synchronous invocation while it waits for a response. Configure your HTTP
  client, SDK, firewall, proxy, or operating system to allow for long connections
  with timeout or keep-alive settings.

  This operation requires permission for the
  [lambda:InvokeFunction](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html) action. For details on how to set up permissions for cross-account invocations,
  see [Granting function access to other
  accounts](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).
  """
  def invoke(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/invocations"

    {headers, input} =
      [
        {"ClientContext", "X-Amz-Client-Context"},
        {"InvocationType", "X-Amz-Invocation-Type"},
        {"LogType", "X-Amz-Log-Type"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amz-Executed-Version", "ExecutedVersion"},
          {"X-Amz-Function-Error", "FunctionError"},
          {"X-Amz-Log-Result", "LogResult"}
        ]
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
      nil
    )
  end

  @doc """
  For asynchronous function invocation, use `Invoke`.

  Invokes a function asynchronously.
  """
  def invoke_async(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2014-11-13/functions/#{AWS.Util.encode_uri(function_name)}/invoke-async/"
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
      202
    )
  end

  @doc """
  Returns a list of
  [aliases](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  for a Lambda function.
  """
  def list_aliases(
        %Client{} = client,
        function_name,
        function_version \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(function_version) do
        [{"FunctionVersion", function_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of [code signing configurations](https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html).

  A request returns up to 10,000 configurations per call. You can use the
  `MaxItems` parameter to return fewer configurations per call.
  """
  def list_code_signing_configs(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-04-22/code-signing-configs/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists event source mappings.

  Specify an `EventSourceArn` to show only event source mappings for a single
  event source.
  """
  def list_event_source_mappings(
        %Client{} = client,
        event_source_arn \\ nil,
        function_name \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/event-source-mappings/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(function_name) do
        [{"FunctionName", function_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(event_source_arn) do
        [{"EventSourceArn", event_source_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of configurations for asynchronous invocation for a function.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  def list_function_event_invoke_configs(
        %Client{} = client,
        function_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config/list"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Lambda function URLs for the specified function.
  """
  def list_function_url_configs(
        %Client{} = client,
        function_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/urls"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Lambda functions, with the version-specific configuration of
  each.

  Lambda returns up to 50 functions per call.

  Set `FunctionVersion` to `ALL` to include all published versions of each
  function in addition to the unpublished version.

  The `ListFunctions` action returns a subset of the `FunctionConfiguration`
  fields. To get the additional fields (State, StateReasonCode, StateReason,
  LastUpdateStatus, LastUpdateStatusReason, LastUpdateStatusReasonCode) for a
  function or version, use `GetFunction`.
  """
  def list_functions(
        %Client{} = client,
        function_version \\ nil,
        marker \\ nil,
        master_region \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/functions/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(master_region) do
        [{"MasterRegion", master_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(function_version) do
        [{"FunctionVersion", function_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the functions that use the specified code signing configuration.

  You can use this method prior to deleting a code signing configuration, to
  verify that no functions are using it.
  """
  def list_functions_by_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}/functions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  Versions that have been deleted aren't listed. Specify a [runtime identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only versions that indicate that they're compatible with that runtime.
  Specify a compatible architecture to include only layer versions that are
  compatible with that architecture.
  """
  def list_layer_versions(
        %Client{} = client,
        layer_name,
        compatible_architecture \\ nil,
        compatible_runtime \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compatible_runtime) do
        [{"CompatibleRuntime", compatible_runtime} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compatible_architecture) do
        [{"CompatibleArchitecture", compatible_architecture} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists [Lambda layers](https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html) and
  shows information about the latest version of each.

  Specify a [runtime identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only layers that indicate that they're compatible with that runtime.
  Specify a compatible architecture to include only layers that are compatible
  with that [instruction set architecture](https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html).
  """
  def list_layers(
        %Client{} = client,
        compatible_architecture \\ nil,
        compatible_runtime \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2018-10-31/layers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compatible_runtime) do
        [{"CompatibleRuntime", compatible_runtime} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compatible_architecture) do
        [{"CompatibleArchitecture", compatible_architecture} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of provisioned concurrency configurations for a function.
  """
  def list_provisioned_concurrency_configs(
        %Client{} = client,
        function_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency?List=ALL"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a function's
  [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html).

  You can also view tags with `GetFunction`.
  """
  def list_tags(%Client{} = client, resource, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of
  [versions](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html),
  with the version-specific configuration of each.

  Lambda returns up to 50 versions per call.
  """
  def list_versions_by_function(
        %Client{} = client,
        function_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
  from a ZIP archive.

  Each time you call `PublishLayerVersion` with the same layer name, a new version
  is created.

  Add layers to your function with `CreateFunction` or
  `UpdateFunctionConfiguration`.
  """
  def publish_layer_version(%Client{} = client, layer_name, input, options \\ []) do
    url_path = "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions"
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
      201
    )
  end

  @doc """
  Creates a
  [version](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  from the current code and configuration of a function.

  Use versions to create a snapshot of your function code and configuration that
  doesn't change.

  Lambda doesn't publish a version if the function's configuration and code
  haven't changed since the last version. Use `UpdateFunctionCode` or
  `UpdateFunctionConfiguration` to update the function before publishing a
  version.

  Clients can invoke versions directly or with an alias. To create an alias, use
  `CreateAlias`.
  """
  def publish_version(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/versions"
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
      201
    )
  end

  @doc """
  Update the code signing configuration for the function.

  Changes to the code signing configuration take effect the next time a user tries
  to deploy a code package to the function.
  """
  def put_function_code_signing_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sets the maximum number of simultaneous executions for a function, and reserves
  capacity for that concurrency level.

  Concurrency settings apply to the function as a whole, including all published
  versions and the unpublished version. Reserving concurrency both ensures that
  your function has capacity to process the specified number of events
  simultaneously, and prevents it from scaling beyond that level. Use
  `GetFunction` to see the current setting for a function.

  Use `GetAccountSettings` to see your Regional concurrency limit. You can reserve
  concurrency for as many functions as you like, as long as you leave at least 100
  simultaneous executions unreserved for functions that aren't configured with a
  per-function limit. For more information, see [Managing Concurrency](https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).
  """
  def put_function_concurrency(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2017-10-31/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Configures options for [asynchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html)
  on a function, version, or alias.

  If a configuration already exists for a function, version, or alias, this
  operation overwrites it. If you exclude any settings, they are removed. To set
  one option without affecting existing settings for other options, use
  `UpdateFunctionEventInvokeConfig`.

  By default, Lambda retries an asynchronous invocation twice if the function
  returns an error. It retains events in a queue for up to six hours. When an
  event fails all processing attempts or stays in the asynchronous invocation
  queue for too long, Lambda discards it. To retain discarded events, configure a
  dead-letter queue with `UpdateFunctionConfiguration`.

  To send an invocation record to a queue, topic, function, or event bus, specify
  a
  [destination](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations).
  You can configure separate destinations for successful invocations (on-success)
  and events that fail all processing attempts (on-failure). You can configure
  destinations in addition to or instead of a dead-letter queue.
  """
  def put_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds a provisioned concurrency configuration to a function's alias or version.
  """
  def put_provisioned_concurrency_config(%Client{} = client, function_name, input, options \\ []) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Removes a statement from the permissions policy for a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  For more information, see `AddLayerVersionPermission`.
  """
  def remove_layer_version_permission(
        %Client{} = client,
        layer_name,
        statement_id,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy/#{AWS.Util.encode_uri(statement_id)}"

    headers = []

    {query_params, input} =
      [
        {"RevisionId", "RevisionId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Revokes function-use permission from an Amazon Web Services service or another
  account.

  You can get the ID of the statement from the output of `GetPolicy`.
  """
  def remove_permission(%Client{} = client, function_name, statement_id, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy/#{AWS.Util.encode_uri(statement_id)}"

    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"},
        {"RevisionId", "RevisionId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Adds [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to a
  function.
  """
  def tag_resource(%Client{} = client, resource, input, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"
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
      204
    )
  end

  @doc """
  Removes [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) from a
  function.
  """
  def untag_resource(%Client{} = client, resource, input, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the configuration of a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).
  """
  def update_alias(%Client{} = client, function_name, name, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the code signing configuration.

  Changes to the code signing configuration take effect the next time a user tries
  to deploy a code package to the function.
  """
  def update_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        input,
        options \\ []
      ) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an event source mapping.

  You can change the function that Lambda invokes, or pause invocation and resume
  later from the same location.

  For details about how to configure different event sources, see the following
  topics.

    * [ Amazon DynamoDB Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

    * [ Amazon Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

    * [ Amazon SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

    * [ Amazon MQ and RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

    * [ Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

    * [ Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

  The following error handling options are available only for stream sources
  (DynamoDB and Kinesis):

    * `BisectBatchOnFunctionError` - If the function returns an error,
  split the batch in two and retry.

    * `DestinationConfig` - Send discarded records to an Amazon SQS
  queue or Amazon SNS topic.

    * `MaximumRecordAgeInSeconds` - Discard records older than the
  specified age. The default value is infinite (-1). When set to infinite (-1),
  failed records are retried until the record expires

    * `MaximumRetryAttempts` - Discard records after the specified
  number of retries. The default value is infinite (-1). When set to infinite
  (-1), failed records are retried until the record expires.

    * `ParallelizationFactor` - Process multiple batches from each shard
  concurrently.

  For information about which configuration parameters apply to each event source,
  see the following topics.

    * [ Amazon DynamoDB Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

    * [ Amazon Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

    * [ Amazon SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

    * [ Amazon MQ and RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

    * [ Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

    * [ Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)
  """
  def update_event_source_mapping(%Client{} = client, uuid, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates a Lambda function's code.

  If code signing is enabled for the function, the code package must be signed by
  a trusted publisher. For more information, see [Configuring code signing](https://docs.aws.amazon.com/lambda/latest/dg/configuration-trustedcode.html).

  If the function's package type is `Image`, you must specify the code package in
  `ImageUri` as the URI of a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html) in the
  Amazon ECR registry.

  If the function's package type is `Zip`, you must specify the deployment package
  as a [.zip file archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip).
  Enter the Amazon S3 bucket and key of the code .zip file location. You can also
  provide the function code inline using the `ZipFile` field.

  The code in the deployment package must be compatible with the target
  instruction set architecture of the function (`x86-64` or `arm64`).

  The function's code is locked when you publish a version. You can't modify the
  code of a published version, only the unpublished version.

  For a function defined as a container image, Lambda resolves the image tag to an
  image digest. In Amazon ECR, if you update the image tag to a new image, Lambda
  does not automatically update the function.
  """
  def update_function_code(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/code"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modify the version-specific settings of a Lambda function.

  When you update a function, Lambda provisions an instance of the function and
  its supporting resources. If your function connects to a VPC, this process can
  take a minute. During this time, you can't modify the function, but you can
  still invoke it. The `LastUpdateStatus`, `LastUpdateStatusReason`, and
  `LastUpdateStatusReasonCode` fields in the response from
  `GetFunctionConfiguration` indicate when the update is complete and the function
  is processing events with the new configuration. For more information, see
  [Function States](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  These settings can vary between versions of a function and are locked when you
  publish a version. You can't modify the configuration of a published version,
  only the unpublished version.

  To configure function concurrency, use `PutFunctionConcurrency`. To grant invoke
  permissions to an account or Amazon Web Services service, use `AddPermission`.
  """
  def update_function_configuration(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the configuration for asynchronous invocation for a function, version,
  or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  def update_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
  Updates the configuration for a Lambda function URL.
  """
  def update_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
