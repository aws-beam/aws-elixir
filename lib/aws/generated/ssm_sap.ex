# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SsmSap do
  @moduledoc """
  This API reference provides descriptions, syntax, and other details about each
  of the
  actions and data types for AWS Systems Manager for SAP.

  The topic for each action shows
  the API request parameters and responses.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_component_output() :: %{
        optional("Component") => component(),
        optional("Tags") => map()
      }

  """
  @type get_component_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      operation() :: %{
        "EndTime" => [non_neg_integer()],
        "Id" => String.t() | atom(),
        "LastUpdatedTime" => [non_neg_integer()],
        "Properties" => map(),
        "ResourceArn" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom(),
        "StartTime" => [non_neg_integer()],
        "Status" => list(any()),
        "StatusMessage" => [String.t() | atom()],
        "Type" => String.t() | atom()
      }

  """
  @type operation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_permission_output() :: %{
        optional("Policy") => [String.t() | atom()]
      }

  """
  @type put_resource_permission_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_application_output() :: %{
        "OperationId" => String.t() | atom()
      }

  """
  @type start_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      database() :: %{
        "ApplicationId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "ComponentId" => String.t() | atom(),
        "ConnectedComponentArns" => list(String.t() | atom()),
        "Credentials" => list(application_credential()),
        "DatabaseId" => String.t() | atom(),
        "DatabaseName" => [String.t() | atom()],
        "DatabaseType" => list(any()),
        "LastUpdated" => [non_neg_integer()],
        "PrimaryHost" => [String.t() | atom()],
        "SQLPort" => [integer()],
        "Status" => list(any())
      }

  """
  @type database() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_application_output() :: %{
        "OperationId" => String.t() | atom()
      }

  """
  @type stop_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      register_application_output() :: %{
        optional("Application") => application(),
        optional("OperationId") => String.t() | atom()
      }

  """
  @type register_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_operations_output() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("Operations") => list(operation())
      }

  """
  @type list_operations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      database_connection() :: %{
        "ConnectionIp" => [String.t() | atom()],
        "DatabaseArn" => String.t() | atom(),
        "DatabaseConnectionMethod" => list(any())
      }

  """
  @type database_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ip_address_member() :: %{
        "AllocationType" => list(any()),
        "IpAddress" => [String.t() | atom()],
        "Primary" => [boolean()]
      }

  """
  @type ip_address_member() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      backint_config() :: %{
        "BackintMode" => list(any()),
        "EnsureNoBackupInProcess" => [boolean()]
      }

  """
  @type backint_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_permission_output() :: %{
        optional("Policy") => [String.t() | atom()]
      }

  """
  @type delete_resource_permission_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_operation_events_output() :: %{
        "NextToken" => String.t() | atom(),
        "OperationEvents" => list(operation_event())
      }

  """
  @type list_operation_events_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_summary() :: %{
        "ApplicationId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "ComponentId" => String.t() | atom(),
        "ComponentType" => list(any()),
        "Tags" => map()
      }

  """
  @type component_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_components_output() :: %{
        optional("Components") => list(component_summary()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_components_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resilience() :: %{
        "ClusterStatus" => list(any()),
        "EnqueueReplication" => [boolean()],
        "HsrOperationMode" => list(any()),
        "HsrReplicationMode" => list(any()),
        "HsrTier" => [String.t() | atom()]
      }

  """
  @type resilience() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_application_input() :: %{
        optional("IncludeEc2InstanceShutdown") => [boolean()],
        optional("StopConnectedEntity") => list(any()),
        required("ApplicationId") => String.t() | atom()
      }

  """
  @type stop_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_databases_input() :: %{
        optional("ApplicationId") => String.t() | atom(),
        optional("ComponentId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_databases_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_operation_events_input() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("OperationId") => String.t() | atom()
      }

  """
  @type list_operation_events_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_output() :: %{
        optional("Applications") => list(application_summary()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_applications_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_application_input() :: %{
        required("ApplicationId") => String.t() | atom()
      }

  """
  @type deregister_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_operation_output() :: %{
        optional("Operation") => operation()
      }

  """
  @type get_operation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_credential() :: %{
        "CredentialType" => list(any()),
        "DatabaseName" => String.t() | atom(),
        "SecretId" => String.t() | atom()
      }

  """
  @type application_credential() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_application_refresh_input() :: %{
        required("ApplicationId") => String.t() | atom()
      }

  """
  @type start_application_refresh_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_input() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_applications_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_database_output() :: %{
        optional("Database") => database(),
        optional("Tags") => map()
      }

  """
  @type get_database_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_operation_input() :: %{
        required("OperationId") => String.t() | atom()
      }

  """
  @type get_operation_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_settings_output() :: %{
        optional("Message") => [String.t() | atom()],
        optional("OperationIds") => list(String.t() | atom())
      }

  """
  @type update_application_settings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_databases_output() :: %{
        optional("Databases") => list(database_summary()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_databases_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component() :: %{
        "ApplicationId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociatedHost" => associated_host(),
        "ChildComponents" => list(String.t() | atom()),
        "ComponentId" => String.t() | atom(),
        "ComponentType" => list(any()),
        "DatabaseConnection" => database_connection(),
        "Databases" => list(String.t() | atom()),
        "HdbVersion" => [String.t() | atom()],
        "Hosts" => list(host()),
        "LastUpdated" => [non_neg_integer()],
        "ParentComponent" => String.t() | atom(),
        "PrimaryHost" => [String.t() | atom()],
        "Resilience" => resilience(),
        "SapFeature" => [String.t() | atom()],
        "SapHostname" => [String.t() | atom()],
        "SapKernelVersion" => [String.t() | atom()],
        "Sid" => String.t() | atom(),
        "Status" => list(any()),
        "SystemNumber" => String.t() | atom()
      }

  """
  @type component() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_components_input() :: %{
        optional("ApplicationId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_components_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application() :: %{
        "AppRegistryArn" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociatedApplicationArns" => list(String.t() | atom()),
        "Components" => list(String.t() | atom()),
        "DiscoveryStatus" => list(any()),
        "Id" => String.t() | atom(),
        "LastUpdated" => [non_neg_integer()],
        "Status" => list(any()),
        "StatusMessage" => [String.t() | atom()],
        "Type" => list(any())
      }

  """
  @type application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_permission_input() :: %{
        optional("ActionType") => list(any()),
        optional("SourceResourceArn") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type delete_resource_permission_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_application_output() :: %{}

  """
  @type deregister_application_output() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_database_input() :: %{
        optional("ApplicationId") => String.t() | atom(),
        optional("ComponentId") => String.t() | atom(),
        optional("DatabaseArn") => String.t() | atom(),
        optional("DatabaseId") => String.t() | atom()
      }

  """
  @type get_database_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      operation_event() :: %{
        "Description" => [String.t() | atom()],
        "Resource" => resource(),
        "Status" => list(any()),
        "StatusMessage" => [String.t() | atom()],
        "Timestamp" => [non_neg_integer()]
      }

  """
  @type operation_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Name" => String.t() | atom(),
        "Operator" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      host() :: %{
        "EC2InstanceId" => [String.t() | atom()],
        "HostIp" => [String.t() | atom()],
        "HostName" => [String.t() | atom()],
        "HostRole" => list(any()),
        "InstanceId" => [String.t() | atom()],
        "OsVersion" => [String.t() | atom()]
      }

  """
  @type host() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_application_input() :: %{
        required("ApplicationId") => String.t() | atom()
      }

  """
  @type start_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_output() :: %{
        optional("Application") => application(),
        optional("Tags") => map()
      }

  """
  @type get_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_component_input() :: %{
        required("ApplicationId") => String.t() | atom(),
        required("ComponentId") => String.t() | atom()
      }

  """
  @type get_component_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_host() :: %{
        "Ec2InstanceId" => [String.t() | atom()],
        "Hostname" => [String.t() | atom()],
        "IpAddresses" => list(ip_address_member()),
        "OsVersion" => [String.t() | atom()]
      }

  """
  @type associated_host() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_info() :: %{
        "ComponentType" => list(any()),
        "Ec2InstanceId" => String.t() | atom(),
        "Sid" => String.t() | atom()
      }

  """
  @type component_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_settings_input() :: %{
        optional("Backint") => backint_config(),
        optional("CredentialsToAddOrUpdate") => list(application_credential()),
        optional("CredentialsToRemove") => list(application_credential()),
        optional("DatabaseArn") => String.t() | atom(),
        required("ApplicationId") => String.t() | atom()
      }

  """
  @type update_application_settings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | atom()]
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

      list_operations_input() :: %{
        optional("Filters") => list(filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ApplicationId") => String.t() | atom()
      }

  """
  @type list_operations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      database_summary() :: %{
        "ApplicationId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "ComponentId" => String.t() | atom(),
        "DatabaseId" => String.t() | atom(),
        "DatabaseType" => list(any()),
        "Tags" => map()
      }

  """
  @type database_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_permission_input() :: %{
        optional("ActionType") => list(any()),
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type get_resource_permission_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_application_refresh_output() :: %{
        "OperationId" => String.t() | atom()
      }

  """
  @type start_application_refresh_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "Arn" => String.t() | atom(),
        "DiscoveryStatus" => list(any()),
        "Id" => String.t() | atom(),
        "Tags" => map(),
        "Type" => list(any())
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_permission_input() :: %{
        required("ActionType") => list(any()),
        required("ResourceArn") => String.t() | atom(),
        required("SourceResourceArn") => String.t() | atom()
      }

  """
  @type put_resource_permission_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_permission_output() :: %{
        optional("Policy") => [String.t() | atom()]
      }

  """
  @type get_resource_permission_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_input() :: %{
        optional("AppRegistryArn") => String.t() | atom(),
        optional("ApplicationArn") => String.t() | atom(),
        optional("ApplicationId") => String.t() | atom()
      }

  """
  @type get_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_application_input() :: %{
        optional("ComponentsInfo") => list(component_info()),
        optional("Credentials") => list(application_credential()),
        optional("DatabaseArn") => String.t() | atom(),
        optional("SapInstanceNumber") => String.t() | atom(),
        optional("Sid") => String.t() | atom(),
        optional("Tags") => map(),
        required("ApplicationId") => String.t() | atom(),
        required("ApplicationType") => list(any()),
        required("Instances") => list(String.t() | atom())
      }

  """
  @type register_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "ResourceArn" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @type delete_resource_permission_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type deregister_application_errors() ::
          validation_exception() | internal_server_exception() | unauthorized_exception()

  @type get_application_errors() :: validation_exception() | internal_server_exception()

  @type get_component_errors() ::
          validation_exception() | internal_server_exception() | unauthorized_exception()

  @type get_database_errors() :: validation_exception() | internal_server_exception()

  @type get_operation_errors() :: validation_exception() | internal_server_exception()

  @type get_resource_permission_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_applications_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_components_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_databases_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_operation_events_errors() :: validation_exception() | internal_server_exception()

  @type list_operations_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type put_resource_permission_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type register_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_application_refresh_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type stop_application_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | conflict_exception()

  @type update_application_settings_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-sap",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Ssm Sap",
      signature_version: "v4",
      signing_name: "ssm-sap",
      target_prefix: nil
    }
  end

  @doc """
  Removes permissions associated with the target database.
  """
  @spec delete_resource_permission(map(), delete_resource_permission_input(), list()) ::
          {:ok, delete_resource_permission_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_permission_errors()}
  def delete_resource_permission(%Client{} = client, input, options \\ []) do
    url_path = "/delete-resource-permission"
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
  Deregister an SAP application with AWS Systems Manager for SAP.

  This action does not
  aﬀect the existing setup of your SAP workloads on Amazon EC2.
  """
  @spec deregister_application(map(), deregister_application_input(), list()) ::
          {:ok, deregister_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_application_errors()}
  def deregister_application(%Client{} = client, input, options \\ []) do
    url_path = "/deregister-application"
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
  Gets an application registered with AWS Systems Manager for SAP.

  It also returns the
  components of the application.
  """
  @spec get_application(map(), get_application_input(), list()) ::
          {:ok, get_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, input, options \\ []) do
    url_path = "/get-application"
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
  Gets the component of an application registered with AWS Systems Manager for
  SAP.
  """
  @spec get_component(map(), get_component_input(), list()) ::
          {:ok, get_component_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_component_errors()}
  def get_component(%Client{} = client, input, options \\ []) do
    url_path = "/get-component"
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
  Gets the SAP HANA database of an application registered with AWS Systems Manager
  for
  SAP.
  """
  @spec get_database(map(), get_database_input(), list()) ::
          {:ok, get_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_database_errors()}
  def get_database(%Client{} = client, input, options \\ []) do
    url_path = "/get-database"
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
  Gets the details of an operation by specifying the operation ID.
  """
  @spec get_operation(map(), get_operation_input(), list()) ::
          {:ok, get_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_operation_errors()}
  def get_operation(%Client{} = client, input, options \\ []) do
    url_path = "/get-operation"
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
  Gets permissions associated with the target database.
  """
  @spec get_resource_permission(map(), get_resource_permission_input(), list()) ::
          {:ok, get_resource_permission_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_permission_errors()}
  def get_resource_permission(%Client{} = client, input, options \\ []) do
    url_path = "/get-resource-permission"
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
  Lists all the applications registered with AWS Systems Manager for SAP.
  """
  @spec list_applications(map(), list_applications_input(), list()) ::
          {:ok, list_applications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, input, options \\ []) do
    url_path = "/list-applications"
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
  Lists all the components registered with AWS Systems Manager for SAP.
  """
  @spec list_components(map(), list_components_input(), list()) ::
          {:ok, list_components_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_components_errors()}
  def list_components(%Client{} = client, input, options \\ []) do
    url_path = "/list-components"
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
  Lists the SAP HANA databases of an application registered with AWS Systems
  Manager for
  SAP.
  """
  @spec list_databases(map(), list_databases_input(), list()) ::
          {:ok, list_databases_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_databases_errors()}
  def list_databases(%Client{} = client, input, options \\ []) do
    url_path = "/list-databases"
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
  Returns a list of operations events.

  Available parameters include `OperationID`, as well as optional parameters
  `MaxResults`, `NextToken`, and `Filters`.
  """
  @spec list_operation_events(map(), list_operation_events_input(), list()) ::
          {:ok, list_operation_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_operation_events_errors()}
  def list_operation_events(%Client{} = client, input, options \\ []) do
    url_path = "/list-operation-events"
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
  Lists the operations performed by AWS Systems Manager for SAP.
  """
  @spec list_operations(map(), list_operations_input(), list()) ::
          {:ok, list_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_operations_errors()}
  def list_operations(%Client{} = client, input, options \\ []) do
    url_path = "/list-operations"
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
  Lists all tags on an SAP HANA application and/or database registered with AWS
  Systems
  Manager for SAP.
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
  Adds permissions to the target database.
  """
  @spec put_resource_permission(map(), put_resource_permission_input(), list()) ::
          {:ok, put_resource_permission_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_permission_errors()}
  def put_resource_permission(%Client{} = client, input, options \\ []) do
    url_path = "/put-resource-permission"
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
  Register an SAP application with AWS Systems Manager for SAP.

  You must meet the
  following requirements before registering.

  The SAP application you want to register with AWS Systems Manager for SAP is
  running
  on Amazon EC2.

  AWS Systems Manager Agent must be setup on an Amazon EC2 instance along with the
  required
  IAM permissions.

  Amazon EC2 instance(s) must have access to the secrets created in AWS Secrets
  Manager to
  manage SAP applications and components.
  """
  @spec register_application(map(), register_application_input(), list()) ::
          {:ok, register_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_application_errors()}
  def register_application(%Client{} = client, input, options \\ []) do
    url_path = "/register-application"
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
  Request is an operation which starts an application.

  Parameter `ApplicationId` is required.
  """
  @spec start_application(map(), start_application_input(), list()) ::
          {:ok, start_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_application_errors()}
  def start_application(%Client{} = client, input, options \\ []) do
    url_path = "/start-application"
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
  Refreshes a registered application.
  """
  @spec start_application_refresh(map(), start_application_refresh_input(), list()) ::
          {:ok, start_application_refresh_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_application_refresh_errors()}
  def start_application_refresh(%Client{} = client, input, options \\ []) do
    url_path = "/start-application-refresh"
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
  Request is an operation to stop an application.

  Parameter `ApplicationId` is required. Parameters
  `StopConnectedEntity` and `IncludeEc2InstanceShutdown` are
  optional.
  """
  @spec stop_application(map(), stop_application_input(), list()) ::
          {:ok, stop_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_application_errors()}
  def stop_application(%Client{} = client, input, options \\ []) do
    url_path = "/stop-application"
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
  Creates tag for a resource by specifying the ARN.
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
  Delete the tags for a resource.
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
  Updates the settings of an application registered with AWS Systems Manager for
  SAP.
  """
  @spec update_application_settings(map(), update_application_settings_input(), list()) ::
          {:ok, update_application_settings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_settings_errors()}
  def update_application_settings(%Client{} = client, input, options \\ []) do
    url_path = "/update-application-settings"
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
