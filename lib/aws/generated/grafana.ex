# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Grafana do
  @moduledoc """
  Amazon Managed Grafana is a fully managed and secure data visualization service
  that you can use to instantly query, correlate, and visualize operational
  metrics, logs, and traces from multiple sources.

  Amazon Managed Grafana makes it easy to deploy, operate, and scale Grafana, a
  widely deployed data visualization tool that is popular for its extensible data
  support.

  With Amazon Managed Grafana, you create logically isolated Grafana servers
  called *workspaces*. In a workspace, you can create Grafana dashboards and
  visualizations to analyze your metrics, logs, and traces without having to
  build, package, or deploy any hardware to run Grafana servers.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
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

  Upgrading to Grafana Enterprise incurs additional fees. For more information,
  see [Upgrade a workspace to Grafana Enterprise](https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html).
  """
  def associate_license(%Client{} = client, license_type, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/licenses/#{AWS.Util.encode_uri(license_type)}"

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
      202
    )
  end

  @doc """
  Creates a *workspace*.

  In a workspace, you can create Grafana dashboards and visualizations to analyze
  your metrics, logs, and traces. You don't have to build, package, or deploy any
  hardware to run the Grafana server.

  Don't use `CreateWorkspace` to modify an existing workspace. Instead, use
  [UpdateWorkspace](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html).
  """
  def create_workspace(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces"
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
      202
    )
  end

  @doc """
  Deletes an Amazon Managed Grafana workspace.
  """
  def delete_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Displays information about one Amazon Managed Grafana workspace.
  """
  def describe_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Displays information about the authentication methods used in one Amazon Managed
  Grafana workspace.
  """
  def describe_workspace_authentication(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/authentication"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Removes the Grafana Enterprise license from a workspace.
  """
  def disassociate_license(%Client{} = client, license_type, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/licenses/#{AWS.Util.encode_uri(license_type)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Lists the users and groups who have the Grafana `Admin` and `Editor` roles in
  this workspace.

  If you use this operation without specifying `userId` or `groupId`, the
  operation returns the roles of all users and groups. If you specify a `userId`
  or a `groupId`, only the roles for that user or group are returned. If you do
  this, you can specify only one `userId` or one `groupId`.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a list of Amazon Managed Grafana workspaces in the account, with some
  information about each workspace.

  For more complete information about one workspace, use
  [DescribeWorkspace](https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html).
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Updates which users in a workspace have the Grafana `Admin` or `Editor` roles.
  """
  def update_permissions(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/permissions"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

  If you use this operation and omit any optional parameters, the existing values
  of those parameters are not changed.

  To modify the user authentication methods that the workspace uses, such as SAML
  or Amazon Web Services SSO, use
  [UpdateWorkspaceAuthentication](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html).  To modify which users in the workspace have the `Admin` and `Editor` Grafana
  roles, use
  [UpdatePermissions](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html).
  """
  def update_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Use this operation to define the identity provider (IdP) that this workspace
  authenticates users from, using SAML.

  You can also map SAML assertion attributes to workspace user information and
  define which groups in the assertion attribute are to have the `Admin` and
  `Editor` roles in the workspace.
  """
  def update_workspace_authentication(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/authentication"
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
      200
    )
  end
end
