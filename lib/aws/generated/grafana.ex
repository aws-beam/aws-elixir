# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Grafana do
  @moduledoc """
  Amazon Managed Grafana is a fully managed and secure data visualization service
  that
  you can use to instantly query, correlate, and visualize operational metrics,
  logs, and
  traces from multiple sources.

  Amazon Managed Grafana makes it easy to deploy, operate, and
  scale Grafana, a widely deployed data visualization tool that is popular for its
  extensible data support.

  With Amazon Managed Grafana, you create logically isolated Grafana servers
  called
  *workspaces*. In a workspace, you can create Grafana dashboards
  and visualizations to analyze your metrics, logs, and traces without having to
  build,
  package, or deploy any hardware to run Grafana servers.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  list_permissions_response() :: %{
    optional("nextToken") => String.t(),
    required("permissions") => list(permission_entry()())
  }
  """
  @type list_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vpc_configuration() :: %{
    "securityGroupIds" => list(String.t()()),
    "subnetIds" => list(String.t()())
  }
  """
  @type vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_workspace_configuration_request() :: %{
    optional("grafanaVersion") => String.t(),
    required("configuration") => String.t()
  }
  """
  @type update_workspace_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_workspace_api_key_response() :: %{
    required("key") => String.t(),
    required("keyName") => String.t(),
    required("workspaceId") => String.t()
  }
  """
  @type create_workspace_api_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_workspace_authentication_response() :: %{
    required("authentication") => authentication_description()
  }
  """
  @type describe_workspace_authentication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  network_access_configuration() :: %{
    "prefixListIds" => list(String.t()()),
    "vpceIds" => list(String.t()())
  }
  """
  @type network_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  saml_authentication() :: %{
    "configuration" => saml_configuration(),
    "status" => String.t()
  }
  """
  @type saml_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  workspace_summary() :: %{
    "authentication" => authentication_summary(),
    "created" => [non_neg_integer()],
    "description" => String.t(),
    "endpoint" => String.t(),
    "grafanaToken" => String.t(),
    "grafanaVersion" => String.t(),
    "id" => String.t(),
    "licenseType" => String.t(),
    "modified" => [non_neg_integer()],
    "name" => String.t(),
    "notificationDestinations" => list(String.t()()),
    "status" => String.t(),
    "tags" => map()
  }
  """
  @type workspace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_workspace_configuration_request() :: %{

  }
  """
  @type describe_workspace_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_workspace_api_key_request() :: %{
    required("keyName") => String.t(),
    required("keyRole") => [String.t()],
    required("secondsToLive") => [integer()]
  }
  """
  @type create_workspace_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_workspace_response() :: %{
    required("workspace") => workspace_description()
  }
  """
  @type delete_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_workspace_configuration_response() :: %{

  }
  """
  @type update_workspace_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  authentication_description() :: %{
    "awsSso" => aws_sso_authentication(),
    "providers" => list(String.t()()),
    "saml" => saml_authentication()
  }
  """
  @type authentication_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_workspace_authentication_response() :: %{
    required("authentication") => authentication_description()
  }
  """
  @type update_workspace_authentication_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_error() :: %{
    "causedBy" => update_instruction(),
    "code" => [integer()],
    "message" => [String.t()]
  }
  """
  @type update_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_workspace_response() :: %{
    required("workspace") => workspace_description()
  }
  """
  @type describe_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_workspace_configuration_response() :: %{
    optional("grafanaVersion") => String.t(),
    required("configuration") => String.t()
  }
  """
  @type describe_workspace_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "message" => [String.t()],
    "resourceId" => [String.t()],
    "resourceType" => [String.t()]
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => [String.t()],
    "resourceId" => [String.t()],
    "resourceType" => [String.t()]
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_workspace_authentication_request() :: %{
    optional("samlConfiguration") => saml_configuration(),
    required("authenticationProviders") => list(String.t()())
  }
  """
  @type update_workspace_authentication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "message" => [String.t()],
    "quotaCode" => [String.t()],
    "resourceId" => [String.t()],
    "resourceType" => [String.t()],
    "serviceCode" => [String.t()]
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  authentication_summary() :: %{
    "providers" => list(String.t()()),
    "samlConfigurationStatus" => String.t()
  }
  """
  @type authentication_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_license_response() :: %{
    required("workspace") => workspace_description()
  }
  """
  @type associate_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_workspace_request() :: %{

  }
  """
  @type describe_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    optional("tags") => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_workspace_authentication_request() :: %{

  }
  """
  @type describe_workspace_authentication_request() :: %{String.t() => any()}

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
  update_workspace_response() :: %{
    required("workspace") => workspace_description()
  }
  """
  @type update_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_versions_response() :: %{
    "grafanaVersions" => list(String.t()()),
    "nextToken" => String.t()
  }
  """
  @type list_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_workspace_request() :: %{

  }
  """
  @type delete_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_workspace_request() :: %{
    optional("accountAccessType") => String.t(),
    optional("networkAccessControl") => network_access_configuration(),
    optional("organizationRoleName") => String.t(),
    optional("permissionType") => String.t(),
    optional("removeNetworkAccessConfiguration") => [boolean()],
    optional("removeVpcConfiguration") => [boolean()],
    optional("stackSetName") => String.t(),
    optional("vpcConfiguration") => vpc_configuration(),
    optional("workspaceDataSources") => list(String.t()()),
    optional("workspaceDescription") => String.t(),
    optional("workspaceName") => String.t(),
    optional("workspaceNotificationDestinations") => list(String.t()()),
    optional("workspaceOrganizationalUnits") => list(String.t()()),
    optional("workspaceRoleArn") => String.t()
  }
  """
  @type update_workspace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_permissions_request() :: %{
    optional("groupId") => String.t(),
    optional("maxResults") => [integer()],
    optional("nextToken") => String.t(),
    optional("userId") => String.t(),
    optional("userType") => String.t()
  }
  """
  @type list_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  workspace_description() :: %{
    "accountAccessType" => String.t(),
    "authentication" => authentication_summary(),
    "created" => [non_neg_integer()],
    "dataSources" => list(String.t()()),
    "description" => String.t(),
    "endpoint" => String.t(),
    "freeTrialConsumed" => [boolean()],
    "freeTrialExpiration" => [non_neg_integer()],
    "grafanaToken" => String.t(),
    "grafanaVersion" => String.t(),
    "id" => String.t(),
    "licenseExpiration" => [non_neg_integer()],
    "licenseType" => String.t(),
    "modified" => [non_neg_integer()],
    "name" => String.t(),
    "networkAccessControl" => network_access_configuration(),
    "notificationDestinations" => list(String.t()()),
    "organizationRoleName" => String.t(),
    "organizationalUnits" => list(String.t()()),
    "permissionType" => String.t(),
    "stackSetName" => String.t(),
    "status" => String.t(),
    "tags" => map(),
    "vpcConfiguration" => vpc_configuration(),
    "workspaceRoleArn" => String.t()
  }
  """
  @type workspace_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => [String.t()],
    "retryAfterSeconds" => [integer()]
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_workspace_response() :: %{
    required("workspace") => workspace_description()
  }
  """
  @type create_workspace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_workspaces_response() :: %{
    optional("nextToken") => String.t(),
    required("workspaces") => list(workspace_summary()())
  }
  """
  @type list_workspaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_license_request() :: %{
    optional("grafanaToken") => String.t()
  }
  """
  @type associate_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_permissions_response() :: %{
    required("errors") => list(update_error()())
  }
  """
  @type update_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  permission_entry() :: %{
    "role" => String.t(),
    "user" => user()
  }
  """
  @type permission_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  aws_sso_authentication() :: %{
    "ssoClientId" => String.t()
  }
  """
  @type aws_sso_authentication() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "fieldList" => list(validation_exception_field()()),
    "message" => [String.t()],
    "reason" => String.t()
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_workspaces_request() :: %{
    optional("maxResults") => [integer()],
    optional("nextToken") => String.t()
  }
  """
  @type list_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "message" => [String.t()],
    "quotaCode" => [String.t()],
    "retryAfterSeconds" => [integer()],
    "serviceCode" => [String.t()]
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_instruction() :: %{
    "action" => String.t(),
    "role" => String.t(),
    "users" => list(user()())
  }
  """
  @type update_instruction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  user() :: %{
    "id" => String.t(),
    "type" => String.t()
  }
  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_workspace_api_key_request() :: %{

  }
  """
  @type delete_workspace_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_versions_request() :: %{
    optional("maxResults") => [integer()],
    optional("nextToken") => String.t(),
    optional("workspaceId") => String.t()
  }
  """
  @type list_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  assertion_attributes() :: %{
    "email" => String.t(),
    "groups" => String.t(),
    "login" => String.t(),
    "name" => String.t(),
    "org" => String.t(),
    "role" => String.t()
  }
  """
  @type assertion_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  role_values() :: %{
    "admin" => list(String.t()()),
    "editor" => list(String.t()())
  }
  """
  @type role_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_license_response() :: %{
    required("workspace") => workspace_description()
  }
  """
  @type disassociate_license_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_permissions_request() :: %{
    required("updateInstructionBatch") => list(update_instruction()())
  }
  """
  @type update_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_workspace_api_key_response() :: %{
    required("keyName") => String.t(),
    required("workspaceId") => String.t()
  }
  """
  @type delete_workspace_api_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_license_request() :: %{

  }
  """
  @type disassociate_license_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  saml_configuration() :: %{
    "allowedOrganizations" => list(String.t()()),
    "assertionAttributes" => assertion_attributes(),
    "idpMetadata" => list(),
    "loginValidityDuration" => integer(),
    "roleValues" => role_values()
  }
  """
  @type saml_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_workspace_request() :: %{
    optional("clientToken") => String.t(),
    optional("configuration") => String.t(),
    optional("grafanaVersion") => String.t(),
    optional("networkAccessControl") => network_access_configuration(),
    optional("organizationRoleName") => String.t(),
    optional("stackSetName") => String.t(),
    optional("tags") => map(),
    optional("vpcConfiguration") => vpc_configuration(),
    optional("workspaceDataSources") => list(String.t()()),
    optional("workspaceDescription") => String.t(),
    optional("workspaceName") => String.t(),
    optional("workspaceNotificationDestinations") => list(String.t()()),
    optional("workspaceOrganizationalUnits") => list(String.t()()),
    optional("workspaceRoleArn") => String.t(),
    required("accountAccessType") => String.t(),
    required("authenticationProviders") => list(String.t()()),
    required("permissionType") => String.t()
  }
  """
  @type create_workspace_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2020-08-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "grafana",
      global?: false,
      protocol: "rest-json",
      service_id: "grafana",
      signature_version: "v4",
      signing_name: "grafana",
      target_prefix: nil
    }
  end

  @doc """
  Assigns a Grafana Enterprise license to a workspace.

  Upgrading to Grafana Enterprise
  incurs additional fees. For more information, see [Upgrade a workspace to Grafana
  Enterprise](https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html).
  """
  @spec associate_license(map(), String.t(), String.t(), associate_license_request(), list()) ::
          {:ok, associate_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def associate_license(%Client{} = client, license_type, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/licenses/#{AWS.Util.encode_uri(license_type)}"

    {headers, input} =
      [
        {"grafanaToken", "Grafana-Token"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Creates a *workspace*.

  In a workspace, you can create Grafana
  dashboards and visualizations to analyze your metrics, logs, and traces. You
  don't have
  to build, package, or deploy any hardware to run the Grafana server.

  Don't use `CreateWorkspace` to modify an existing workspace. Instead, use
  [UpdateWorkspace](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html).
  """
  @spec create_workspace(map(), create_workspace_request(), list()) ::
          {:ok, create_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_workspace(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces"
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
      202
    )
  end

  @doc """
  Creates a Grafana API key for the workspace.

  This key can be used to authenticate
  requests sent to the workspace's HTTP API. See
  [https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html](https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html)
  for available APIs and example requests.
  """
  @spec create_workspace_api_key(map(), String.t(), create_workspace_api_key_request(), list()) ::
          {:ok, create_workspace_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_workspace_api_key(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/apikeys"
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
  Deletes an Amazon Managed Grafana workspace.
  """
  @spec delete_workspace(map(), String.t(), delete_workspace_request(), list()) ::
          {:ok, delete_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
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
      202
    )
  end

  @doc """
  Deletes a Grafana API key for the workspace.
  """
  @spec delete_workspace_api_key(
          map(),
          String.t(),
          String.t(),
          delete_workspace_api_key_request(),
          list()
        ) ::
          {:ok, delete_workspace_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_workspace_api_key(%Client{} = client, key_name, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/apikeys/#{AWS.Util.encode_uri(key_name)}"

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
  Displays information about one Amazon Managed Grafana workspace.
  """
  @spec describe_workspace(map(), String.t(), list()) ::
          {:ok, describe_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays information about the authentication methods used in one Amazon Managed
  Grafana
  workspace.
  """
  @spec describe_workspace_authentication(map(), String.t(), list()) ::
          {:ok, describe_workspace_authentication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_workspace_authentication(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/authentication"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the current configuration string for the given workspace.
  """
  @spec describe_workspace_configuration(map(), String.t(), list()) ::
          {:ok, describe_workspace_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
  def describe_workspace_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes the Grafana Enterprise license from a workspace.
  """
  @spec disassociate_license(
          map(),
          String.t(),
          String.t(),
          disassociate_license_request(),
          list()
        ) ::
          {:ok, disassociate_license_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def disassociate_license(%Client{} = client, license_type, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/licenses/#{AWS.Util.encode_uri(license_type)}"

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
      202
    )
  end

  @doc """
  Lists the users and groups who have the Grafana `Admin` and
  `Editor` roles in this workspace.

  If you use this operation without
  specifying `userId` or `groupId`, the operation returns the roles
  of all users and groups. If you specify a `userId` or a `groupId`,
  only the roles for that user or group are returned. If you do this, you can
  specify only
  one `userId` or one `groupId`.
  """
  @spec list_permissions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_permissions(
        %Client{} = client,
        workspace_id,
        group_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        user_id \\ nil,
        user_type \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/permissions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_type) do
        [{"userType", user_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(user_id) do
        [{"userId", user_id} | query_params]
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
      if !is_nil(group_id) do
        [{"groupId", group_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `ListTagsForResource` operation returns the tags that are associated
  with the Amazon Managed Service for Grafana resource specified by the
  `resourceArn`.

  Currently, the only resource that can be tagged is a
  workspace.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists available versions of Grafana.

  These are available when calling
  `CreateWorkspace`. Optionally, include a workspace to list the versions
  to which it can be upgraded.
  """
  @spec list_versions(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_versions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        workspace_id \\ nil,
        options \\ []
      ) do
    url_path = "/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workspace_id) do
        [{"workspace-id", workspace_id} | query_params]
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
  Returns a list of Amazon Managed Grafana workspaces in the account, with some
  information
  about each workspace.

  For more complete information about one workspace, use
  [DescribeWorkspace](https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html).
  """
  @spec list_workspaces(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_workspaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
  def list_workspaces(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `TagResource` operation associates tags with an Amazon Managed Grafana
  resource.

  Currently, the only resource that can be tagged is workspaces.

  If you specify a new tag key for the resource, this tag is appended to the list
  of
  tags associated with the resource. If you specify a tag key that is already
  associated
  with the resource, the new tag value that you specify replaces the previous
  value for
  that tag.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  The `UntagResource` operation removes the association of the tag with the
  Amazon Managed Grafana resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  Updates which users in a workspace have the Grafana `Admin` or
  `Editor` roles.
  """
  @spec update_permissions(map(), String.t(), update_permissions_request(), list()) ::
          {:ok, update_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_permissions(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/permissions"
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
  Modifies an existing Amazon Managed Grafana workspace.

  If you use this operation and omit
  any optional parameters, the existing values of those parameters are not
  changed.

  To modify the user authentication methods that the workspace uses, such as SAML
  or
  IAM Identity Center, use
  [UpdateWorkspaceAuthentication](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html).   To modify which users in the workspace have the `Admin` and
  `Editor` Grafana roles, use
  [UpdatePermissions](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html).
  """
  @spec update_workspace(map(), String.t(), update_workspace_request(), list()) ::
          {:ok, update_workspace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Use this operation to define the identity provider (IdP) that this workspace
  authenticates users from, using SAML.

  You can also map SAML assertion attributes to
  workspace user information and define which groups in the assertion attribute
  are to
  have the `Admin` and `Editor` roles in the workspace.

  Changes to the authentication method for a workspace may take a few minutes to
  take effect.
  """
  @spec update_workspace_authentication(
          map(),
          String.t(),
          update_workspace_authentication_request(),
          list()
        ) ::
          {:ok, update_workspace_authentication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_workspace_authentication(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/authentication"
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
  Updates the configuration string for the given workspace
  """
  @spec update_workspace_configuration(
          map(),
          String.t(),
          update_workspace_configuration_request(),
          list()
        ) ::
          {:ok, update_workspace_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_workspace_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end
end
