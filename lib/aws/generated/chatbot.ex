# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Chatbot do
  @moduledoc """
  The *AWS Chatbot API Reference* provides descriptions, API request parameters,
  and the XML response for each of the AWS Chatbot API actions.

  AWS Chatbot APIs are currently available in the following Regions:

    *
  US East (Ohio) - `us-east-2`

    *
  US West (Oregon) - `us-west-2`

    *
  Asia Pacific (Singapore) - `ap-southeast-1`

    *
  Europe (Ireland) - `eu-west-1`

  The AWS Chatbot console can only be used in US East (Ohio). Your configuration
  data however, is stored in each of the relevant available Regions.

  Your AWS CloudTrail events are logged in whatever Region you call from, not US
  East (N. Virginia) by default.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_teams_channel_configuration_request() :: %{
        optional("ChannelName") => String.t() | atom(),
        optional("GuardrailPolicyArns") => list(String.t() | atom()),
        optional("LoggingLevel") => String.t() | atom(),
        optional("SnsTopicArns") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        optional("TeamName") => String.t() | atom(),
        optional("UserAuthorizationRequired") => boolean(),
        required("ChannelId") => String.t() | atom(),
        required("ConfigurationName") => String.t() | atom(),
        required("IamRoleArn") => String.t() | atom(),
        required("TeamId") => String.t() | atom(),
        required("TenantId") => String.t() | atom()
      }

  """
  @type create_teams_channel_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slack_workspace_authorization_fault() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_slack_workspace_authorization_fault() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_teams_channel_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("TeamId") => String.t() | atom()
      }

  """
  @type list_teams_channel_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_teams_configured_team_request() :: %{
        required("TeamId") => String.t() | atom()
      }

  """
  @type delete_teams_configured_team_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slack_channel_configuration_result() :: %{}

  """
  @type delete_slack_channel_configuration_result() :: %{}

  @typedoc """

  ## Example:

      describe_slack_channel_configurations_request() :: %{
        optional("ChatConfigurationArn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_slack_channel_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_custom_action_result() :: %{
        "CustomAction" => custom_action()
      }

  """
  @type get_custom_action_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_action_request() :: %{
        optional("AliasName") => String.t() | atom(),
        optional("Attachments") => list(custom_action_attachment()),
        required("CustomActionArn") => String.t() | atom(),
        required("Definition") => custom_action_definition()
      }

  """
  @type update_custom_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_action_result() :: %{
        "CustomActionArn" => String.t() | atom()
      }

  """
  @type create_custom_action_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slack_workspace_authorization_result() :: %{}

  """
  @type delete_slack_workspace_authorization_result() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      describe_slack_workspaces_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type describe_slack_workspaces_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_preferences_request() :: %{
        optional("TrainingDataCollectionEnabled") => boolean(),
        optional("UserAuthorizationRequired") => boolean()
      }

  """
  @type update_account_preferences_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_slack_channel_configuration_result() :: %{
        "ChannelConfiguration" => slack_channel_configuration()
      }

  """
  @type create_slack_channel_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_teams_channel_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_teams_channel_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_actions_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()]
      }

  """
  @type list_custom_actions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microsoft_teams_configured_teams_result() :: %{
        "ConfiguredTeams" => list(configured_team()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_microsoft_teams_configured_teams_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microsoft_teams_configured_teams_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_microsoft_teams_configured_teams_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_slack_channel_configuration_request() :: %{
        optional("GuardrailPolicyArns") => list(String.t() | atom()),
        optional("IamRoleArn") => String.t() | atom(),
        optional("LoggingLevel") => String.t() | atom(),
        optional("SlackChannelName") => String.t() | atom(),
        optional("SnsTopicArns") => list(String.t() | atom()),
        optional("UserAuthorizationRequired") => boolean(),
        required("ChatConfigurationArn") => String.t() | atom(),
        required("SlackChannelId") => String.t() | atom()
      }

  """
  @type update_slack_channel_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_teams_channel_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type update_teams_channel_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microsoft_teams_configured_teams_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type list_microsoft_teams_configured_teams_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_teams_configured_team_result() :: %{}

  """
  @type delete_teams_configured_team_result() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slack_channel_configuration_request() :: %{
        required("ChatConfigurationArn") => String.t() | atom()
      }

  """
  @type delete_slack_channel_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_actions_result() :: %{
        "CustomActions" => list(String.t() | atom()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_custom_actions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_preferences_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type get_account_preferences_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_microsoft_teams_user_identity_result() :: %{}

  """
  @type delete_microsoft_teams_user_identity_result() :: %{}

  @typedoc """

  ## Example:

      custom_action_attachment_criteria() :: %{
        "Operator" => list(any()),
        "Value" => [String.t() | atom()],
        "VariableName" => [String.t() | atom()]
      }

  """
  @type custom_action_attachment_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_chime_webhook_configuration_result() :: %{
        "WebhookConfiguration" => chime_webhook_configuration()
      }

  """
  @type create_chime_webhook_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_configuration_result() :: %{}

  """
  @type disassociate_from_configuration_result() :: %{}

  @typedoc """

  ## Example:

      update_teams_channel_configuration_request() :: %{
        optional("ChannelName") => String.t() | atom(),
        optional("GuardrailPolicyArns") => list(String.t() | atom()),
        optional("IamRoleArn") => String.t() | atom(),
        optional("LoggingLevel") => String.t() | atom(),
        optional("SnsTopicArns") => list(String.t() | atom()),
        optional("UserAuthorizationRequired") => boolean(),
        required("ChannelId") => String.t() | atom(),
        required("ChatConfigurationArn") => String.t() | atom()
      }

  """
  @type update_teams_channel_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_action_request() :: %{
        required("CustomActionArn") => String.t() | atom()
      }

  """
  @type delete_custom_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_chime_webhook_configurations_result() :: %{
        "NextToken" => String.t() | atom(),
        "WebhookConfigurations" => list(chime_webhook_configuration())
      }

  """
  @type describe_chime_webhook_configurations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_from_configuration_request() :: %{
        required("ChatConfiguration") => String.t() | atom(),
        required("Resource") => String.t() | atom()
      }

  """
  @type disassociate_from_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microsoft_teams_user_identities_request() :: %{
        optional("ChatConfigurationArn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_microsoft_teams_user_identities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slack_user_identity_result() :: %{}

  """
  @type delete_slack_user_identity_result() :: %{}

  @typedoc """

  ## Example:

      teams_user_identity() :: %{
        "AwsUserIdentity" => String.t() | atom(),
        "ChatConfigurationArn" => String.t() | atom(),
        "IamRoleArn" => String.t() | atom(),
        "TeamId" => String.t() | atom(),
        "TeamsChannelId" => String.t() | atom(),
        "TeamsTenantId" => String.t() | atom(),
        "UserId" => String.t() | atom()
      }

  """
  @type teams_user_identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_preferences_result() :: %{
        "AccountPreferences" => account_preferences()
      }

  """
  @type get_account_preferences_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_preferences_result() :: %{
        "AccountPreferences" => account_preferences()
      }

  """
  @type update_account_preferences_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_teams_configured_team_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_teams_configured_team_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "TagKey" => String.t() | atom(),
        "TagValue" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_preferences_request() :: %{}

  """
  @type get_account_preferences_request() :: %{}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_slack_channel_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type create_slack_channel_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_action_attachment() :: %{
        "ButtonText" => String.t() | atom(),
        "Criteria" => list(custom_action_attachment_criteria()),
        "NotificationType" => String.t() | atom(),
        "Variables" => map()
      }

  """
  @type custom_action_attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_slack_workspaces_result() :: %{
        "NextToken" => String.t() | atom(),
        "SlackWorkspaces" => list(slack_workspace())
      }

  """
  @type describe_slack_workspaces_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_teams_channel_configuration_request() :: %{
        required("ChatConfigurationArn") => String.t() | atom()
      }

  """
  @type delete_teams_channel_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_teams_channel_configurations_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type list_teams_channel_configurations_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_chime_webhook_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type update_chime_webhook_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associations_result() :: %{
        "Associations" => list(association_listing()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_associations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_teams_channel_configuration_result() :: %{
        "ChannelConfiguration" => teams_channel_configuration()
      }

  """
  @type create_teams_channel_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_microsoft_teams_user_identity_request() :: %{
        required("ChatConfigurationArn") => String.t() | atom(),
        required("UserId") => String.t() | atom()
      }

  """
  @type delete_microsoft_teams_user_identity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_teams_channel_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type create_teams_channel_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_teams_channel_configurations_result() :: %{
        "NextToken" => String.t() | atom(),
        "TeamChannelConfigurations" => list(teams_channel_configuration())
      }

  """
  @type list_teams_channel_configurations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_chime_webhook_configuration_result() :: %{
        "WebhookConfiguration" => chime_webhook_configuration()
      }

  """
  @type update_chime_webhook_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_preferences() :: %{
        "TrainingDataCollectionEnabled" => boolean(),
        "UserAuthorizationRequired" => boolean()
      }

  """
  @type account_preferences() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_preferences_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type update_account_preferences_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_microsoft_teams_user_identity_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_microsoft_teams_user_identity_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slack_workspace() :: %{
        "SlackTeamId" => String.t() | atom(),
        "SlackTeamName" => String.t() | atom(),
        "State" => String.t() | atom(),
        "StateReason" => String.t() | atom()
      }

  """
  @type slack_workspace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_action_request() :: %{
        optional("AliasName") => String.t() | atom(),
        optional("Attachments") => list(custom_action_attachment()),
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("ActionName") => String.t() | atom(),
        required("Definition") => custom_action_definition()
      }

  """
  @type create_custom_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_to_configuration_request() :: %{
        required("ChatConfiguration") => String.t() | atom(),
        required("Resource") => String.t() | atom()
      }

  """
  @type associate_to_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_chime_webhook_configuration_request() :: %{
        optional("LoggingLevel") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("ConfigurationName") => String.t() | atom(),
        required("IamRoleArn") => String.t() | atom(),
        required("SnsTopicArns") => list(String.t() | atom()),
        required("WebhookDescription") => String.t() | atom(),
        required("WebhookUrl") => String.t() | atom()
      }

  """
  @type create_chime_webhook_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_slack_workspaces_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_slack_workspaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_teams_channel_configuration_request() :: %{
        required("ChatConfigurationArn") => String.t() | atom()
      }

  """
  @type get_teams_channel_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_slack_channel_configuration_request() :: %{
        optional("GuardrailPolicyArns") => list(String.t() | atom()),
        optional("LoggingLevel") => String.t() | atom(),
        optional("SlackChannelName") => String.t() | atom(),
        optional("SnsTopicArns") => list(String.t() | atom()),
        optional("Tags") => list(tag()),
        optional("UserAuthorizationRequired") => boolean(),
        required("ConfigurationName") => String.t() | atom(),
        required("IamRoleArn") => String.t() | atom(),
        required("SlackChannelId") => String.t() | atom(),
        required("SlackTeamId") => String.t() | atom()
      }

  """
  @type create_slack_channel_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_chime_webhook_configuration_request() :: %{
        optional("IamRoleArn") => String.t() | atom(),
        optional("LoggingLevel") => String.t() | atom(),
        optional("SnsTopicArns") => list(String.t() | atom()),
        optional("WebhookDescription") => String.t() | atom(),
        optional("WebhookUrl") => String.t() | atom(),
        required("ChatConfigurationArn") => String.t() | atom()
      }

  """
  @type update_chime_webhook_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configured_team() :: %{
        "State" => String.t() | atom(),
        "StateReason" => String.t() | atom(),
        "TeamId" => String.t() | atom(),
        "TeamName" => String.t() | atom(),
        "TenantId" => String.t() | atom()
      }

  """
  @type configured_team() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slack_user_identity_request() :: %{
        required("ChatConfigurationArn") => String.t() | atom(),
        required("SlackTeamId") => String.t() | atom(),
        required("SlackUserId") => String.t() | atom()
      }

  """
  @type delete_slack_user_identity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_slack_channel_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type update_slack_channel_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_action() :: %{
        "ActionName" => String.t() | atom(),
        "AliasName" => String.t() | atom(),
        "Attachments" => list(custom_action_attachment()),
        "CustomActionArn" => String.t() | atom(),
        "Definition" => custom_action_definition()
      }

  """
  @type custom_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associations_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom(),
        required("ChatConfiguration") => String.t() | atom()
      }

  """
  @type list_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slack_user_identity_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_slack_user_identity_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_chime_webhook_configurations_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type describe_chime_webhook_configurations_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_action_definition() :: %{
        "CommandText" => [String.t() | atom()]
      }

  """
  @type custom_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microsoft_teams_user_identities_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type list_microsoft_teams_user_identities_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_chime_webhook_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_chime_webhook_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slack_workspace_authorization_request() :: %{
        required("SlackTeamId") => String.t() | atom()
      }

  """
  @type delete_slack_workspace_authorization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      internal_service_error() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_service_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_action_result() :: %{
        "CustomActionArn" => String.t() | atom()
      }

  """
  @type update_custom_action_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_slack_user_identities_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type describe_slack_user_identities_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slack_channel_configuration() :: %{
        "ChatConfigurationArn" => String.t() | atom(),
        "ConfigurationName" => String.t() | atom(),
        "GuardrailPolicyArns" => list(String.t() | atom()),
        "IamRoleArn" => String.t() | atom(),
        "LoggingLevel" => String.t() | atom(),
        "SlackChannelId" => String.t() | atom(),
        "SlackChannelName" => String.t() | atom(),
        "SlackTeamId" => String.t() | atom(),
        "SlackTeamName" => String.t() | atom(),
        "SnsTopicArns" => list(String.t() | atom()),
        "State" => String.t() | atom(),
        "StateReason" => String.t() | atom(),
        "Tags" => list(tag()),
        "UserAuthorizationRequired" => boolean()
      }

  """
  @type slack_channel_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microsoft_teams_user_identities_result() :: %{
        "NextToken" => String.t() | atom(),
        "TeamsUserIdentities" => list(teams_user_identity())
      }

  """
  @type list_microsoft_teams_user_identities_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      association_listing() :: %{
        "Resource" => String.t() | atom()
      }

  """
  @type association_listing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_teams_channel_configuration_result() :: %{
        "ChannelConfiguration" => teams_channel_configuration()
      }

  """
  @type get_teams_channel_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chime_webhook_configuration() :: %{
        "ChatConfigurationArn" => String.t() | atom(),
        "ConfigurationName" => String.t() | atom(),
        "IamRoleArn" => String.t() | atom(),
        "LoggingLevel" => String.t() | atom(),
        "SnsTopicArns" => list(String.t() | atom()),
        "State" => String.t() | atom(),
        "StateReason" => String.t() | atom(),
        "Tags" => list(tag()),
        "WebhookDescription" => String.t() | atom()
      }

  """
  @type chime_webhook_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slack_user_identity() :: %{
        "AwsUserIdentity" => String.t() | atom(),
        "ChatConfigurationArn" => String.t() | atom(),
        "IamRoleArn" => String.t() | atom(),
        "SlackTeamId" => String.t() | atom(),
        "SlackUserId" => String.t() | atom()
      }

  """
  @type slack_user_identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_custom_action_request() :: %{
        required("CustomActionArn") => String.t() | atom()
      }

  """
  @type get_custom_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_chime_webhook_configuration_result() :: %{}

  """
  @type delete_chime_webhook_configuration_result() :: %{}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_chime_webhook_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type create_chime_webhook_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_teams_channel_configuration_result() :: %{}

  """
  @type delete_teams_channel_configuration_result() :: %{}

  @typedoc """

  ## Example:

      describe_chime_webhook_configurations_request() :: %{
        optional("ChatConfigurationArn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_chime_webhook_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_slack_channel_configuration_result() :: %{
        "ChannelConfiguration" => slack_channel_configuration()
      }

  """
  @type update_slack_channel_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_teams_channel_configuration_result() :: %{
        "ChannelConfiguration" => teams_channel_configuration()
      }

  """
  @type update_teams_channel_configuration_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      teams_channel_configuration() :: %{
        "ChannelId" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "ChatConfigurationArn" => String.t() | atom(),
        "ConfigurationName" => String.t() | atom(),
        "GuardrailPolicyArns" => list(String.t() | atom()),
        "IamRoleArn" => String.t() | atom(),
        "LoggingLevel" => String.t() | atom(),
        "SnsTopicArns" => list(String.t() | atom()),
        "State" => String.t() | atom(),
        "StateReason" => String.t() | atom(),
        "Tags" => list(tag()),
        "TeamId" => String.t() | atom(),
        "TeamName" => String.t() | atom(),
        "TenantId" => String.t() | atom(),
        "UserAuthorizationRequired" => boolean()
      }

  """
  @type teams_channel_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_slack_user_identities_result() :: %{
        "NextToken" => String.t() | atom(),
        "SlackUserIdentities" => list(slack_user_identity())
      }

  """
  @type describe_slack_user_identities_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_to_configuration_result() :: %{}

  """
  @type associate_to_configuration_result() :: %{}

  @typedoc """

  ## Example:

      delete_slack_channel_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_slack_channel_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_chime_webhook_configuration_request() :: %{
        required("ChatConfigurationArn") => String.t() | atom()
      }

  """
  @type delete_chime_webhook_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_teams_channel_configuration_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type get_teams_channel_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_slack_user_identities_request() :: %{
        optional("ChatConfigurationArn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_slack_user_identities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_slack_channel_configurations_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type describe_slack_channel_configurations_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_slack_channel_configurations_result() :: %{
        "NextToken" => String.t() | atom(),
        "SlackChannelConfigurations" => list(slack_channel_configuration())
      }

  """
  @type describe_slack_channel_configurations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_action_result() :: %{}

  """
  @type delete_custom_action_result() :: %{}

  @type associate_to_configuration_errors() ::
          internal_service_error() | invalid_request_exception() | unauthorized_exception()

  @type create_chime_webhook_configuration_errors() ::
          create_chime_webhook_configuration_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | conflict_exception()

  @type create_custom_action_errors() ::
          limit_exceeded_exception()
          | internal_service_error()
          | invalid_request_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_microsoft_teams_channel_configuration_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | create_teams_channel_configuration_exception()
          | invalid_request_exception()
          | conflict_exception()

  @type create_slack_channel_configuration_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | create_slack_channel_configuration_exception()
          | invalid_request_exception()
          | conflict_exception()

  @type delete_chime_webhook_configuration_errors() ::
          invalid_parameter_exception()
          | delete_chime_webhook_configuration_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_custom_action_errors() ::
          internal_service_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_microsoft_teams_channel_configuration_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | delete_teams_channel_configuration_exception()

  @type delete_microsoft_teams_configured_team_errors() ::
          invalid_parameter_exception() | delete_teams_configured_team_exception()

  @type delete_microsoft_teams_user_identity_errors() ::
          invalid_parameter_exception()
          | delete_microsoft_teams_user_identity_exception()
          | resource_not_found_exception()

  @type delete_slack_channel_configuration_errors() ::
          delete_slack_channel_configuration_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_slack_user_identity_errors() ::
          invalid_parameter_exception()
          | delete_slack_user_identity_exception()
          | resource_not_found_exception()

  @type delete_slack_workspace_authorization_errors() ::
          invalid_parameter_exception() | delete_slack_workspace_authorization_fault()

  @type describe_chime_webhook_configurations_errors() ::
          invalid_parameter_exception()
          | describe_chime_webhook_configurations_exception()
          | invalid_request_exception()

  @type describe_slack_channel_configurations_errors() ::
          describe_slack_channel_configurations_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()

  @type describe_slack_user_identities_errors() ::
          describe_slack_user_identities_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()

  @type describe_slack_workspaces_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | describe_slack_workspaces_exception()

  @type disassociate_from_configuration_errors() ::
          internal_service_error() | invalid_request_exception() | unauthorized_exception()

  @type get_account_preferences_errors() ::
          invalid_request_exception() | get_account_preferences_exception()

  @type get_custom_action_errors() ::
          internal_service_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_microsoft_teams_channel_configuration_errors() ::
          get_teams_channel_configuration_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()

  @type list_custom_actions_errors() ::
          internal_service_error() | invalid_request_exception() | unauthorized_exception()

  @type list_microsoft_teams_channel_configurations_errors() ::
          invalid_parameter_exception()
          | list_teams_channel_configurations_exception()
          | invalid_request_exception()

  @type list_microsoft_teams_configured_teams_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | list_microsoft_teams_configured_teams_exception()

  @type list_microsoft_teams_user_identities_errors() ::
          invalid_parameter_exception()
          | list_microsoft_teams_user_identities_exception()
          | invalid_request_exception()

  @type list_tags_for_resource_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | internal_service_error()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_service_error()
          | service_unavailable_exception()
          | resource_not_found_exception()

  @type update_account_preferences_errors() ::
          invalid_parameter_exception()
          | update_account_preferences_exception()
          | invalid_request_exception()

  @type update_chime_webhook_configuration_errors() ::
          invalid_parameter_exception()
          | update_chime_webhook_configuration_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_custom_action_errors() ::
          internal_service_error()
          | invalid_request_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_microsoft_teams_channel_configuration_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | update_teams_channel_configuration_exception()

  @type update_slack_channel_configuration_errors() ::
          invalid_parameter_exception()
          | update_slack_channel_configuration_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-10-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "chatbot",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "chatbot",
      signature_version: "v4",
      signing_name: "chatbot",
      target_prefix: nil
    }
  end

  @doc """
  Links a resource (for example, a custom action) to a channel configuration.
  """
  @spec associate_to_configuration(map(), associate_to_configuration_request(), list()) ::
          {:ok, associate_to_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_to_configuration_errors()}
  def associate_to_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/associate-to-configuration"
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
      201
    )
  end

  @doc """
  Creates an AWS Chatbot configuration for Amazon Chime.
  """
  @spec create_chime_webhook_configuration(
          map(),
          create_chime_webhook_configuration_request(),
          list()
        ) ::
          {:ok, create_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_chime_webhook_configuration_errors()}
  def create_chime_webhook_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/create-chime-webhook-configuration"
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
      201
    )
  end

  @doc """
  Creates a custom action that can be invoked as an alias or as a button on a
  notification.
  """
  @spec create_custom_action(map(), create_custom_action_request(), list()) ::
          {:ok, create_custom_action_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_custom_action_errors()}
  def create_custom_action(%Client{} = client, input, options \\ []) do
    url_path = "/create-custom-action"
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
      201
    )
  end

  @doc """
  Creates an AWS Chatbot configuration for Microsoft Teams.
  """
  @spec create_microsoft_teams_channel_configuration(
          map(),
          create_teams_channel_configuration_request(),
          list()
        ) ::
          {:ok, create_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_microsoft_teams_channel_configuration_errors()}
  def create_microsoft_teams_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/create-ms-teams-channel-configuration"
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
      201
    )
  end

  @doc """
  Creates an AWS Chatbot confugration for Slack.
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
    url_path = "/create-slack-channel-configuration"
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
      201
    )
  end

  @doc """
  Deletes a Amazon Chime webhook configuration for AWS Chatbot.
  """
  @spec delete_chime_webhook_configuration(
          map(),
          delete_chime_webhook_configuration_request(),
          list()
        ) ::
          {:ok, delete_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_chime_webhook_configuration_errors()}
  def delete_chime_webhook_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/delete-chime-webhook-configuration"
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
      204
    )
  end

  @doc """
  Deletes a custom action.
  """
  @spec delete_custom_action(map(), delete_custom_action_request(), list()) ::
          {:ok, delete_custom_action_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_action_errors()}
  def delete_custom_action(%Client{} = client, input, options \\ []) do
    url_path = "/delete-custom-action"
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
      204
    )
  end

  @doc """
  Deletes a Microsoft Teams channel configuration for AWS Chatbot
  """
  @spec delete_microsoft_teams_channel_configuration(
          map(),
          delete_teams_channel_configuration_request(),
          list()
        ) ::
          {:ok, delete_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_microsoft_teams_channel_configuration_errors()}
  def delete_microsoft_teams_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/delete-ms-teams-channel-configuration"
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
          | {:error, term()}
          | {:error, delete_microsoft_teams_configured_team_errors()}
  def delete_microsoft_teams_configured_team(%Client{} = client, input, options \\ []) do
    url_path = "/delete-ms-teams-configured-teams"
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
      204
    )
  end

  @doc """
  Identifes a user level permission for a channel configuration.
  """
  @spec delete_microsoft_teams_user_identity(
          map(),
          delete_microsoft_teams_user_identity_request(),
          list()
        ) ::
          {:ok, delete_microsoft_teams_user_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_microsoft_teams_user_identity_errors()}
  def delete_microsoft_teams_user_identity(%Client{} = client, input, options \\ []) do
    url_path = "/delete-ms-teams-user-identity"
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
      204
    )
  end

  @doc """
  Deletes a Slack channel configuration for AWS Chatbot
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
    url_path = "/delete-slack-channel-configuration"
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
      204
    )
  end

  @doc """
  Deletes a user level permission for a Slack channel configuration.
  """
  @spec delete_slack_user_identity(map(), delete_slack_user_identity_request(), list()) ::
          {:ok, delete_slack_user_identity_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_slack_user_identity_errors()}
  def delete_slack_user_identity(%Client{} = client, input, options \\ []) do
    url_path = "/delete-slack-user-identity"
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
          | {:error, term()}
          | {:error, delete_slack_workspace_authorization_errors()}
  def delete_slack_workspace_authorization(%Client{} = client, input, options \\ []) do
    url_path = "/delete-slack-workspace-authorization"
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
      204
    )
  end

  @doc """
  Lists Amazon Chime webhook configurations optionally filtered by
  ChatConfigurationArn
  """
  @spec describe_chime_webhook_configurations(
          map(),
          describe_chime_webhook_configurations_request(),
          list()
        ) ::
          {:ok, describe_chime_webhook_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_chime_webhook_configurations_errors()}
  def describe_chime_webhook_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/describe-chime-webhook-configurations"
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
  Lists Slack channel configurations optionally filtered by ChatConfigurationArn
  """
  @spec describe_slack_channel_configurations(
          map(),
          describe_slack_channel_configurations_request(),
          list()
        ) ::
          {:ok, describe_slack_channel_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_slack_channel_configurations_errors()}
  def describe_slack_channel_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/describe-slack-channel-configurations"
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
  Lists all Slack user identities with a mapped role.
  """
  @spec describe_slack_user_identities(map(), describe_slack_user_identities_request(), list()) ::
          {:ok, describe_slack_user_identities_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_slack_user_identities_errors()}
  def describe_slack_user_identities(%Client{} = client, input, options \\ []) do
    url_path = "/describe-slack-user-identities"
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
  List all authorized Slack workspaces connected to the AWS Account onboarded with
  AWS Chatbot.
  """
  @spec describe_slack_workspaces(map(), describe_slack_workspaces_request(), list()) ::
          {:ok, describe_slack_workspaces_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_slack_workspaces_errors()}
  def describe_slack_workspaces(%Client{} = client, input, options \\ []) do
    url_path = "/describe-slack-workspaces"
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
  Unlink a resource, for example a custom action, from a channel configuration.
  """
  @spec disassociate_from_configuration(map(), disassociate_from_configuration_request(), list()) ::
          {:ok, disassociate_from_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_from_configuration_errors()}
  def disassociate_from_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/disassociate-from-configuration"
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
      204
    )
  end

  @doc """
  Returns AWS Chatbot account preferences.
  """
  @spec get_account_preferences(map(), get_account_preferences_request(), list()) ::
          {:ok, get_account_preferences_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_preferences_errors()}
  def get_account_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/get-account-preferences"
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
  Returns a custom action.
  """
  @spec get_custom_action(map(), get_custom_action_request(), list()) ::
          {:ok, get_custom_action_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_custom_action_errors()}
  def get_custom_action(%Client{} = client, input, options \\ []) do
    url_path = "/get-custom-action"
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
  Returns a Microsoft Teams channel configuration in an AWS account.
  """
  @spec get_microsoft_teams_channel_configuration(
          map(),
          get_teams_channel_configuration_request(),
          list()
        ) ::
          {:ok, get_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_microsoft_teams_channel_configuration_errors()}
  def get_microsoft_teams_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/get-ms-teams-channel-configuration"
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
  Lists resources associated with a channel configuration.
  """
  @spec list_associations(map(), list_associations_request(), list()) ::
          {:ok, list_associations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_associations(%Client{} = client, input, options \\ []) do
    url_path = "/list-associations"
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
  Lists custom actions defined in this account.
  """
  @spec list_custom_actions(map(), list_custom_actions_request(), list()) ::
          {:ok, list_custom_actions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_custom_actions_errors()}
  def list_custom_actions(%Client{} = client, input, options \\ []) do
    url_path = "/list-custom-actions"
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
  Lists all AWS Chatbot Microsoft Teams channel configurations in an AWS account.
  """
  @spec list_microsoft_teams_channel_configurations(
          map(),
          list_teams_channel_configurations_request(),
          list()
        ) ::
          {:ok, list_teams_channel_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_microsoft_teams_channel_configurations_errors()}
  def list_microsoft_teams_channel_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/list-ms-teams-channel-configurations"
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
  Lists all authorized Microsoft Teams for an AWS Account
  """
  @spec list_microsoft_teams_configured_teams(
          map(),
          list_microsoft_teams_configured_teams_request(),
          list()
        ) ::
          {:ok, list_microsoft_teams_configured_teams_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_microsoft_teams_configured_teams_errors()}
  def list_microsoft_teams_configured_teams(%Client{} = client, input, options \\ []) do
    url_path = "/list-ms-teams-configured-teams"
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
  A list all Microsoft Teams user identities with a mapped role.
  """
  @spec list_microsoft_teams_user_identities(
          map(),
          list_microsoft_teams_user_identities_request(),
          list()
        ) ::
          {:ok, list_microsoft_teams_user_identities_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_microsoft_teams_user_identities_errors()}
  def list_microsoft_teams_user_identities(%Client{} = client, input, options \\ []) do
    url_path = "/list-ms-teams-user-identities"
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
  Lists all of the tags associated with the Amazon Resource Name (ARN) that you
  specify.

  The resource can be a user, server, or role.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/list-tags-for-resource"
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
  Attaches a key-value pair to a resource, as identified by its Amazon Resource
  Name (ARN).

  Resources are users, servers, roles, and other entities.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tag-resource"
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
  Detaches a key-value pair from a resource, as identified by its Amazon Resource
  Name (ARN).

  Resources are users, servers, roles, and other entities.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untag-resource"
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
  Updates AWS Chatbot account preferences.
  """
  @spec update_account_preferences(map(), update_account_preferences_request(), list()) ::
          {:ok, update_account_preferences_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_preferences_errors()}
  def update_account_preferences(%Client{} = client, input, options \\ []) do
    url_path = "/update-account-preferences"
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
  Updates a Amazon Chime webhook configuration.
  """
  @spec update_chime_webhook_configuration(
          map(),
          update_chime_webhook_configuration_request(),
          list()
        ) ::
          {:ok, update_chime_webhook_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_chime_webhook_configuration_errors()}
  def update_chime_webhook_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/update-chime-webhook-configuration"
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
  Updates a custom action.
  """
  @spec update_custom_action(map(), update_custom_action_request(), list()) ::
          {:ok, update_custom_action_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_custom_action_errors()}
  def update_custom_action(%Client{} = client, input, options \\ []) do
    url_path = "/update-custom-action"
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
  Updates an Microsoft Teams channel configuration.
  """
  @spec update_microsoft_teams_channel_configuration(
          map(),
          update_teams_channel_configuration_request(),
          list()
        ) ::
          {:ok, update_teams_channel_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_microsoft_teams_channel_configuration_errors()}
  def update_microsoft_teams_channel_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/update-ms-teams-channel-configuration"
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
  Updates a Slack channel configuration.
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
    url_path = "/update-slack-channel-configuration"
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
