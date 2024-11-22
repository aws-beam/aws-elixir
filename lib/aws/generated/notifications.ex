# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Notifications do
  @moduledoc """
  The *AWS User Notifications API Reference* provides descriptions, API request
  parameters, and the JSON response for each of the User Notification API actions.

  User Notification control APIs are currently available in US East (Virginia) -
  `us-east-1`.

  [GetNotificationEvent](https://docs.aws.amazon.com/notifications/latest/APIReference/API_GetNotificationEvent.html)  and
  [ListNotificationEvents](https://docs.aws.amazon.com/notifications/latest/APIReference/API_ListNotificationEvents.html)
  APIs are currently available in
  [commercial partition Regions](https://docs.aws.amazon.com/notifications/latest/userguide/supported-regions.html)
  and only return notifications stored in the same Region in which they're called.

  The User Notifications console can only be used in US East (Virginia). Your data
  however, is stored in each Region chosen as a
  [notification hub](https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html>)
  in addition to US East (Virginia).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_event_metadata_summary() :: %{
        "eventOriginRegion" => [String.t()],
        "eventType" => [String.t()],
        "source" => [String.t()]
      }

  """
  @type source_event_metadata_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_part_value() :: %{
        "displayText" => [String.t()],
        "textByLocale" => map(),
        "type" => String.t(),
        "url" => String.t()
      }

  """
  @type text_part_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_rule_response() :: %{
        "arn" => String.t(),
        "notificationConfigurationArn" => String.t(),
        "statusSummaryByRegion" => map()
      }

  """
  @type create_event_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_configuration_structure() :: %{
        "aggregationDuration" => String.t(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }

  """
  @type notification_configuration_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_notification_event_request() :: %{
        optional("locale") => String.t()
      }

  """
  @type get_notification_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_hub_status_summary() :: %{
        "reason" => String.t(),
        "status" => String.t()
      }

  """
  @type notification_hub_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_event_rule_request() :: %{
        optional("eventPattern") => String.t(),
        optional("regions") => list(String.t()())
      }

  """
  @type update_event_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_channel_response() :: %{}

  """
  @type disassociate_channel_response() :: %{}

  @typedoc """

  ## Example:

      media_element() :: %{
        "caption" => String.t(),
        "mediaId" => String.t(),
        "type" => String.t(),
        "url" => String.t()
      }

  """
  @type media_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_components_summary() :: %{
        "headline" => [String.t()]
      }

  """
  @type message_components_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_rule_response() :: %{}

  """
  @type delete_event_rule_response() :: %{}

  @typedoc """

  ## Example:

      deregister_notification_hub_response() :: %{
        "notificationHubRegion" => String.t(),
        "statusSummary" => notification_hub_status_summary()
      }

  """
  @type deregister_notification_hub_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_notification_configuration_request() :: %{}

  """
  @type get_notification_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_notification_hubs_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_notification_hubs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_notification_event_response() :: %{
        "arn" => String.t(),
        "content" => notification_event_schema(),
        "creationTime" => non_neg_integer(),
        "notificationConfigurationArn" => String.t()
      }

  """
  @type get_notification_event_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_rules_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("notificationConfigurationArn") => String.t()
      }

  """
  @type list_event_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_channel_response() :: %{}

  """
  @type associate_channel_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_rule_request() :: %{}

  """
  @type get_event_rule_request() :: %{}

  @typedoc """

  ## Example:

      list_notification_configurations_request() :: %{
        optional("channelArn") => String.t(),
        optional("eventRuleSource") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }

  """
  @type list_notification_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_notification_configuration_response() :: %{
        "aggregationDuration" => String.t(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "description" => String.t(),
        "name" => String.t(),
        "status" => String.t()
      }

  """
  @type get_notification_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_channel_request() :: %{
        required("notificationConfigurationArn") => String.t()
      }

  """
  @type associate_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_event_schema() :: %{
        "aggregateNotificationEventArn" => String.t(),
        "aggregationEventType" => String.t(),
        "endTime" => [non_neg_integer()],
        "eventStatus" => String.t(),
        "id" => String.t(),
        "media" => list(media_element()()),
        "messageComponents" => message_components(),
        "notificationType" => String.t(),
        "schemaVersion" => String.t(),
        "sourceEventDetailUrl" => String.t(),
        "sourceEventDetailUrlDisplayText" => [String.t()],
        "sourceEventMetadata" => source_event_metadata(),
        "startTime" => [non_neg_integer()],
        "textParts" => map()
      }

  """
  @type notification_event_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notification_events_request() :: %{
        optional("aggregateNotificationEventArn") => String.t(),
        optional("endTime") => [non_neg_integer()],
        optional("includeChildEvents") => [boolean()],
        optional("locale") => String.t(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("source") => String.t(),
        optional("startTime") => [non_neg_integer()]
      }

  """
  @type list_notification_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_hub_overview() :: %{
        "creationTime" => non_neg_integer(),
        "lastActivationTime" => non_neg_integer(),
        "notificationHubRegion" => String.t(),
        "statusSummary" => notification_hub_status_summary()
      }

  """
  @type notification_hub_overview() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_event_rule_response() :: %{
        "arn" => String.t(),
        "notificationConfigurationArn" => String.t(),
        "statusSummaryByRegion" => map()
      }

  """
  @type update_event_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_notification_configuration_request() :: %{}

  """
  @type delete_notification_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_notification_configurations_response() :: %{
        "nextToken" => String.t(),
        "notificationConfigurations" => list(notification_configuration_structure()())
      }

  """
  @type list_notification_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_notification_configuration_response() :: %{}

  """
  @type delete_notification_configuration_response() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t(),
        "serviceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_rule_structure() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "eventPattern" => String.t(),
        "eventType" => String.t(),
        "managedRules" => list(String.t()()),
        "notificationConfigurationArn" => String.t(),
        "regions" => list(String.t()()),
        "source" => String.t(),
        "statusSummaryByRegion" => map()
      }

  """
  @type event_rule_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notification_hubs_response() :: %{
        "nextToken" => String.t(),
        "notificationHubs" => list(notification_hub_overview()())
      }

  """
  @type list_notification_hubs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_notification_configuration_request() :: %{
        optional("aggregationDuration") => String.t(),
        optional("tags") => map(),
        required("description") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_notification_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_notification_hub_request() :: %{
        required("notificationHubRegion") => String.t()
      }

  """
  @type register_notification_hub_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_notification_events_response() :: %{
        "nextToken" => String.t(),
        "notificationEvents" => list(notification_event_overview()())
      }

  """
  @type list_notification_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_notification_configuration_request() :: %{
        optional("aggregationDuration") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_notification_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_notification_configuration_response() :: %{
        "arn" => String.t(),
        "status" => String.t()
      }

  """
  @type create_notification_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        "channels" => list(String.t()()),
        "nextToken" => String.t()
      }

  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_rule_status_summary() :: %{
        "reason" => String.t(),
        "status" => String.t()
      }

  """
  @type event_rule_status_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_rules_response() :: %{
        "eventRules" => list(event_rule_structure()()),
        "nextToken" => String.t()
      }

  """
  @type list_event_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_event_summary() :: %{
        "eventStatus" => String.t(),
        "messageComponents" => message_components_summary(),
        "notificationType" => String.t(),
        "schemaVersion" => String.t(),
        "sourceEventMetadata" => source_event_metadata_summary()
      }

  """
  @type notification_event_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_event_overview() :: %{
        "aggregateNotificationEventArn" => String.t(),
        "aggregationEventType" => String.t(),
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "notificationConfigurationArn" => String.t(),
        "notificationEvent" => notification_event_summary(),
        "relatedAccount" => String.t()
      }

  """
  @type notification_event_overview() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_channel_request() :: %{
        required("notificationConfigurationArn") => String.t()
      }

  """
  @type disassociate_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_components() :: %{
        "completeDescription" => String.t(),
        "dimensions" => list(dimension()()),
        "headline" => String.t(),
        "paragraphSummary" => String.t()
      }

  """
  @type message_components() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_notification_configuration_response() :: %{
        "arn" => String.t()
      }

  """
  @type update_notification_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_rule_request() :: %{}

  """
  @type delete_event_rule_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "quotaCode" => String.t(),
        "retryAfterSeconds" => [integer()],
        "serviceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_notification_hub_request() :: %{}

  """
  @type deregister_notification_hub_request() :: %{}

  @typedoc """

  ## Example:

      source_event_metadata() :: %{
        "eventOccurrenceTime" => [non_neg_integer()],
        "eventOriginRegion" => String.t(),
        "eventType" => [String.t()],
        "eventTypeVersion" => [String.t()],
        "relatedAccount" => String.t(),
        "relatedResources" => list(resource()()),
        "source" => String.t(),
        "sourceEventId" => [String.t()]
      }

  """
  @type source_event_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dimension() :: %{
        "name" => String.t(),
        "value" => String.t()
      }

  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_rule_response() :: %{
        "arn" => String.t(),
        "creationTime" => non_neg_integer(),
        "eventPattern" => String.t(),
        "eventType" => String.t(),
        "managedRules" => list(String.t()()),
        "notificationConfigurationArn" => String.t(),
        "regions" => list(String.t()()),
        "source" => String.t(),
        "statusSummaryByRegion" => map()
      }

  """
  @type get_event_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_notification_hub_response() :: %{
        "creationTime" => non_neg_integer(),
        "lastActivationTime" => non_neg_integer(),
        "notificationHubRegion" => String.t(),
        "statusSummary" => notification_hub_status_summary()
      }

  """
  @type register_notification_hub_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        required("notificationConfigurationArn") => String.t()
      }

  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_rule_request() :: %{
        optional("eventPattern") => String.t(),
        required("eventType") => String.t(),
        required("notificationConfigurationArn") => String.t(),
        required("regions") => list(String.t()()),
        required("source") => String.t()
      }

  """
  @type create_event_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "arn" => String.t(),
        "detailUrl" => String.t(),
        "id" => [String.t()],
        "tags" => list([String.t()]())
      }

  """
  @type resource() :: %{String.t() => any()}

  @type associate_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_event_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_event_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_notification_hub_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_notification_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_channels_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_event_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_notification_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_notification_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_notification_hubs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type register_notification_hub_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_event_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "notifications",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Notifications",
      signature_version: "v4",
      signing_name: "notifications",
      target_prefix: nil
    }
  end

  @doc """
  Associates a delivery
  [Channel](https://docs.aws.amazon.com/notifications/latest/userguide/managing-delivery-channels.html)
  with a particular NotificationConfiguration.

  Supported Channels include AWS Chatbot,
  the AWS Console Mobile Application, and emails (notifications-contacts).
  """
  @spec associate_channel(map(), String.t(), associate_channel_request(), list()) ::
          {:ok, associate_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_channel_errors()}
  def associate_channel(%Client{} = client, arn, input, options \\ []) do
    url_path = "/channels/associate/#{AWS.Util.encode_uri(arn)}"
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
      201
    )
  end

  @doc """
  Creates an
  [EventRule](https://docs.aws.amazon.com/notifications/latest/userguide/glossary.html)
  that is associated with a specified Notification Configuration.
  """
  @spec create_event_rule(map(), create_event_rule_request(), list()) ::
          {:ok, create_event_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_rule_errors()}
  def create_event_rule(%Client{} = client, input, options \\ []) do
    url_path = "/event-rules"
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
      201
    )
  end

  @doc """
  Creates a new NotificationConfiguration.
  """
  @spec create_notification_configuration(
          map(),
          create_notification_configuration_request(),
          list()
        ) ::
          {:ok, create_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_notification_configuration_errors()}
  def create_notification_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/notification-configurations"
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
      201
    )
  end

  @doc """
  Deletes an EventRule.
  """
  @spec delete_event_rule(map(), String.t(), delete_event_rule_request(), list()) ::
          {:ok, delete_event_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_rule_errors()}
  def delete_event_rule(%Client{} = client, arn, input, options \\ []) do
    url_path = "/event-rules/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a NotificationConfiguration.
  """
  @spec delete_notification_configuration(
          map(),
          String.t(),
          delete_notification_configuration_request(),
          list()
        ) ::
          {:ok, delete_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_notification_configuration_errors()}
  def delete_notification_configuration(%Client{} = client, arn, input, options \\ []) do
    url_path = "/notification-configurations/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deregisters a NotificationHub in the specified Region.

  You can't deregister the last NotificationHub in the account. NotificationEvents
  stored in the deregistered NotificationHub are no longer be visible. Recreating
  a new NotificationHub in the same Region restores access to those
  NotificationEvents.
  """
  @spec deregister_notification_hub(
          map(),
          String.t(),
          deregister_notification_hub_request(),
          list()
        ) ::
          {:ok, deregister_notification_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_notification_hub_errors()}
  def deregister_notification_hub(
        %Client{} = client,
        notification_hub_region,
        input,
        options \\ []
      ) do
    url_path = "/notification-hubs/#{AWS.Util.encode_uri(notification_hub_region)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a Channel from a specified NotificationConfiguration.

  Supported Channels include AWS Chatbot, the AWS Console Mobile Application, and
  emails (notifications-contacts).
  """
  @spec disassociate_channel(map(), String.t(), disassociate_channel_request(), list()) ::
          {:ok, disassociate_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_channel_errors()}
  def disassociate_channel(%Client{} = client, arn, input, options \\ []) do
    url_path = "/channels/disassociate/#{AWS.Util.encode_uri(arn)}"
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
  Returns a specified EventRule.
  """
  @spec get_event_rule(map(), String.t(), list()) ::
          {:ok, get_event_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_event_rule_errors()}
  def get_event_rule(%Client{} = client, arn, options \\ []) do
    url_path = "/event-rules/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a specified NotificationConfiguration.
  """
  @spec get_notification_configuration(map(), String.t(), list()) ::
          {:ok, get_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_notification_configuration_errors()}
  def get_notification_configuration(%Client{} = client, arn, options \\ []) do
    url_path = "/notification-configurations/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a specified NotificationEvent.

  User Notifications stores notifications in the individual Regions you register
  as notification hubs and the Region of the source event rule.
  GetNotificationEvent only returns notifications stored in the same Region in
  which the action is called.
  User Notifications doesn't backfill notifications to new Regions selected as
  notification hubs. For this reason, we recommend that you make calls in your
  oldest registered notification hub.
  For more information, see [Notification hubs](https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html)
  in the *AWS User Notifications User Guide*.
  """
  @spec get_notification_event(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_notification_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_notification_event_errors()}
  def get_notification_event(%Client{} = client, arn, locale \\ nil, options \\ []) do
    url_path = "/notification-events/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(locale) do
        [{"locale", locale} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Channels for a NotificationConfiguration.
  """
  @spec list_channels(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
  def list_channels(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        notification_configuration_arn,
        options \\ []
      ) do
    url_path = "/channels"
    headers = []
    query_params = []

    query_params =
      if !is_nil(notification_configuration_arn) do
        [{"notificationConfigurationArn", notification_configuration_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of EventRules according to specified filters, in reverse
  chronological order (newest first).
  """
  @spec list_event_rules(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_event_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_event_rules_errors()}
  def list_event_rules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        notification_configuration_arn,
        options \\ []
      ) do
    url_path = "/event-rules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(notification_configuration_arn) do
        [{"notificationConfigurationArn", notification_configuration_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of abbreviated NotificationConfigurations according to specified
  filters, in reverse chronological order (newest first).
  """
  @spec list_notification_configurations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_notification_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notification_configurations_errors()}
  def list_notification_configurations(
        %Client{} = client,
        channel_arn \\ nil,
        event_rule_source \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/notification-configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(event_rule_source) do
        [{"eventRuleSource", event_rule_source} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(channel_arn) do
        [{"channelArn", channel_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of NotificationEvents according to specified filters, in reverse
  chronological order (newest first).

  User Notifications stores notifications in the individual Regions you register
  as notification hubs and the Region of the source event rule.
  ListNotificationEvents only returns notifications stored in the same Region in
  which the action is called.
  User Notifications doesn't backfill notifications to new Regions selected as
  notification hubs. For this reason, we recommend that you make calls in your
  oldest registered notification hub.
  For more information, see [Notification hubs](https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html)
  in the *AWS User Notifications User Guide*.
  """
  @spec list_notification_events(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_notification_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notification_events_errors()}
  def list_notification_events(
        %Client{} = client,
        aggregate_notification_event_arn \\ nil,
        end_time \\ nil,
        include_child_events \\ nil,
        locale \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        source \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path = "/notification-events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(source) do
        [{"source", source} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(locale) do
        [{"locale", locale} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_child_events) do
        [{"includeChildEvents", include_child_events} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aggregate_notification_event_arn) do
        [{"aggregateNotificationEventArn", aggregate_notification_event_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of NotificationHubs.
  """
  @spec list_notification_hubs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_notification_hubs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_notification_hubs_errors()}
  def list_notification_hubs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/notification-hubs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for a specified Amazon Resource Name (ARN).

  For more information, see [Tagging your AWS resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
  in the *Tagging AWS Resources User Guide*.

  This is only supported for NotificationConfigurations.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Registers a NotificationHub in the specified Region.

  There is a maximum of one NotificationHub per Region. You can have a maximum of
  3 NotificationHubs at a time.
  """
  @spec register_notification_hub(map(), register_notification_hub_request(), list()) ::
          {:ok, register_notification_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_notification_hub_errors()}
  def register_notification_hub(%Client{} = client, input, options \\ []) do
    url_path = "/notification-hubs"
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
      201
    )
  end

  @doc """
  Tags the resource with a tag key and value.

  For more information, see [Tagging your AWS resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
  in the *Tagging AWS Resources User Guide*.

  This is only supported for NotificationConfigurations.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
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
  Untags a resource with a specified Amazon Resource Name (ARN).

  For more information, see [Tagging your AWS resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
  in the *Tagging AWS Resources User Guide*.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing EventRule.
  """
  @spec update_event_rule(map(), String.t(), update_event_rule_request(), list()) ::
          {:ok, update_event_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_rule_errors()}
  def update_event_rule(%Client{} = client, arn, input, options \\ []) do
    url_path = "/event-rules/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a NotificationConfiguration.
  """
  @spec update_notification_configuration(
          map(),
          String.t(),
          update_notification_configuration_request(),
          list()
        ) ::
          {:ok, update_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_notification_configuration_errors()}
  def update_notification_configuration(%Client{} = client, arn, input, options \\ []) do
    url_path = "/notification-configurations/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
