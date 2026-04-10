# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BCMDashboards do
  @moduledoc """
  Amazon Web Services Billing and Cost Management Dashboards is a service that
  enables you to create, manage, and share dashboards that combine multiple
  visualizations of your Amazon Web Services cost and usage data.

  You can combine multiple data sources including Cost Explorer, Savings Plans,
  and Reserved Instance metrics into unified dashboards, helping you analyze
  spending patterns and share cost insights across your organization.

  You can use the Amazon Web Services Billing and Cost Management Dashboards API
  to programmatically create, manage, and share dashboards. This includes creating
  custom dashboards, configuring widgets, managing dashboard permissions, and
  sharing dashboards across accounts in your organization.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_dashboards_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_dashboards_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_dashboard_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type get_dashboard_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_dashboard_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type update_dashboard_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_dashboard_request() :: %{
        optional("description") => String.t() | atom(),
        optional("widgets") => list(widget()),
        required("arn") => String.t() | atom(),
        required("name") => String.t() | atom()
      }
      
  """
  @type update_dashboard_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("resourceTags") => list(resource_tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_scheduled_report_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("resourceTags") => list(resource_tag()),
        required("scheduledReport") => scheduled_report_input()
      }
      
  """
  @type create_scheduled_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      dashboard_reference() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type dashboard_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_values() :: %{
        "key" => [String.t() | atom()],
        "matchOptions" => list(list(any())()),
        "values" => list([String.t() | atom()]())
      }
      
  """
  @type tag_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      date_time_value() :: %{
        "type" => list(any()),
        "value" => String.t() | atom()
      }
      
  """
  @type date_time_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_response() :: %{
        "policyDocument" => String.t() | atom(),
        "resourceArn" => String.t() | atom()
      }
      
  """
  @type get_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schedule_period() :: %{
        "endTime" => non_neg_integer(),
        "startTime" => non_neg_integer()
      }
      
  """
  @type schedule_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduled_report() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "dashboardArn" => String.t() | atom(),
        "description" => String.t() | atom(),
        "healthStatus" => health_status(),
        "lastExecutionAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "scheduleConfig" => schedule_config(),
        "scheduledReportExecutionRoleArn" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "widgetDateRangeOverride" => date_time_range(),
        "widgetIds" => list([String.t() | atom()]())
      }
      
  """
  @type scheduled_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("resourceTagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_utilization_query() :: %{
        "filter" => expression(),
        "granularity" => list(any()),
        "timeRange" => date_time_range()
      }
      
  """
  @type savings_plans_utilization_query() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      group_definition() :: %{
        "key" => [String.t() | atom()],
        "type" => list(any())
      }
      
  """
  @type group_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_scheduled_report_request() :: %{
        optional("clearWidgetDateRangeOverride") => [boolean()],
        optional("clearWidgetIds") => [boolean()],
        optional("dashboardArn") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("scheduleConfig") => schedule_config(),
        optional("scheduledReportExecutionRoleArn") => String.t() | atom(),
        optional("widgetDateRangeOverride") => date_time_range(),
        optional("widgetIds") => list([String.t() | atom()]()),
        required("arn") => String.t() | atom()
      }
      
  """
  @type update_scheduled_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_scheduled_report_response() :: %{
        "scheduledReport" => scheduled_report()
      }
      
  """
  @type get_scheduled_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      table_display_config_struct() :: %{}
      
  """
  @type table_display_config_struct() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension_values() :: %{
        "key" => list(any()),
        "matchOptions" => list(list(any())()),
        "values" => list([String.t() | atom()]())
      }
      
  """
  @type dimension_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduled_report_input() :: %{
        "dashboardArn" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "scheduleConfig" => schedule_config(),
        "scheduledReportExecutionRoleArn" => String.t() | atom(),
        "widgetDateRangeOverride" => date_time_range(),
        "widgetIds" => list([String.t() | atom()]())
      }
      
  """
  @type scheduled_report_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      graph_display_config() :: %{
        "visualType" => list(any())
      }
      
  """
  @type graph_display_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reservation_utilization_query() :: %{
        "filter" => expression(),
        "granularity" => list(any()),
        "groupBy" => list(group_definition()),
        "timeRange" => date_time_range()
      }
      
  """
  @type reservation_utilization_query() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "resourceTags" => list(resource_tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      widget_config() :: %{
        "displayConfig" => list(),
        "queryParameters" => list()
      }
      
  """
  @type widget_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      date_time_range() :: %{
        "endTime" => date_time_value(),
        "startTime" => date_time_value()
      }
      
  """
  @type date_time_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type get_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_coverage_query() :: %{
        "filter" => expression(),
        "granularity" => list(any()),
        "groupBy" => list(group_definition()),
        "metrics" => list(list(any())()),
        "timeRange" => date_time_range()
      }
      
  """
  @type savings_plans_coverage_query() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_dashboard_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => list(any()),
        "updatedAt" => non_neg_integer(),
        "widgets" => list(widget())
      }
      
  """
  @type get_dashboard_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      health_status() :: %{
        "lastRefreshedAt" => non_neg_integer(),
        "statusCode" => list(any()),
        "statusReasons" => list(list(any())())
      }
      
  """
  @type health_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_dashboard_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_dashboard_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_scheduled_report_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("dryRun") => [boolean()],
        required("arn") => String.t() | atom()
      }
      
  """
  @type execute_scheduled_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schedule_config() :: %{
        "scheduleExpression" => String.t() | atom(),
        "scheduleExpressionTimeZone" => String.t() | atom(),
        "schedulePeriod" => schedule_period(),
        "state" => list(any())
      }
      
  """
  @type schedule_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_dashboard_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type delete_dashboard_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dashboard_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type create_dashboard_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_values() :: %{
        "key" => [String.t() | atom()],
        "matchOptions" => list(list(any())()),
        "values" => list([String.t() | atom()]())
      }
      
  """
  @type cost_category_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_scheduled_report_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type update_scheduled_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_scheduled_report_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_scheduled_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_scheduled_reports_response() :: %{
        "nextToken" => String.t() | atom(),
        "scheduledReports" => list(scheduled_report_summary())
      }
      
  """
  @type list_scheduled_reports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "and" => list(expression()),
        "costCategories" => cost_category_values(),
        "dimensions" => dimension_values(),
        "not" => expression(),
        "or" => list(expression()),
        "tags" => tag_values()
      }
      
  """
  @type expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_dashboard_request() :: %{
        optional("description") => String.t() | atom(),
        optional("resourceTags") => list(resource_tag()),
        required("name") => String.t() | atom(),
        required("widgets") => list(widget())
      }
      
  """
  @type create_dashboard_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execute_scheduled_report_response() :: %{
        "executionTriggered" => [boolean()],
        "healthStatus" => health_status()
      }
      
  """
  @type execute_scheduled_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_scheduled_report_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type get_scheduled_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_scheduled_reports_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_scheduled_reports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reservation_coverage_query() :: %{
        "filter" => expression(),
        "granularity" => list(any()),
        "groupBy" => list(group_definition()),
        "metrics" => list(list(any())()),
        "timeRange" => date_time_range()
      }
      
  """
  @type reservation_coverage_query() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      widget() :: %{
        "configs" => list(widget_config()),
        "description" => String.t() | atom(),
        "height" => integer(),
        "horizontalOffset" => [integer()],
        "id" => String.t() | atom(),
        "title" => String.t() | atom(),
        "width" => integer()
      }
      
  """
  @type widget() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_scheduled_report_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type create_scheduled_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_scheduled_report_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type delete_scheduled_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_dashboards_response() :: %{
        "dashboards" => list(dashboard_reference()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_dashboards_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      scheduled_report_summary() :: %{
        "arn" => String.t() | atom(),
        "dashboardArn" => String.t() | atom(),
        "healthStatus" => health_status(),
        "name" => String.t() | atom(),
        "scheduleExpression" => String.t() | atom(),
        "scheduleExpressionTimeZone" => String.t() | atom(),
        "state" => list(any()),
        "widgetIds" => list([String.t() | atom()]())
      }
      
  """
  @type scheduled_report_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_and_usage_query() :: %{
        "filter" => expression(),
        "granularity" => list(any()),
        "groupBy" => list(group_definition()),
        "metrics" => list(list(any())()),
        "timeRange" => date_time_range()
      }
      
  """
  @type cost_and_usage_query() :: %{(String.t() | atom()) => any()}

  @type create_dashboard_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_scheduled_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_dashboard_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_scheduled_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type execute_scheduled_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_dashboard_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_scheduled_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_dashboards_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_scheduled_reports_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_dashboard_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_scheduled_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2025-08-18",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "bcm-dashboards",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "BCM Dashboards",
      signature_version: "v4",
      signing_name: "bcm-dashboards",
      target_prefix: "AWSBCMDashboardsService"
    }
  end

  @doc """
  Creates a new dashboard that can contain multiple widgets displaying cost and
  usage data.

  You can add custom widgets or use predefined widgets, arranging them in your
  preferred layout.
  """
  @spec create_dashboard(map(), create_dashboard_request(), list()) ::
          {:ok, create_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dashboard_errors()}
  def create_dashboard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDashboard", input, options)
  end

  @doc """
  Creates a new scheduled report for a dashboard.

  A scheduled report automatically generates and delivers dashboard snapshots on a
  recurring schedule. Reports are delivered within 15 minutes of the scheduled
  delivery time.
  """
  @spec create_scheduled_report(map(), create_scheduled_report_request(), list()) ::
          {:ok, create_scheduled_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scheduled_report_errors()}
  def create_scheduled_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateScheduledReport", input, options)
  end

  @doc """
  Deletes a specified dashboard.

  This action cannot be undone.
  """
  @spec delete_dashboard(map(), delete_dashboard_request(), list()) ::
          {:ok, delete_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dashboard_errors()}
  def delete_dashboard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDashboard", input, options)
  end

  @doc """
  Deletes a specified scheduled report.

  This is an irreversible operation.
  """
  @spec delete_scheduled_report(map(), delete_scheduled_report_request(), list()) ::
          {:ok, delete_scheduled_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scheduled_report_errors()}
  def delete_scheduled_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteScheduledReport", input, options)
  end

  @doc """
  Triggers an immediate execution of a scheduled report, outside of its regular
  schedule.

  The scheduled report must be in `ENABLED` state. Calling this operation on a
  `DISABLED` scheduled report returns a `ValidationException`.

  If a `clientToken` is provided, the service uses it for idempotency. Requests
  with the same client token will not trigger a new execution within the same
  minute.
  """
  @spec execute_scheduled_report(map(), execute_scheduled_report_request(), list()) ::
          {:ok, execute_scheduled_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_scheduled_report_errors()}
  def execute_scheduled_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExecuteScheduledReport", input, options)
  end

  @doc """
  Retrieves the configuration and metadata of a specified dashboard, including its
  widgets and layout settings.
  """
  @spec get_dashboard(map(), get_dashboard_request(), list()) ::
          {:ok, get_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dashboard_errors()}
  def get_dashboard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDashboard", input, options)
  end

  @doc """
  Retrieves the resource-based policy attached to a dashboard, showing sharing
  configurations and permissions.
  """
  @spec get_resource_policy(map(), get_resource_policy_request(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Retrieves the configuration and metadata of a specified scheduled report.
  """
  @spec get_scheduled_report(map(), get_scheduled_report_request(), list()) ::
          {:ok, get_scheduled_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_scheduled_report_errors()}
  def get_scheduled_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetScheduledReport", input, options)
  end

  @doc """
  Returns a list of all dashboards in your account.
  """
  @spec list_dashboards(map(), list_dashboards_request(), list()) ::
          {:ok, list_dashboards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dashboards_errors()}
  def list_dashboards(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDashboards", input, options)
  end

  @doc """
  Returns a list of scheduled reports in your account.
  """
  @spec list_scheduled_reports(map(), list_scheduled_reports_request(), list()) ::
          {:ok, list_scheduled_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scheduled_reports_errors()}
  def list_scheduled_reports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListScheduledReports", input, options)
  end

  @doc """
  Returns a list of all tags associated with a specified dashboard resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds or updates tags for a specified dashboard resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes specified tags from a dashboard resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing dashboard's properties, including its name, description, and
  widget configurations.
  """
  @spec update_dashboard(map(), update_dashboard_request(), list()) ::
          {:ok, update_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dashboard_errors()}
  def update_dashboard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDashboard", input, options)
  end

  @doc """
  Updates an existing scheduled report's properties, including its name,
  description, schedule configuration, and widget settings.

  Only the parameters included in the request are updated; all other properties
  remain unchanged.
  """
  @spec update_scheduled_report(map(), update_scheduled_report_request(), list()) ::
          {:ok, update_scheduled_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scheduled_report_errors()}
  def update_scheduled_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScheduledReport", input, options)
  end
end
