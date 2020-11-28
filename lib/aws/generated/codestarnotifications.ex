# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Codestarnotifications do
  @moduledoc """
  This AWS CodeStar Notifications API Reference provides descriptions and usage
  examples of the operations and data types for the AWS CodeStar Notifications
  API.

  You can use the AWS CodeStar Notifications API to work with the following
  objects:

  Notification rules, by calling the following:

    * `CreateNotificationRule`, which creates a notification rule for a
  resource in your account.

    * `DeleteNotificationRule`, which deletes a notification rule.

    * `DescribeNotificationRule`, which provides information about a
  notification rule.

    * `ListNotificationRules`, which lists the notification rules
  associated with your account.

    * `UpdateNotificationRule`, which changes the name, events, or
  targets associated with a notification rule.

    * `Subscribe`, which subscribes a target to a notification rule.

    * `Unsubscribe`, which removes a target from a notification rule.

  Targets, by calling the following:

    * `DeleteTarget`, which removes a notification rule target (SNS
  topic) from a notification rule.

    * `ListTargets`, which lists the targets associated with a
  notification rule.

  Events, by calling the following:

    * `ListEventTypes`, which lists the event types you can include in a
  notification rule.

  Tags, by calling the following:

    * `ListTagsForResource`, which lists the tags already associated
  with a notification rule in your account.

    * `TagResource`, which associates a tag you provide with a
  notification rule in your account.

    * `UntagResource`, which removes a tag from a notification rule in
  your account.

  For information about how to use AWS CodeStar Notifications, see link in the
  CodeStarNotifications User Guide.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-10-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codestar-notifications",
      global?: false,
      protocol: "rest-json",
      service_id: "codestar notifications",
      signature_version: "v4",
      signing_name: "codestar-notifications",
      target_prefix: nil
    }
  end

  @doc """
  Creates a notification rule for a resource.

  The rule specifies the events you want notifications about and the targets (such
  as SNS topics) where you want to receive them.
  """
  def create_notification_rule(%Client{} = client, input, options \\ []) do
    url_path = "/createNotificationRule"
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
  Deletes a notification rule for a resource.
  """
  def delete_notification_rule(%Client{} = client, input, options \\ []) do
    url_path = "/deleteNotificationRule"
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
  Deletes a specified target for notifications.
  """
  def delete_target(%Client{} = client, input, options \\ []) do
    url_path = "/deleteTarget"
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
  Returns information about a specified notification rule.
  """
  def describe_notification_rule(%Client{} = client, input, options \\ []) do
    url_path = "/describeNotificationRule"
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
  Returns information about the event types available for configuring
  notifications.
  """
  def list_event_types(%Client{} = client, input, options \\ []) do
    url_path = "/listEventTypes"
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
  Returns a list of the notification rules for an AWS account.
  """
  def list_notification_rules(%Client{} = client, input, options \\ []) do
    url_path = "/listNotificationRules"
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
  Returns a list of the tags associated with a notification rule.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/listTagsForResource"
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
  Returns a list of the notification rule targets for an AWS account.
  """
  def list_targets(%Client{} = client, input, options \\ []) do
    url_path = "/listTargets"
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
  Creates an association between a notification rule and an SNS topic so that the
  associated target can receive notifications when the events described in the
  rule are triggered.
  """
  def subscribe(%Client{} = client, input, options \\ []) do
    url_path = "/subscribe"
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
  Associates a set of provided tags with a notification rule.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tagResource"
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
  Removes an association between a notification rule and an Amazon SNS topic so
  that subscribers to that topic stop receiving notifications when the events
  described in the rule are triggered.
  """
  def unsubscribe(%Client{} = client, input, options \\ []) do
    url_path = "/unsubscribe"
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
  Removes the association between one or more provided tags and a notification
  rule.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untagResource"
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
  Updates a notification rule for a resource.

  You can change the events that trigger the notification rule, the status of the
  rule, and the targets that receive the notifications.

  To add or remove tags for a notification rule, you must use `TagResource` and
  `UntagResource`.
  """
  def update_notification_rule(%Client{} = client, input, options \\ []) do
    url_path = "/updateNotificationRule"
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