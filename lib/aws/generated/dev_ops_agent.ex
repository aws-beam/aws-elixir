# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DevOpsAgent do
  @moduledoc """
  AWS DevOps Agent is your always-available operations teammate.

  It resolves and proactively prevents incidents, optimizes application
  reliability and performance, and handles on-demand SRE tasks across AWS,
  multicloud, and on-premises environments. AWS DevOps Agent investigates
  incidents as an experienced DevOps engineer would. It learns your applications
  and their relationships. It works with your observability tools, runbooks, code
  repositories, and CI/CD pipelines. The agent correlates telemetry, code, and
  deployment data across all of them.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_private_connections_input() :: %{}

  """
  @type list_private_connections_input() :: %{}

  @typedoc """

  ## Example:

      registered_m_c_p_server_sig_v4_details() :: %{
        "customHeaders" => map(),
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "mcpRoleArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "region" => String.t() | atom(),
        "roleArn" => [String.t() | atom()],
        "service" => [String.t() | atom()]
      }

  """
  @type registered_m_c_p_server_sig_v4_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_file_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "metadata" => [any()],
        "path" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "version" => [integer()]
      }

  """
  @type asset_file_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_chat_response() :: %{
        "createdAt" => [non_neg_integer()],
        "executionId" => String.t() | atom()
      }

  """
  @type create_chat_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_trigger_request() :: %{}

  """
  @type delete_trigger_request() :: %{}

  @typedoc """

  ## Example:

      list_executions_request() :: %{
        optional("limit") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("taskId") => String.t() | atom()
      }

  """
  @type list_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_association_input() :: %{
        optional("capabilities") => map(),
        required("configuration") => list()
      }

  """
  @type update_association_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_api_key_config() :: %{
        "apiKeyHeader" => [String.t() | atom()],
        "apiKeyName" => [String.t() | atom()],
        "apiKeyValue" => String.t() | atom()
      }

  """
  @type m_c_p_server_api_key_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_files_response() :: %{
        "items" => list(asset_file_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_files_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_channel_configuration() :: %{}

  """
  @type event_channel_configuration() :: %{}

  @typedoc """

  ## Example:

      remote_agent_sig_v4_authorization_config() :: %{
        "region" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "service" => [String.t() | atom()]
      }

  """
  @type remote_agent_sig_v4_authorization_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_operator_app_idp_config_input() :: %{
        optional("idpClientSecret") => String.t() | atom()
      }

  """
  @type update_operator_app_idp_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_content_block_start_event() :: %{
        "id" => [String.t() | atom()],
        "index" => [integer()],
        "parentId" => [String.t() | atom()],
        "sequenceNumber" => [integer()],
        "type" => [String.t() | atom()]
      }

  """
  @type send_message_content_block_start_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_content_response() :: %{
        "content" => asset_zip_content(),
        "version" => [integer()]
      }

  """
  @type get_asset_content_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_sig_v4_configuration() :: %{
        "tools" => list([String.t() | atom()]())
      }

  """
  @type m_c_p_server_sig_v4_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_agent_sig_v4_service_details() :: %{
        "authorizationConfig" => remote_agent_sig_v4_authorization_config(),
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type remote_agent_sig_v4_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assets_response() :: %{
        "items" => list(asset()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_assets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_agent_configuration() :: %{}

  """
  @type remote_agent_configuration() :: %{}

  @typedoc """

  ## Example:

      azure_dev_ops_configuration() :: %{
        "organizationName" => [String.t() | atom()],
        "projectId" => [String.t() | atom()],
        "projectName" => [String.t() | atom()]
      }

  """
  @type azure_dev_ops_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pending_message() :: %{
        "message" => list(),
        "messageId" => [String.t() | atom()]
      }

  """
  @type pending_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_azure_dev_ops_service_details() :: %{
        "organizationName" => [String.t() | atom()]
      }

  """
  @type registered_azure_dev_ops_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_backlog_task_response() :: %{
        "task" => task()
      }

  """
  @type get_backlog_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_service_output() :: %{}

  """
  @type deregister_service_output() :: %{}

  @typedoc """

  ## Example:

      list_pending_messages_request() :: %{
        required("executionId") => String.t() | atom()
      }

  """
  @type list_pending_messages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_triggers_response() :: %{
        "items" => list(trigger()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_triggers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendation_request() :: %{
        optional("recommendationVersion") => [float()]
      }

  """
  @type get_recommendation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_aws_associations_input() :: %{}

  """
  @type validate_aws_associations_input() :: %{}

  @typedoc """

  ## Example:

      new_relic_service_details() :: %{
        "authorizationConfig" => list()
      }

  """
  @type new_relic_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      idp_auth_configuration() :: %{
        "clientId" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "issuerUrl" => [String.t() | atom()],
        "operatorAppRoleArn" => [String.t() | atom()],
        "provider" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type idp_auth_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_operator_app_output() :: %{
        "agentSpaceId" => String.t() | atom(),
        "iam" => iam_auth_configuration(),
        "idc" => idc_auth_configuration(),
        "idp" => idp_auth_configuration(),
        "operatorAppUrl" => String.t() | atom()
      }

  """
  @type enable_operator_app_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_agent_spaces_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_agent_spaces_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      webhook() :: %{
        "webhookId" => [String.t() | atom()],
        "webhookType" => list(any()),
        "webhookUrl" => [String.t() | atom()]
      }

  """
  @type webhook() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_now_configuration() :: %{
        "authScopes" => list([String.t() | atom()]()),
        "instanceId" => [String.t() | atom()]
      }

  """
  @type service_now_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_content_block_delta_event() :: %{
        "delta" => list(),
        "index" => [integer()],
        "sequenceNumber" => [integer()]
      }

  """
  @type send_message_content_block_delta_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slack_transmission_target() :: %{
        "opsOncallTarget" => slack_channel(),
        "opsSRETarget" => slack_channel()
      }

  """
  @type slack_transmission_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_heartbeat_event() :: %{}

  """
  @type send_message_heartbeat_event() :: %{}

  @typedoc """

  ## Example:

      idc_auth_configuration() :: %{
        "createdAt" => [non_neg_integer()],
        "idcApplicationArn" => [String.t() | atom()],
        "idcInstanceArn" => [String.t() | atom()],
        "operatorAppRoleArn" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type idc_auth_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_service_input() :: %{
        optional("exchangeUrlPrivateConnectionName") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("privateConnectionName") => String.t() | atom(),
        optional("tags") => map(),
        optional("targetUrlPrivateConnectionName") => String.t() | atom(),
        required("serviceDetails") => list()
      }

  """
  @type register_service_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_usage_output() :: %{
        "monthlyAccountEvaluationHours" => usage_metric(),
        "monthlyAccountInvestigationHours" => usage_metric(),
        "monthlyAccountOnDemandHours" => usage_metric(),
        "monthlyAccountSystemLearningHours" => usage_metric(),
        "usagePeriodEndTime" => non_neg_integer(),
        "usagePeriodStartTime" => non_neg_integer()
      }

  """
  @type get_account_usage_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_request() :: %{}

  """
  @type delete_asset_request() :: %{}

  @typedoc """

  ## Example:

      delete_asset_response() :: %{}

  """
  @type delete_asset_response() :: %{}

  @typedoc """

  ## Example:

      registered_slack_service_details() :: %{
        "teamId" => [String.t() | atom()],
        "teamName" => [String.t() | atom()]
      }

  """
  @type registered_slack_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_file_response() :: %{
        "file" => asset_file()
      }

  """
  @type update_asset_file_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_association_output() :: %{
        "association" => association()
      }

  """
  @type get_association_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_backlog_task_response() :: %{
        "task" => task()
      }

  """
  @type update_backlog_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_executions_response() :: %{
        "executions" => list(execution()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_service_output() :: %{
        "service" => registered_service(),
        "tags" => map()
      }

  """
  @type get_service_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_azure_identity_details() :: %{
        "clientId" => String.t() | atom(),
        "tenantId" => String.t() | atom(),
        "webIdentityRoleArn" => String.t() | atom(),
        "webIdentityTokenAudiences" => list([String.t() | atom()]())
      }

  """
  @type registered_azure_identity_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_sig_v4_service_details() :: %{
        "authorizationConfig" => m_c_p_server_sig_v4_authorization_config(),
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type m_c_p_server_sig_v4_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pending_messages_response() :: %{
        "agentSpaceId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "executionId" => [String.t() | atom()],
        "messages" => list(pending_message())
      }

  """
  @type list_pending_messages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_file_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("content") => list(),
        optional("metadata") => [any()]
      }

  """
  @type update_asset_file_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_versions_response() :: %{
        "items" => list(asset_version_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_file_response() :: %{
        "file" => asset_file()
      }

  """
  @type get_asset_file_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_private_connection_input() :: %{}

  """
  @type describe_private_connection_input() :: %{}

  @typedoc """

  ## Example:

      update_agent_space_output() :: %{
        "agentSpace" => agent_space()
      }

  """
  @type update_agent_space_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_response() :: %{
        "asset" => asset()
      }

  """
  @type create_asset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_lab_configuration() :: %{
        "instanceIdentifier" => [String.t() | atom()],
        "projectId" => [String.t() | atom()],
        "projectPath" => [String.t() | atom()],
        "runtimeRoleArn" => String.t() | atom()
      }

  """
  @type git_lab_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pager_duty_o_auth_client_credentials_config() :: %{
        "clientId" => String.t() | atom(),
        "clientName" => [String.t() | atom()],
        "clientSecret" => String.t() | atom(),
        "exchangeParameters" => map()
      }

  """
  @type pager_duty_o_auth_client_credentials_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_agent_sig_v4_configuration() :: %{}

  """
  @type remote_agent_sig_v4_configuration() :: %{}

  @typedoc """

  ## Example:

      m_c_p_server_configuration() :: %{
        "tools" => list([String.t() | atom()]())
      }

  """
  @type m_c_p_server_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_trigger_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("status") => String.t() | atom()
      }

  """
  @type update_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associations_input() :: %{
        optional("filterServiceTypes") => [String.t() | atom()],
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_associations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_webhooks_output() :: %{
        "webhooks" => list(webhook())
      }

  """
  @type list_webhooks_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_services_output() :: %{
        "nextToken" => String.t() | atom(),
        "services" => list(registered_service())
      }

  """
  @type list_services_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_association_output() :: %{
        "association" => association(),
        "webhook" => generic_webhook()
      }

  """
  @type update_association_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_version_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "updatedAt" => [non_neg_integer()],
        "version" => [integer()]
      }

  """
  @type asset_version_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disable_operator_app_input() :: %{
        optional("authFlow") => list(any())
      }

  """
  @type disable_operator_app_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reference_output() :: %{
        "associationId" => [String.t() | atom()],
        "referenceId" => [String.t() | atom()],
        "referenceUrl" => [String.t() | atom()],
        "system" => [String.t() | atom()],
        "title" => [String.t() | atom()]
      }

  """
  @type reference_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_response_failed_event() :: %{
        "errorCode" => [String.t() | atom()],
        "errorMessage" => [String.t() | atom()],
        "responseId" => [String.t() | atom()],
        "sequenceNumber" => [integer()]
      }

  """
  @type send_message_response_failed_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_request() :: %{
        optional("assetVersion") => [integer()]
      }

  """
  @type get_asset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_aws_associations_output() :: %{}

  """
  @type validate_aws_associations_output() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_services_input() :: %{
        optional("filterServiceType") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_services_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_private_connections_output() :: %{
        "privateConnections" => list(private_connection_summary())
      }

  """
  @type list_private_connections_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_agent_bearer_token_config() :: %{
        "authorizationHeader" => [String.t() | atom()],
        "tokenName" => [String.t() | atom()],
        "tokenValue" => String.t() | atom()
      }

  """
  @type remote_agent_bearer_token_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_m_c_p_server_details() :: %{
        "apiKeyHeader" => [String.t() | atom()],
        "authorizationMethod" => list(any()),
        "description" => String.t() | atom(),
        "endpoint" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type registered_m_c_p_server_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_service_output() :: %{}

  """
  @type disassociate_service_output() :: %{}

  @typedoc """

  ## Example:

      registered_grafana_server_details() :: %{
        "authorizationMethod" => list(any()),
        "endpoint" => String.t() | atom()
      }

  """
  @type registered_grafana_server_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      goal() :: %{
        "agentSpaceArn" => [String.t() | atom()],
        "content" => goal_content(),
        "createdAt" => non_neg_integer(),
        "evaluationSchedule" => goal_schedule(),
        "goalId" => [String.t() | atom()],
        "goalType" => list(any()),
        "lastEvaluatedAt" => non_neg_integer(),
        "lastSuccessfulTaskId" => [String.t() | atom()],
        "lastTaskId" => [String.t() | atom()],
        "status" => list(any()),
        "title" => [String.t() | atom()],
        "updatedAt" => non_neg_integer(),
        "version" => [integer()]
      }

  """
  @type goal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      content_size_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type content_size_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      iam_auth_configuration() :: %{
        "createdAt" => [non_neg_integer()],
        "operatorAppRoleArn" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type iam_auth_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_usage_info() :: %{
        "inputTokens" => [integer()],
        "outputTokens" => [integer()],
        "totalTokens" => [integer()]
      }

  """
  @type send_message_usage_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_type_summary() :: %{
        "assetType" => String.t() | atom(),
        "description" => [String.t() | atom()]
      }

  """
  @type asset_type_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_trigger_response() :: %{
        "trigger" => trigger()
      }

  """
  @type create_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slack_channel() :: %{
        "channelId" => [String.t() | atom()],
        "channelName" => [String.t() | atom()]
      }

  """
  @type slack_channel() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_bearer_token_config() :: %{
        "authorizationHeader" => [String.t() | atom()],
        "tokenName" => [String.t() | atom()],
        "tokenValue" => String.t() | atom()
      }

  """
  @type m_c_p_server_bearer_token_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      association() :: %{
        "agentSpaceId" => String.t() | atom(),
        "associationId" => String.t() | atom(),
        "capabilities" => map(),
        "configuration" => list(),
        "createdAt" => [non_neg_integer()],
        "serviceId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_file_response() :: %{
        "file" => asset_file()
      }

  """
  @type create_asset_file_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_usage_input() :: %{}

  """
  @type get_account_usage_input() :: %{}

  @typedoc """

  ## Example:

      delete_agent_space_input() :: %{}

  """
  @type delete_agent_space_input() :: %{}

  @typedoc """

  ## Example:

      m_c_p_server_details() :: %{
        "authorizationConfig" => list(),
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type m_c_p_server_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_goal_response() :: %{
        "goal" => goal()
      }

  """
  @type update_goal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      journal_record() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "content" => [any()],
        "createdAt" => non_neg_integer(),
        "executionId" => [String.t() | atom()],
        "recordId" => [String.t() | atom()],
        "recordType" => [String.t() | atom()],
        "userReference" => user_reference()
      }

  """
  @type journal_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pager_duty_configuration() :: %{
        "customerEmail" => String.t() | atom(),
        "services" => list([String.t() | atom()]())
      }

  """
  @type pager_duty_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_condition() :: %{
        "expression" => String.t() | atom()
      }

  """
  @type schedule_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_configuration() :: %{
        "accountId" => [String.t() | atom()],
        "accountType" => list(any()),
        "assumableRoleArn" => String.t() | atom()
      }

  """
  @type aws_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_agent_space_input() :: %{}

  """
  @type get_agent_space_input() :: %{}

  @typedoc """

  ## Example:

      execution() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "agentSubTask" => [String.t() | atom()],
        "agentType" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "executionId" => [String.t() | atom()],
        "executionStatus" => list(any()),
        "parentExecutionId" => [String.t() | atom()],
        "uid" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_backlog_task_response() :: %{
        "task" => task()
      }

  """
  @type create_backlog_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_content() :: %{
        "spec" => [String.t() | atom()],
        "summary" => [String.t() | atom()]
      }

  """
  @type recommendation_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_file_content() :: %{
        "body" => list(),
        "metadata" => [any()],
        "path" => String.t() | atom()
      }

  """
  @type asset_file_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_journal_records_response() :: %{
        "nextToken" => [String.t() | atom()],
        "records" => list(journal_record())
      }

  """
  @type list_journal_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_backlog_task_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("taskStatus") => list(any())
      }

  """
  @type update_backlog_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_json_delta() :: %{
        "partialJson" => [String.t() | atom()]
      }

  """
  @type send_message_json_delta() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_space_output() :: %{
        "agentSpace" => agent_space(),
        "tags" => map()
      }

  """
  @type create_agent_space_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_request() :: %{
        optional("assetIds") => list([String.t() | atom()]()),
        optional("context") => send_message_context(),
        optional("userId") => String.t() | atom(),
        required("content") => String.t() | atom(),
        required("executionId") => String.t() | atom()
      }

  """
  @type send_message_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_types_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_asset_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_private_connection_certificate_input() :: %{
        required("certificate") => String.t() | atom()
      }

  """
  @type update_private_connection_certificate_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_operator_app_input() :: %{}

  """
  @type get_operator_app_input() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("metadata") => [any()],
        required("assetType") => String.t() | atom(),
        required("content") => list()
      }

  """
  @type create_asset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_service_input() :: %{}

  """
  @type disassociate_service_input() :: %{}

  @typedoc """

  ## Example:

      m_c_p_server_new_relic_configuration() :: %{
        "accountId" => [String.t() | atom()],
        "endpoint" => [String.t() | atom()]
      }

  """
  @type m_c_p_server_new_relic_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_grafana_configuration() :: %{
        "endpoint" => [String.t() | atom()],
        "organizationId" => [String.t() | atom()],
        "tools" => list([String.t() | atom()]())
      }

  """
  @type m_c_p_server_grafana_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_operator_app_output() :: %{
        "iam" => iam_auth_configuration(),
        "idc" => idc_auth_configuration(),
        "idp" => idp_auth_configuration(),
        "operatorAppUrl" => String.t() | atom()
      }

  """
  @type get_operator_app_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_file_request() :: %{
        optional("assetVersion") => [integer()]
      }

  """
  @type get_asset_file_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_webhooks_input() :: %{}

  """
  @type list_webhooks_input() :: %{}

  @typedoc """

  ## Example:

      asset_file() :: %{
        "content" => list(),
        "createdAt" => [non_neg_integer()],
        "metadata" => [any()],
        "path" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()],
        "version" => [integer()]
      }

  """
  @type asset_file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      registered_remote_agent_details() :: %{
        "apiKeyHeader" => [String.t() | atom()],
        "authorizationMethod" => list(any()),
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type registered_remote_agent_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_backlog_task_request() :: %{}

  """
  @type get_backlog_task_request() :: %{}

  @typedoc """

  ## Example:

      list_asset_types_response() :: %{
        "items" => list(asset_type_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_asset_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendations_request() :: %{
        optional("goalId") => String.t() | atom(),
        optional("limit") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("priority") => list(any()),
        optional("status") => list(any()),
        optional("taskId") => String.t() | atom()
      }

  """
  @type list_recommendations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trigger_request() :: %{}

  """
  @type get_trigger_request() :: %{}

  @typedoc """

  ## Example:

      list_backlog_tasks_request() :: %{
        optional("filter") => task_filter(),
        optional("limit") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("order") => list(any()),
        optional("sortField") => list(any())
      }

  """
  @type list_backlog_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_asset_file_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("metadata") => [any()],
        required("content") => list()
      }

  """
  @type create_asset_file_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      new_relic_api_key_config() :: %{
        "accountId" => [String.t() | atom()],
        "alertPolicyIds" => list([String.t() | atom()]()),
        "apiKey" => String.t() | atom(),
        "applicationIds" => list([String.t() | atom()]()),
        "entityGuids" => list([String.t() | atom()]()),
        "region" => list(any())
      }

  """
  @type new_relic_api_key_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset() :: %{
        "assetId" => String.t() | atom(),
        "assetType" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "metadata" => [any()],
        "updatedAt" => [non_neg_integer()],
        "version" => [integer()]
      }

  """
  @type asset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reference_input() :: %{
        "associationId" => String.t() | atom(),
        "referenceId" => String.t() | atom(),
        "referenceUrl" => [String.t() | atom()],
        "system" => [String.t() | atom()],
        "title" => [String.t() | atom()]
      }

  """
  @type reference_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_trigger_response() :: %{}

  """
  @type delete_trigger_response() :: %{}

  @typedoc """

  ## Example:

      azure_configuration() :: %{
        "subscriptionId" => [String.t() | atom()]
      }

  """
  @type azure_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_trigger_response() :: %{
        "trigger" => trigger()
      }

  """
  @type update_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_chats_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("userId") => String.t() | atom()
      }

  """
  @type list_chats_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_response_completed_event() :: %{
        "responseId" => [String.t() | atom()],
        "sequenceNumber" => [integer()],
        "usage" => send_message_usage_info()
      }

  """
  @type send_message_response_completed_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_response() :: %{
        "asset" => asset()
      }

  """
  @type update_asset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      goal_schedule() :: %{
        "expression" => [String.t() | atom()],
        "state" => list(any())
      }

  """
  @type goal_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_recommendation_request() :: %{
        optional("additionalContext") => [String.t() | atom()],
        optional("clientToken") => [String.t() | atom()],
        optional("status") => list(any())
      }

  """
  @type update_recommendation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_github_service_details() :: %{
        "owner" => [String.t() | atom()],
        "ownerType" => list(any()),
        "targetUrl" => [String.t() | atom()]
      }

  """
  @type registered_github_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      o_auth_additional_step_details() :: %{
        "authorizationUrl" => [String.t() | atom()]
      }

  """
  @type o_auth_additional_step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendations_response() :: %{
        "nextToken" => [String.t() | atom()],
        "recommendations" => list(recommendation())
      }

  """
  @type list_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capability_configuration() :: %{
        "enabled" => [boolean()]
      }

  """
  @type capability_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_service_now_details() :: %{
        "instanceUrl" => String.t() | atom()
      }

  """
  @type registered_service_now_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_private_connection_input() :: %{}

  """
  @type delete_private_connection_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "path" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_aws_configuration() :: %{
        "accountId" => [String.t() | atom()],
        "accountType" => list(any()),
        "assumableRoleArn" => String.t() | atom(),
        "externalId" => [String.t() | atom()]
      }

  """
  @type source_aws_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_triggers_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("status") => String.t() | atom()
      }

  """
  @type list_triggers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_git_lab_service_details() :: %{
        "groupId" => [String.t() | atom()],
        "targetUrl" => [String.t() | atom()],
        "tokenType" => list(any())
      }

  """
  @type registered_git_lab_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_response() :: %{
        "asset" => asset()
      }

  """
  @type get_asset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_asset_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("content") => list(),
        optional("metadata") => [any()]
      }

  """
  @type update_asset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_agent_space_input() :: %{
        optional("description") => String.t() | atom(),
        optional("locale") => String.t() | atom(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_agent_space_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_private_connection_output() :: %{
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_private_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task() :: %{
        "agentSpaceId" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "description" => [String.t() | atom()],
        "executionId" => [String.t() | atom()],
        "hasLinkedTasks" => [boolean()],
        "metadata" => [any()],
        "primaryTaskId" => [String.t() | atom()],
        "priority" => list(any()),
        "reference" => reference_output(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "supportMetadata" => [any()],
        "taskId" => [String.t() | atom()],
        "taskType" => list(any()),
        "title" => [String.t() | atom()],
        "updatedAt" => non_neg_integer(),
        "version" => [integer()]
      }

  """
  @type task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_response() :: %{
        "events" => list()
      }

  """
  @type send_message_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_now_o_auth_client_credentials_config() :: %{
        "clientId" => String.t() | atom(),
        "clientName" => [String.t() | atom()],
        "clientSecret" => String.t() | atom(),
        "exchangeParameters" => map()
      }

  """
  @type service_now_o_auth_client_credentials_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_chats_response() :: %{
        "executions" => list(chat_execution()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_chats_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_managed_input() :: %{
        "certificate" => String.t() | atom(),
        "dnsResolution" => list(any()),
        "hostAddress" => String.t() | atom(),
        "ipAddressType" => list(any()),
        "ipv4AddressesPerEni" => integer(),
        "portRanges" => list(String.t() | atom()),
        "securityGroupIds" => list(String.t() | atom()),
        "subnetIds" => list(String.t() | atom()),
        "vpcId" => String.t() | atom()
      }

  """
  @type service_managed_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      private_connection_summary() :: %{
        "certificateExpiryTime" => [non_neg_integer()],
        "dnsResolution" => list(any()),
        "failureMessage" => String.t() | atom(),
        "hostAddress" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceConfigurationId" => String.t() | atom(),
        "resourceGatewayId" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any()),
        "vpcId" => String.t() | atom()
      }

  """
  @type private_connection_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_recommendation_response() :: %{
        "recommendation" => recommendation()
      }

  """
  @type update_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_private_connection_input() :: %{
        optional("tags") => map(),
        required("mode") => list(),
        required("name") => String.t() | atom()
      }

  """
  @type create_private_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_service_input() :: %{
        optional("capabilities") => map(),
        required("configuration") => list(),
        required("serviceId") => String.t() | atom()
      }

  """
  @type associate_service_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_splunk_configuration() :: %{}

  """
  @type m_c_p_server_splunk_configuration() :: %{}

  @typedoc """

  ## Example:

      deregister_service_input() :: %{}

  """
  @type deregister_service_input() :: %{}

  @typedoc """

  ## Example:

      m_c_p_server_o_auth3_l_o_config() :: %{
        "authorizationUrl" => [String.t() | atom()],
        "clientId" => String.t() | atom(),
        "clientName" => [String.t() | atom()],
        "clientSecret" => String.t() | atom(),
        "exchangeParameters" => map(),
        "exchangeUrl" => [String.t() | atom()],
        "returnToEndpoint" => [String.t() | atom()],
        "scopes" => list(String.t() | atom()),
        "supportCodeChallenge" => [boolean()]
      }

  """
  @type m_c_p_server_o_auth3_l_o_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trigger() :: %{
        "action" => any(),
        "agentSpaceId" => String.t() | atom(),
        "condition" => list(),
        "createdAt" => [non_neg_integer()],
        "status" => String.t() | atom(),
        "triggerId" => String.t() | atom(),
        "type" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_trigger_response() :: %{
        "trigger" => trigger()
      }

  """
  @type get_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      enable_operator_app_input() :: %{
        optional("idcInstanceArn") => [String.t() | atom()],
        optional("idpClientId") => String.t() | atom(),
        optional("idpClientSecret") => String.t() | atom(),
        optional("issuerUrl") => [String.t() | atom()],
        optional("provider") => [String.t() | atom()],
        required("authFlow") => list(any()),
        required("operatorAppRoleArn") => String.t() | atom()
      }

  """
  @type enable_operator_app_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_now_service_details() :: %{
        "authorizationConfig" => list(),
        "instanceUrl" => String.t() | atom()
      }

  """
  @type service_now_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_asset_content_request() :: %{
        optional("assetVersion") => [integer()]
      }

  """
  @type get_asset_content_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      goal_content() :: %{
        "description" => [String.t() | atom()],
        "objectives" => [String.t() | atom()]
      }

  """
  @type goal_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_lab_details() :: %{
        "groupId" => [String.t() | atom()],
        "targetUrl" => [String.t() | atom()],
        "tokenType" => list(any()),
        "tokenValue" => String.t() | atom()
      }

  """
  @type git_lab_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_sig_v4_authorization_config() :: %{
        "customHeaders" => map(),
        "mcpRoleArn" => String.t() | atom(),
        "region" => String.t() | atom(),
        "roleArn" => [String.t() | atom()],
        "service" => [String.t() | atom()]
      }

  """
  @type m_c_p_server_sig_v4_authorization_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_goal_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("evaluationSchedule") => goal_schedule_input()
      }

  """
  @type update_goal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_agent_service_details() :: %{
        "authorizationConfig" => list(),
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type remote_agent_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_association_input() :: %{}

  """
  @type get_association_input() :: %{}

  @typedoc """

  ## Example:

      create_trigger_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("status") => String.t() | atom(),
        required("action") => any(),
        required("condition") => list(),
        required("type") => String.t() | atom()
      }

  """
  @type create_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_asset_file_request() :: %{}

  """
  @type delete_asset_file_request() :: %{}

  @typedoc """

  ## Example:

      list_agent_spaces_output() :: %{
        "agentSpaces" => list(agent_space()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_agent_spaces_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_summary_event() :: %{
        "content" => [String.t() | atom()],
        "sequenceNumber" => [integer()]
      }

  """
  @type send_message_summary_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_service_output() :: %{
        "additionalStep" => list(),
        "kmsKeyArn" => String.t() | atom(),
        "serviceId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type register_service_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pager_duty_details() :: %{
        "authorizationConfig" => list(),
        "scopes" => list([String.t() | atom()]())
      }

  """
  @type pager_duty_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_versions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_asset_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_agent_space_output() :: %{
        "agentSpace" => agent_space(),
        "tags" => map()
      }

  """
  @type get_agent_space_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_agent_o_auth_client_credentials_config() :: %{
        "clientId" => String.t() | atom(),
        "clientName" => [String.t() | atom()],
        "clientSecret" => String.t() | atom(),
        "exchangeParameters" => map(),
        "exchangeUrl" => [String.t() | atom()],
        "scopes" => list(String.t() | atom())
      }

  """
  @type remote_agent_o_auth_client_credentials_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_private_connection_output() :: %{
        "certificateExpiryTime" => [non_neg_integer()],
        "dnsResolution" => list(any()),
        "failureMessage" => String.t() | atom(),
        "hostAddress" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceConfigurationId" => String.t() | atom(),
        "resourceGatewayId" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "type" => list(any()),
        "vpcId" => String.t() | atom()
      }

  """
  @type create_private_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_asset_files_request() :: %{
        optional("assetVersion") => [integer()],
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_asset_files_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "additionalContext" => [String.t() | atom()],
        "agentSpaceArn" => [String.t() | atom()],
        "content" => recommendation_content(),
        "createdAt" => non_neg_integer(),
        "goalId" => [String.t() | atom()],
        "goalVersion" => [float()],
        "priority" => list(any()),
        "rankPosition" => [integer()],
        "rankedAt" => non_neg_integer(),
        "recommendationId" => [String.t() | atom()],
        "status" => list(any()),
        "taskId" => [String.t() | atom()],
        "title" => [String.t() | atom()],
        "updatedAt" => non_neg_integer(),
        "version" => [float()]
      }

  """
  @type recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_channel_details() :: %{
        "type" => list(any())
      }

  """
  @type event_channel_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      identity_center_service_exception() :: %{
        "message" => [String.t() | atom()],
        "underlyingErrorCode" => [String.t() | atom()]
      }

  """
  @type identity_center_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_reference() :: %{
        "userId" => [String.t() | atom()],
        "userType" => list(any())
      }

  """
  @type user_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_private_connection_certificate_output() :: %{
        "certificateExpiryTime" => [non_neg_integer()],
        "dnsResolution" => list(any()),
        "failureMessage" => String.t() | atom(),
        "hostAddress" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceConfigurationId" => String.t() | atom(),
        "resourceGatewayId" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any()),
        "vpcId" => String.t() | atom()
      }

  """
  @type update_private_connection_certificate_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      self_managed_input() :: %{
        "certificate" => String.t() | atom(),
        "resourceConfigurationId" => String.t() | atom()
      }

  """
  @type self_managed_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_datadog_configuration() :: %{}

  """
  @type m_c_p_server_datadog_configuration() :: %{}

  @typedoc """

  ## Example:

      datadog_service_details() :: %{
        "authorizationConfig" => list(),
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type datadog_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_text_delta() :: %{
        "text" => [String.t() | atom()]
      }

  """
  @type send_message_text_delta() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_goals_request() :: %{
        optional("goalType") => list(any()),
        optional("limit") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_goals_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_chat_request() :: %{
        optional("userId") => String.t() | atom(),
        optional("userType") => list(any())
      }

  """
  @type create_chat_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_backlog_tasks_response() :: %{
        "nextToken" => [String.t() | atom()],
        "tasks" => list(task())
      }

  """
  @type list_backlog_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_remote_agent_sig_v4_details() :: %{
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "name" => String.t() | atom(),
        "region" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "service" => [String.t() | atom()]
      }

  """
  @type registered_remote_agent_sig_v4_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_journal_records_request() :: %{
        optional("limit") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("order") => list(any()),
        optional("recordType") => [String.t() | atom()],
        required("executionId") => String.t() | atom()
      }

  """
  @type list_journal_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      goal_schedule_input() :: %{
        "state" => list(any())
      }

  """
  @type goal_schedule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slack_configuration() :: %{
        "transmissionTarget" => slack_transmission_target(),
        "workspaceId" => [String.t() | atom()],
        "workspaceName" => [String.t() | atom()]
      }

  """
  @type slack_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_new_relic_details() :: %{
        "accountId" => [String.t() | atom()],
        "description" => String.t() | atom(),
        "region" => list(any())
      }

  """
  @type registered_new_relic_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_agent_space_output() :: %{}

  """
  @type delete_agent_space_output() :: %{}

  @typedoc """

  ## Example:

      m_c_p_server_o_auth_client_credentials_config() :: %{
        "clientId" => String.t() | atom(),
        "clientName" => [String.t() | atom()],
        "clientSecret" => String.t() | atom(),
        "exchangeParameters" => map(),
        "exchangeUrl" => [String.t() | atom()],
        "scopes" => list(String.t() | atom())
      }

  """
  @type m_c_p_server_o_auth_client_credentials_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_operator_app_idp_config_output() :: %{
        "agentSpaceId" => String.t() | atom(),
        "idp" => idp_auth_configuration()
      }

  """
  @type update_operator_app_idp_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendation_response() :: %{
        "recommendation" => recommendation()
      }

  """
  @type get_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_service() :: %{
        "accessibleResources" => list([any()]()),
        "additionalServiceDetails" => list(),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "privateConnectionName" => String.t() | atom(),
        "serviceId" => String.t() | atom(),
        "serviceType" => list(any())
      }

  """
  @type registered_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_zip_content() :: %{
        "zipFile" => binary()
      }

  """
  @type asset_zip_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remote_agent_api_key_config() :: %{
        "apiKeyHeader" => [String.t() | atom()],
        "apiKeyName" => [String.t() | atom()],
        "apiKeyValue" => String.t() | atom()
      }

  """
  @type remote_agent_api_key_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_context() :: %{
        "currentPage" => [String.t() | atom()],
        "lastMessage" => [String.t() | atom()],
        "userActionResponse" => [String.t() | atom()]
      }

  """
  @type send_message_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_space() :: %{
        "agentSpaceId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "locale" => String.t() | atom(),
        "name" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type agent_space() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associations_output() :: %{
        "associations" => list(association()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_associations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_backlog_task_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("description") => String.t() | atom(),
        optional("reference") => reference_input(),
        required("priority") => list(any()),
        required("taskType") => list(any()),
        required("title") => String.t() | atom()
      }

  """
  @type create_backlog_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_goals_response() :: %{
        "goals" => list(goal()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_goals_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_filter() :: %{
        "createdAfter" => non_neg_integer(),
        "createdBefore" => non_neg_integer(),
        "primaryTaskId" => String.t() | atom(),
        "priority" => list(list(any())()),
        "status" => list(list(any())()),
        "taskType" => list(list(any())())
      }

  """
  @type task_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_service_output() :: %{
        "association" => association(),
        "webhook" => generic_webhook()
      }

  """
  @type associate_service_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_assets_request() :: %{
        optional("assetType") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("updatedAfter") => [non_neg_integer()],
        optional("updatedBefore") => [non_neg_integer()]
      }

  """
  @type list_assets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      git_hub_configuration() :: %{
        "instanceIdentifier" => [String.t() | atom()],
        "owner" => [String.t() | atom()],
        "ownerType" => list(any()),
        "repoId" => [String.t() | atom()],
        "repoName" => [String.t() | atom()],
        "runtimeRoleArn" => String.t() | atom()
      }

  """
  @type git_hub_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      grafana_service_details() :: %{
        "authorizationConfig" => list(),
        "description" => String.t() | atom(),
        "endpoint" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type grafana_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dynatrace_service_details() :: %{
        "accountUrn" => [String.t() | atom()],
        "authorizationConfig" => list()
      }

  """
  @type dynatrace_service_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dynatrace_configuration() :: %{
        "envId" => [String.t() | atom()],
        "resources" => list([String.t() | atom()]())
      }

  """
  @type dynatrace_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chat_execution() :: %{
        "createdAt" => [non_neg_integer()],
        "executionId" => String.t() | atom(),
        "summary" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type chat_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      asset_source_url_content() :: %{
        "url" => String.t() | atom()
      }

  """
  @type asset_source_url_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_metric() :: %{
        "limit" => [integer()],
        "usage" => [float()]
      }

  """
  @type usage_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_space_input() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("description") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("locale") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_agent_space_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registered_pager_duty_details() :: %{
        "scopes" => list([String.t() | atom()]())
      }

  """
  @type registered_pager_duty_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_response_created_event() :: %{
        "responseId" => [String.t() | atom()],
        "sequenceNumber" => [integer()]
      }

  """
  @type send_message_response_created_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      generic_webhook() :: %{
        "apiKey" => String.t() | atom(),
        "webhookId" => [String.t() | atom()],
        "webhookSecret" => String.t() | atom(),
        "webhookType" => list(any()),
        "webhookUrl" => [String.t() | atom()]
      }

  """
  @type generic_webhook() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      m_c_p_server_authorization_discovery_config() :: %{
        "returnToEndpoint" => [String.t() | atom()]
      }

  """
  @type m_c_p_server_authorization_discovery_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_content_block_stop_event() :: %{
        "index" => [integer()],
        "last" => [boolean()],
        "sequenceNumber" => [integer()],
        "text" => [String.t() | atom()],
        "type" => [String.t() | atom()]
      }

  """
  @type send_message_content_block_stop_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_response_in_progress_event() :: %{
        "responseId" => [String.t() | atom()],
        "sequenceNumber" => [integer()]
      }

  """
  @type send_message_response_in_progress_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dynatrace_o_auth_client_credentials_config() :: %{
        "clientId" => String.t() | atom(),
        "clientName" => [String.t() | atom()],
        "clientSecret" => String.t() | atom(),
        "exchangeParameters" => map()
      }

  """
  @type dynatrace_o_auth_client_credentials_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_private_connection_output() :: %{
        "certificateExpiryTime" => [non_neg_integer()],
        "dnsResolution" => list(any()),
        "failureMessage" => String.t() | atom(),
        "hostAddress" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceConfigurationId" => String.t() | atom(),
        "resourceGatewayId" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "type" => list(any()),
        "vpcId" => String.t() | atom()
      }

  """
  @type describe_private_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_service_input() :: %{}

  """
  @type get_service_input() :: %{}

  @typedoc """

  ## Example:

      delete_asset_file_response() :: %{}

  """
  @type delete_asset_file_response() :: %{}

  @type associate_service_errors() ::
          invalid_parameter_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type create_agent_space_errors() ::
          service_quota_exceeded_exception()
          | invalid_parameter_exception()
          | conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type create_asset_errors() ::
          conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_asset_file_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | content_size_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_backlog_task_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_chat_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type create_private_connection_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_trigger_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_agent_space_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type delete_asset_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_asset_file_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_private_connection_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_trigger_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type deregister_service_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type describe_private_connection_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type disable_operator_app_errors() ::
          identity_center_service_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type disassociate_service_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type enable_operator_app_errors() ::
          identity_center_service_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type get_account_usage_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_agent_space_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type get_asset_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_asset_content_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_asset_file_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_association_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type get_backlog_task_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_operator_app_errors() ::
          internal_server_exception() | validation_exception() | throttling_exception()

  @type get_recommendation_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_service_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type get_trigger_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_agent_spaces_errors() ::
          internal_server_exception() | validation_exception() | throttling_exception()

  @type list_asset_files_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_asset_types_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_asset_versions_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_assets_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_associations_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type list_backlog_tasks_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_chats_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type list_executions_errors() ::
          conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_goals_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_journal_records_errors() ::
          conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_pending_messages_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_private_connections_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_recommendations_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_services_errors() ::
          internal_server_exception() | validation_exception() | throttling_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type list_triggers_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_webhooks_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type register_service_errors() ::
          invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()

  @type send_message_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type tag_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()

  @type update_agent_space_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type update_asset_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_asset_file_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | content_size_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_association_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type update_backlog_task_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_goal_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_operator_app_idp_config_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  @type update_private_connection_certificate_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_recommendation_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_trigger_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type validate_aws_associations_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | throttling_exception()

  def metadata do
    %{
      api_version: "2026-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "aidevops",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "DevOps Agent",
      signature_version: "v4",
      signing_name: "aidevops",
      target_prefix: nil
    }
  end

  @doc """
  Adds a specific service association to an AgentSpace.

  It overwrites the existing association of the same service. Returns 201 Created
  on success.
  """
  @spec associate_service(map(), String.t() | atom(), associate_service_input(), list()) ::
          {:ok, associate_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_service_errors()}
  def associate_service(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/associations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new AgentSpace with the specified name and description.

  Duplicate space names are allowed.
  """
  @spec create_agent_space(map(), create_agent_space_input(), list()) ::
          {:ok, create_agent_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_agent_space_errors()}
  def create_agent_space(%Client{} = client, input, options \\ []) do
    url_path = "/v1/agentspaces"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new asset in the specified agent space
  """
  @spec create_asset(map(), String.t() | atom(), create_asset_request(), list()) ::
          {:ok, create_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_errors()}
  def create_asset(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a file in an asset
  """
  @spec create_asset_file(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          create_asset_file_request(),
          list()
        ) ::
          {:ok, create_asset_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_asset_file_errors()}
  def create_asset_file(%Client{} = client, agent_space_id, asset_id, path, input, options \\ []) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}/files/#{AWS.Util.encode_multi_segment_uri(path)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new backlog task in the specified agent space
  """
  @spec create_backlog_task(map(), String.t() | atom(), create_backlog_task_request(), list()) ::
          {:ok, create_backlog_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_backlog_task_errors()}
  def create_backlog_task(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/tasks"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new chat execution in the specified agent space
  """
  @spec create_chat(map(), String.t() | atom(), create_chat_request(), list()) ::
          {:ok, create_chat_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_chat_errors()}
  def create_chat(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/agents/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/chat/create"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"userId", "userId"},
        {"userType", "userType"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Creates a Private Connection to a target resource.
  """
  @spec create_private_connection(map(), create_private_connection_input(), list()) ::
          {:ok, create_private_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_private_connection_errors()}
  def create_private_connection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/private-connections"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Creates a new Trigger in the specified agent space
  """
  @spec create_trigger(map(), String.t() | atom(), create_trigger_request(), list()) ::
          {:ok, create_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trigger_errors()}
  def create_trigger(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/trigger/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/triggers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an AgentSpace.

  This operation is idempotent and returns a 204 No Content response on success.
  """
  @spec delete_agent_space(map(), String.t() | atom(), delete_agent_space_input(), list()) ::
          {:ok, delete_agent_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_agent_space_errors()}
  def delete_agent_space(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes an asset and all its files from the specified agent space
  """
  @spec delete_asset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_asset_request(),
          list()
        ) ::
          {:ok, delete_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_errors()}
  def delete_asset(%Client{} = client, agent_space_id, asset_id, input, options \\ []) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Deletes a file from an asset
  """
  @spec delete_asset_file(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_asset_file_request(),
          list()
        ) ::
          {:ok, delete_asset_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_asset_file_errors()}
  def delete_asset_file(%Client{} = client, agent_space_id, asset_id, path, input, options \\ []) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}/files/#{AWS.Util.encode_multi_segment_uri(path)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Deletes a Private Connection.

  The deletion is asynchronous and returns DELETE_IN_PROGRESS status.
  """
  @spec delete_private_connection(
          map(),
          String.t() | atom(),
          delete_private_connection_input(),
          list()
        ) ::
          {:ok, delete_private_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_private_connection_errors()}
  def delete_private_connection(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/private-connections/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Deletes a Trigger from the specified agent space
  """
  @spec delete_trigger(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_trigger_request(),
          list()
        ) ::
          {:ok, delete_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_trigger_errors()}
  def delete_trigger(%Client{} = client, agent_space_id, trigger_id, input, options \\ []) do
    url_path =
      "/trigger/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/triggers/#{AWS.Util.encode_uri(trigger_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Deregister a service
  """
  @spec deregister_service(map(), String.t() | atom(), deregister_service_input(), list()) ::
          {:ok, deregister_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_service_errors()}
  def deregister_service(%Client{} = client, service_id, input, options \\ []) do
    url_path = "/v1/services/#{AWS.Util.encode_uri(service_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Retrieves details of an existing Private Connection.
  """
  @spec describe_private_connection(map(), String.t() | atom(), list()) ::
          {:ok, describe_private_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_private_connection_errors()}
  def describe_private_connection(%Client{} = client, name, options \\ []) do
    url_path = "/v1/private-connections/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disable the Operator App for the specified AgentSpace
  """
  @spec disable_operator_app(map(), String.t() | atom(), disable_operator_app_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_operator_app_errors()}
  def disable_operator_app(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/operator"

    {headers, input} =
      [
        {"authFlow", "x-amzn-app-auth-flow"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Deletes a specific service association from an AgentSpace.

  This operation is idempotent and returns a 204 No Content response on success.
  """
  @spec disassociate_service(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_service_input(),
          list()
        ) ::
          {:ok, disassociate_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_service_errors()}
  def disassociate_service(
        %Client{} = client,
        agent_space_id,
        association_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/associations/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Enable the Operator App to access the given AgentSpace
  """
  @spec enable_operator_app(map(), String.t() | atom(), enable_operator_app_input(), list()) ::
          {:ok, enable_operator_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_operator_app_errors()}
  def enable_operator_app(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/operator"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Retrieves monthly account usage metrics and limits for the AWS account.
  """
  @spec get_account_usage(map(), list()) ::
          {:ok, get_account_usage_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_usage_errors()}
  def get_account_usage(%Client{} = client, options \\ []) do
    url_path = "/usage/account"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific AgentSpace.
  """
  @spec get_agent_space(map(), String.t() | atom(), list()) ::
          {:ok, get_agent_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agent_space_errors()}
  def get_agent_space(%Client{} = client, agent_space_id, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an asset from the specified agent space
  """
  @spec get_asset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_errors()}
  def get_asset(%Client{} = client, agent_space_id, asset_id, asset_version \\ nil, options \\ []) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(asset_version) do
        [{"assetVersion", asset_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an asset's content as a zip bundle
  """
  @spec get_asset_content(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_asset_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_content_errors()}
  def get_asset_content(
        %Client{} = client,
        agent_space_id,
        asset_id,
        asset_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}/content"

    headers = []
    query_params = []

    query_params =
      if !is_nil(asset_version) do
        [{"assetVersion", asset_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a file from an asset
  """
  @spec get_asset_file(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_asset_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_asset_file_errors()}
  def get_asset_file(
        %Client{} = client,
        agent_space_id,
        asset_id,
        path,
        asset_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}/files/#{AWS.Util.encode_multi_segment_uri(path)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(asset_version) do
        [{"assetVersion", asset_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves given associations configured for a specific AgentSpace.
  """
  @spec get_association(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_association_errors()}
  def get_association(%Client{} = client, agent_space_id, association_id, options \\ []) do
    url_path =
      "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/associations/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a backlog task for the specified agent space and task id
  """
  @spec get_backlog_task(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_backlog_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_backlog_task_errors()}
  def get_backlog_task(%Client{} = client, agent_space_id, task_id, options \\ []) do
    url_path =
      "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/tasks/#{AWS.Util.encode_uri(task_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the full auth configuration of operator including any enabled auth flow
  """
  @spec get_operator_app(map(), String.t() | atom(), list()) ::
          {:ok, get_operator_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_operator_app_errors()}
  def get_operator_app(%Client{} = client, agent_space_id, options \\ []) do
    url_path = "/v2/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/operator"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specific recommendation by its ID
  """
  @spec get_recommendation(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendation_errors()}
  def get_recommendation(
        %Client{} = client,
        agent_space_id,
        recommendation_id,
        recommendation_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/recommendations/#{AWS.Util.encode_uri(recommendation_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(recommendation_version) do
        [{"recommendationVersion", recommendation_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves given service by it's unique identifier
  """
  @spec get_service(map(), String.t() | atom(), list()) ::
          {:ok, get_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_errors()}
  def get_service(%Client{} = client, service_id, options \\ []) do
    url_path = "/v1/services/#{AWS.Util.encode_uri(service_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a Trigger from the specified agent space
  """
  @spec get_trigger(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trigger_errors()}
  def get_trigger(%Client{} = client, agent_space_id, trigger_id, options \\ []) do
    url_path =
      "/trigger/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/triggers/#{AWS.Util.encode_uri(trigger_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all AgentSpaces with optional pagination.
  """
  @spec list_agent_spaces(map(), list_agent_spaces_input(), list()) ::
          {:ok, list_agent_spaces_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agent_spaces_errors()}
  def list_agent_spaces(%Client{} = client, input, options \\ []) do
    url_path = "/v1/agentspaces/list"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Lists files in an asset
  """
  @spec list_asset_files(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_asset_files_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_files_errors()}
  def list_asset_files(
        %Client{} = client,
        agent_space_id,
        asset_id,
        asset_version \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}/files"

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

    query_params =
      if !is_nil(asset_version) do
        [{"assetVersion", asset_version} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the supported asset types
  """
  @spec list_asset_types(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_asset_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_types_errors()}
  def list_asset_types(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/asset/types"
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

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists versions of an asset in the specified agent space
  """
  @spec list_asset_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_asset_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_asset_versions_errors()}
  def list_asset_versions(
        %Client{} = client,
        agent_space_id,
        asset_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}/versions"

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

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists assets in the specified agent space
  """
  @spec list_assets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_assets_errors()}
  def list_assets(
        %Client{} = client,
        agent_space_id,
        asset_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        updated_after \\ nil,
        updated_before \\ nil,
        options \\ []
      ) do
    url_path = "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(updated_before) do
        [{"updatedBefore", updated_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(updated_after) do
        [{"updatedAfter", updated_after} | query_params]
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
      if !is_nil(asset_type) do
        [{"assetType", asset_type} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all associations for given AgentSpace
  """
  @spec list_associations(map(), String.t() | atom(), list_associations_input(), list()) ::
          {:ok, list_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associations_errors()}
  def list_associations(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/associations/list"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"filterServiceTypes", "filterServiceTypes"},
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Lists backlog tasks in the specified agent space with optional filtering and
  sorting
  """
  @spec list_backlog_tasks(map(), String.t() | atom(), list_backlog_tasks_request(), list()) ::
          {:ok, list_backlog_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_backlog_tasks_errors()}
  def list_backlog_tasks(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/tasks/list"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Retrieves a paginated list of the user's recent chat executions
  """
  @spec list_chats(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_chats_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_chats_errors()}
  def list_chats(
        %Client{} = client,
        agent_space_id,
        max_results \\ nil,
        next_token \\ nil,
        user_id \\ nil,
        options \\ []
      ) do
    url_path = "/agents/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/chat/list"
    headers = []
    query_params = []

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

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List executions
  """
  @spec list_executions(map(), String.t() | atom(), list_executions_request(), list()) ::
          {:ok, list_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_executions_errors()}
  def list_executions(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/journal/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/executions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Lists goals in the specified agent space with optional filtering
  """
  @spec list_goals(map(), String.t() | atom(), list_goals_request(), list()) ::
          {:ok, list_goals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_goals_errors()}
  def list_goals(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/goals/list"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  List journal records for a specific execution
  """
  @spec list_journal_records(map(), String.t() | atom(), list_journal_records_request(), list()) ::
          {:ok, list_journal_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_journal_records_errors()}
  def list_journal_records(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/journal/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/journalRecords"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  List pending messages for a specific execution.
  """
  @spec list_pending_messages(map(), String.t() | atom(), list_pending_messages_request(), list()) ::
          {:ok, list_pending_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pending_messages_errors()}
  def list_pending_messages(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/agents/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/pendingMessages"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Lists all Private Connections in the caller's account.
  """
  @spec list_private_connections(map(), list()) ::
          {:ok, list_private_connections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_private_connections_errors()}
  def list_private_connections(%Client{} = client, options \\ []) do
    url_path = "/v1/private-connections"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists recommendations for the specified agent space
  """
  @spec list_recommendations(map(), String.t() | atom(), list_recommendations_request(), list()) ::
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendations_errors()}
  def list_recommendations(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/recommendations/list"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  List a list of registered service on the account level.
  """
  @spec list_services(map(), list_services_input(), list()) ::
          {:ok, list_services_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_services_errors()}
  def list_services(%Client{} = client, input, options \\ []) do
    url_path = "/v1/services/list"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"filterServiceType", "filterServiceType"},
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Lists tags for the specified AWS DevOps Agent resource.
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

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Triggers in the specified agent space
  """
  @spec list_triggers(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_triggers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_triggers_errors()}
  def list_triggers(
        %Client{} = client,
        agent_space_id,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/trigger/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/triggers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all webhooks for given Association
  """
  @spec list_webhooks(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list_webhooks_input(),
          list()
        ) ::
          {:ok, list_webhooks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_webhooks_errors()}
  def list_webhooks(%Client{} = client, agent_space_id, association_id, input, options \\ []) do
    url_path =
      "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/associations/#{AWS.Util.encode_uri(association_id)}/webhooks/list"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  This operation registers the specified service
  """
  @spec register_service(map(), String.t() | atom(), register_service_input(), list()) ::
          {:ok, register_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_service_errors()}
  def register_service(%Client{} = client, service, input, options \\ []) do
    url_path = "/v1/register/#{AWS.Util.encode_uri(service)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Sends a chat message and streams the response for the specified agent space
  execution
  """
  @spec send_message(map(), String.t() | atom(), send_message_request(), list()) ::
          {:ok, send_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_message_errors()}
  def send_message(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/agents/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/chat/sendMessage"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Adds or overwrites tags for the specified AWS DevOps Agent resource.
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

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes tags from the specified AWS DevOps Agent resource.
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

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the information of an existing AgentSpace.
  """
  @spec update_agent_space(map(), String.t() | atom(), update_agent_space_input(), list()) ::
          {:ok, update_agent_space_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_agent_space_errors()}
  def update_agent_space(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Updates an asset in the specified agent space
  """
  @spec update_asset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_asset_request(),
          list()
        ) ::
          {:ok, update_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_asset_errors()}
  def update_asset(%Client{} = client, agent_space_id, asset_id, input, options \\ []) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Updates a file in an asset
  """
  @spec update_asset_file(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_asset_file_request(),
          list()
        ) ::
          {:ok, update_asset_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_asset_file_errors()}
  def update_asset_file(%Client{} = client, agent_space_id, asset_id, path, input, options \\ []) do
    url_path =
      "/asset/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/assets/#{AWS.Util.encode_uri(asset_id)}/files/#{AWS.Util.encode_multi_segment_uri(path)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Partially updates the configuration of an existing service association for an
  AgentSpace.

  Present fields are fully replaced; absent fields are left unchanged. Returns 200
  OK on success.
  """
  @spec update_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_association_input(),
          list()
        ) ::
          {:ok, update_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_association_errors()}
  def update_association(%Client{} = client, agent_space_id, association_id, input, options \\ []) do
    url_path =
      "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/associations/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Update an existing backlog task.
  """
  @spec update_backlog_task(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_backlog_task_request(),
          list()
        ) ::
          {:ok, update_backlog_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_backlog_task_errors()}
  def update_backlog_task(%Client{} = client, agent_space_id, task_id, input, options \\ []) do
    url_path =
      "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/tasks/#{AWS.Util.encode_uri(task_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Update an existing goal
  """
  @spec update_goal(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_goal_request(),
          list()
        ) ::
          {:ok, update_goal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_goal_errors()}
  def update_goal(%Client{} = client, agent_space_id, goal_id, input, options \\ []) do
    url_path =
      "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/goals/#{AWS.Util.encode_uri(goal_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Update the external Identity Provider configuration for the Operator App
  """
  @spec update_operator_app_idp_config(
          map(),
          String.t() | atom(),
          update_operator_app_idp_config_input(),
          list()
        ) ::
          {:ok, update_operator_app_idp_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_operator_app_idp_config_errors()}
  def update_operator_app_idp_config(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/operator/idp"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Updates the certificate associated with a Private Connection.
  """
  @spec update_private_connection_certificate(
          map(),
          String.t() | atom(),
          update_private_connection_certificate_input(),
          list()
        ) ::
          {:ok, update_private_connection_certificate_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_private_connection_certificate_errors()}
  def update_private_connection_certificate(%Client{} = client, name, input, options \\ []) do
    url_path = "/v1/private-connections/#{AWS.Util.encode_uri(name)}/certificate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

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
  Updates an existing recommendation with new content, status, or metadata
  """
  @spec update_recommendation(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_recommendation_request(),
          list()
        ) ::
          {:ok, update_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_recommendation_errors()}
  def update_recommendation(
        %Client{} = client,
        agent_space_id,
        recommendation_id,
        input,
        options \\ []
      ) do
    url_path =
      "/backlog/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/recommendations/#{AWS.Util.encode_uri(recommendation_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Updates the status of an existing Trigger
  """
  @spec update_trigger(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_trigger_request(),
          list()
        ) ::
          {:ok, update_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_trigger_errors()}
  def update_trigger(%Client{} = client, agent_space_id, trigger_id, input, options \\ []) do
    url_path =
      "/trigger/agent-space/#{AWS.Util.encode_uri(agent_space_id)}/triggers/#{AWS.Util.encode_uri(trigger_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dp.")

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
  Validates an aws association and set status and returns a 204 No Content
  response on success.
  """
  @spec validate_aws_associations(
          map(),
          String.t() | atom(),
          validate_aws_associations_input(),
          list()
        ) ::
          {:ok, validate_aws_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_aws_associations_errors()}
  def validate_aws_associations(%Client{} = client, agent_space_id, input, options \\ []) do
    url_path = "/v1/agentspaces/#{AWS.Util.encode_uri(agent_space_id)}/associations/validate"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "cp.")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end
end
