# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Codestarnotifications do
  @moduledoc """
  This AWS CodeStar Notifications API Reference provides descriptions and usage
  examples of the
  operations and data types for the AWS CodeStar Notifications API.

  You can use the AWS CodeStar Notifications API
  to work with the following objects:

  Notification rules, by calling the following:

    *

  `CreateNotificationRule`, which creates a notification rule for a
  resource in your account.

    *

  `DeleteNotificationRule`, which deletes a notification rule.

    *

  `DescribeNotificationRule`, which provides information about a notification
  rule.

    *

  `ListNotificationRules`, which lists the notification rules associated with
  your account.

    *

  `UpdateNotificationRule`, which changes the name, events, or targets associated
  with a
  notification rule.

    *

  `Subscribe`, which subscribes a target to a notification rule.

    *

  `Unsubscribe`, which removes a target from a notification rule.

  Targets, by calling the following:

    *

  `DeleteTarget`, which removes a notification rule target from a
  notification rule.

    *

  `ListTargets`, which lists the targets associated with a
  notification rule.

  Events, by calling the following:

    *

  `ListEventTypes`, which lists the event types you can include in
  a notification rule.

  Tags, by calling the following:

    *

  `ListTagsForResource`, which lists the tags already associated
  with a notification rule in your account.

    *

  `TagResource`, which associates a tag you provide with a
  notification rule in your account.

    *

  `UntagResource`, which removes a tag from a notification rule in
  your account.

  For information about how to use AWS CodeStar Notifications, see the [Amazon Web Services Developer Tools Console User
  Guide](https://docs.aws.amazon.com/dtconsole/latest/userguide/what-is-dtconsole.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_notification_rule_result() :: %{
        "Arn" => String.t()
      }

  """
  @type create_notification_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Arn") => String.t(),
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_result() :: %{}

  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:

      list_notification_rules_request() :: %{
        optional("Filters") => list(list_notification_rules_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_notification_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsubscribe_request() :: %{
        required("Arn") => String.t(),
        required("TargetAddress") => String.t()
      }

  """
  @type unsubscribe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_target_result() :: %{}

  """
  @type delete_target_result() :: %{}

  @typedoc """

  ## Example:

      list_event_types_filter() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }

  """
  @type list_event_types_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_exception() :: %{
        "Message" => String.t()
      }

  """
  @type configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_targets_result() :: %{
        "NextToken" => String.t(),
        "Targets" => list(target_summary()())
      }

  """
  @type list_targets_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_notification_rule_request() :: %{
        required("Arn") => String.t()
      }

  """
  @type delete_notification_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_notification_rule_result() :: %{}

  """
  @type update_notification_rule_result() :: %{}

  @typedoc """

  ## Example:

      target() :: %{
        "TargetAddress" => String.t(),
        "TargetType" => String.t()
      }

  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_type_summary() :: %{
        "EventTypeId" => String.t(),
        "EventTypeName" => String.t(),
        "ResourceType" => String.t(),
        "ServiceName" => String.t()
      }

  """
  @type event_type_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_notification_rule_result() :: %{
        "Arn" => String.t()
      }

  """
  @type delete_notification_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      target_summary() :: %{
        "TargetAddress" => String.t(),
        "TargetStatus" => list(any()),
        "TargetType" => String.t()
      }

  """
  @type target_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_target_request() :: %{
        optional("ForceUnsubscribeAll") => boolean(),
        required("TargetAddress") => String.t()
      }

  """
  @type delete_target_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notification_rules_filter() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }

  """
  @type list_notification_rules_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_types_result() :: %{
        "EventTypes" => list(event_type_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_event_types_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_notification_rule_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Status") => list(any()),
        optional("Tags") => map(),
        required("DetailType") => list(any()),
        required("EventTypeIds") => list(String.t()()),
        required("Name") => String.t(),
        required("Resource") => String.t(),
        required("Targets") => list(target()())
      }

  """
  @type create_notification_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribe_result() :: %{
        "Arn" => String.t()
      }

  """
  @type subscribe_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_notification_rule_request() :: %{
        optional("DetailType") => list(any()),
        optional("EventTypeIds") => list(String.t()()),
        optional("Name") => String.t(),
        optional("Status") => list(any()),
        optional("Targets") => list(target()()),
        required("Arn") => String.t()
      }

  """
  @type update_notification_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_result() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_targets_request() :: %{
        optional("Filters") => list(list_targets_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_targets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }

  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsubscribe_result() :: %{
        "Arn" => String.t()
      }

  """
  @type unsubscribe_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("Arn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscribe_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("Arn") => String.t(),
        required("Target") => target()
      }

  """
  @type subscribe_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_result() :: %{
        "Tags" => map()
      }

  """
  @type tag_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notification_rules_result() :: %{
        "NextToken" => String.t(),
        "NotificationRules" => list(notification_rule_summary()())
      }

  """
  @type list_notification_rules_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_notification_rule_request() :: %{
        required("Arn") => String.t()
      }

  """
  @type describe_notification_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_notification_rule_result() :: %{
        "Arn" => String.t(),
        "CreatedBy" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "DetailType" => list(any()),
        "EventTypes" => list(event_type_summary()()),
        "LastModifiedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "Resource" => String.t(),
        "Status" => list(any()),
        "Tags" => map(),
        "Targets" => list(target_summary()())
      }

  """
  @type describe_notification_rule_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_rule_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type notification_rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_types_request() :: %{
        optional("Filters") => list(list_event_types_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_event_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_targets_filter() :: %{
        "Name" => list(any()),
        "Value" => String.t()
      }

  """
  @type list_targets_filter() :: %{String.t() => any()}

  @type create_notification_rule_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | configuration_exception()

  @type delete_notification_rule_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()

  @type delete_target_errors() :: validation_exception()

  @type describe_notification_rule_errors() ::
          validation_exception() | resource_not_found_exception()

  @type list_event_types_errors() :: validation_exception() | invalid_next_token_exception()

  @type list_notification_rules_errors() ::
          validation_exception() | invalid_next_token_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type list_targets_errors() :: validation_exception() | invalid_next_token_exception()

  @type subscribe_errors() ::
          validation_exception() | resource_not_found_exception() | configuration_exception()

  @type tag_resource_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | resource_not_found_exception()

  @type unsubscribe_errors() :: validation_exception()

  @type untag_resource_errors() ::
          limit_exceeded_exception()
          | validation_exception()
          | concurrent_modification_exception()
          | resource_not_found_exception()

  @type update_notification_rule_errors() ::
          validation_exception() | resource_not_found_exception() | configuration_exception()

  def metadata do
    %{
      api_version: "2019-10-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codestar-notifications",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "codestar notifications",
      signature_version: "v4",
      signing_name: "codestar-notifications",
      target_prefix: nil
    }
  end

  @doc """
  Creates a notification rule for a resource.

  The rule specifies the events you want
  notifications about and the targets (such as Chatbot topics or Chatbot clients
  configured for Slack) where you want to receive
  them.
  """
  @spec create_notification_rule(map(), create_notification_rule_request(), list()) ::
          {:ok, create_notification_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_notification_rule_errors()}
  def create_notification_rule(%Client{} = client, input, options \\ []) do
    url_path = "/createNotificationRule"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a notification rule for a resource.
  """
  @spec delete_notification_rule(map(), delete_notification_rule_request(), list()) ::
          {:ok, delete_notification_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_notification_rule_errors()}
  def delete_notification_rule(%Client{} = client, input, options \\ []) do
    url_path = "/deleteNotificationRule"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a specified target for notifications.
  """
  @spec delete_target(map(), delete_target_request(), list()) ::
          {:ok, delete_target_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_target_errors()}
  def delete_target(%Client{} = client, input, options \\ []) do
    url_path = "/deleteTarget"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about a specified notification rule.
  """
  @spec describe_notification_rule(map(), describe_notification_rule_request(), list()) ::
          {:ok, describe_notification_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_notification_rule_errors()}
  def describe_notification_rule(%Client{} = client, input, options \\ []) do
    url_path = "/describeNotificationRule"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns information about the event types available for configuring
  notifications.
  """
  @spec list_event_types(map(), list_event_types_request(), list()) ::
          {:ok, list_event_types_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_types_errors()}
  def list_event_types(%Client{} = client, input, options \\ []) do
    url_path = "/listEventTypes"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of the notification rules for an Amazon Web Services account.
  """
  @spec list_notification_rules(map(), list_notification_rules_request(), list()) ::
          {:ok, list_notification_rules_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_notification_rules_errors()}
  def list_notification_rules(%Client{} = client, input, options \\ []) do
    url_path = "/listNotificationRules"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of the tags associated with a notification rule.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/listTagsForResource"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Returns a list of the notification rule targets for an Amazon Web Services
  account.
  """
  @spec list_targets(map(), list_targets_request(), list()) ::
          {:ok, list_targets_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_targets_errors()}
  def list_targets(%Client{} = client, input, options \\ []) do
    url_path = "/listTargets"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an association between a notification rule and an Chatbot topic or
  Chatbot client so that the
  associated target can receive notifications when the events described in the
  rule are
  triggered.
  """
  @spec subscribe(map(), subscribe_request(), list()) ::
          {:ok, subscribe_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, subscribe_errors()}
  def subscribe(%Client{} = client, input, options \\ []) do
    url_path = "/subscribe"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a set of provided tags with a notification rule.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tagResource"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes an association between a notification rule and an Chatbot topic so that
  subscribers to that topic stop receiving notifications when the events described
  in the
  rule are triggered.
  """
  @spec unsubscribe(map(), unsubscribe_request(), list()) ::
          {:ok, unsubscribe_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unsubscribe_errors()}
  def unsubscribe(%Client{} = client, input, options \\ []) do
    url_path = "/unsubscribe"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes the association between one or more provided tags and a notification
  rule.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/untagResource/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a notification rule for a resource.

  You can change the events that trigger the
  notification rule, the status of the rule, and the targets that receive the
  notifications.

  To add or remove tags for a notification rule, you must use `TagResource` and
  `UntagResource`.
  """
  @spec update_notification_rule(map(), update_notification_rule_request(), list()) ::
          {:ok, update_notification_rule_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_notification_rule_errors()}
  def update_notification_rule(%Client{} = client, input, options \\ []) do
    url_path = "/updateNotificationRule"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
