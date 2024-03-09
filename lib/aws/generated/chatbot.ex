# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Chatbot do
  @moduledoc """
  AWS Chatbot API
  """

  alias AWS.Client
  alias AWS.Request

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
