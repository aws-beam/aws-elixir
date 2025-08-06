# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Notifications do
  @moduledoc """
  The *Amazon Web Services User Notifications API Reference* provides
  descriptions, API request parameters, and the JSON response for each of the User
  Notification API actions.

  User Notification control plane APIs are currently available in US East
  (Virginia) - `us-east-1`.

  [GetNotificationEvent](https://docs.aws.amazon.com/notifications/latest/APIReference/API_GetNotificationEvent.html)  and
  [ListNotificationEvents](https://docs.aws.amazon.com/notifications/latest/APIReference/API_ListNotificationEvents.html)
  APIs are currently available in
  [commercial partition Regions](https://docs.aws.amazon.com/notifications/latest/userguide/supported-regions.html)
  and only return notifications stored in the same Region in which they're called.

  The User Notifications console can only be used in US East (Virginia). Your data
  however, is stored in each Region chosen as a
  [notification hub](https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html)
  in addition to US East (Virginia).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_managed_notification_channel_associations_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("managedNotificationConfigurationArn") => String.t() | atom()
      }

  """
  @type list_managed_notification_channel_associations_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_event_metadata_summary() :: %{
        "eventOriginRegion" => [String.t() | atom()],
        "eventType" => [String.t() | atom()],
        "source" => [String.t() | atom()]
      }

  """
  @type source_event_metadata_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_notification_configurations_request() :: %{
        optional("channelIdentifier") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_managed_notification_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      text_part_value() :: %{
        "displayText" => [String.t() | atom()],
        "textByLocale" => map(),
        "type" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type text_part_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_rule_response() :: %{
        "arn" => String.t() | atom(),
        "notificationConfigurationArn" => String.t() | atom(),
        "statusSummaryByRegion" => map()
      }

  """
  @type create_event_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_configuration_structure() :: %{
        "aggregationDuration" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type notification_configuration_structure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_managed_notification_additional_channel_response() :: %{}

  """
  @type associate_managed_notification_additional_channel_response() :: %{}

  @typedoc """

  ## Example:

      notifications_access_for_organization() :: %{
        "accessStatus" => list(any())
      }

  """
  @type notifications_access_for_organization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_notification_child_event_request() :: %{
        optional("locale") => String.t() | atom()
      }

  """
  @type get_managed_notification_child_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_notification_event_request() :: %{
        optional("locale") => String.t() | atom()
      }

  """
  @type get_notification_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_managed_notification_additional_channel_response() :: %{}

  """
  @type disassociate_managed_notification_additional_channel_response() :: %{}

  @typedoc """

  ## Example:

      list_managed_notification_child_events_response() :: %{
        "managedNotificationChildEvents" => list(managed_notification_child_event_overview()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_notification_child_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_notification_event_request() :: %{
        optional("locale") => String.t() | atom()
      }

  """
  @type get_managed_notification_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_hub_status_summary() :: %{
        "reason" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type notification_hub_status_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_event_rule_request() :: %{
        optional("eventPattern") => String.t() | atom(),
        optional("regions") => list(String.t() | atom())
      }

  """
  @type update_event_rule_request() :: %{(String.t() | atom()) => any()}

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
        "caption" => String.t() | atom(),
        "mediaId" => String.t() | atom(),
        "type" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type media_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_notification_event_overview() :: %{
        "aggregatedNotificationRegions" => list(String.t() | atom()),
        "aggregationEventType" => String.t() | atom(),
        "aggregationSummary" => aggregation_summary(),
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "managedNotificationConfigurationArn" => String.t() | atom(),
        "notificationEvent" => managed_notification_event_summary(),
        "organizationalUnitId" => String.t() | atom(),
        "relatedAccount" => String.t() | atom()
      }

  """
  @type managed_notification_event_overview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_components_summary() :: %{
        "headline" => [String.t() | atom()]
      }

  """
  @type message_components_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_rule_response() :: %{}

  """
  @type delete_event_rule_response() :: %{}

  @typedoc """

  ## Example:

      deregister_notification_hub_response() :: %{
        "notificationHubRegion" => String.t() | atom(),
        "statusSummary" => notification_hub_status_summary()
      }

  """
  @type deregister_notification_hub_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_notification_configuration_request() :: %{}

  """
  @type get_notification_configuration_request() :: %{}

  @typedoc """

  ## Example:

      associate_managed_notification_account_contact_response() :: %{}

  """
  @type associate_managed_notification_account_contact_response() :: %{}

  @typedoc """

  ## Example:

      get_managed_notification_event_response() :: %{
        "arn" => String.t() | atom(),
        "content" => managed_notification_event(),
        "creationTime" => non_neg_integer(),
        "managedNotificationConfigurationArn" => String.t() | atom()
      }

  """
  @type get_managed_notification_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_notification_event() :: %{
        "aggregationEventType" => String.t() | atom(),
        "aggregationSummary" => aggregation_summary(),
        "endTime" => [non_neg_integer()],
        "eventStatus" => String.t() | atom(),
        "id" => String.t() | atom(),
        "messageComponents" => message_components(),
        "notificationType" => String.t() | atom(),
        "organizationalUnitId" => String.t() | atom(),
        "schemaVersion" => String.t() | atom(),
        "sourceEventDetailUrl" => String.t() | atom(),
        "sourceEventDetailUrlDisplayText" => [String.t() | atom()],
        "startTime" => [non_neg_integer()],
        "textParts" => map()
      }

  """
  @type managed_notification_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_notification_hubs_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_notification_hubs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_notification_event_response() :: %{
        "arn" => String.t() | atom(),
        "content" => notification_event_schema(),
        "creationTime" => non_neg_integer(),
        "notificationConfigurationArn" => String.t() | atom()
      }

  """
  @type get_notification_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aggregation_summary() :: %{
        "additionalSummarizationDimensions" => list(summarization_dimension_overview()),
        "aggregatedAccounts" => summarization_dimension_overview(),
        "aggregatedBy" => list(aggregation_key()),
        "aggregatedOrganizationalUnits" => summarization_dimension_overview(),
        "aggregatedRegions" => summarization_dimension_overview(),
        "eventCount" => [integer()]
      }

  """
  @type aggregation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aggregation_key() :: %{
        "name" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type aggregation_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      summarization_dimension_detail() :: %{
        "name" => [String.t() | atom()],
        "value" => [String.t() | atom()]
      }

  """
  @type summarization_dimension_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_rules_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("notificationConfigurationArn") => String.t() | atom()
      }

  """
  @type list_event_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_channel_response() :: %{}

  """
  @type associate_channel_response() :: %{}

  @typedoc """

  ## Example:

      disable_notifications_access_for_organization_request() :: %{}

  """
  @type disable_notifications_access_for_organization_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_rule_request() :: %{}

  """
  @type get_event_rule_request() :: %{}

  @typedoc """

  ## Example:

      list_managed_notification_configurations_response() :: %{
        "managedNotificationConfigurations" => list(managed_notification_configuration_structure()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_notification_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_notification_configurations_request() :: %{
        optional("channelArn") => String.t() | atom(),
        optional("eventRuleSource") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("status") => String.t() | atom()
      }

  """
  @type list_notification_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_notification_configuration_response() :: %{
        "aggregationDuration" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type get_notification_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_channel_request() :: %{
        required("notificationConfigurationArn") => String.t() | atom()
      }

  """
  @type associate_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_event_schema() :: %{
        "aggregateNotificationEventArn" => String.t() | atom(),
        "aggregationEventType" => String.t() | atom(),
        "aggregationSummary" => aggregation_summary(),
        "endTime" => [non_neg_integer()],
        "eventStatus" => String.t() | atom(),
        "id" => String.t() | atom(),
        "media" => list(media_element()),
        "messageComponents" => message_components(),
        "notificationType" => String.t() | atom(),
        "schemaVersion" => String.t() | atom(),
        "sourceEventDetailUrl" => String.t() | atom(),
        "sourceEventDetailUrlDisplayText" => [String.t() | atom()],
        "sourceEventMetadata" => source_event_metadata(),
        "startTime" => [non_neg_integer()],
        "textParts" => map()
      }

  """
  @type notification_event_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_notification_events_request() :: %{
        optional("aggregateNotificationEventArn") => String.t() | atom(),
        optional("endTime") => [non_neg_integer()],
        optional("includeChildEvents") => [boolean()],
        optional("locale") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("source") => String.t() | atom(),
        optional("startTime") => [non_neg_integer()]
      }

  """
  @type list_notification_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_notification_configuration_request() :: %{}

  """
  @type get_managed_notification_configuration_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_managed_notification_account_contact_response() :: %{}

  """
  @type disassociate_managed_notification_account_contact_response() :: %{}

  @typedoc """

  ## Example:

      managed_notification_child_event() :: %{
        "aggregateManagedNotificationEventArn" => String.t() | atom(),
        "aggregationDetail" => aggregation_detail(),
        "endTime" => [non_neg_integer()],
        "eventStatus" => String.t() | atom(),
        "id" => String.t() | atom(),
        "messageComponents" => message_components(),
        "notificationType" => String.t() | atom(),
        "organizationalUnitId" => String.t() | atom(),
        "schemaVersion" => String.t() | atom(),
        "sourceEventDetailUrl" => String.t() | atom(),
        "sourceEventDetailUrlDisplayText" => [String.t() | atom()],
        "startTime" => [non_neg_integer()],
        "textParts" => map()
      }

  """
  @type managed_notification_child_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_notifications_access_for_organization_request() :: %{}

  """
  @type get_notifications_access_for_organization_request() :: %{}

  @typedoc """

  ## Example:

      aggregation_detail() :: %{
        "summarizationDimensions" => list(summarization_dimension_detail())
      }

  """
  @type aggregation_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_notifications_access_for_organization_response() :: %{}

  """
  @type enable_notifications_access_for_organization_response() :: %{}

  @typedoc """

  ## Example:

      notification_hub_overview() :: %{
        "creationTime" => non_neg_integer(),
        "lastActivationTime" => non_neg_integer(),
        "notificationHubRegion" => String.t() | atom(),
        "statusSummary" => notification_hub_status_summary()
      }

  """
  @type notification_hub_overview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_event_rule_response() :: %{
        "arn" => String.t() | atom(),
        "notificationConfigurationArn" => String.t() | atom(),
        "statusSummaryByRegion" => map()
      }

  """
  @type update_event_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_notification_configuration_request() :: %{}

  """
  @type delete_notification_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_notification_configurations_response() :: %{
        "nextToken" => String.t() | atom(),
        "notificationConfigurations" => list(notification_configuration_structure())
      }

  """
  @type list_notification_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_notifications_access_for_organization_response() :: %{
        "notificationsAccessForOrganization" => notifications_access_for_organization()
      }

  """
  @type get_notifications_access_for_organization_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_notification_configuration_response() :: %{}

  """
  @type delete_notification_configuration_response() :: %{}

  @typedoc """

  ## Example:

      list_managed_notification_events_request() :: %{
        optional("endTime") => [non_neg_integer()],
        optional("locale") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("organizationalUnitId") => String.t() | atom(),
        optional("relatedAccount") => String.t() | atom(),
        optional("source") => String.t() | atom(),
        optional("startTime") => [non_neg_integer()]
      }

  """
  @type list_managed_notification_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_notification_child_events_request() :: %{
        optional("endTime") => [non_neg_integer()],
        optional("locale") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("organizationalUnitId") => String.t() | atom(),
        optional("relatedAccount") => String.t() | atom(),
        optional("startTime") => [non_neg_integer()]
      }

  """
  @type list_managed_notification_child_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "serviceCode" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_notification_configuration_response() :: %{
        "arn" => String.t() | atom(),
        "category" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "subCategory" => [String.t() | atom()]
      }

  """
  @type get_managed_notification_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_managed_notification_additional_channel_request() :: %{
        required("managedNotificationConfigurationArn") => String.t() | atom()
      }

  """
  @type disassociate_managed_notification_additional_channel_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      event_rule_structure() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "eventPattern" => String.t() | atom(),
        "eventType" => String.t() | atom(),
        "managedRules" => list(String.t() | atom()),
        "notificationConfigurationArn" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "source" => String.t() | atom(),
        "statusSummaryByRegion" => map()
      }

  """
  @type event_rule_structure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_notification_hubs_response() :: %{
        "nextToken" => String.t() | atom(),
        "notificationHubs" => list(notification_hub_overview())
      }

  """
  @type list_notification_hubs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_notification_child_event_response() :: %{
        "arn" => String.t() | atom(),
        "content" => managed_notification_child_event(),
        "creationTime" => non_neg_integer(),
        "managedNotificationConfigurationArn" => String.t() | atom()
      }

  """
  @type get_managed_notification_child_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_notification_configuration_request() :: %{
        optional("aggregationDuration") => String.t() | atom(),
        optional("tags") => map(),
        required("description") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_notification_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_notification_hub_request() :: %{
        required("notificationHubRegion") => String.t() | atom()
      }

  """
  @type register_notification_hub_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_notification_events_response() :: %{
        "nextToken" => String.t() | atom(),
        "notificationEvents" => list(notification_event_overview())
      }

  """
  @type list_notification_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_notification_configuration_request() :: %{
        optional("aggregationDuration") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_notification_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_notification_configuration_response() :: %{
        "arn" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type create_notification_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        "channels" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_channels_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_notification_event_summary() :: %{
        "eventStatus" => String.t() | atom(),
        "messageComponents" => message_components_summary(),
        "notificationType" => String.t() | atom(),
        "schemaVersion" => String.t() | atom(),
        "sourceEventMetadata" => managed_source_event_metadata_summary()
      }

  """
  @type managed_notification_event_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_notification_channel_associations_response() :: %{
        "channelAssociations" => list(managed_notification_channel_association_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_notification_channel_associations_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      event_rule_status_summary() :: %{
        "reason" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type event_rule_status_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_rules_response() :: %{
        "eventRules" => list(event_rule_structure()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_event_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_event_summary() :: %{
        "eventStatus" => String.t() | atom(),
        "messageComponents" => message_components_summary(),
        "notificationType" => String.t() | atom(),
        "schemaVersion" => String.t() | atom(),
        "sourceEventMetadata" => source_event_metadata_summary()
      }

  """
  @type notification_event_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_notification_events_response() :: %{
        "managedNotificationEvents" => list(managed_notification_event_overview()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_notification_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_event_overview() :: %{
        "aggregateNotificationEventArn" => String.t() | atom(),
        "aggregationEventType" => String.t() | atom(),
        "aggregationSummary" => aggregation_summary(),
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "notificationConfigurationArn" => String.t() | atom(),
        "notificationEvent" => notification_event_summary(),
        "relatedAccount" => String.t() | atom()
      }

  """
  @type notification_event_overview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_notification_child_event_summary() :: %{
        "aggregationDetail" => aggregation_detail(),
        "eventStatus" => String.t() | atom(),
        "messageComponents" => message_components_summary(),
        "notificationType" => String.t() | atom(),
        "schemaVersion" => String.t() | atom(),
        "sourceEventMetadata" => managed_source_event_metadata_summary()
      }

  """
  @type managed_notification_child_event_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_channel_request() :: %{
        required("notificationConfigurationArn") => String.t() | atom()
      }

  """
  @type disassociate_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_components() :: %{
        "completeDescription" => String.t() | atom(),
        "dimensions" => list(dimension()),
        "headline" => String.t() | atom(),
        "paragraphSummary" => String.t() | atom()
      }

  """
  @type message_components() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      summarization_dimension_overview() :: %{
        "count" => [integer()],
        "name" => [String.t() | atom()],
        "sampleValues" => list([String.t() | atom()]())
      }

  """
  @type summarization_dimension_overview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_notification_configuration_response() :: %{
        "arn" => String.t() | atom()
      }

  """
  @type update_notification_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

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

      enable_notifications_access_for_organization_request() :: %{}

  """
  @type enable_notifications_access_for_organization_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "retryAfterSeconds" => [integer()],
        "serviceCode" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_notification_hub_request() :: %{}

  """
  @type deregister_notification_hub_request() :: %{}

  @typedoc """

  ## Example:

      source_event_metadata() :: %{
        "eventOccurrenceTime" => [non_neg_integer()],
        "eventOriginRegion" => String.t() | atom(),
        "eventType" => [String.t() | atom()],
        "eventTypeVersion" => [String.t() | atom()],
        "relatedAccount" => String.t() | atom(),
        "relatedResources" => list(resource()),
        "source" => String.t() | atom(),
        "sourceEventId" => [String.t() | atom()]
      }

  """
  @type source_event_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_notification_configuration_structure() :: %{
        "arn" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type managed_notification_configuration_structure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_managed_notification_account_contact_request() :: %{
        required("managedNotificationConfigurationArn") => String.t() | atom()
      }

  """
  @type associate_managed_notification_account_contact_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      disable_notifications_access_for_organization_response() :: %{}

  """
  @type disable_notifications_access_for_organization_response() :: %{}

  @typedoc """

  ## Example:

      dimension() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_notification_channel_association_summary() :: %{
        "channelIdentifier" => [String.t() | atom()],
        "channelType" => String.t() | atom(),
        "overrideOption" => String.t() | atom()
      }

  """
  @type managed_notification_channel_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_source_event_metadata_summary() :: %{
        "eventOriginRegion" => String.t() | atom(),
        "eventType" => String.t() | atom(),
        "source" => String.t() | atom()
      }

  """
  @type managed_source_event_metadata_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_rule_response() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "eventPattern" => String.t() | atom(),
        "eventType" => String.t() | atom(),
        "managedRules" => list(String.t() | atom()),
        "notificationConfigurationArn" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "source" => String.t() | atom(),
        "statusSummaryByRegion" => map()
      }

  """
  @type get_event_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_managed_notification_account_contact_request() :: %{
        required("managedNotificationConfigurationArn") => String.t() | atom()
      }

  """
  @type disassociate_managed_notification_account_contact_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      managed_notification_child_event_overview() :: %{
        "aggregateManagedNotificationEventArn" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "childEvent" => managed_notification_child_event_summary(),
        "creationTime" => non_neg_integer(),
        "managedNotificationConfigurationArn" => String.t() | atom(),
        "organizationalUnitId" => String.t() | atom(),
        "relatedAccount" => String.t() | atom()
      }

  """
  @type managed_notification_child_event_overview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_notification_hub_response() :: %{
        "creationTime" => non_neg_integer(),
        "lastActivationTime" => non_neg_integer(),
        "notificationHubRegion" => String.t() | atom(),
        "statusSummary" => notification_hub_status_summary()
      }

  """
  @type register_notification_hub_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("notificationConfigurationArn") => String.t() | atom()
      }

  """
  @type list_channels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_rule_request() :: %{
        optional("eventPattern") => String.t() | atom(),
        required("eventType") => String.t() | atom(),
        required("notificationConfigurationArn") => String.t() | atom(),
        required("regions") => list(String.t() | atom()),
        required("source") => String.t() | atom()
      }

  """
  @type create_event_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_managed_notification_additional_channel_request() :: %{
        required("managedNotificationConfigurationArn") => String.t() | atom()
      }

  """
  @type associate_managed_notification_additional_channel_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      resource() :: %{
        "arn" => String.t() | atom(),
        "detailUrl" => String.t() | atom(),
        "id" => [String.t() | atom()],
        "tags" => list([String.t() | atom()]())
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @type associate_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_managed_notification_account_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_managed_notification_additional_channel_errors() ::
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

  @type disable_notifications_access_for_organization_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_managed_notification_account_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_managed_notification_additional_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type enable_notifications_access_for_organization_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_event_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_managed_notification_child_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_managed_notification_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_managed_notification_event_errors() ::
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

  @type get_notifications_access_for_organization_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

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

  @type list_managed_notification_channel_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_managed_notification_child_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_managed_notification_configurations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_managed_notification_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

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
  with a particular `NotificationConfiguration`.

  Supported Channels include Chatbot,
  the Console Mobile Application, and emails (notifications-contacts).
  """
  @spec associate_channel(map(), String.t() | atom(), associate_channel_request(), list()) ::
          {:ok, associate_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Associates an Account Contact with a particular
  `ManagedNotificationConfiguration`.
  """
  @spec associate_managed_notification_account_contact(
          map(),
          String.t() | atom(),
          associate_managed_notification_account_contact_request(),
          list()
        ) ::
          {:ok, associate_managed_notification_account_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_managed_notification_account_contact_errors()}
  def associate_managed_notification_account_contact(
        %Client{} = client,
        contact_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/contacts/associate-managed-notification/#{AWS.Util.encode_uri(contact_identifier)}"

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
      201
    )
  end

  @doc """
  Associates an additional Channel with a particular
  `ManagedNotificationConfiguration`.

  Supported Channels include Chatbot, the Console Mobile Application, and emails
  (notifications-contacts).
  """
  @spec associate_managed_notification_additional_channel(
          map(),
          String.t() | atom(),
          associate_managed_notification_additional_channel_request(),
          list()
        ) ::
          {:ok, associate_managed_notification_additional_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_managed_notification_additional_channel_errors()}
  def associate_managed_notification_additional_channel(
        %Client{} = client,
        channel_arn,
        input,
        options \\ []
      ) do
    url_path = "/channels/associate-managed-notification/#{AWS.Util.encode_uri(channel_arn)}"
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
      201
    )
  end

  @doc """
  Creates an [
  `EventRule`
  ](https://docs.aws.amazon.com/notifications/latest/userguide/glossary.html) that
  is associated with a specified `NotificationConfiguration`.
  """
  @spec create_event_rule(map(), create_event_rule_request(), list()) ::
          {:ok, create_event_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates a new `NotificationConfiguration`.
  """
  @spec create_notification_configuration(
          map(),
          create_notification_configuration_request(),
          list()
        ) ::
          {:ok, create_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes an `EventRule`.
  """
  @spec delete_event_rule(map(), String.t() | atom(), delete_event_rule_request(), list()) ::
          {:ok, delete_event_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes a `NotificationConfiguration`.
  """
  @spec delete_notification_configuration(
          map(),
          String.t() | atom(),
          delete_notification_configuration_request(),
          list()
        ) ::
          {:ok, delete_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deregisters a `NotificationConfiguration` in the specified Region.

  You can't deregister the last `NotificationHub` in the account.
  `NotificationEvents` stored in the deregistered `NotificationConfiguration` are
  no
  longer be visible. Recreating a new `NotificationConfiguration` in the same
  Region restores access
  to those `NotificationEvents`.
  """
  @spec deregister_notification_hub(
          map(),
          String.t() | atom(),
          deregister_notification_hub_request(),
          list()
        ) ::
          {:ok, deregister_notification_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Disables service trust between User Notifications and Amazon Web Services
  Organizations.
  """
  @spec disable_notifications_access_for_organization(
          map(),
          disable_notifications_access_for_organization_request(),
          list()
        ) ::
          {:ok, disable_notifications_access_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_notifications_access_for_organization_errors()}
  def disable_notifications_access_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/organization/access"
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
  Disassociates a Channel from a specified `NotificationConfiguration`.

  Supported Channels include Chatbot, the Console Mobile Application, and emails
  (notifications-contacts).
  """
  @spec disassociate_channel(map(), String.t() | atom(), disassociate_channel_request(), list()) ::
          {:ok, disassociate_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Disassociates an Account Contact with a particular
  `ManagedNotificationConfiguration`.
  """
  @spec disassociate_managed_notification_account_contact(
          map(),
          String.t() | atom(),
          disassociate_managed_notification_account_contact_request(),
          list()
        ) ::
          {:ok, disassociate_managed_notification_account_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_managed_notification_account_contact_errors()}
  def disassociate_managed_notification_account_contact(
        %Client{} = client,
        contact_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/contacts/disassociate-managed-notification/#{AWS.Util.encode_uri(contact_identifier)}"

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
  Disassociates an additional Channel from a particular
  `ManagedNotificationConfiguration`.

  Supported Channels include Chatbot, the Console Mobile Application, and emails
  (notifications-contacts).
  """
  @spec disassociate_managed_notification_additional_channel(
          map(),
          String.t() | atom(),
          disassociate_managed_notification_additional_channel_request(),
          list()
        ) ::
          {:ok, disassociate_managed_notification_additional_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_managed_notification_additional_channel_errors()}
  def disassociate_managed_notification_additional_channel(
        %Client{} = client,
        channel_arn,
        input,
        options \\ []
      ) do
    url_path = "/channels/disassociate-managed-notification/#{AWS.Util.encode_uri(channel_arn)}"
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
  Enables service trust between User Notifications and Amazon Web Services
  Organizations.
  """
  @spec enable_notifications_access_for_organization(
          map(),
          enable_notifications_access_for_organization_request(),
          list()
        ) ::
          {:ok, enable_notifications_access_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_notifications_access_for_organization_errors()}
  def enable_notifications_access_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/organization/access"
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
  Returns a specified `EventRule`.
  """
  @spec get_event_rule(map(), String.t() | atom(), list()) ::
          {:ok, get_event_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_rule_errors()}
  def get_event_rule(%Client{} = client, arn, options \\ []) do
    url_path = "/event-rules/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the child event of a specific given `ManagedNotificationEvent`.
  """
  @spec get_managed_notification_child_event(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_managed_notification_child_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_notification_child_event_errors()}
  def get_managed_notification_child_event(%Client{} = client, arn, locale \\ nil, options \\ []) do
    url_path = "/managed-notification-child-events/#{AWS.Util.encode_uri(arn)}"
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
  Returns a specified `ManagedNotificationConfiguration`.
  """
  @spec get_managed_notification_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_managed_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_notification_configuration_errors()}
  def get_managed_notification_configuration(%Client{} = client, arn, options \\ []) do
    url_path = "/managed-notification-configurations/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a specified `ManagedNotificationEvent`.
  """
  @spec get_managed_notification_event(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_managed_notification_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_notification_event_errors()}
  def get_managed_notification_event(%Client{} = client, arn, locale \\ nil, options \\ []) do
    url_path = "/managed-notification-events/#{AWS.Util.encode_uri(arn)}"
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
  Returns a specified `NotificationConfiguration`.
  """
  @spec get_notification_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_notification_configuration_errors()}
  def get_notification_configuration(%Client{} = client, arn, options \\ []) do
    url_path = "/notification-configurations/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a specified `NotificationEvent`.

  User Notifications stores notifications in the individual Regions you register
  as notification hubs and the Region of the source event rule.
  `GetNotificationEvent` only returns notifications stored in the same Region in
  which the action is called.
  User Notifications doesn't backfill notifications to new Regions selected as
  notification hubs. For this reason, we recommend that you make calls in your
  oldest registered notification hub.
  For more information, see [Notification hubs](https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html)
  in the *Amazon Web Services User Notifications User Guide*.
  """
  @spec get_notification_event(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_notification_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Returns the AccessStatus of Service Trust Enablement for User Notifications and
  Amazon Web Services Organizations.
  """
  @spec get_notifications_access_for_organization(map(), list()) ::
          {:ok, get_notifications_access_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_notifications_access_for_organization_errors()}
  def get_notifications_access_for_organization(%Client{} = client, options \\ []) do
    url_path = "/organization/access"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Channels for a `NotificationConfiguration`.
  """
  @spec list_channels(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Returns a list of `EventRules` according to specified filters, in reverse
  chronological order (newest first).
  """
  @spec list_event_rules(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_event_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Returns a list of Account contacts and Channels associated with a
  `ManagedNotificationConfiguration`, in paginated format.
  """
  @spec list_managed_notification_channel_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_notification_channel_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_notification_channel_associations_errors()}
  def list_managed_notification_channel_associations(
        %Client{} = client,
        managed_notification_configuration_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channels/list-managed-notification-channel-associations"
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

    query_params =
      if !is_nil(managed_notification_configuration_arn) do
        [
          {"managedNotificationConfigurationArn", managed_notification_configuration_arn}
          | query_params
        ]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of `ManagedNotificationChildEvents` for a specified aggregate
  `ManagedNotificationEvent`, ordered by creation time in reverse chronological
  order (newest first).
  """
  @spec list_managed_notification_child_events(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_notification_child_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_notification_child_events_errors()}
  def list_managed_notification_child_events(
        %Client{} = client,
        aggregate_managed_notification_event_arn,
        end_time \\ nil,
        locale \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        organizational_unit_id \\ nil,
        related_account \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path =
      "/list-managed-notification-child-events/#{AWS.Util.encode_uri(aggregate_managed_notification_event_arn)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(related_account) do
        [{"relatedAccount", related_account} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(organizational_unit_id) do
        [{"organizationalUnitId", organizational_unit_id} | query_params]
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
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Managed Notification Configurations according to specified
  filters, ordered by creation time in reverse chronological order (newest first).
  """
  @spec list_managed_notification_configurations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_notification_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_notification_configurations_errors()}
  def list_managed_notification_configurations(
        %Client{} = client,
        channel_identifier \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/managed-notification-configurations"
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

    query_params =
      if !is_nil(channel_identifier) do
        [{"channelIdentifier", channel_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Managed Notification Events according to specified filters,
  ordered by creation time in reverse chronological order (newest first).
  """
  @spec list_managed_notification_events(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_notification_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_notification_events_errors()}
  def list_managed_notification_events(
        %Client{} = client,
        end_time \\ nil,
        locale \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        organizational_unit_id \\ nil,
        related_account \\ nil,
        source \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path = "/managed-notification-events"
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
      if !is_nil(related_account) do
        [{"relatedAccount", related_account} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(organizational_unit_id) do
        [{"organizationalUnitId", organizational_unit_id} | query_params]
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
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of abbreviated `NotificationConfigurations` according to
  specified filters, in reverse chronological order (newest first).
  """
  @spec list_notification_configurations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_notification_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Returns a list of `NotificationEvents` according to specified filters, in
  reverse chronological order (newest first).

  User Notifications stores notifications in the individual Regions you register
  as notification hubs and the Region of the source event rule.
  ListNotificationEvents only returns notifications stored in the same Region in
  which the action is called.
  User Notifications doesn't backfill notifications to new Regions selected as
  notification hubs. For this reason, we recommend that you make calls in your
  oldest registered notification hub.
  For more information, see [Notification hubs](https://docs.aws.amazon.com/notifications/latest/userguide/notification-hubs.html)
  in the *Amazon Web Services User Notifications User Guide*.
  """
  @spec list_notification_events(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_notification_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Returns a list of `NotificationHubs`.
  """
  @spec list_notification_hubs(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_notification_hubs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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

  For more information, see [Tagging your Amazon Web Services resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
  in the *Tagging Amazon Web Services Resources User Guide*.

  This is only supported for `NotificationConfigurations`.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Registers a `NotificationConfiguration` in the specified Region.

  There is a maximum of one `NotificationConfiguration` per Region. You can have a
  maximum of 3 `NotificationHub` resources at a time.
  """
  @spec register_notification_hub(map(), register_notification_hub_request(), list()) ::
          {:ok, register_notification_hub_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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

  For more information, see [Tagging your Amazon Web Services resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
  in the *Tagging Amazon Web Services Resources User Guide*.

  This is only supported for `NotificationConfigurations`.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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

  For more information, see [Tagging your Amazon Web Services resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html)
  in the *Tagging Amazon Web Services Resources User Guide*.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates an existing `EventRule`.
  """
  @spec update_event_rule(map(), String.t() | atom(), update_event_rule_request(), list()) ::
          {:ok, update_event_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates a `NotificationConfiguration`.
  """
  @spec update_notification_configuration(
          map(),
          String.t() | atom(),
          update_notification_configuration_request(),
          list()
        ) ::
          {:ok, update_notification_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
