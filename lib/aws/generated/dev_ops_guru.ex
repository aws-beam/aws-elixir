# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DevOpsGuru do
  @moduledoc """
  Amazon DevOps Guru is a fully managed service that helps you identify anomalous
  behavior in business critical operational applications.

  You specify the AWS resources that you want DevOps Guru to cover, then the
  Amazon CloudWatch metrics and AWS CloudTrail events related to those resources
  are analyzed. When anomalous behavior is detected, DevOps Guru creates an
  *insight* that includes recommendations, related events, and related metrics
  that can help you improve your operational applications. For more information,
  see [What is Amazon DevOps Guru](https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html).

  You can specify 1 or 2 Amazon Simple Notification Service topics so you are
  notified every time a new insight is created. You can also enable DevOps Guru to
  generate an OpsItem in AWS Systems Manager for each insight to help you manage
  and track your work addressing insights.

  To learn about the DevOps Guru workflow, see [How DevOps Guru works](https://docs.aws.amazon.com/devops-guru/latest/userguide/welcome.html#how-it-works).
  To learn about DevOps Guru concepts, see [Concepts in DevOps Guru](https://docs.aws.amazon.com/devops-guru/latest/userguide/concepts.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "devops-guru",
      global?: false,
      protocol: "rest-json",
      service_id: "DevOps Guru",
      signature_version: "v4",
      signing_name: "devops-guru",
      target_prefix: nil
    }
  end

  @doc """
  Adds a notification channel to DevOps Guru.

  A notification channel is used to notify you about important DevOps Guru events,
  such as when an insight is generated.

  If you use an Amazon SNS topic in another account, you must attach a policy to
  it that grants DevOps Guru permission to it notifications. DevOps Guru adds the
  required policy on your behalf to send notifications using Amazon SNS in your
  account. For more information, see [Permissions for cross account Amazon SNS topics](https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html).

  If you use an Amazon SNS topic that is encrypted by an AWS Key Management
  Service customer-managed key (CMK), then you must add permissions to the CMK.
  For more information, see [Permissions for AWS KMS–encrypted Amazon SNS topics](https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html).
  """
  def add_notification_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns the number of open reactive insights, the number of open proactive
  insights, and the number of metrics analyzed in your AWS account.

  Use these numbers to gauge the health of operations in your AWS account.
  """
  def describe_account_health(%Client{} = client, options \\ []) do
    url_path = "/accounts/health"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  For the time range passed in, returns the number of open reactive insight that
  were created, the number of open proactive insights that were created, and the
  Mean Time to Recover (MTTR) for all closed reactive insights.
  """
  def describe_account_overview(%Client{} = client, input, options \\ []) do
    url_path = "/accounts/overview"
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
      200
    )
  end

  @doc """
  Returns details about an anomaly that you specify using its ID.
  """
  def describe_anomaly(%Client{} = client, id, options \\ []) do
    url_path = "/anomalies/#{URI.encode(id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns the most recent feedback submitted in the current AWS account and
  Region.
  """
  def describe_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/feedback"
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
      200
    )
  end

  @doc """
  Returns details about an insight that you specify using its ID.
  """
  def describe_insight(%Client{} = client, id, options \\ []) do
    url_path = "/insights/#{URI.encode(id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns the number of open proactive insights, open reactive insights, and the
  Mean Time to Recover (MTTR) for all closed insights in resource collections in
  your account.

  You specify the type of AWS resources collection. The one type of AWS resource
  collection supported is AWS CloudFormation stacks. DevOps Guru can be configured
  to analyze only the AWS resources that are defined in the stacks.
  """
  def describe_resource_collection_health(
        %Client{} = client,
        resource_collection_type,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/health/resource-collection/#{URI.encode(resource_collection_type)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns the integration status of services that are integrated with DevOps Guru.

  The one service that can be integrated with DevOps Guru is AWS Systems Manager,
  which can be used to create an OpsItem for each generated insight.
  """
  def describe_service_integration(%Client{} = client, options \\ []) do
    url_path = "/service-integrations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns lists AWS resources that are of the specified resource collection type.

  The one type of AWS resource collection supported is AWS CloudFormation stacks.
  DevOps Guru can be configured to analyze only the AWS resources that are defined
  in the stacks.
  """
  def get_resource_collection(
        %Client{} = client,
        resource_collection_type,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resource-collections/#{URI.encode(resource_collection_type)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of the anomalies that belong to an insight that you specify using
  its ID.
  """
  def list_anomalies_for_insight(%Client{} = client, insight_id, input, options \\ []) do
    url_path = "/anomalies/insight/#{URI.encode(insight_id)}"
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
      200
    )
  end

  @doc """
  Returns a list of the events emitted by the resources that are evaluated by
  DevOps Guru.

  You can use filters to specify which events are returned.
  """
  def list_events(%Client{} = client, input, options \\ []) do
    url_path = "/events"
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
      200
    )
  end

  @doc """
  Returns a list of insights in your AWS account.

  You can specify which insights are returned by their start time and status
  (`ONGOING`, `CLOSED`, or `ANY`).
  """
  def list_insights(%Client{} = client, input, options \\ []) do
    url_path = "/insights"
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
      200
    )
  end

  @doc """
  Returns a list of notification channels configured for DevOps Guru.

  Each notification channel is used to notify you when DevOps Guru generates an
  insight that contains information about how to improve your operations. The one
  supported notification channel is Amazon Simple Notification Service (Amazon
  SNS).
  """
  def list_notification_channels(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
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
      200
    )
  end

  @doc """
  Returns a list of a specified insight's recommendations.

  Each recommendation includes a list of related metrics and a list of related
  events.
  """
  def list_recommendations(%Client{} = client, input, options \\ []) do
    url_path = "/recommendations"
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
      200
    )
  end

  @doc """
  Collects customer feedback about the specified insight.
  """
  def put_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/feedback"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a notification channel from DevOps Guru.

  A notification channel is used to notify you when DevOps Guru generates an
  insight that contains information about how to improve your operations.
  """
  def remove_notification_channel(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{URI.encode(id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of insights in your AWS account.

  You can specify which insights are returned by their start time, one or more
  statuses (`ONGOING`, `CLOSED`, and `CLOSED`), one or more severities (`LOW`,
  `MEDIUM`, and `HIGH`), and type (`REACTIVE` or `PROACTIVE`).

  Use the `Filters` parameter to specify status and severity search parameters.
  Use the `Type` parameter to specify `REACTIVE` or `PROACTIVE` in your search.
  """
  def search_insights(%Client{} = client, input, options \\ []) do
    url_path = "/insights/search"
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
      200
    )
  end

  @doc """
  Updates the collection of resources that DevOps Guru analyzes.

  The one type of AWS resource collection supported is AWS CloudFormation stacks.
  DevOps Guru can be configured to analyze only the AWS resources that are defined
  in the stacks. This method also creates the IAM role required for you to use
  DevOps Guru.
  """
  def update_resource_collection(%Client{} = client, input, options \\ []) do
    url_path = "/resource-collections"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables or disables integration with a service that can be integrated with
  DevOps Guru.

  The one service that can be integrated with DevOps Guru is AWS Systems Manager,
  which can be used to create an OpsItem for each generated insight.
  """
  def update_service_integration(%Client{} = client, input, options \\ []) do
    url_path = "/service-integrations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
