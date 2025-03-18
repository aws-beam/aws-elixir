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

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_slack_channel_configuration_request() :: %{
        optional("channelName") => String.t(),
        optional("notifyOnAddCorrespondenceToCase") => boolean(),
        optional("notifyOnCreateOrReopenCase") => boolean(),
        optional("notifyOnResolveCase") => boolean(),
        required("channelId") => String.t(),
        required("channelRoleArn") => String.t(),
        required("notifyOnCaseSeverity") => String.t(),
        required("teamId") => String.t()
      }

  """
  @type create_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_slack_channel_configuration_result() :: %{}

  """
  @type create_slack_channel_configuration_result() :: %{}

  @typedoc """

  ## Example:

      delete_account_alias_request() :: %{}

  """
  @type delete_account_alias_request() :: %{}

  @typedoc """

  ## Example:

      delete_account_alias_result() :: %{}

  """
  @type delete_account_alias_result() :: %{}

  @typedoc """

  ## Example:

      delete_slack_channel_configuration_request() :: %{
        required("channelId") => String.t(),
        required("teamId") => String.t()
      }

  """
  @type delete_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_slack_channel_configuration_result() :: %{}

  """
  @type delete_slack_channel_configuration_result() :: %{}

  @typedoc """

  ## Example:

      delete_slack_workspace_configuration_request() :: %{
        required("teamId") => String.t()
      }

  """
  @type delete_slack_workspace_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_slack_workspace_configuration_result() :: %{}

  """
  @type delete_slack_workspace_configuration_result() :: %{}

  @typedoc """

  ## Example:

      get_account_alias_request() :: %{}

  """
  @type get_account_alias_request() :: %{}

  @typedoc """

  ## Example:

      get_account_alias_result() :: %{
        optional("accountAlias") => String.t()
      }

  """
  @type get_account_alias_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_slack_channel_configurations_request() :: %{
        optional("nextToken") => String.t()
      }

  """
  @type list_slack_channel_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_slack_channel_configurations_result() :: %{
        optional("nextToken") => String.t(),
        required("slackChannelConfigurations") => list(slack_channel_configuration()())
      }

  """
  @type list_slack_channel_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_slack_workspace_configurations_request() :: %{
        optional("nextToken") => String.t()
      }

  """
  @type list_slack_workspace_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_slack_workspace_configurations_result() :: %{
        optional("nextToken") => String.t(),
        optional("slackWorkspaceConfigurations") => list(slack_workspace_configuration()())
      }

  """
  @type list_slack_workspace_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_alias_request() :: %{
        required("accountAlias") => String.t()
      }

  """
  @type put_account_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_account_alias_result() :: %{}

  """
  @type put_account_alias_result() :: %{}

  @typedoc """

  ## Example:

      register_slack_workspace_for_organization_request() :: %{
        required("teamId") => String.t()
      }

  """
  @type register_slack_workspace_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_slack_workspace_for_organization_result() :: %{
        optional("accountType") => String.t(),
        optional("teamId") => String.t(),
        optional("teamName") => String.t()
      }

  """
  @type register_slack_workspace_for_organization_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slack_channel_configuration() :: %{
        "channelId" => String.t(),
        "channelName" => String.t(),
        "channelRoleArn" => String.t(),
        "notifyOnAddCorrespondenceToCase" => boolean(),
        "notifyOnCaseSeverity" => String.t(),
        "notifyOnCreateOrReopenCase" => boolean(),
        "notifyOnResolveCase" => boolean(),
        "teamId" => String.t()
      }

  """
  @type slack_channel_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slack_workspace_configuration() :: %{
        "allowOrganizationMemberAccount" => boolean(),
        "teamId" => String.t(),
        "teamName" => String.t()
      }

  """
  @type slack_workspace_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_slack_channel_configuration_request() :: %{
        optional("channelName") => String.t(),
        optional("channelRoleArn") => String.t(),
        optional("notifyOnAddCorrespondenceToCase") => boolean(),
        optional("notifyOnCaseSeverity") => String.t(),
        optional("notifyOnCreateOrReopenCase") => boolean(),
        optional("notifyOnResolveCase") => boolean(),
        required("channelId") => String.t(),
        required("teamId") => String.t()
      }

  """
  @type update_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_slack_channel_configuration_result() :: %{
        optional("channelId") => String.t(),
        optional("channelName") => String.t(),
        optional("channelRoleArn") => String.t(),
        optional("notifyOnAddCorrespondenceToCase") => boolean(),
        optional("notifyOnCaseSeverity") => String.t(),
        optional("notifyOnCreateOrReopenCase") => boolean(),
        optional("notifyOnResolveCase") => boolean(),
        optional("teamId") => String.t()
      }

  """
  @type update_slack_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type create_slack_channel_configuration_errors() ::
          validation_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_account_alias_errors() ::
          resource_not_found_exception() | internal_server_exception() | access_denied_exception()

  @type delete_slack_channel_configuration_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_slack_workspace_configuration_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_account_alias_errors() :: internal_server_exception()

  @type list_slack_channel_configurations_errors() ::
          internal_server_exception() | access_denied_exception()

  @type list_slack_workspace_configurations_errors() ::
          internal_server_exception() | access_denied_exception()

  @type put_account_alias_errors() ::
          validation_exception() | internal_server_exception() | access_denied_exception()

  @type register_slack_workspace_for_organization_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_slack_channel_configuration_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2021-08-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "supportapp",
      global?: false,
      hostname: nil,
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
  @spec create_slack_channel_configuration(
          map(),
          create_slack_channel_configuration_request(),
          list()
        ) ::
          {:ok, create_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_slack_channel_configuration_errors()}
  def create_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/control/create-slack-channel-configuration"
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
  Deletes an alias for an Amazon Web Services account ID.

  The alias appears in the Amazon Web Services Support App page of the
  Amazon Web Services Support Center. The alias also appears in Slack messages
  from the Amazon Web Services Support App.
  """
  @spec delete_account_alias(map(), delete_account_alias_request(), list()) ::
          {:ok, delete_account_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_account_alias_errors()}
  def delete_account_alias(%Client{} = client, input, options \\ []) do
    url_path = "/control/delete-account-alias"
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
  Deletes a Slack channel configuration from your Amazon Web Services account.

  This operation doesn't
  delete your Slack channel.
  """
  @spec delete_slack_channel_configuration(
          map(),
          delete_slack_channel_configuration_request(),
          list()
        ) ::
          {:ok, delete_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_slack_channel_configuration_errors()}
  def delete_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/control/delete-slack-channel-configuration"
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
  Deletes a Slack workspace configuration from your Amazon Web Services account.

  This operation doesn't
  delete your Slack workspace.
  """
  @spec delete_slack_workspace_configuration(
          map(),
          delete_slack_workspace_configuration_request(),
          list()
        ) ::
          {:ok, delete_slack_workspace_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_slack_workspace_configuration_errors()}
  def delete_slack_workspace_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/control/delete-slack-workspace-configuration"
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
  Retrieves the alias from an Amazon Web Services account ID.

  The alias appears in the Amazon Web Services Support App page of
  the Amazon Web Services Support Center. The alias also appears in Slack messages
  from the Amazon Web Services Support App.
  """
  @spec get_account_alias(map(), get_account_alias_request(), list()) ::
          {:ok, get_account_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_alias_errors()}
  def get_account_alias(%Client{} = client, input, options \\ []) do
    url_path = "/control/get-account-alias"
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
  Lists the Slack channel configurations for an Amazon Web Services account.
  """
  @spec list_slack_channel_configurations(
          map(),
          list_slack_channel_configurations_request(),
          list()
        ) ::
          {:ok, list_slack_channel_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_slack_channel_configurations_errors()}
  def list_slack_channel_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/control/list-slack-channel-configurations"
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
  Lists the Slack workspace configurations for an Amazon Web Services account.
  """
  @spec list_slack_workspace_configurations(
          map(),
          list_slack_workspace_configurations_request(),
          list()
        ) ::
          {:ok, list_slack_workspace_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_slack_workspace_configurations_errors()}
  def list_slack_workspace_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/control/list-slack-workspace-configurations"
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
  Creates or updates an individual alias for each Amazon Web Services account ID.

  The alias appears in the
  Amazon Web Services Support App page of the Amazon Web Services Support Center.
  The alias also appears in Slack messages from the
  Amazon Web Services Support App.
  """
  @spec put_account_alias(map(), put_account_alias_request(), list()) ::
          {:ok, put_account_alias_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_account_alias_errors()}
  def put_account_alias(%Client{} = client, input, options \\ []) do
    url_path = "/control/put-account-alias"
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
  @spec register_slack_workspace_for_organization(
          map(),
          register_slack_workspace_for_organization_request(),
          list()
        ) ::
          {:ok, register_slack_workspace_for_organization_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_slack_workspace_for_organization_errors()}
  def register_slack_workspace_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/control/register-slack-workspace-for-organization"
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
  Updates the configuration for a Slack channel, such as case update
  notifications.
  """
  @spec update_slack_channel_configuration(
          map(),
          update_slack_channel_configuration_request(),
          list()
        ) ::
          {:ok, update_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_slack_channel_configuration_errors()}
  def update_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/control/update-slack-channel-configuration"
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
