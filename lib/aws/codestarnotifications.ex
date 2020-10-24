# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Codestarnotifications do
  @moduledoc """
  This AWS CodeStar Notifications API Reference provides descriptions and
  usage examples of the operations and data types for the AWS CodeStar
  Notifications API. You can use the AWS CodeStar Notifications API to work
  with the following objects:

  Notification rules, by calling the following:

  <ul> <li> `CreateNotificationRule`, which creates a notification rule for a
  resource in your account.

  </li> <li> `DeleteNotificationRule`, which deletes a notification rule.

  </li> <li> `DescribeNotificationRule`, which provides information about a
  notification rule.

  </li> <li> `ListNotificationRules`, which lists the notification rules
  associated with your account.

  </li> <li> `UpdateNotificationRule`, which changes the name, events, or
  targets associated with a notification rule.

  </li> <li> `Subscribe`, which subscribes a target to a notification rule.

  </li> <li> `Unsubscribe`, which removes a target from a notification rule.

  </li> </ul> Targets, by calling the following:

  <ul> <li> `DeleteTarget`, which removes a notification rule target (SNS
  topic) from a notification rule.

  </li> <li> `ListTargets`, which lists the targets associated with a
  notification rule.

  </li> </ul> Events, by calling the following:

  <ul> <li> `ListEventTypes`, which lists the event types you can include in
  a notification rule.

  </li> </ul> Tags, by calling the following:

  <ul> <li> `ListTagsForResource`, which lists the tags already associated
  with a notification rule in your account.

  </li> <li> `TagResource`, which associates a tag you provide with a
  notification rule in your account.

  </li> <li> `UntagResource`, which removes a tag from a notification rule in
  your account.

  </li> </ul> For information about how to use AWS CodeStar Notifications,
  see link in the CodeStarNotifications User Guide.
  """

  @doc """
  Creates a notification rule for a resource. The rule specifies the events
  you want notifications about and the targets (such as SNS topics) where you
  want to receive them.
  """
  def create_notification_rule(client, input, options \\ []) do
    path_ = "/createNotificationRule"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a notification rule for a resource.
  """
  def delete_notification_rule(client, input, options \\ []) do
    path_ = "/deleteNotificationRule"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a specified target for notifications.
  """
  def delete_target(client, input, options \\ []) do
    path_ = "/deleteTarget"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns information about a specified notification rule.
  """
  def describe_notification_rule(client, input, options \\ []) do
    path_ = "/describeNotificationRule"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns information about the event types available for configuring
  notifications.
  """
  def list_event_types(client, input, options \\ []) do
    path_ = "/listEventTypes"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of the notification rules for an AWS account.
  """
  def list_notification_rules(client, input, options \\ []) do
    path_ = "/listNotificationRules"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of the tags associated with a notification rule.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    path_ = "/listTagsForResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of the notification rule targets for an AWS account.
  """
  def list_targets(client, input, options \\ []) do
    path_ = "/listTargets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an association between a notification rule and an SNS topic so that
  the associated target can receive notifications when the events described
  in the rule are triggered.
  """
  def subscribe(client, input, options \\ []) do
    path_ = "/subscribe"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates a set of provided tags with a notification rule.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/tagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes an association between a notification rule and an Amazon SNS topic
  so that subscribers to that topic stop receiving notifications when the
  events described in the rule are triggered.
  """
  def unsubscribe(client, input, options \\ []) do
    path_ = "/unsubscribe"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the association between one or more provided tags and a
  notification rule.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/untagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates a notification rule for a resource. You can change the events that
  trigger the notification rule, the status of the rule, and the targets that
  receive the notifications.

  <note> To add or remove tags for a notification rule, you must use
  `TagResource` and `UntagResource`.

  </note>
  """
  def update_notification_rule(client, input, options \\ []) do
    path_ = "/updateNotificationRule"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "codestar-notifications"}
    host = build_host("codestar-notifications", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
