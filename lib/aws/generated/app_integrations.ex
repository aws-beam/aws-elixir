# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppIntegrations do
  @moduledoc """

    *

  [Amazon AppIntegrations actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_AppIntegrations_Service.html)

    *

  [Amazon AppIntegrations data
  types](https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_AppIntegrations_Service.html)

  The Amazon AppIntegrations service enables you to configure and reuse
  connections to external
  applications.

  For information about how you can use external applications with Amazon Connect,
  see
  the following topics in the *Amazon Connect Administrator
  Guide*:

    *

  [Third-party applications (3p apps) in the agent
  workspace](https://docs.aws.amazon.com/connect/latest/adminguide/3p-apps.html)

    *

  [Use Amazon Q in Connect for generative AI–powered agent assistance in
  real-time](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-q-connect.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      external_url_config() :: %{
        "AccessUrl" => String.t() | atom(),
        "ApprovedOrigins" => list(String.t() | atom())
      }

  """
  @type external_url_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_association_summary() :: %{
        "ClientId" => String.t() | atom(),
        "DataIntegrationArn" => String.t() | atom(),
        "DataIntegrationAssociationArn" => String.t() | atom(),
        "DestinationURI" => String.t() | atom(),
        "ExecutionConfiguration" => execution_configuration(),
        "LastExecutionStatus" => last_execution_status()
      }

  """
  @type data_integration_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_integration_response() :: %{}

  """
  @type update_data_integration_response() :: %{}

  @typedoc """

  ## Example:

      unsupported_operation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type unsupported_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_integration_request() :: %{}

  """
  @type get_event_integration_request() :: %{}

  @typedoc """

  ## Example:

      last_execution_status() :: %{
        "ExecutionStatus" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type last_execution_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_data_integration_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_data_integration_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_integration_associations_response() :: %{
        "DataIntegrationAssociations" => list(data_integration_association_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_data_integration_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_integrations_response() :: %{
        "DataIntegrations" => list(data_integration_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_data_integrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_integration_response() :: %{
        "Description" => String.t() | atom(),
        "EventBridgeBus" => String.t() | atom(),
        "EventFilter" => event_filter(),
        "EventIntegrationArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type get_event_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_integration_request() :: %{}

  """
  @type get_data_integration_request() :: %{}

  @typedoc """

  ## Example:

      application_source_config() :: %{
        "ExternalUrlConfig" => external_url_config()
      }

  """
  @type application_source_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_integration_association_response() :: %{}

  """
  @type update_data_integration_association_response() :: %{}

  @typedoc """

  ## Example:

      create_data_integration_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("FileConfiguration") => file_configuration(),
        optional("ObjectConfiguration") => map(),
        optional("ScheduleConfig") => schedule_configuration(),
        optional("SourceURI") => String.t() | atom(),
        optional("Tags") => map(),
        required("KmsKey") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_data_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_integration_associations_response() :: %{
        "EventIntegrationAssociations" => list(event_integration_association()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_event_integration_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_integration_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_event_integration_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_integration_association_request() :: %{
        optional("ClientAssociationMetadata") => map(),
        optional("ClientId") => String.t() | atom(),
        optional("ClientToken") => String.t() | atom(),
        optional("DestinationURI") => String.t() | atom(),
        optional("ExecutionConfiguration") => execution_configuration(),
        optional("ObjectConfiguration") => map()
      }

  """
  @type create_data_integration_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_integration_response() :: %{
        "EventIntegrationArn" => String.t() | atom()
      }

  """
  @type create_event_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_association_summary() :: %{
        "ApplicationArn" => String.t() | atom(),
        "ApplicationAssociationArn" => String.t() | atom(),
        "ClientId" => String.t() | atom()
      }

  """
  @type application_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_application_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_application_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_integrations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_data_integrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_integration_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("EventBridgeBus") => String.t() | atom(),
        required("EventFilter") => event_filter(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_event_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Permissions") => list(String.t() | atom()),
        optional("Publications") => list(publication()),
        optional("Subscriptions") => list(subscription()),
        optional("Tags") => map(),
        required("ApplicationSourceConfig") => application_source_config(),
        required("Name") => String.t() | atom(),
        required("Namespace") => String.t() | atom()
      }

  """
  @type create_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_integration_response() :: %{
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "FileConfiguration" => file_configuration(),
        "Id" => String.t() | atom(),
        "KmsKey" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ObjectConfiguration" => map(),
        "ScheduleConfiguration" => schedule_configuration(),
        "SourceURI" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type get_data_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type create_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_configuration() :: %{
        "ExecutionMode" => list(any()),
        "OnDemandConfiguration" => on_demand_configuration(),
        "ScheduleConfiguration" => schedule_configuration()
      }

  """
  @type execution_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_filter() :: %{
        "Source" => String.t() | atom()
      }

  """
  @type event_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_event_integration_response() :: %{}

  """
  @type update_event_integration_response() :: %{}

  @typedoc """

  ## Example:

      update_event_integration_request() :: %{
        optional("Description") => String.t() | atom()
      }

  """
  @type update_event_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      create_data_integration_association_response() :: %{
        "DataIntegrationArn" => String.t() | atom(),
        "DataIntegrationAssociationId" => String.t() | atom()
      }

  """
  @type create_data_integration_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_integration_response() :: %{}

  """
  @type delete_event_integration_response() :: %{}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("ApplicationSourceConfig") => application_source_config(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Permissions") => list(String.t() | atom()),
        optional("Publications") => list(publication()),
        optional("Subscriptions") => list(subscription())
      }

  """
  @type update_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{}

  """
  @type update_application_response() :: %{}

  @typedoc """

  ## Example:

      publication() :: %{
        "Description" => String.t() | atom(),
        "Event" => String.t() | atom(),
        "Schema" => String.t() | atom()
      }

  """
  @type publication() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        "ApplicationSourceConfig" => application_source_config(),
        "Arn" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Namespace" => String.t() | atom(),
        "Permissions" => list(String.t() | atom()),
        "Publications" => list(publication()),
        "Subscriptions" => list(subscription()),
        "Tags" => map()
      }

  """
  @type get_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
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

      create_data_integration_response() :: %{
        "Arn" => String.t() | atom(),
        "ClientToken" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "FileConfiguration" => file_configuration(),
        "Id" => String.t() | atom(),
        "KmsKey" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ObjectConfiguration" => map(),
        "ScheduleConfiguration" => schedule_configuration(),
        "SourceURI" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type create_data_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_integration_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_data_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_error() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_service_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_integration_request() :: %{}

  """
  @type delete_data_integration_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_data_integration_association_request() :: %{
        required("ExecutionConfiguration") => execution_configuration()
      }

  """
  @type update_data_integration_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_configuration() :: %{
        "FirstExecutionFrom" => String.t() | atom(),
        "Object" => String.t() | atom(),
        "ScheduleExpression" => String.t() | atom()
      }

  """
  @type schedule_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_integration_request() :: %{}

  """
  @type delete_event_integration_request() :: %{}

  @typedoc """

  ## Example:

      subscription() :: %{
        "Description" => String.t() | atom(),
        "Event" => String.t() | atom()
      }

  """
  @type subscription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_integration_response() :: %{}

  """
  @type delete_data_integration_response() :: %{}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Namespace" => String.t() | atom()
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_application_associations_response() :: %{
        "ApplicationAssociations" => list(application_association_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_application_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "Applications" => list(application_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_integrations_response() :: %{
        "EventIntegrations" => list(event_integration()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_event_integrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_integrations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_event_integrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      file_configuration() :: %{
        "Filters" => map(),
        "Folders" => list(String.t() | atom())
      }

  """
  @type file_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_integration_association() :: %{
        "ClientAssociationMetadata" => map(),
        "ClientId" => String.t() | atom(),
        "EventBridgeRuleName" => String.t() | atom(),
        "EventIntegrationAssociationArn" => String.t() | atom(),
        "EventIntegrationAssociationId" => String.t() | atom(),
        "EventIntegrationName" => String.t() | atom()
      }

  """
  @type event_integration_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      duplicate_resource_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type duplicate_resource_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_integration() :: %{
        "Description" => String.t() | atom(),
        "EventBridgeBus" => String.t() | atom(),
        "EventFilter" => event_filter(),
        "EventIntegrationArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type event_integration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_summary() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "SourceURI" => String.t() | atom()
      }

  """
  @type data_integration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      on_demand_configuration() :: %{
        "EndTime" => String.t() | atom(),
        "StartTime" => String.t() | atom()
      }

  """
  @type on_demand_configuration() :: %{(String.t() | atom()) => any()}

  @type create_application_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | resource_quota_exceeded_exception()
          | invalid_request_exception()
          | unsupported_operation_exception()

  @type create_data_integration_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | resource_quota_exceeded_exception()
          | invalid_request_exception()

  @type create_data_integration_association_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | resource_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_event_integration_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | resource_quota_exceeded_exception()
          | invalid_request_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_data_integration_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_event_integration_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_application_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_data_integration_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_event_integration_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_application_associations_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_applications_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()

  @type list_data_integration_associations_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_data_integrations_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()

  @type list_event_integration_associations_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_event_integrations_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | internal_service_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | internal_service_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | internal_service_error()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_application_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type update_data_integration_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_data_integration_association_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_event_integration_errors() ::
          throttling_exception()
          | internal_service_error()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-07-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "app-integrations",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AppIntegrations",
      signature_version: "v4",
      signing_name: "app-integrations",
      target_prefix: nil
    }
  end

  @doc """
  Creates and persists an Application resource.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
  Creates and persists a DataIntegration resource.

  You cannot create a DataIntegration association for a DataIntegration that has
  been
  previously associated. Use a different DataIntegration, or recreate the
  DataIntegration
  using the `CreateDataIntegration` API.
  """
  @spec create_data_integration(map(), create_data_integration_request(), list()) ::
          {:ok, create_data_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_integration_errors()}
  def create_data_integration(%Client{} = client, input, options \\ []) do
    url_path = "/dataIntegrations"
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
  Creates and persists a DataIntegrationAssociation resource.
  """
  @spec create_data_integration_association(
          map(),
          String.t() | atom(),
          create_data_integration_association_request(),
          list()
        ) ::
          {:ok, create_data_integration_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_integration_association_errors()}
  def create_data_integration_association(
        %Client{} = client,
        data_integration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/dataIntegrations/#{AWS.Util.encode_uri(data_integration_identifier)}/associations"

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
  Creates an EventIntegration, given a specified name, description, and a
  reference to an
  Amazon EventBridge bus in your account and a partner event source that pushes
  events to
  that bus.

  No objects are created in the your account, only metadata that is persisted on
  the
  EventIntegration control plane.
  """
  @spec create_event_integration(map(), create_event_integration_request(), list()) ::
          {:ok, create_event_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_integration_errors()}
  def create_event_integration(%Client{} = client, input, options \\ []) do
    url_path = "/eventIntegrations"
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
  Deletes the Application.

  Only Applications that don't have any Application Associations
  can be deleted.
  """
  @spec delete_application(map(), String.t() | atom(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, arn, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(arn)}"
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
  Deletes the DataIntegration.

  Only DataIntegrations that don't have any
  DataIntegrationAssociations can be deleted. Deleting a DataIntegration also
  deletes the
  underlying Amazon AppFlow flow and service linked role.

  You cannot create a DataIntegration association for a DataIntegration that has
  been previously associated.
  Use a different DataIntegration, or recreate the DataIntegration using the
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  API.
  """
  @spec delete_data_integration(
          map(),
          String.t() | atom(),
          delete_data_integration_request(),
          list()
        ) ::
          {:ok, delete_data_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_integration_errors()}
  def delete_data_integration(
        %Client{} = client,
        data_integration_identifier,
        input,
        options \\ []
      ) do
    url_path = "/dataIntegrations/#{AWS.Util.encode_uri(data_integration_identifier)}"
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
  Deletes the specified existing event integration.

  If the event integration is associated
  with clients, the request is rejected.
  """
  @spec delete_event_integration(
          map(),
          String.t() | atom(),
          delete_event_integration_request(),
          list()
        ) ::
          {:ok, delete_event_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_integration_errors()}
  def delete_event_integration(%Client{} = client, name, input, options \\ []) do
    url_path = "/eventIntegrations/#{AWS.Util.encode_uri(name)}"
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
  Get an Application resource.
  """
  @spec get_application(map(), String.t() | atom(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, arn, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the DataIntegration.

  You cannot create a DataIntegration association for a DataIntegration that has
  been previously associated.
  Use a different DataIntegration, or recreate the DataIntegration using the
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  API.
  """
  @spec get_data_integration(map(), String.t() | atom(), list()) ::
          {:ok, get_data_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_integration_errors()}
  def get_data_integration(%Client{} = client, identifier, options \\ []) do
    url_path = "/dataIntegrations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the event integration.
  """
  @spec get_event_integration(map(), String.t() | atom(), list()) ::
          {:ok, get_event_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_integration_errors()}
  def get_event_integration(%Client{} = client, name, options \\ []) do
    url_path = "/eventIntegrations/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of application associations for an application.
  """
  @spec list_application_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_application_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_associations_errors()}
  def list_application_associations(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/associations"
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
  Lists applications in the account.
  """
  @spec list_applications(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
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
  Returns a paginated list of DataIntegration associations in the account.

  You cannot create a DataIntegration association for a DataIntegration that has
  been previously associated.
  Use a different DataIntegration, or recreate the DataIntegration using the
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  API.
  """
  @spec list_data_integration_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_integration_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_integration_associations_errors()}
  def list_data_integration_associations(
        %Client{} = client,
        data_integration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/dataIntegrations/#{AWS.Util.encode_uri(data_integration_identifier)}/associations"

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
  Returns a paginated list of DataIntegrations in the account.

  You cannot create a DataIntegration association for a DataIntegration that has
  been previously associated.
  Use a different DataIntegration, or recreate the DataIntegration using the
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  API.
  """
  @spec list_data_integrations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_integrations_errors()}
  def list_data_integrations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/dataIntegrations"
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
  Returns a paginated list of event integration associations in the account.
  """
  @spec list_event_integration_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_event_integration_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_integration_associations_errors()}
  def list_event_integration_associations(
        %Client{} = client,
        event_integration_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/eventIntegrations/#{AWS.Util.encode_uri(event_integration_name)}/associations"
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
  Returns a paginated list of event integrations in the account.
  """
  @spec list_event_integrations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_event_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_integrations_errors()}
  def list_event_integrations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/eventIntegrations"
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
  Lists the tags for the specified resource.
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
  Adds the specified tags to the specified resource.
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
  Removes the specified tags from the specified resource.
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
  Updates and persists an Application resource.
  """
  @spec update_application(map(), String.t() | atom(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, arn, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(arn)}"
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
      200
    )
  end

  @doc """
  Updates the description of a DataIntegration.

  You cannot create a DataIntegration association for a DataIntegration that has
  been previously associated.
  Use a different DataIntegration, or recreate the DataIntegration using the
  [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
  API.
  """
  @spec update_data_integration(
          map(),
          String.t() | atom(),
          update_data_integration_request(),
          list()
        ) ::
          {:ok, update_data_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_integration_errors()}
  def update_data_integration(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/dataIntegrations/#{AWS.Util.encode_uri(identifier)}"
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
      200
    )
  end

  @doc """
  Updates and persists a DataIntegrationAssociation resource.

  Updating a DataIntegrationAssociation with ExecutionConfiguration will rerun the
  on-demand job.
  """
  @spec update_data_integration_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_data_integration_association_request(),
          list()
        ) ::
          {:ok, update_data_integration_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_integration_association_errors()}
  def update_data_integration_association(
        %Client{} = client,
        data_integration_association_identifier,
        data_integration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/dataIntegrations/#{AWS.Util.encode_uri(data_integration_identifier)}/associations/#{AWS.Util.encode_uri(data_integration_association_identifier)}"

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
      200
    )
  end

  @doc """
  Updates the description of an event integration.
  """
  @spec update_event_integration(
          map(),
          String.t() | atom(),
          update_event_integration_request(),
          list()
        ) ::
          {:ok, update_event_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_event_integration_errors()}
  def update_event_integration(%Client{} = client, name, input, options \\ []) do
    url_path = "/eventIntegrations/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end
end
