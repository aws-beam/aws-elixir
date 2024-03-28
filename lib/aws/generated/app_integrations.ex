# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppIntegrations do
  @moduledoc """
  The Amazon AppIntegrations service enables you to configure and reuse
  connections to external
  applications.

  For information about how you can use external applications with Amazon Connect,
  see
  [Set up pre-built integrations](https://docs.aws.amazon.com/connect/latest/adminguide/crm.html)
  and [Deliver information to agents using Amazon Connect
  Wisdom](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-wisdom.html)
  in the *Amazon Connect Administrator
  Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      external_url_config() :: %{
        "AccessUrl" => String.t(),
        "ApprovedOrigins" => list(String.t()())
      }

  """
  @type external_url_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_association_summary() :: %{
        "ClientId" => String.t(),
        "DataIntegrationArn" => String.t(),
        "DataIntegrationAssociationArn" => String.t()
      }

  """
  @type data_integration_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_integration_response() :: %{}

  """
  @type update_data_integration_response() :: %{}

  @typedoc """

  ## Example:

      unsupported_operation_exception() :: %{
        "Message" => String.t()
      }

  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_integration_request() :: %{}

  """
  @type get_event_integration_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_data_integration_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_data_integration_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_integration_associations_response() :: %{
        "DataIntegrationAssociations" => list(data_integration_association_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_data_integration_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_integrations_response() :: %{
        "DataIntegrations" => list(data_integration_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_data_integrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_integration_response() :: %{
        "Description" => String.t(),
        "EventBridgeBus" => String.t(),
        "EventFilter" => event_filter(),
        "EventIntegrationArn" => String.t(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type get_event_integration_response() :: %{String.t() => any()}

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
  @type application_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_integration_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("FileConfiguration") => file_configuration(),
        optional("ObjectConfiguration") => map(),
        optional("ScheduleConfig") => schedule_configuration(),
        optional("Tags") => map(),
        required("KmsKey") => String.t(),
        required("Name") => String.t(),
        required("SourceURI") => String.t()
      }

  """
  @type create_data_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_integration_associations_response() :: %{
        "EventIntegrationAssociations" => list(event_integration_association()()),
        "NextToken" => String.t()
      }

  """
  @type list_event_integration_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_integration_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_event_integration_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_integration_response() :: %{
        "EventIntegrationArn" => String.t()
      }

  """
  @type create_event_integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_association_summary() :: %{
        "ApplicationArn" => String.t(),
        "ApplicationAssociationArn" => String.t(),
        "ClientId" => String.t()
      }

  """
  @type application_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_application_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_application_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_integrations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_data_integrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_integration_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("EventBridgeBus") => String.t(),
        required("EventFilter") => event_filter(),
        required("Name") => String.t()
      }

  """
  @type create_event_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Permissions") => list(String.t()()),
        optional("Publications") => list(publication()()),
        optional("Subscriptions") => list(subscription()()),
        optional("Tags") => map(),
        required("ApplicationSourceConfig") => application_source_config(),
        required("Name") => String.t(),
        required("Namespace") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_integration_response() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "FileConfiguration" => file_configuration(),
        "Id" => String.t(),
        "KmsKey" => String.t(),
        "Name" => String.t(),
        "ObjectConfiguration" => map(),
        "ScheduleConfiguration" => schedule_configuration(),
        "SourceURI" => String.t(),
        "Tags" => map()
      }

  """
  @type get_data_integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_filter() :: %{
        "Source" => String.t()
      }

  """
  @type event_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_event_integration_response() :: %{}

  """
  @type update_event_integration_response() :: %{}

  @typedoc """

  ## Example:

      update_event_integration_request() :: %{
        optional("Description") => String.t()
      }

  """
  @type update_event_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      delete_event_integration_response() :: %{}

  """
  @type delete_event_integration_response() :: %{}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("ApplicationSourceConfig") => application_source_config(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("Permissions") => list(String.t()()),
        optional("Publications") => list(publication()()),
        optional("Subscriptions") => list(subscription()())
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{}

  """
  @type update_application_response() :: %{}

  @typedoc """

  ## Example:

      publication() :: %{
        "Description" => String.t(),
        "Event" => String.t(),
        "Schema" => String.t()
      }

  """
  @type publication() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        "ApplicationSourceConfig" => application_source_config(),
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Namespace" => String.t(),
        "Permissions" => list(String.t()()),
        "Publications" => list(publication()()),
        "Subscriptions" => list(subscription()()),
        "Tags" => map()
      }

  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_data_integration_response() :: %{
        "Arn" => String.t(),
        "ClientToken" => String.t(),
        "Description" => String.t(),
        "FileConfiguration" => file_configuration(),
        "Id" => String.t(),
        "KmsKey" => String.t(),
        "Name" => String.t(),
        "ObjectConfiguration" => map(),
        "ScheduleConfiguration" => schedule_configuration(),
        "SourceURI" => String.t(),
        "Tags" => map()
      }

  """
  @type create_data_integration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_integration_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_data_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_error() :: %{
        "Message" => String.t()
      }

  """
  @type internal_service_error() :: %{String.t() => any()}

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

      schedule_configuration() :: %{
        "FirstExecutionFrom" => String.t(),
        "Object" => String.t(),
        "ScheduleExpression" => String.t()
      }

  """
  @type schedule_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_integration_request() :: %{}

  """
  @type delete_event_integration_request() :: %{}

  @typedoc """

  ## Example:

      subscription() :: %{
        "Description" => String.t(),
        "Event" => String.t()
      }

  """
  @type subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_integration_response() :: %{}

  """
  @type delete_data_integration_response() :: %{}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Namespace" => String.t()
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_application_associations_response() :: %{
        "ApplicationAssociations" => list(application_association_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_application_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "Applications" => list(application_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_integrations_response() :: %{
        "EventIntegrations" => list(event_integration()()),
        "NextToken" => String.t()
      }

  """
  @type list_event_integrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_integrations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_event_integrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_configuration() :: %{
        "Filters" => map(),
        "Folders" => list(String.t()())
      }

  """
  @type file_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_integration_association() :: %{
        "ClientAssociationMetadata" => map(),
        "ClientId" => String.t(),
        "EventBridgeRuleName" => String.t(),
        "EventIntegrationAssociationArn" => String.t(),
        "EventIntegrationAssociationId" => String.t(),
        "EventIntegrationName" => String.t()
      }

  """
  @type event_integration_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      duplicate_resource_exception() :: %{
        "Message" => String.t()
      }

  """
  @type duplicate_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_integration() :: %{
        "Description" => String.t(),
        "EventBridgeBus" => String.t(),
        "EventFilter" => event_filter(),
        "EventIntegrationArn" => String.t(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type event_integration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_integration_summary() :: %{
        "Arn" => String.t(),
        "Name" => String.t(),
        "SourceURI" => String.t()
      }

  """
  @type data_integration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

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
      protocol: "rest-json",
      service_id: "AppIntegrations",
      signature_version: "v4",
      signing_name: "app-integrations",
      target_prefix: nil
    }
  end

  @doc """
  This API is in preview release and subject to change.

  Creates and persists an Application resource.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
          | {:error, create_data_integration_errors()}
  def create_data_integration(%Client{} = client, input, options \\ []) do
    url_path = "/dataIntegrations"
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
          | {:error, create_event_integration_errors()}
  def create_event_integration(%Client{} = client, input, options \\ []) do
    url_path = "/eventIntegrations"
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
      200
    )
  end

  @doc """
  Deletes the Application.

  Only Applications that don't have any Application Associations can be deleted.
  """
  @spec delete_application(map(), String.t(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, arn, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(arn)}"
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
  @spec delete_data_integration(map(), String.t(), delete_data_integration_request(), list()) ::
          {:ok, delete_data_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_integration_errors()}
  def delete_data_integration(
        %Client{} = client,
        data_integration_identifier,
        input,
        options \\ []
      ) do
    url_path = "/dataIntegrations/#{AWS.Util.encode_uri(data_integration_identifier)}"
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
      200
    )
  end

  @doc """
  Deletes the specified existing event integration.

  If the event integration is associated
  with clients, the request is rejected.
  """
  @spec delete_event_integration(map(), String.t(), delete_event_integration_request(), list()) ::
          {:ok, delete_event_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_integration_errors()}
  def delete_event_integration(%Client{} = client, name, input, options \\ []) do
    url_path = "/eventIntegrations/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  This API is in preview release and subject to change.

  Get an Application resource.
  """
  @spec get_application(map(), String.t(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_data_integration(map(), String.t(), list()) ::
          {:ok, get_data_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_event_integration(map(), String.t(), list()) ::
          {:ok, get_event_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_application_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release and subject to change.

  Lists applications in the account.
  """
  @spec list_applications(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_data_integration_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_data_integrations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_data_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_event_integration_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_event_integrations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_event_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Removes the specified tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This API is in preview release and subject to change.

  Updates and persists an Application resource.
  """
  @spec update_application(map(), String.t(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, arn, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
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
  @spec update_data_integration(map(), String.t(), update_data_integration_request(), list()) ::
          {:ok, update_data_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_integration_errors()}
  def update_data_integration(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/dataIntegrations/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the description of an event integration.
  """
  @spec update_event_integration(map(), String.t(), update_event_integration_request(), list()) ::
          {:ok, update_event_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_integration_errors()}
  def update_event_integration(%Client{} = client, name, input, options \\ []) do
    url_path = "/eventIntegrations/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
