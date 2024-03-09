# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SupportApp do
  @moduledoc """
  Amazon Web Services Support App in Slack

  You can use the Amazon Web Services Support App in Slack API to manage your
  support cases in Slack for your
  Amazon Web Services account.

  After you configure your Slack workspace and channel with the Amazon Web
  Services Support App, you can
  perform the following tasks directly in your Slack channel:

    *
  Create, search, update, and resolve your support cases

    *
  Request service quota increases for your account

    *
  Invite Amazon Web Services Support agents to your channel so that you can chat
  directly about your
  support cases

  For more information about how to perform these actions in Slack, see the
  following
  documentation in the *Amazon Web Services Support User Guide*:

    *

  [Amazon Web Services Support App in Slack](https://docs.aws.amazon.com/awssupport/latest/user/aws-support-app-for-slack.html)

    *

  [Joining a live chat session with Amazon Web Services Support](https://docs.aws.amazon.com/awssupport/latest/user/joining-a-live-chat-session.html)

    *

  [Requesting service quota increases](https://docs.aws.amazon.com/awssupport/latest/user/service-quota-increase.html)

    *

  [Amazon Web Services Support App commands in Slack](https://docs.aws.amazon.com/awssupport/latest/user/support-app-commands.html)

  You can also use the Amazon Web Services Management Console instead of the
  Amazon Web Services Support App API to manage your Slack
  configurations. For more information, see [Authorize a Slack workspace to enable the Amazon Web Services Support
  App](https://docs.aws.amazon.com/awssupport/latest/user/authorize-slack-workspace.html).

    
  You must have a Business or Enterprise Support plan to use the Amazon Web
  Services Support App API.

    
  For more information about the Amazon Web Services Support App endpoints, see
  the [Amazon Web Services Support App in Slack endpoints](https://docs.aws.amazon.com/general/latest/gr/awssupport.html#awssupport_app_region)
  in the *Amazon Web Services General
  Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2021-08-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "supportapp",
      global?: false,
      protocol: "rest-json",
      service_id: "Support App",
      signature_version: "v4",
      signing_name: "supportapp",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Slack channel configuration for your Amazon Web Services account.

    
  You can add up to 5 Slack workspaces for your account.

    
  You can add up to 20 Slack channels for your account.

  A Slack channel can have up to 100 Amazon Web Services accounts. This means that
  only 100 accounts can
  add the same Slack channel to the Amazon Web Services Support App. We recommend
  that you only add the accounts that
  you need to manage support cases for your organization. This can reduce the
  notifications
  about case updates that you receive in the Slack channel.

  We recommend that you choose a private Slack channel so that only members in
  that
  channel have read and write access to your support cases. Anyone in your Slack
  channel can
  create, update, or resolve support cases for your account. Users require an
  invitation to
  join private channels.
  """
  def create_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/control/create-slack-channel-configuration"
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
  Deletes an alias for an Amazon Web Services account ID.

  The alias appears in the Amazon Web Services Support App page of the
  Amazon Web Services Support Center. The alias also appears in Slack messages
  from the Amazon Web Services Support App.
  """
  def delete_account_alias(%Client{} = client, input, options \\ []) do
    url_path = "/control/delete-account-alias"
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
  Deletes a Slack channel configuration from your Amazon Web Services account.

  This operation doesn't
  delete your Slack channel.
  """
  def delete_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/control/delete-slack-channel-configuration"
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
  Deletes a Slack workspace configuration from your Amazon Web Services account.

  This operation doesn't
  delete your Slack workspace.
  """
  def delete_slack_workspace_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/control/delete-slack-workspace-configuration"
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
  Retrieves the alias from an Amazon Web Services account ID.

  The alias appears in the Amazon Web Services Support App page of
  the Amazon Web Services Support Center. The alias also appears in Slack messages
  from the Amazon Web Services Support App.
  """
  def get_account_alias(%Client{} = client, input, options \\ []) do
    url_path = "/control/get-account-alias"
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
  Lists the Slack channel configurations for an Amazon Web Services account.
  """
  def list_slack_channel_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/control/list-slack-channel-configurations"
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
  Lists the Slack workspace configurations for an Amazon Web Services account.
  """
  def list_slack_workspace_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/control/list-slack-workspace-configurations"
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
  Creates or updates an individual alias for each Amazon Web Services account ID.

  The alias appears in the
  Amazon Web Services Support App page of the Amazon Web Services Support Center.
  The alias also appears in Slack messages from the
  Amazon Web Services Support App.
  """
  def put_account_alias(%Client{} = client, input, options \\ []) do
    url_path = "/control/put-account-alias"
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
  Registers a Slack workspace for your Amazon Web Services account.

  To call this API, your account must be
  part of an organization in Organizations.

  If you're the *management account* and you want to register Slack
  workspaces for your organization, you must complete the following tasks:

    1.
  Sign in to the [Amazon Web Services Support Center](https://console.aws.amazon.com/support/app) and
  authorize the Slack workspaces where you want your organization to have access
  to. See
  [Authorize a Slack workspace](https://docs.aws.amazon.com/awssupport/latest/user/authorize-slack-workspace.html)
  in the *Amazon Web Services Support User
  Guide*.

    2.
  Call the `RegisterSlackWorkspaceForOrganization` API to authorize each
  Slack workspace for the organization.

  After the management account authorizes the Slack workspace, member accounts can
  call this
  API to authorize the same Slack workspace for their individual accounts. Member
  accounts don't
  need to authorize the Slack workspace manually through the [Amazon Web Services Support Center](https://console.aws.amazon.com/support/app).

  To use the Amazon Web Services Support App, each account must then complete the
  following tasks:

    *
  Create an Identity and Access Management (IAM) role with the required
  permission. For more information,
  see [Managing access to the Amazon Web Services Support App](https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html).

    *
  Configure a Slack channel to use the Amazon Web Services Support App for support
  cases for that account. For
  more information, see [Configuring a Slack channel](https://docs.aws.amazon.com/awssupport/latest/user/add-your-slack-channel.html).
  """
  def register_slack_workspace_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/control/register-slack-workspace-for-organization"
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
  Updates the configuration for a Slack channel, such as case update
  notifications.
  """
  def update_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/control/update-slack-channel-configuration"
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
end
