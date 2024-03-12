# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Chatbot do
  @moduledoc """
  AWS Chatbot API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  create_teams_channel_configuration_request() :: %{
    optional("ChannelName") => String.t(),
    optional("GuardrailPolicyArns") => list(String.t()()),
    optional("LoggingLevel") => String.t(),
    optional("SnsTopicArns") => list(String.t()()),
    optional("TeamName") => String.t(),
    optional("UserAuthorizationRequired") => boolean(),
    required("ChannelId") => String.t(),
    required("ConfigurationName") => String.t(),
    required("IamRoleArn") => String.t(),
    required("TeamId") => String.t(),
    required("TenantId") => String.t()
  }
  """
  @type create_teams_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_workspace_authorization_fault() :: %{
    "Message" => String.t()
  }
  """
  @type delete_slack_workspace_authorization_fault() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_teams_channel_configurations_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("TeamId") => String.t()
  }
  """
  @type list_teams_channel_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_teams_configured_team_request() :: %{
    required("TeamId") => String.t()
  }
  """
  @type delete_teams_configured_team_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_channel_configuration_result() :: %{

  }
  """
  @type delete_slack_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_channel_configurations_request() :: %{
    optional("ChatConfigurationArn") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type describe_slack_channel_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_workspace_authorization_result() :: %{

  }
  """
  @type delete_slack_workspace_authorization_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_workspaces_exception() :: %{
    "Message" => String.t()
  }
  """
  @type describe_slack_workspaces_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_account_preferences_request() :: %{
    optional("TrainingDataCollectionEnabled") => boolean(),
    optional("UserAuthorizationRequired") => boolean()
  }
  """
  @type update_account_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_slack_channel_configuration_result() :: %{
    "ChannelConfiguration" => slack_channel_configuration()
  }
  """
  @type create_slack_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_teams_channel_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type delete_teams_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_microsoft_teams_configured_teams_result() :: %{
    "ConfiguredTeams" => list(configured_team()()),
    "NextToken" => String.t()
  }
  """
  @type list_microsoft_teams_configured_teams_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_microsoft_teams_configured_teams_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_microsoft_teams_configured_teams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_slack_channel_configuration_request() :: %{
    optional("GuardrailPolicyArns") => list(String.t()()),
    optional("IamRoleArn") => String.t(),
    optional("LoggingLevel") => String.t(),
    optional("SlackChannelName") => String.t(),
    optional("SnsTopicArns") => list(String.t()()),
    optional("UserAuthorizationRequired") => boolean(),
    required("ChatConfigurationArn") => String.t(),
    required("SlackChannelId") => String.t()
  }
  """
  @type update_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_teams_channel_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type update_teams_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_microsoft_teams_configured_teams_exception() :: %{
    "Message" => String.t()
  }
  """
  @type list_microsoft_teams_configured_teams_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_teams_configured_team_result() :: %{

  }
  """
  @type delete_teams_configured_team_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_channel_configuration_request() :: %{
    required("ChatConfigurationArn") => String.t()
  }
  """
  @type delete_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_account_preferences_exception() :: %{
    "Message" => String.t()
  }
  """
  @type get_account_preferences_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_microsoft_teams_user_identity_result() :: %{

  }
  """
  @type delete_microsoft_teams_user_identity_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_chime_webhook_configuration_result() :: %{
    "WebhookConfiguration" => chime_webhook_configuration()
  }
  """
  @type create_chime_webhook_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_teams_channel_configuration_request() :: %{
    optional("ChannelName") => String.t(),
    optional("GuardrailPolicyArns") => list(String.t()()),
    optional("IamRoleArn") => String.t(),
    optional("LoggingLevel") => String.t(),
    optional("SnsTopicArns") => list(String.t()()),
    optional("UserAuthorizationRequired") => boolean(),
    required("ChannelId") => String.t(),
    required("ChatConfigurationArn") => String.t()
  }
  """
  @type update_teams_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_chime_webhook_configurations_result() :: %{
    "NextToken" => String.t(),
    "WebhookConfigurations" => list(chime_webhook_configuration()())
  }
  """
  @type describe_chime_webhook_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_microsoft_teams_user_identities_request() :: %{
    optional("ChatConfigurationArn") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_microsoft_teams_user_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "message" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_user_identity_result() :: %{

  }
  """
  @type delete_slack_user_identity_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  teams_user_identity() :: %{
    "AwsUserIdentity" => String.t(),
    "ChatConfigurationArn" => String.t(),
    "IamRoleArn" => String.t(),
    "TeamId" => String.t(),
    "TeamsChannelId" => String.t(),
    "TeamsTenantId" => String.t(),
    "UserId" => String.t()
  }
  """
  @type teams_user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_account_preferences_result() :: %{
    "AccountPreferences" => account_preferences()
  }
  """
  @type get_account_preferences_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_account_preferences_result() :: %{
    "AccountPreferences" => account_preferences()
  }
  """
  @type update_account_preferences_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_teams_configured_team_exception() :: %{
    "Message" => String.t()
  }
  """
  @type delete_teams_configured_team_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_account_preferences_request() :: %{

  }
  """
  @type get_account_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_request_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_slack_channel_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type create_slack_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_workspaces_result() :: %{
    "NextToken" => String.t(),
    "SlackWorkspaces" => list(slack_workspace()())
  }
  """
  @type describe_slack_workspaces_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_teams_channel_configuration_request() :: %{
    required("ChatConfigurationArn") => String.t()
  }
  """
  @type delete_teams_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_teams_channel_configurations_exception() :: %{
    "Message" => String.t()
  }
  """
  @type list_teams_channel_configurations_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_chime_webhook_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type update_chime_webhook_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_teams_channel_configuration_result() :: %{
    "ChannelConfiguration" => teams_channel_configuration()
  }
  """
  @type create_teams_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_microsoft_teams_user_identity_request() :: %{
    required("ChatConfigurationArn") => String.t(),
    required("UserId") => String.t()
  }
  """
  @type delete_microsoft_teams_user_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_teams_channel_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type create_teams_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_teams_channel_configurations_result() :: %{
    "NextToken" => String.t(),
    "TeamChannelConfigurations" => list(teams_channel_configuration()())
  }
  """
  @type list_teams_channel_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_chime_webhook_configuration_result() :: %{
    "WebhookConfiguration" => chime_webhook_configuration()
  }
  """
  @type update_chime_webhook_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  account_preferences() :: %{
    "TrainingDataCollectionEnabled" => boolean(),
    "UserAuthorizationRequired" => boolean()
  }
  """
  @type account_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_account_preferences_exception() :: %{
    "Message" => String.t()
  }
  """
  @type update_account_preferences_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_microsoft_teams_user_identity_exception() :: %{
    "Message" => String.t()
  }
  """
  @type delete_microsoft_teams_user_identity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  slack_workspace() :: %{
    "SlackTeamId" => String.t(),
    "SlackTeamName" => String.t()
  }
  """
  @type slack_workspace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_chime_webhook_configuration_request() :: %{
    optional("LoggingLevel") => String.t(),
    required("ConfigurationName") => String.t(),
    required("IamRoleArn") => String.t(),
    required("SnsTopicArns") => list(String.t()()),
    required("WebhookDescription") => String.t(),
    required("WebhookUrl") => String.t()
  }
  """
  @type create_chime_webhook_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_workspaces_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type describe_slack_workspaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_teams_channel_configuration_request() :: %{
    required("ChatConfigurationArn") => String.t()
  }
  """
  @type get_teams_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_slack_channel_configuration_request() :: %{
    optional("GuardrailPolicyArns") => list(String.t()()),
    optional("LoggingLevel") => String.t(),
    optional("SlackChannelName") => String.t(),
    optional("SnsTopicArns") => list(String.t()()),
    optional("UserAuthorizationRequired") => boolean(),
    required("ConfigurationName") => String.t(),
    required("IamRoleArn") => String.t(),
    required("SlackChannelId") => String.t(),
    required("SlackTeamId") => String.t()
  }
  """
  @type create_slack_channel_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_chime_webhook_configuration_request() :: %{
    optional("IamRoleArn") => String.t(),
    optional("LoggingLevel") => String.t(),
    optional("SnsTopicArns") => list(String.t()()),
    optional("WebhookDescription") => String.t(),
    optional("WebhookUrl") => String.t(),
    required("ChatConfigurationArn") => String.t()
  }
  """
  @type update_chime_webhook_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  configured_team() :: %{
    "TeamId" => String.t(),
    "TeamName" => String.t(),
    "TenantId" => String.t()
  }
  """
  @type configured_team() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_user_identity_request() :: %{
    required("ChatConfigurationArn") => String.t(),
    required("SlackTeamId") => String.t(),
    required("SlackUserId") => String.t()
  }
  """
  @type delete_slack_user_identity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_slack_channel_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type update_slack_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_user_identity_exception() :: %{
    "Message" => String.t()
  }
  """
  @type delete_slack_user_identity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_chime_webhook_configurations_exception() :: %{
    "Message" => String.t()
  }
  """
  @type describe_chime_webhook_configurations_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_microsoft_teams_user_identities_exception() :: %{
    "Message" => String.t()
  }
  """
  @type list_microsoft_teams_user_identities_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_chime_webhook_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type delete_chime_webhook_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_parameter_exception() :: %{
    "message" => String.t()
  }
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_workspace_authorization_request() :: %{
    required("SlackTeamId") => String.t()
  }
  """
  @type delete_slack_workspace_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_user_identities_exception() :: %{
    "Message" => String.t()
  }
  """
  @type describe_slack_user_identities_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  slack_channel_configuration() :: %{
    "ChatConfigurationArn" => String.t(),
    "ConfigurationName" => String.t(),
    "GuardrailPolicyArns" => list(String.t()()),
    "IamRoleArn" => String.t(),
    "LoggingLevel" => String.t(),
    "SlackChannelId" => String.t(),
    "SlackChannelName" => String.t(),
    "SlackTeamId" => String.t(),
    "SlackTeamName" => String.t(),
    "SnsTopicArns" => list(String.t()()),
    "UserAuthorizationRequired" => boolean()
  }
  """
  @type slack_channel_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_microsoft_teams_user_identities_result() :: %{
    "NextToken" => String.t(),
    "TeamsUserIdentities" => list(teams_user_identity()())
  }
  """
  @type list_microsoft_teams_user_identities_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_teams_channel_configuration_result() :: %{
    "ChannelConfiguration" => teams_channel_configuration()
  }
  """
  @type get_teams_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  chime_webhook_configuration() :: %{
    "ChatConfigurationArn" => String.t(),
    "ConfigurationName" => String.t(),
    "IamRoleArn" => String.t(),
    "LoggingLevel" => String.t(),
    "SnsTopicArns" => list(String.t()()),
    "WebhookDescription" => String.t()
  }
  """
  @type chime_webhook_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  slack_user_identity() :: %{
    "AwsUserIdentity" => String.t(),
    "ChatConfigurationArn" => String.t(),
    "IamRoleArn" => String.t(),
    "SlackTeamId" => String.t(),
    "SlackUserId" => String.t()
  }
  """
  @type slack_user_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_chime_webhook_configuration_result() :: %{

  }
  """
  @type delete_chime_webhook_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_chime_webhook_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type create_chime_webhook_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_teams_channel_configuration_result() :: %{

  }
  """
  @type delete_teams_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_chime_webhook_configurations_request() :: %{
    optional("ChatConfigurationArn") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type describe_chime_webhook_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_slack_channel_configuration_result() :: %{
    "ChannelConfiguration" => slack_channel_configuration()
  }
  """
  @type update_slack_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_teams_channel_configuration_result() :: %{
    "ChannelConfiguration" => teams_channel_configuration()
  }
  """
  @type update_teams_channel_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  teams_channel_configuration() :: %{
    "ChannelId" => String.t(),
    "ChannelName" => String.t(),
    "ChatConfigurationArn" => String.t(),
    "ConfigurationName" => String.t(),
    "GuardrailPolicyArns" => list(String.t()()),
    "IamRoleArn" => String.t(),
    "LoggingLevel" => String.t(),
    "SnsTopicArns" => list(String.t()()),
    "TeamId" => String.t(),
    "TeamName" => String.t(),
    "TenantId" => String.t(),
    "UserAuthorizationRequired" => boolean()
  }
  """
  @type teams_channel_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_user_identities_result() :: %{
    "NextToken" => String.t(),
    "SlackUserIdentities" => list(slack_user_identity()())
  }
  """
  @type describe_slack_user_identities_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_slack_channel_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type delete_slack_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_chime_webhook_configuration_request() :: %{
    required("ChatConfigurationArn") => String.t()
  }
  """
  @type delete_chime_webhook_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_teams_channel_configuration_exception() :: %{
    "Message" => String.t()
  }
  """
  @type get_teams_channel_configuration_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_user_identities_request() :: %{
    optional("ChatConfigurationArn") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type describe_slack_user_identities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_channel_configurations_exception() :: %{
    "Message" => String.t()
  }
  """
  @type describe_slack_channel_configurations_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_slack_channel_configurations_result() :: %{
    "NextToken" => String.t(),
    "SlackChannelConfigurations" => list(slack_channel_configuration()())
  }
  """
  @type describe_slack_channel_configurations_result() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2017-10-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "chatbot",
      global?: false,
      protocol: "rest-json",
      service_id: "chatbot",
      signature_version: "v4",
      signing_name: "chatbot",
      target_prefix: nil
    }
  end

  @doc """
  Creates Chime Webhook Configuration
  """
  @spec create_chime_webhook_configuration(
          map(),
          create_chime_webhook_configuration_request(),
          list()
        ) ::
          {:ok, create_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, create_chime_webhook_configuration_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
  def create_chime_webhook_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/create-chime-webhook-configuration"
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
      201
    )
  end

  @doc """
  Creates MS Teams Channel Configuration
  """
  @spec create_microsoft_teams_channel_configuration(
          map(),
          create_teams_channel_configuration_request(),
          list()
        ) ::
          {:ok, create_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, create_teams_channel_configuration_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
  def create_microsoft_teams_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/create-ms-teams-channel-configuration"
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
      201
    )
  end

  @doc """
  Creates Slack Channel Configuration
  """
  @spec create_slack_channel_configuration(
          map(),
          create_slack_channel_configuration_request(),
          list()
        ) ::
          {:ok, create_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, conflict_exception()}
          | {:error, create_slack_channel_configuration_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, limit_exceeded_exception()}
  def create_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/create-slack-channel-configuration"
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
      201
    )
  end

  @doc """
  Deletes a Chime Webhook Configuration
  """
  @spec delete_chime_webhook_configuration(
          map(),
          delete_chime_webhook_configuration_request(),
          list()
        ) ::
          {:ok, delete_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_chime_webhook_configuration_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def delete_chime_webhook_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/delete-chime-webhook-configuration"
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
      204
    )
  end

  @doc """
  Deletes MS Teams Channel Configuration
  """
  @spec delete_microsoft_teams_channel_configuration(
          map(),
          delete_teams_channel_configuration_request(),
          list()
        ) ::
          {:ok, delete_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_teams_channel_configuration_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def delete_microsoft_teams_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/delete-ms-teams-channel-configuration"
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
      204
    )
  end

  @doc """
  Deletes the Microsoft Teams team authorization allowing for channels to be
  configured in that Microsoft Teams team.

  Note that the Microsoft Teams team must have no channels configured to remove
  it.
  """
  @spec delete_microsoft_teams_configured_team(
          map(),
          delete_teams_configured_team_request(),
          list()
        ) ::
          {:ok, delete_teams_configured_team_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_teams_configured_team_exception()}
          | {:error, invalid_parameter_exception()}
  def delete_microsoft_teams_configured_team(%Client{} = client, input, options \\ []) do
    url_path = "/delete-ms-teams-configured-teams"
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
      204
    )
  end

  @doc """
  Deletes a Teams user identity
  """
  @spec delete_microsoft_teams_user_identity(
          map(),
          delete_microsoft_teams_user_identity_request(),
          list()
        ) ::
          {:ok, delete_microsoft_teams_user_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_microsoft_teams_user_identity_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, resource_not_found_exception()}
  def delete_microsoft_teams_user_identity(%Client{} = client, input, options \\ []) do
    url_path = "/delete-ms-teams-user-identity"
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
      204
    )
  end

  @doc """
  Deletes Slack Channel Configuration
  """
  @spec delete_slack_channel_configuration(
          map(),
          delete_slack_channel_configuration_request(),
          list()
        ) ::
          {:ok, delete_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_slack_channel_configuration_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def delete_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/delete-slack-channel-configuration"
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
      204
    )
  end

  @doc """
  Deletes a Slack user identity
  """
  @spec delete_slack_user_identity(map(), delete_slack_user_identity_request(), list()) ::
          {:ok, delete_slack_user_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_slack_user_identity_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, resource_not_found_exception()}
  def delete_slack_user_identity(%Client{} = client, input, options \\ []) do
    url_path = "/delete-slack-user-identity"
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
      204
    )
  end

  @doc """
  Deletes the Slack workspace authorization that allows channels to be configured
  in that workspace.

  This requires all configured channels in the workspace to be deleted.
  """
  @spec delete_slack_workspace_authorization(
          map(),
          delete_slack_workspace_authorization_request(),
          list()
        ) ::
          {:ok, delete_slack_workspace_authorization_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_slack_workspace_authorization_fault()}
          | {:error, invalid_parameter_exception()}
  def delete_slack_workspace_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/delete-slack-workspace-authorization"
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
      204
    )
  end

  @doc """
  Lists Chime Webhook Configurations optionally filtered by ChatConfigurationArn
  """
  @spec describe_chime_webhook_configurations(
          map(),
          describe_chime_webhook_configurations_request(),
          list()
        ) ::
          {:ok, describe_chime_webhook_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_chime_webhook_configurations_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
  def describe_chime_webhook_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/describe-chime-webhook-configurations"
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
  Lists Slack Channel Configurations optionally filtered by ChatConfigurationArn
  """
  @spec describe_slack_channel_configurations(
          map(),
          describe_slack_channel_configurations_request(),
          list()
        ) ::
          {:ok, describe_slack_channel_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_slack_channel_configurations_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
  def describe_slack_channel_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/describe-slack-channel-configurations"
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
  Lists all Slack user identities with a mapped role.
  """
  @spec describe_slack_user_identities(map(), describe_slack_user_identities_request(), list()) ::
          {:ok, describe_slack_user_identities_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_slack_user_identities_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
  def describe_slack_user_identities(%Client{} = client, input, options \\ []) do
    url_path = "/describe-slack-user-identities"
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
  Lists all authorized Slack Workspaces for AWS Account
  """
  @spec describe_slack_workspaces(map(), describe_slack_workspaces_request(), list()) ::
          {:ok, describe_slack_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_slack_workspaces_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
  def describe_slack_workspaces(%Client{} = client, input, options \\ []) do
    url_path = "/describe-slack-workspaces"
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
  Get Chatbot account level preferences
  """
  @spec get_account_preferences(map(), get_account_preferences_request(), list()) ::
          {:ok, get_account_preferences_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_preferences_exception()}
          | {:error, invalid_request_exception()}
  def get_account_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/get-account-preferences"
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
  Get a single MS Teams Channel Configurations
  """
  @spec get_microsoft_teams_channel_configuration(
          map(),
          get_teams_channel_configuration_request(),
          list()
        ) ::
          {:ok, get_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_teams_channel_configuration_exception()}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
  def get_microsoft_teams_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/get-ms-teams-channel-configuration"
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
  Lists MS Teams Channel Configurations optionally filtered by TeamId
  """
  @spec list_microsoft_teams_channel_configurations(
          map(),
          list_teams_channel_configurations_request(),
          list()
        ) ::
          {:ok, list_teams_channel_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, list_teams_channel_configurations_exception()}
  def list_microsoft_teams_channel_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/list-ms-teams-channel-configurations"
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
  Lists all authorized MS teams for AWS Account
  """
  @spec list_microsoft_teams_configured_teams(
          map(),
          list_microsoft_teams_configured_teams_request(),
          list()
        ) ::
          {:ok, list_microsoft_teams_configured_teams_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, list_microsoft_teams_configured_teams_exception()}
  def list_microsoft_teams_configured_teams(%Client{} = client, input, options \\ []) do
    url_path = "/list-ms-teams-configured-teams"
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
  Lists all Microsoft Teams user identities with a mapped role.
  """
  @spec list_microsoft_teams_user_identities(
          map(),
          list_microsoft_teams_user_identities_request(),
          list()
        ) ::
          {:ok, list_microsoft_teams_user_identities_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, list_microsoft_teams_user_identities_exception()}
  def list_microsoft_teams_user_identities(%Client{} = client, input, options \\ []) do
    url_path = "/list-ms-teams-user-identities"
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
  Update Chatbot account level preferences
  """
  @spec update_account_preferences(map(), update_account_preferences_request(), list()) ::
          {:ok, update_account_preferences_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, update_account_preferences_exception()}
  def update_account_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/update-account-preferences"
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
  Updates a Chime Webhook Configuration
  """
  @spec update_chime_webhook_configuration(
          map(),
          update_chime_webhook_configuration_request(),
          list()
        ) ::
          {:ok, update_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, update_chime_webhook_configuration_exception()}
  def update_chime_webhook_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/update-chime-webhook-configuration"
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
  Updates MS Teams Channel Configuration
  """
  @spec update_microsoft_teams_channel_configuration(
          map(),
          update_teams_channel_configuration_request(),
          list()
        ) ::
          {:ok, update_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, update_teams_channel_configuration_exception()}
  def update_microsoft_teams_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/update-ms-teams-channel-configuration"
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
  Updates Slack Channel Configuration
  """
  @spec update_slack_channel_configuration(
          map(),
          update_slack_channel_configuration_request(),
          list()
        ) ::
          {:ok, update_slack_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invalid_parameter_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, update_slack_channel_configuration_exception()}
  def update_slack_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/update-slack-channel-configuration"
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
