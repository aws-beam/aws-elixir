# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKIdentity do
  @moduledoc """
  The Amazon Chime SDK Identity APIs in this section allow software developers to
  create
  and manage unique instances of their messaging applications.

  These APIs provide the
  overarching framework for creating and sending messages. For more information
  about the
  identity APIs, refer to [Amazon Chime SDK identity](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_app_instances_response() :: %{
        "AppInstances" => list(app_instance_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_app_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_bot_summary() :: %{
        "AppInstanceBotArn" => String.t() | atom(),
        "Metadata" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type app_instance_bot_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_app_instance_user_expiration_settings_request() :: %{
        optional("ExpirationSettings") => expiration_settings()
      }

  """
  @type put_app_instance_user_expiration_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_app_instance_admin_request() :: %{}

  """
  @type delete_app_instance_admin_request() :: %{}

  @typedoc """

  ## Example:

      delete_app_instance_user_request() :: %{}

  """
  @type delete_app_instance_user_request() :: %{}

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

      list_app_instance_admins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_app_instance_admins_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      endpoint_state() :: %{
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type endpoint_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_app_instance_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AppInstanceArn") => String.t() | atom()
      }

  """
  @type list_app_instance_bots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_app_instance_response() :: %{
        "AppInstanceArn" => String.t() | atom()
      }

  """
  @type create_app_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_app_instance_response() :: %{
        "AppInstanceArn" => String.t() | atom()
      }

  """
  @type update_app_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lex_configuration() :: %{
        "InvokedBy" => invoked_by(),
        "LexBotAliasArn" => String.t() | atom(),
        "LocaleId" => String.t() | atom(),
        "RespondsTo" => list(any()),
        "WelcomeIntent" => String.t() | atom()
      }

  """
  @type lex_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_app_instance_admins_response() :: %{
        "AppInstanceAdmins" => list(app_instance_admin_summary()),
        "AppInstanceArn" => String.t() | atom(),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_app_instance_admins_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_failure_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type service_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      identity() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type identity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type unauthorized_client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_request() :: %{}

  """
  @type describe_app_instance_request() :: %{}

  @typedoc """

  ## Example:

      list_app_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_app_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        "Lex" => lex_configuration()
      }

  """
  @type configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_app_instance_request() :: %{
        required("Metadata") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type update_app_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttled_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type throttled_client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      endpoint_attributes() :: %{
        "DeviceToken" => String.t() | atom(),
        "VoipDeviceToken" => String.t() | atom()
      }

  """
  @type endpoint_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_app_instance_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("AppInstanceArn") => String.t() | atom()
      }

  """
  @type list_app_instance_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      expiration_settings() :: %{
        "ExpirationCriterion" => list(any()),
        "ExpirationDays" => integer()
      }

  """
  @type expiration_settings() :: %{(String.t() | atom()) => any()}

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

      put_app_instance_retention_settings_request() :: %{
        required("AppInstanceRetentionSettings") => app_instance_retention_settings()
      }

  """
  @type put_app_instance_retention_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_app_instance_user_endpoint_request() :: %{
        optional("AllowMessages") => list(any()),
        optional("Name") => String.t() | atom(),
        required("ClientRequestToken") => String.t() | atom(),
        required("EndpointAttributes") => endpoint_attributes(),
        required("ResourceArn") => String.t() | atom(),
        required("Type") => list(any())
      }

  """
  @type register_app_instance_user_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_app_instance_retention_settings_request() :: %{}

  """
  @type get_app_instance_retention_settings_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_app_instance_bot_request() :: %{}

  """
  @type delete_app_instance_bot_request() :: %{}

  @typedoc """

  ## Example:

      put_app_instance_user_expiration_settings_response() :: %{
        "AppInstanceUserArn" => String.t() | atom(),
        "ExpirationSettings" => expiration_settings()
      }

  """
  @type put_app_instance_user_expiration_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_endpoint_response() :: %{
        "AppInstanceUserArn" => String.t() | atom(),
        "EndpointId" => String.t() | atom()
      }

  """
  @type update_app_instance_user_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_user_response() :: %{
        "AppInstanceUser" => app_instance_user()
      }

  """
  @type describe_app_instance_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_bot_response() :: %{
        "AppInstanceBot" => app_instance_bot()
      }

  """
  @type describe_app_instance_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_response() :: %{
        "AppInstance" => app_instance()
      }

  """
  @type describe_app_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_response() :: %{
        "AppInstanceUserArn" => String.t() | atom()
      }

  """
  @type update_app_instance_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_app_instance_users_response() :: %{
        "AppInstanceArn" => String.t() | atom(),
        "AppInstanceUsers" => list(app_instance_user_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_app_instance_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type resource_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_summary() :: %{
        "AppInstanceArn" => String.t() | atom(),
        "Metadata" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type app_instance_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_user() :: %{
        "AppInstanceUserArn" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "ExpirationSettings" => expiration_settings(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type app_instance_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_app_instance_user_endpoints_response() :: %{
        "AppInstanceUserEndpoints" => list(app_instance_user_endpoint_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_app_instance_user_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_app_instance_bot_response() :: %{
        "AppInstanceBotArn" => String.t() | atom()
      }

  """
  @type update_app_instance_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      channel_retention_settings() :: %{
        "RetentionDays" => integer()
      }

  """
  @type channel_retention_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_user_endpoint() :: %{
        "AllowMessages" => list(any()),
        "AppInstanceUserArn" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "EndpointAttributes" => endpoint_attributes(),
        "EndpointId" => String.t() | atom(),
        "EndpointState" => endpoint_state(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "ResourceArn" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type app_instance_user_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_user_endpoint_summary() :: %{
        "AllowMessages" => list(any()),
        "AppInstanceUserArn" => String.t() | atom(),
        "EndpointId" => String.t() | atom(),
        "EndpointState" => endpoint_state(),
        "Name" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type app_instance_user_endpoint_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_app_instance_retention_settings_response() :: %{
        "AppInstanceRetentionSettings" => app_instance_retention_settings(),
        "InitiateDeletionTimestamp" => non_neg_integer()
      }

  """
  @type get_app_instance_retention_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_admin() :: %{
        "Admin" => identity(),
        "AppInstanceArn" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer()
      }

  """
  @type app_instance_admin() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_app_instance_bots_response() :: %{
        "AppInstanceArn" => String.t() | atom(),
        "AppInstanceBots" => list(app_instance_bot_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_app_instance_bots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_request() :: %{
        required("Metadata") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type update_app_instance_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_admin_response() :: %{
        "AppInstanceAdmin" => app_instance_admin()
      }

  """
  @type describe_app_instance_admin_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_app_instance_request() :: %{
        optional("Metadata") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("ClientRequestToken") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_app_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_app_instance_bot_response() :: %{
        "AppInstanceBotArn" => String.t() | atom()
      }

  """
  @type create_app_instance_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_admin_summary() :: %{
        "Admin" => identity()
      }

  """
  @type app_instance_admin_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoked_by() :: %{
        "StandardMessages" => list(any()),
        "TargetedMessages" => list(any())
      }

  """
  @type invoked_by() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_app_instance_bot_request() :: %{
        optional("Metadata") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("AppInstanceArn") => String.t() | atom(),
        required("ClientRequestToken") => String.t() | atom(),
        required("Configuration") => configuration()
      }

  """
  @type create_app_instance_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_app_instance_admin_response() :: %{
        "AppInstanceAdmin" => identity(),
        "AppInstanceArn" => String.t() | atom()
      }

  """
  @type create_app_instance_admin_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_app_instance_retention_settings_response() :: %{
        "AppInstanceRetentionSettings" => app_instance_retention_settings(),
        "InitiateDeletionTimestamp" => non_neg_integer()
      }

  """
  @type put_app_instance_retention_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_retention_settings() :: %{
        "ChannelRetentionSettings" => channel_retention_settings()
      }

  """
  @type app_instance_retention_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_app_instance_admin_request() :: %{
        required("AppInstanceAdminArn") => String.t() | atom()
      }

  """
  @type create_app_instance_admin_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_admin_request() :: %{}

  """
  @type describe_app_instance_admin_request() :: %{}

  @typedoc """

  ## Example:

      describe_app_instance_user_endpoint_request() :: %{}

  """
  @type describe_app_instance_user_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      deregister_app_instance_user_endpoint_request() :: %{}

  """
  @type deregister_app_instance_user_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      delete_app_instance_request() :: %{}

  """
  @type delete_app_instance_request() :: %{}

  @typedoc """

  ## Example:

      app_instance_user_summary() :: %{
        "AppInstanceUserArn" => String.t() | atom(),
        "Metadata" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type app_instance_user_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_app_instance_user_endpoint_response() :: %{
        "AppInstanceUserArn" => String.t() | atom(),
        "EndpointId" => String.t() | atom()
      }

  """
  @type register_app_instance_user_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_endpoint_request() :: %{
        optional("AllowMessages") => list(any()),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_app_instance_user_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_user_endpoint_response() :: %{
        "AppInstanceUserEndpoint" => app_instance_user_endpoint()
      }

  """
  @type describe_app_instance_user_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_user_request() :: %{}

  """
  @type describe_app_instance_user_request() :: %{}

  @typedoc """

  ## Example:

      update_app_instance_bot_request() :: %{
        optional("Configuration") => configuration(),
        required("Metadata") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type update_app_instance_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_app_instance_user_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_app_instance_user_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_app_instance_bot_request() :: %{}

  """
  @type describe_app_instance_bot_request() :: %{}

  @typedoc """

  ## Example:

      create_app_instance_user_request() :: %{
        optional("ExpirationSettings") => expiration_settings(),
        optional("Metadata") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("AppInstanceArn") => String.t() | atom(),
        required("AppInstanceUserId") => String.t() | atom(),
        required("ClientRequestToken") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_app_instance_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance() :: %{
        "AppInstanceArn" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type app_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      app_instance_bot() :: %{
        "AppInstanceBotArn" => String.t() | atom(),
        "Configuration" => configuration(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type app_instance_bot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_app_instance_user_response() :: %{
        "AppInstanceUserArn" => String.t() | atom()
      }

  """
  @type create_app_instance_user_response() :: %{(String.t() | atom()) => any()}

  @type create_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type deregister_app_instance_user_endpoint_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_user_endpoint_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_app_instance_retention_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_admins_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_bots_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_user_endpoints_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_users_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instances_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_app_instance_retention_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_app_instance_user_expiration_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type register_app_instance_user_endpoint_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_user_endpoint_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  def metadata do
    %{
      api_version: "2021-04-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "identity-chime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Chime SDK Identity",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Chime SDK messaging `AppInstance` under an AWS account.

  Only SDK messaging customers use this API. `CreateAppInstance` supports
  idempotency behavior as described in the AWS API Standard.

  identity
  """
  @spec create_app_instance(map(), create_app_instance_request(), list()) ::
          {:ok, create_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_instance_errors()}
  def create_app_instance(%Client{} = client, input, options \\ []) do
    url_path = "/app-instances"
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
  Promotes an `AppInstanceUser` or `AppInstanceBot` to an
  `AppInstanceAdmin`.

  The
  promoted entity can perform the following actions.

    *

  `ChannelModerator` actions across all channels in the
  `AppInstance`.

    *

  `DeleteChannelMessage` actions.

  Only an `AppInstanceUser` and `AppInstanceBot` can be promoted to an
  `AppInstanceAdmin`
  role.
  """
  @spec create_app_instance_admin(
          map(),
          String.t() | atom(),
          create_app_instance_admin_request(),
          list()
        ) ::
          {:ok, create_app_instance_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_instance_admin_errors()}
  def create_app_instance_admin(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"
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
  Creates a bot under an Amazon Chime `AppInstance`.

  The request consists of a
  unique `Configuration` and `Name` for that bot.
  """
  @spec create_app_instance_bot(map(), create_app_instance_bot_request(), list()) ::
          {:ok, create_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_instance_bot_errors()}
  def create_app_instance_bot(%Client{} = client, input, options \\ []) do
    url_path = "/app-instance-bots"
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
  Creates a user under an Amazon Chime `AppInstance`.

  The request consists of a
  unique `appInstanceUserId` and `Name` for that user.
  """
  @spec create_app_instance_user(map(), create_app_instance_user_request(), list()) ::
          {:ok, create_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_instance_user_errors()}
  def create_app_instance_user(%Client{} = client, input, options \\ []) do
    url_path = "/app-instance-users"
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
  Deletes an `AppInstance` and all associated data asynchronously.
  """
  @spec delete_app_instance(map(), String.t() | atom(), delete_app_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_instance_errors()}
  def delete_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Demotes an `AppInstanceAdmin` to an `AppInstanceUser` or
  `AppInstanceBot`.

  This action
  does not delete the user.
  """
  @spec delete_app_instance_admin(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_app_instance_admin_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_instance_admin_errors()}
  def delete_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes an `AppInstanceBot`.
  """
  @spec delete_app_instance_bot(
          map(),
          String.t() | atom(),
          delete_app_instance_bot_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_instance_bot_errors()}
  def delete_app_instance_bot(%Client{} = client, app_instance_bot_arn, input, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"
    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes an `AppInstanceUser`.
  """
  @spec delete_app_instance_user(
          map(),
          String.t() | atom(),
          delete_app_instance_user_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_instance_user_errors()}
  def delete_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deregisters an `AppInstanceUserEndpoint`.
  """
  @spec deregister_app_instance_user_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          deregister_app_instance_user_endpoint_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_app_instance_user_endpoint_errors()}
  def deregister_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    custom_headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Returns the full details of an `AppInstance`.
  """
  @spec describe_app_instance(map(), String.t() | atom(), list()) ::
          {:ok, describe_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_instance_errors()}
  def describe_app_instance(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of an `AppInstanceAdmin`.
  """
  @spec describe_app_instance_admin(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_app_instance_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_instance_admin_errors()}
  def describe_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `AppInstanceBot's` information.
  """
  @spec describe_app_instance_bot(map(), String.t() | atom(), list()) ::
          {:ok, describe_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_instance_bot_errors()}
  def describe_app_instance_bot(%Client{} = client, app_instance_bot_arn, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of an `AppInstanceUser`.
  """
  @spec describe_app_instance_user(map(), String.t() | atom(), list()) ::
          {:ok, describe_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_instance_user_errors()}
  def describe_app_instance_user(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of an `AppInstanceUserEndpoint`.
  """
  @spec describe_app_instance_user_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_app_instance_user_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_app_instance_user_endpoint_errors()}
  def describe_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the retention settings for an `AppInstance`.
  """
  @spec get_app_instance_retention_settings(map(), String.t() | atom(), list()) ::
          {:ok, get_app_instance_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_app_instance_retention_settings_errors()}
  def get_app_instance_retention_settings(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the administrators in the `AppInstance`.
  """
  @spec list_app_instance_admins(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_app_instance_admins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_instance_admins_errors()}
  def list_app_instance_admins(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all `AppInstanceBots` created under a single `AppInstance`.
  """
  @spec list_app_instance_bots(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_app_instance_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_instance_bots_errors()}
  def list_app_instance_bots(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instance-bots"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(app_instance_arn) do
        [{"app-instance-arn", app_instance_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the `AppInstanceUserEndpoints` created under a single
  `AppInstanceUser`.
  """
  @spec list_app_instance_user_endpoints(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_app_instance_user_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_instance_user_endpoints_errors()}
  def list_app_instance_user_endpoints(
        %Client{} = client,
        app_instance_user_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all `AppInstanceUsers` created under a single
  `AppInstance`.
  """
  @spec list_app_instance_users(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_app_instance_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_instance_users_errors()}
  def list_app_instance_users(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instance-users"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(app_instance_arn) do
        [{"app-instance-arn", app_instance_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Amazon Chime `AppInstance`s created under a single AWS
  account.
  """
  @spec list_app_instances(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_app_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_instances_errors()}
  def list_app_instances(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/app-instances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags applied to an Amazon Chime SDK identity resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"arn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the amount of time in days that a given `AppInstance` retains
  data.
  """
  @spec put_app_instance_retention_settings(
          map(),
          String.t() | atom(),
          put_app_instance_retention_settings_request(),
          list()
        ) ::
          {:ok, put_app_instance_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_app_instance_retention_settings_errors()}
  def put_app_instance_retention_settings(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Sets the number of days before the `AppInstanceUser` is automatically deleted.

  A background process deletes expired `AppInstanceUsers` within 6 hours of
  expiration.
  Actual deletion times may vary.

  Expired `AppInstanceUsers` that have not yet been deleted appear as active, and
  you can update
  their expiration settings. The system honors the new settings.
  """
  @spec put_app_instance_user_expiration_settings(
          map(),
          String.t() | atom(),
          put_app_instance_user_expiration_settings_request(),
          list()
        ) ::
          {:ok, put_app_instance_user_expiration_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_app_instance_user_expiration_settings_errors()}
  def put_app_instance_user_expiration_settings(
        %Client{} = client,
        app_instance_user_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/expiration-settings"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Registers an endpoint under an Amazon Chime `AppInstanceUser`.

  The endpoint receives messages for a user. For push notifications, the endpoint
  is a mobile device used to receive mobile push notifications for a user.
  """
  @spec register_app_instance_user_endpoint(
          map(),
          String.t() | atom(),
          register_app_instance_user_endpoint_request(),
          list()
        ) ::
          {:ok, register_app_instance_user_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_app_instance_user_endpoint_errors()}
  def register_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints"
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
  Applies the specified tags to the specified Amazon Chime SDK identity resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
  Removes the specified tags from the specified Amazon Chime SDK identity
  resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
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
  Updates `AppInstance` metadata.
  """
  @spec update_app_instance(map(), String.t() | atom(), update_app_instance_request(), list()) ::
          {:ok, update_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_instance_errors()}
  def update_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the name and metadata of an `AppInstanceBot`.
  """
  @spec update_app_instance_bot(
          map(),
          String.t() | atom(),
          update_app_instance_bot_request(),
          list()
        ) ::
          {:ok, update_app_instance_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_instance_bot_errors()}
  def update_app_instance_bot(%Client{} = client, app_instance_bot_arn, input, options \\ []) do
    url_path = "/app-instance-bots/#{AWS.Util.encode_uri(app_instance_bot_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the details of an `AppInstanceUser`.

  You can update names and
  metadata.
  """
  @spec update_app_instance_user(
          map(),
          String.t() | atom(),
          update_app_instance_user_request(),
          list()
        ) ::
          {:ok, update_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_instance_user_errors()}
  def update_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the details of an `AppInstanceUserEndpoint`.

  You can update the name and `AllowMessage` values.
  """
  @spec update_app_instance_user_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_app_instance_user_endpoint_request(),
          list()
        ) ::
          {:ok, update_app_instance_user_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_instance_user_endpoint_errors()}
  def update_app_instance_user_endpoint(
        %Client{} = client,
        app_instance_user_arn,
        endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
