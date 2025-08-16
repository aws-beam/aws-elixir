# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Amp do
  @moduledoc """
  Amazon Managed Service for Prometheus is a serverless, Prometheus-compatible
  monitoring service for container metrics that makes it easier to securely
  monitor container environments at scale.

  With Amazon Managed Service for Prometheus, you can use the same open-source
  Prometheus data model and query language that you use today to monitor the
  performance of your containerized workloads, and also enjoy improved
  scalability, availability, and security without having to manage the underlying
  infrastructure.

  For more information about Amazon Managed Service for Prometheus, see the
  [Amazon Managed Service for Prometheus](https://docs.aws.amazon.com/prometheus/latest/userguide/what-is-Amazon-Managed-Service-Prometheus.html)
  User Guide.

  Amazon Managed Service for Prometheus includes two APIs.

    * Use the Amazon Web Services API described in this guide to manage
  Amazon Managed Service for Prometheus resources, such as workspaces, rule
  groups, and alert managers.

    * Use the [Prometheus-compatible API](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference.html#AMP-APIReference-Prometheus-Compatible-Apis)
  to work within your Prometheus workspace.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      query_logging_configuration_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "destinations" => list(logging_destination()),
        "modifiedAt" => [non_neg_integer()],
        "status" => query_logging_configuration_status(),
        "workspace" => String.t() | atom()
      }

  """
  @type query_logging_configuration_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_alert_manager_definition_request() :: %{
        "clientToken" => String.t() | atom(),
        "data" => binary()
      }

  """
  @type put_alert_manager_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workspace_configuration_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("limitsPerLabelSet") => list(limits_per_label_set()),
        optional("retentionPeriodInDays") => [integer()]
      }

  """
  @type update_workspace_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_query_logging_configuration_response() :: %{
        "queryLoggingConfiguration" => query_logging_configuration_metadata()
      }

  """
  @type describe_query_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scraper_request() :: %{
        optional("alias") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("destination") => list(),
        optional("roleConfiguration") => role_configuration(),
        optional("scrapeConfiguration") => list()
      }

  """
  @type update_scraper_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rule_groups_namespaces_response() :: %{
        "nextToken" => String.t() | atom(),
        "ruleGroupsNamespaces" => list(rule_groups_namespace_summary())
      }

  """
  @type list_rule_groups_namespaces_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_scrapers_request() :: %{
        optional("filters") => map(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_scrapers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_query_logging_configuration_response() :: %{
        "status" => query_logging_configuration_status()
      }

  """
  @type create_query_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_groups_namespace_status() :: %{
        "statusCode" => String.t() | atom(),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type rule_groups_namespace_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_query_logging_configuration_request() :: %{}

  """
  @type describe_query_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      rule_groups_namespace_description() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "data" => binary(),
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => rule_groups_namespace_status(),
        "tags" => map()
      }

  """
  @type rule_groups_namespace_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_status() :: %{
        "statusCode" => String.t() | atom()
      }

  """
  @type workspace_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scraper_status() :: %{
        "statusCode" => String.t() | atom()
      }

  """
  @type scraper_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_summary() :: %{
        "alias" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "kmsKeyArn" => String.t() | atom(),
        "status" => workspace_status(),
        "tags" => map(),
        "workspaceId" => String.t() | atom()
      }

  """
  @type workspace_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scraper_response() :: %{
        "arn" => String.t() | atom(),
        "scraperId" => String.t() | atom(),
        "status" => scraper_status(),
        "tags" => map()
      }

  """
  @type create_scraper_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logging_configuration_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "logGroupArn" => String.t() | atom(),
        "modifiedAt" => [non_neg_integer()],
        "status" => logging_configuration_status(),
        "workspace" => String.t() | atom()
      }

  """
  @type logging_configuration_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_workspace_configuration_request() :: %{}

  """
  @type describe_workspace_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_logging_configuration_request() :: %{
        "clientToken" => String.t() | atom(),
        "logGroupArn" => String.t() | atom()
      }

  """
  @type update_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_logging_configuration_status() :: %{
        "statusCode" => String.t() | atom(),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type query_logging_configuration_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_groups_namespace_response() :: %{
        "arn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => rule_groups_namespace_status(),
        "tags" => map()
      }

  """
  @type create_rule_groups_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_alert_manager_definition_request() :: %{
        "clientToken" => String.t() | atom()
      }

  """
  @type delete_alert_manager_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_logging_configuration_request() :: %{
        "clientToken" => String.t() | atom(),
        "logGroupArn" => String.t() | atom()
      }

  """
  @type create_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_rule_groups_namespace_response() :: %{
        "ruleGroupsNamespace" => rule_groups_namespace_description()
      }

  """
  @type describe_rule_groups_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_rule_groups_namespace_response() :: %{
        "arn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => rule_groups_namespace_status(),
        "tags" => map()
      }

  """
  @type put_rule_groups_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_log_destination() :: %{
        "logGroupArn" => String.t() | atom()
      }

  """
  @type cloud_watch_log_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scraper_response() :: %{
        "arn" => String.t() | atom(),
        "scraperId" => String.t() | atom(),
        "status" => scraper_status(),
        "tags" => map()
      }

  """
  @type update_scraper_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workspace_configuration_response() :: %{
        "status" => workspace_configuration_status()
      }

  """
  @type update_workspace_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workspace_alias_request() :: %{
        "alias" => String.t() | atom(),
        "clientToken" => String.t() | atom()
      }

  """
  @type update_workspace_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_workspace_response() :: %{
        "workspace" => workspace_description()
      }

  """
  @type describe_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_default_scraper_configuration_request() :: %{}

  """
  @type get_default_scraper_configuration_request() :: %{}

  @typedoc """

  ## Example:

      workspace_configuration_description() :: %{
        "limitsPerLabelSet" => list(limits_per_label_set()),
        "retentionPeriodInDays" => [integer()],
        "status" => workspace_configuration_status()
      }

  """
  @type workspace_configuration_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_workspace_configuration_response() :: %{
        "workspaceConfiguration" => workspace_configuration_description()
      }

  """
  @type describe_workspace_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_rule_groups_namespace_request() :: %{
        "clientToken" => String.t() | atom()
      }

  """
  @type delete_rule_groups_namespace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_rule_groups_namespace_request() :: %{}

  """
  @type describe_rule_groups_namespace_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_logging_configuration_response() :: %{
        "status" => logging_configuration_status()
      }

  """
  @type create_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_logging_configuration_request() :: %{}

  """
  @type describe_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      logging_destination() :: %{
        "cloudWatchLogs" => cloud_watch_log_destination(),
        "filters" => logging_filter()
      }

  """
  @type logging_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logging_configuration_status() :: %{
        "statusCode" => String.t() | atom(),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type logging_configuration_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_scraper_response() :: %{
        "scraper" => scraper_description()
      }

  """
  @type describe_scraper_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_query_logging_configuration_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_query_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_scraper_request() :: %{
        optional("clientToken") => String.t() | atom()
      }

  """
  @type delete_scraper_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_configuration() :: %{
        "clusterArn" => String.t() | atom(),
        "securityGroupIds" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom())
      }

  """
  @type eks_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_workspace_request() :: %{}

  """
  @type describe_workspace_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

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

      update_query_logging_configuration_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("destinations") => list(logging_destination())
      }

  """
  @type update_query_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workspace_request() :: %{
        "clientToken" => String.t() | atom()
      }

  """
  @type delete_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_groups_namespace_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "modifiedAt" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => rule_groups_namespace_status(),
        "tags" => map()
      }

  """
  @type rule_groups_namespace_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_groups_namespace_request() :: %{
        "clientToken" => String.t() | atom(),
        "data" => binary(),
        "name" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type create_rule_groups_namespace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_alert_manager_definition_request() :: %{
        "clientToken" => String.t() | atom(),
        "data" => binary()
      }

  """
  @type create_alert_manager_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_description() :: %{
        "alias" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "kmsKeyArn" => String.t() | atom(),
        "prometheusEndpoint" => String.t() | atom(),
        "status" => workspace_status(),
        "tags" => map(),
        "workspaceId" => String.t() | atom()
      }

  """
  @type workspace_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workspace_response() :: %{
        "arn" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "status" => workspace_status(),
        "tags" => map(),
        "workspaceId" => String.t() | atom()
      }

  """
  @type create_workspace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workspaces_response() :: %{
        "nextToken" => String.t() | atom(),
        "workspaces" => list(workspace_summary())
      }

  """
  @type list_workspaces_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_query_logging_configuration_response() :: %{
        "status" => query_logging_configuration_status()
      }

  """
  @type update_query_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_default_scraper_configuration_response() :: %{
        "configuration" => [binary()]
      }

  """
  @type get_default_scraper_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("revisionId") => [String.t() | atom()],
        required("policyDocument") => [String.t() | atom()]
      }

  """
  @type put_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scraper_description() :: %{
        "alias" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "destination" => list(),
        "lastModifiedAt" => [non_neg_integer()],
        "roleArn" => String.t() | atom(),
        "roleConfiguration" => role_configuration(),
        "scrapeConfiguration" => list(),
        "scraperId" => String.t() | atom(),
        "source" => list(),
        "status" => scraper_status(),
        "statusReason" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type scraper_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workspace_configuration_status() :: %{
        "statusCode" => String.t() | atom(),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type workspace_configuration_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      role_configuration() :: %{
        "sourceRoleArn" => String.t() | atom(),
        "targetRoleArn" => String.t() | atom()
      }

  """
  @type role_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_alert_manager_definition_response() :: %{
        "status" => alert_manager_definition_status()
      }

  """
  @type put_alert_manager_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logging_filter() :: %{
        "qspThreshold" => [float()]
      }

  """
  @type logging_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alert_manager_definition_description() :: %{
        "createdAt" => [non_neg_integer()],
        "data" => binary(),
        "modifiedAt" => [non_neg_integer()],
        "status" => alert_manager_definition_status()
      }

  """
  @type alert_manager_definition_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_scraper_response() :: %{
        "scraperId" => String.t() | atom(),
        "status" => scraper_status()
      }

  """
  @type delete_scraper_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
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

      list_workspaces_request() :: %{
        "alias" => String.t() | atom(),
        "maxResults" => [integer()],
        "nextToken" => String.t() | atom()
      }

  """
  @type list_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_logging_configuration_response() :: %{
        "loggingConfiguration" => logging_configuration_metadata()
      }

  """
  @type describe_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_resource_policy_response() :: %{
        "policyDocument" => [String.t() | atom()],
        "policyStatus" => String.t() | atom(),
        "revisionId" => [String.t() | atom()]
      }

  """
  @type describe_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amp_configuration() :: %{
        "workspaceArn" => String.t() | atom()
      }

  """
  @type amp_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scraper_request() :: %{
        optional("alias") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("roleConfiguration") => role_configuration(),
        optional("tags") => map(),
        required("destination") => list(),
        required("scrapeConfiguration") => list(),
        required("source") => list()
      }

  """
  @type create_scraper_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_alert_manager_definition_response() :: %{
        "status" => alert_manager_definition_status()
      }

  """
  @type create_alert_manager_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{
        "policyStatus" => String.t() | atom(),
        "revisionId" => [String.t() | atom()]
      }

  """
  @type put_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_alert_manager_definition_request() :: %{}

  """
  @type describe_alert_manager_definition_request() :: %{}

  @typedoc """

  ## Example:

      describe_alert_manager_definition_response() :: %{
        "alertManagerDefinition" => alert_manager_definition_description()
      }

  """
  @type describe_alert_manager_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limits_per_label_set_entry() :: %{
        "maxSeries" => [float()]
      }

  """
  @type limits_per_label_set_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_scraper_request() :: %{}

  """
  @type describe_scraper_request() :: %{}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("revisionId") => [String.t() | atom()]
      }

  """
  @type delete_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_logging_configuration_request() :: %{
        "clientToken" => String.t() | atom()
      }

  """
  @type delete_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_rule_groups_namespace_request() :: %{
        "clientToken" => String.t() | atom(),
        "data" => binary()
      }

  """
  @type put_rule_groups_namespace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_query_logging_configuration_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("destinations") => list(logging_destination())
      }

  """
  @type create_query_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scrapers_response() :: %{
        "nextToken" => String.t() | atom(),
        "scrapers" => list(scraper_summary())
      }

  """
  @type list_scrapers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_logging_configuration_response() :: %{
        "status" => logging_configuration_status()
      }

  """
  @type update_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rule_groups_namespaces_request() :: %{
        "maxResults" => [integer()],
        "name" => String.t() | atom(),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_rule_groups_namespaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alert_manager_definition_status() :: %{
        "statusCode" => String.t() | atom(),
        "statusReason" => [String.t() | atom()]
      }

  """
  @type alert_manager_definition_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limits_per_label_set() :: %{
        "labelSet" => map(),
        "limits" => limits_per_label_set_entry()
      }

  """
  @type limits_per_label_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_resource_policy_request() :: %{}

  """
  @type describe_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      create_workspace_request() :: %{
        "alias" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type create_workspace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scraper_summary() :: %{
        "alias" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "destination" => list(),
        "lastModifiedAt" => [non_neg_integer()],
        "roleArn" => String.t() | atom(),
        "roleConfiguration" => role_configuration(),
        "scraperId" => String.t() | atom(),
        "source" => list(),
        "status" => scraper_status(),
        "statusReason" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type scraper_summary() :: %{(String.t() | atom()) => any()}

  @type create_alert_manager_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_query_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_rule_groups_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_scraper_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_alert_manager_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_query_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_rule_groups_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_scraper_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_alert_manager_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_query_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_rule_groups_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_scraper_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_workspace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_workspace_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_default_scraper_configuration_errors() ::
          throttling_exception() | access_denied_exception() | internal_server_exception()

  @type list_rule_groups_namespaces_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_scrapers_errors() ::
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

  @type list_workspaces_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type put_alert_manager_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_rule_groups_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
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

  @type update_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_query_logging_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_scraper_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workspace_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_workspace_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "aps",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "amp",
      signature_version: "v4",
      signing_name: "aps",
      target_prefix: nil
    }
  end

  @doc """
  The `CreateAlertManagerDefinition` operation creates the alert manager
  definition in a workspace.

  If a workspace already has an alert manager definition, don't use this operation
  to update it. Instead, use `PutAlertManagerDefinition`.
  """
  @spec create_alert_manager_definition(
          map(),
          String.t() | atom(),
          create_alert_manager_definition_request(),
          list()
        ) ::
          {:ok, create_alert_manager_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_alert_manager_definition_errors()}
  def create_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
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
      202
    )
  end

  @doc """
  The `CreateLoggingConfiguration` operation creates rules and alerting logging
  configuration for the workspace.

  Use this operation to set the CloudWatch log group to which the logs will be
  published to.

  These logging configurations are only for rules and alerting logs.
  """
  @spec create_logging_configuration(
          map(),
          String.t() | atom(),
          create_logging_configuration_request(),
          list()
        ) ::
          {:ok, create_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_logging_configuration_errors()}
  def create_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
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
      202
    )
  end

  @doc """
  Creates a query logging configuration for the specified workspace.

  This operation enables logging of queries that exceed the specified QSP
  threshold.
  """
  @spec create_query_logging_configuration(
          map(),
          String.t() | atom(),
          create_query_logging_configuration_request(),
          list()
        ) ::
          {:ok, create_query_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_query_logging_configuration_errors()}
  def create_query_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging/query"
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
      202
    )
  end

  @doc """
  The `CreateRuleGroupsNamespace` operation creates a rule groups namespace within
  a workspace.

  A rule groups namespace is associated with exactly one rules file. A workspace
  can have multiple rule groups namespaces.

  Use this operation only to create new rule groups namespaces. To update an
  existing rule groups namespace, use `PutRuleGroupsNamespace`.
  """
  @spec create_rule_groups_namespace(
          map(),
          String.t() | atom(),
          create_rule_groups_namespace_request(),
          list()
        ) ::
          {:ok, create_rule_groups_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_groups_namespace_errors()}
  def create_rule_groups_namespace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces"
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
      202
    )
  end

  @doc """
  The `CreateScraper` operation creates a scraper to collect metrics.

  A scraper pulls metrics from Prometheus-compatible sources within an Amazon EKS
  cluster, and sends them to your Amazon Managed Service for Prometheus workspace.
  Scrapers are flexible, and can be configured to control what metrics are
  collected, the frequency of collection, what transformations are applied to the
  metrics, and more.

  An IAM role will be created for you that Amazon Managed Service for Prometheus
  uses to access the metrics in your cluster. You must configure this role with a
  policy that allows it to scrape metrics from your cluster. For more information,
  see [Configuring your Amazon EKS cluster](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-eks-setup)
  in the *Amazon Managed Service for Prometheus User Guide*.

  The `scrapeConfiguration` parameter contains the base-64 encoded YAML
  configuration for the scraper.

  When creating a scraper, the service creates a `Network Interface` in each
  **Availability Zone** that are passed into `CreateScraper` through subnets.
  These network interfaces are used to connect to the Amazon EKS cluster within
  the VPC for scraping metrics.

  For more information about collectors, including what metrics are collected, and
  how to configure the scraper, see [Using an Amazon Web Services managed collector](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html)
  in the *Amazon Managed Service for Prometheus User Guide*.
  """
  @spec create_scraper(map(), create_scraper_request(), list()) ::
          {:ok, create_scraper_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scraper_errors()}
  def create_scraper(%Client{} = client, input, options \\ []) do
    url_path = "/scrapers"
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
      202
    )
  end

  @doc """
  Creates a Prometheus workspace.

  A workspace is a logical space dedicated to the storage and querying of
  Prometheus metrics. You can have one or more workspaces in each Region in your
  account.
  """
  @spec create_workspace(map(), create_workspace_request(), list()) ::
          {:ok, create_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workspace_errors()}
  def create_workspace(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces"
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
      202
    )
  end

  @doc """
  Deletes the alert manager definition from a workspace.
  """
  @spec delete_alert_manager_definition(
          map(),
          String.t() | atom(),
          delete_alert_manager_definition_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_alert_manager_definition_errors()}
  def delete_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Deletes the rules and alerting logging configuration for a workspace.

  These logging configurations are only for rules and alerting logs.
  """
  @spec delete_logging_configuration(
          map(),
          String.t() | atom(),
          delete_logging_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_logging_configuration_errors()}
  def delete_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Deletes the query logging configuration for the specified workspace.
  """
  @spec delete_query_logging_configuration(
          map(),
          String.t() | atom(),
          delete_query_logging_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_query_logging_configuration_errors()}
  def delete_query_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging/query"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Deletes the resource-based policy attached to an Amazon Managed Service for
  Prometheus workspace.
  """
  @spec delete_resource_policy(
          map(),
          String.t() | atom(),
          delete_resource_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/policy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"revisionId", "revisionId"}
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
      202
    )
  end

  @doc """
  Deletes one rule groups namespace and its associated rule groups definition.
  """
  @spec delete_rule_groups_namespace(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_rule_groups_namespace_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_groups_namespace_errors()}
  def delete_rule_groups_namespace(%Client{} = client, name, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  The `DeleteScraper` operation deletes one scraper, and stops any metrics
  collection that the scraper performs.
  """
  @spec delete_scraper(map(), String.t() | atom(), delete_scraper_request(), list()) ::
          {:ok, delete_scraper_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scraper_errors()}
  def delete_scraper(%Client{} = client, scraper_id, input, options \\ []) do
    url_path = "/scrapers/#{AWS.Util.encode_uri(scraper_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Deletes an existing workspace.

  When you delete a workspace, the data that has been ingested into it is not
  immediately deleted. It will be permanently deleted within one month.
  """
  @spec delete_workspace(map(), String.t() | atom(), delete_workspace_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workspace_errors()}
  def delete_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
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
      202
    )
  end

  @doc """
  Retrieves the full information about the alert manager definition for a
  workspace.
  """
  @spec describe_alert_manager_definition(map(), String.t() | atom(), list()) ::
          {:ok, describe_alert_manager_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_alert_manager_definition_errors()}
  def describe_alert_manager_definition(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns complete information about the current rules and alerting logging
  configuration of the workspace.

  These logging configurations are only for rules and alerting logs.
  """
  @spec describe_logging_configuration(map(), String.t() | atom(), list()) ::
          {:ok, describe_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_logging_configuration_errors()}
  def describe_logging_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the query logging configuration for the specified
  workspace.
  """
  @spec describe_query_logging_configuration(map(), String.t() | atom(), list()) ::
          {:ok, describe_query_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_query_logging_configuration_errors()}
  def describe_query_logging_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging/query"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the resource-based policy attached to an Amazon
  Managed Service for Prometheus workspace.
  """
  @spec describe_resource_policy(map(), String.t() | atom(), list()) ::
          {:ok, describe_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_policy_errors()}
  def describe_resource_policy(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns complete information about one rule groups namespace.

  To retrieve a list of rule groups namespaces, use `ListRuleGroupsNamespaces`.
  """
  @spec describe_rule_groups_namespace(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_rule_groups_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rule_groups_namespace_errors()}
  def describe_rule_groups_namespace(%Client{} = client, name, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `DescribeScraper` operation displays information about an existing scraper.
  """
  @spec describe_scraper(map(), String.t() | atom(), list()) ::
          {:ok, describe_scraper_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scraper_errors()}
  def describe_scraper(%Client{} = client, scraper_id, options \\ []) do
    url_path = "/scrapers/#{AWS.Util.encode_uri(scraper_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an existing workspace.
  """
  @spec describe_workspace(map(), String.t() | atom(), list()) ::
          {:ok, describe_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_errors()}
  def describe_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use this operation to return information about the configuration of a workspace.

  The configuration details returned include workspace configuration status, label
  set limits, and retention period.
  """
  @spec describe_workspace_configuration(map(), String.t() | atom(), list()) ::
          {:ok, describe_workspace_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workspace_configuration_errors()}
  def describe_workspace_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `GetDefaultScraperConfiguration` operation returns the default scraper
  configuration used when Amazon EKS creates a scraper for you.
  """
  @spec get_default_scraper_configuration(map(), list()) ::
          {:ok, get_default_scraper_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_default_scraper_configuration_errors()}
  def get_default_scraper_configuration(%Client{} = client, options \\ []) do
    url_path = "/scraperconfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of rule groups namespaces in a workspace.
  """
  @spec list_rule_groups_namespaces(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_rule_groups_namespaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rule_groups_namespaces_errors()}
  def list_rule_groups_namespaces(
        %Client{} = client,
        workspace_id,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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
  The `ListScrapers` operation lists all of the scrapers in your account.

  This includes scrapers being created or deleted. You can optionally filter the
  returned list.
  """
  @spec list_scrapers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_scrapers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scrapers_errors()}
  def list_scrapers(
        %Client{} = client,
        filters \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/scrapers"
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
      if !is_nil(filters) do
        [{"filters", filters} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `ListTagsForResource` operation returns the tags that are associated with an
  Amazon Managed Service for Prometheus resource.

  Currently, the only resources that can be tagged are scrapers, workspaces, and
  rule groups namespaces.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the Amazon Managed Service for Prometheus workspaces in your
  account.

  This includes workspaces being created or deleted.
  """
  @spec list_workspaces(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_workspaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workspaces_errors()}
  def list_workspaces(
        %Client{} = client,
        alias \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces"
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
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates an existing alert manager definition in a workspace.

  If the workspace does not already have an alert manager definition, don't use
  this operation to create it. Instead, use `CreateAlertManagerDefinition`.
  """
  @spec put_alert_manager_definition(
          map(),
          String.t() | atom(),
          put_alert_manager_definition_request(),
          list()
        ) ::
          {:ok, put_alert_manager_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_alert_manager_definition_errors()}
  def put_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
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
      202
    )
  end

  @doc """
  Creates or updates a resource-based policy for an Amazon Managed Service for
  Prometheus workspace.

  Use resource-based policies to grant permissions to other AWS accounts or
  services to access your workspace.

  Only Prometheus-compatible APIs can be used for workspace sharing. You can add
  non-Prometheus-compatible APIs to the policy, but they will be ignored. For more
  information, see [Prometheus-compatible APIs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference-Prometheus-Compatible-Apis.html)
  in the *Amazon Managed Service for Prometheus User Guide*.

  If your workspace uses customer-managed KMS keys for encryption, you must grant
  the principals in your resource-based policy access to those KMS keys. You can
  do this by creating KMS grants. For more information, see
  [CreateGrant](https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateGrant.html) in the *AWS Key Management Service API Reference* and [Encryption at
  rest](https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html)
  in the *Amazon Managed Service for Prometheus User Guide*.

  For more information about working with IAM, see [Using Amazon Managed Service for Prometheus with
  IAM](https://docs.aws.amazon.com/prometheus/latest/userguide/security_iam_service-with-iam.html)
  in the *Amazon Managed Service for Prometheus User Guide*.
  """
  @spec put_resource_policy(map(), String.t() | atom(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/policy"
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
      202
    )
  end

  @doc """
  Updates an existing rule groups namespace within a workspace.

  A rule groups namespace is associated with exactly one rules file. A workspace
  can have multiple rule groups namespaces.

  Use this operation only to update existing rule groups namespaces. To create a
  new rule groups namespace, use `CreateRuleGroupsNamespace`.

  You can't use this operation to add tags to an existing rule groups namespace.
  Instead, use `TagResource`.
  """
  @spec put_rule_groups_namespace(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_rule_groups_namespace_request(),
          list()
        ) ::
          {:ok, put_rule_groups_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_rule_groups_namespace_errors()}
  def put_rule_groups_namespace(%Client{} = client, name, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

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
      202
    )
  end

  @doc """
  The `TagResource` operation associates tags with an Amazon Managed Service for
  Prometheus resource.

  The only resources that can be tagged are rule groups namespaces, scrapers, and
  workspaces.

  If you specify a new tag key for the resource, this tag is appended to the list
  of tags associated with the resource. If you specify a tag key that is already
  associated with the resource, the new tag value that you specify replaces the
  previous value for that tag. To remove a tag, use `UntagResource`.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes the specified tags from an Amazon Managed Service for Prometheus
  resource.

  The only resources that can be tagged are rule groups namespaces, scrapers, and
  workspaces.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates the log group ARN or the workspace ID of the current rules and alerting
  logging configuration.

  These logging configurations are only for rules and alerting logs.
  """
  @spec update_logging_configuration(
          map(),
          String.t() | atom(),
          update_logging_configuration_request(),
          list()
        ) ::
          {:ok, update_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_logging_configuration_errors()}
  def update_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
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
      202
    )
  end

  @doc """
  Updates the query logging configuration for the specified workspace.
  """
  @spec update_query_logging_configuration(
          map(),
          String.t() | atom(),
          update_query_logging_configuration_request(),
          list()
        ) ::
          {:ok, update_query_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_query_logging_configuration_errors()}
  def update_query_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging/query"
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
      202
    )
  end

  @doc """
  Updates an existing scraper.

  You can't use this function to update the source from which the scraper is
  collecting metrics. To change the source, delete the scraper and create a new
  one.
  """
  @spec update_scraper(map(), String.t() | atom(), update_scraper_request(), list()) ::
          {:ok, update_scraper_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scraper_errors()}
  def update_scraper(%Client{} = client, scraper_id, input, options \\ []) do
    url_path = "/scrapers/#{AWS.Util.encode_uri(scraper_id)}"
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
      202
    )
  end

  @doc """
  Updates the alias of an existing workspace.
  """
  @spec update_workspace_alias(
          map(),
          String.t() | atom(),
          update_workspace_alias_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workspace_alias_errors()}
  def update_workspace_alias(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alias"
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
      204
    )
  end

  @doc """
  Use this operation to create or update the label sets, label set limits, and
  retention period of a workspace.

  You must specify at least one of `limitsPerLabelSet` or `retentionPeriodInDays`
  for the request to be valid.
  """
  @spec update_workspace_configuration(
          map(),
          String.t() | atom(),
          update_workspace_configuration_request(),
          list()
        ) ::
          {:ok, update_workspace_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workspace_configuration_errors()}
  def update_workspace_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/configuration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end
end
