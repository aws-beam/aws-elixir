# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AmplifyBackend do
  @moduledoc """
  AWS Amplify Admin API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_backend_auth_request() :: %{
        required("ResourceConfig") => update_backend_auth_resource_config(),
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type update_backend_auth_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      import_backend_auth_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type import_backend_auth_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_forgot_password_config() :: %{
        "DeliveryMethod" => list(any()),
        "EmailSettings" => email_settings(),
        "SmsSettings" => sms_settings()
      }

  """
  @type create_backend_auth_forgot_password_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_storage_resource_config() :: %{
        "BucketName" => String.t() | Atom.t(),
        "Imported" => boolean(),
        "Permissions" => backend_storage_permissions(),
        "ServiceName" => list(any())
      }

  """
  @type get_backend_storage_resource_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_backend_config_request() :: %{}

  """
  @type remove_backend_config_request() :: %{}

  @typedoc """

  ## Example:

      delete_backend_storage_request() :: %{
        required("ResourceName") => String.t() | Atom.t(),
        required("ServiceName") => list(any())
      }

  """
  @type delete_backend_storage_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_api_models_request() :: %{
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type get_backend_api_models_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      generate_backend_api_models_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type generate_backend_api_models_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      backend_api_resource_config() :: %{
        "AdditionalAuthTypes" => list(backend_api_auth_type()),
        "ApiName" => String.t() | Atom.t(),
        "ConflictResolution" => backend_api_conflict_resolution(),
        "DefaultAuthType" => backend_api_auth_type(),
        "Service" => String.t() | Atom.t(),
        "TransformSchema" => String.t() | Atom.t()
      }

  """
  @type backend_api_resource_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_storage_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type create_backend_storage_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_token_response() :: %{
        "IsSuccess" => boolean()
      }

  """
  @type delete_token_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      backend_api_auth_type() :: %{
        "Mode" => list(any()),
        "Settings" => backend_api_app_sync_auth_settings()
      }

  """
  @type backend_api_auth_type() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type create_backend_auth_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_job_request() :: %{}

  """
  @type get_backend_job_request() :: %{}

  @typedoc """

  ## Example:

      backend_job_resp_obj() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "CreateTime" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "UpdateTime" => String.t() | Atom.t()
      }

  """
  @type backend_job_resp_obj() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      clone_backend_request() :: %{
        required("TargetEnvironmentName") => String.t() | Atom.t()
      }

  """
  @type clone_backend_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_verification_message_config() :: %{
        "DeliveryMethod" => list(any()),
        "EmailSettings" => email_settings(),
        "SmsSettings" => sms_settings()
      }

  """
  @type create_backend_auth_verification_message_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_backend_jobs_request() :: %{
        optional("JobId") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("Operation") => String.t() | Atom.t(),
        optional("Status") => String.t() | Atom.t()
      }

  """
  @type list_backend_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      social_provider_settings() :: %{
        "Facebook" => backend_auth_social_provider_config(),
        "Google" => backend_auth_social_provider_config(),
        "LoginWithAmazon" => backend_auth_social_provider_config(),
        "SignInWithApple" => backend_auth_apple_provider_config()
      }

  """
  @type social_provider_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_mfa_config() :: %{
        "MFAMode" => list(any()),
        "Settings" => settings()
      }

  """
  @type update_backend_auth_mfa_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_o_auth_config() :: %{
        "DomainPrefix" => String.t() | Atom.t(),
        "OAuthGrantType" => list(any()),
        "OAuthScopes" => list(list(any())()),
        "RedirectSignInURIs" => list(String.t() | Atom.t()),
        "RedirectSignOutURIs" => list(String.t() | Atom.t()),
        "SocialProviderSettings" => social_provider_settings()
      }

  """
  @type update_backend_auth_o_auth_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      import_backend_storage_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type import_backend_storage_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_password_policy_config() :: %{
        "AdditionalConstraints" => list(list(any())()),
        "MinimumLength" => float()
      }

  """
  @type create_backend_auth_password_policy_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "LimitType" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_resource_config() :: %{
        "AuthResources" => list(any()),
        "IdentityPoolConfigs" => update_backend_auth_identity_pool_config(),
        "Service" => list(any()),
        "UserPoolConfigs" => update_backend_auth_user_pool_config()
      }

  """
  @type update_backend_auth_resource_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_token_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "ChallengeCode" => String.t() | Atom.t(),
        "SessionId" => String.t() | Atom.t(),
        "Ttl" => String.t() | Atom.t()
      }

  """
  @type get_token_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      s3_bucket_info() :: %{
        "CreationDate" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t()
      }

  """
  @type s3_bucket_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_backend_config_response() :: %{
        "Error" => String.t() | Atom.t()
      }

  """
  @type remove_backend_config_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_s3_buckets_response() :: %{
        "Buckets" => list(s3_bucket_info()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_s3_buckets_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      email_settings() :: %{
        "EmailMessage" => String.t() | Atom.t(),
        "EmailSubject" => String.t() | Atom.t()
      }

  """
  @type email_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_user_pool_config() :: %{
        "ForgotPassword" => update_backend_auth_forgot_password_config(),
        "Mfa" => update_backend_auth_mfa_config(),
        "OAuth" => update_backend_auth_o_auth_config(),
        "PasswordPolicy" => update_backend_auth_password_policy_config(),
        "VerificationMessage" => update_backend_auth_verification_message_config()
      }

  """
  @type update_backend_auth_user_pool_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_password_policy_config() :: %{
        "AdditionalConstraints" => list(list(any())()),
        "MinimumLength" => float()
      }

  """
  @type update_backend_auth_password_policy_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_request() :: %{
        optional("BackendEnvironmentName") => String.t() | Atom.t()
      }

  """
  @type get_backend_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      backend_api_app_sync_auth_settings() :: %{
        "CognitoUserPoolId" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "ExpirationTime" => float(),
        "OpenIDAuthTTL" => String.t() | Atom.t(),
        "OpenIDClientId" => String.t() | Atom.t(),
        "OpenIDIatTTL" => String.t() | Atom.t(),
        "OpenIDIssueURL" => String.t() | Atom.t(),
        "OpenIDProviderName" => String.t() | Atom.t()
      }

  """
  @type backend_api_app_sync_auth_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_api_request() :: %{
        optional("ResourceConfig") => backend_api_resource_config(),
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type update_backend_api_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_backend_jobs_response() :: %{
        "Jobs" => list(backend_job_resp_obj()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_backend_jobs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type update_backend_auth_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_api_request() :: %{
        optional("ResourceConfig") => backend_api_resource_config(),
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type get_backend_api_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_config_request() :: %{
        optional("LoginAuthConfig") => login_auth_config_req_obj()
      }

  """
  @type update_backend_config_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_auth_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type delete_backend_auth_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t()
      }

  """
  @type not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      backend_api_conflict_resolution() :: %{
        "ResolutionStrategy" => list(any())
      }

  """
  @type backend_api_conflict_resolution() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_user_pool_config() :: %{
        "ForgotPassword" => create_backend_auth_forgot_password_config(),
        "Mfa" => create_backend_auth_mfa_config(),
        "OAuth" => create_backend_auth_o_auth_config(),
        "PasswordPolicy" => create_backend_auth_password_policy_config(),
        "RequiredSignUpAttributes" => list(list(any())()),
        "SignInMethod" => list(any()),
        "UserPoolName" => String.t() | Atom.t(),
        "VerificationMessage" => create_backend_auth_verification_message_config()
      }

  """
  @type create_backend_auth_user_pool_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      settings() :: %{
        "MfaTypes" => list(list(any())()),
        "SmsMessage" => String.t() | Atom.t()
      }

  """
  @type settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_token_request() :: %{}

  """
  @type delete_token_request() :: %{}

  @typedoc """

  ## Example:

      generate_backend_api_models_request() :: %{
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type generate_backend_api_models_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_auth_request() :: %{
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type get_backend_auth_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_storage_resource_config() :: %{
        "BucketName" => String.t() | Atom.t(),
        "Permissions" => backend_storage_permissions(),
        "ServiceName" => list(any())
      }

  """
  @type create_backend_storage_resource_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_api_request() :: %{
        optional("ResourceConfig") => backend_api_resource_config(),
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type delete_backend_api_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      backend_auth_apple_provider_config() :: %{
        "ClientId" => String.t() | Atom.t(),
        "KeyId" => String.t() | Atom.t(),
        "PrivateKey" => String.t() | Atom.t(),
        "TeamId" => String.t() | Atom.t()
      }

  """
  @type backend_auth_apple_provider_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_all_backends_request() :: %{
        optional("CleanAmplifyApp") => boolean()
      }

  """
  @type remove_all_backends_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_api_models_response() :: %{
        "ModelIntrospectionSchema" => String.t() | Atom.t(),
        "Models" => String.t() | Atom.t(),
        "Status" => list(any())
      }

  """
  @type get_backend_api_models_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type delete_backend_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type create_backend_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_request() :: %{}

  """
  @type delete_backend_request() :: %{}

  @typedoc """

  ## Example:

      create_backend_config_request() :: %{
        optional("BackendManagerAppId") => String.t() | Atom.t()
      }

  """
  @type create_backend_config_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_s3_buckets_request() :: %{
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_s3_buckets_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_storage_request() :: %{
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type get_backend_storage_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      remove_all_backends_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type remove_all_backends_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_api_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type create_backend_api_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      import_backend_storage_request() :: %{
        optional("BucketName") => String.t() | Atom.t(),
        required("ServiceName") => list(any())
      }

  """
  @type import_backend_storage_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_config() :: %{}

  """
  @type resource_config() :: %{}

  @typedoc """

  ## Example:

      login_auth_config_req_obj() :: %{
        "AwsCognitoIdentityPoolId" => String.t() | Atom.t(),
        "AwsCognitoRegion" => String.t() | Atom.t(),
        "AwsUserPoolsId" => String.t() | Atom.t(),
        "AwsUserPoolsWebClientId" => String.t() | Atom.t()
      }

  """
  @type login_auth_config_req_obj() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_request() :: %{
        optional("ResourceConfig") => resource_config(),
        optional("ResourceName") => String.t() | Atom.t(),
        required("AppId") => String.t() | Atom.t(),
        required("AppName") => String.t() | Atom.t(),
        required("BackendEnvironmentName") => String.t() | Atom.t()
      }

  """
  @type create_backend_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_storage_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "ResourceConfig" => get_backend_storage_resource_config(),
        "ResourceName" => String.t() | Atom.t()
      }

  """
  @type get_backend_storage_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_storage_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type update_backend_storage_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_config_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendManagerAppId" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "LoginAuthConfig" => login_auth_config_req_obj()
      }

  """
  @type update_backend_config_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_job_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "CreateTime" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "UpdateTime" => String.t() | Atom.t()
      }

  """
  @type get_backend_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_resource_config() :: %{
        "AuthResources" => list(any()),
        "IdentityPoolConfigs" => create_backend_auth_identity_pool_config(),
        "Service" => list(any()),
        "UserPoolConfigs" => create_backend_auth_user_pool_config()
      }

  """
  @type create_backend_auth_resource_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_request() :: %{
        required("BackendEnvironmentName") => String.t() | Atom.t(),
        required("ResourceConfig") => create_backend_auth_resource_config(),
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type create_backend_auth_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_storage_request() :: %{
        required("BackendEnvironmentName") => String.t() | Atom.t(),
        required("ResourceConfig") => create_backend_storage_resource_config(),
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type create_backend_storage_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      backend_auth_social_provider_config() :: %{
        "ClientId" => String.t() | Atom.t(),
        "ClientSecret" => String.t() | Atom.t()
      }

  """
  @type backend_auth_social_provider_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_response() :: %{
        "AmplifyFeatureFlags" => String.t() | Atom.t(),
        "AmplifyMetaConfig" => String.t() | Atom.t(),
        "AppId" => String.t() | Atom.t(),
        "AppName" => String.t() | Atom.t(),
        "BackendEnvironmentList" => list(String.t() | Atom.t()),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t()
      }

  """
  @type get_backend_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      sms_settings() :: %{
        "SmsMessage" => String.t() | Atom.t()
      }

  """
  @type sms_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_api_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type update_backend_api_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      backend_storage_permissions() :: %{
        "Authenticated" => list(list(any())()),
        "UnAuthenticated" => list(list(any())())
      }

  """
  @type backend_storage_permissions() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      gateway_timeout_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type gateway_timeout_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_config_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type create_backend_config_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_identity_pool_config() :: %{
        "IdentityPoolName" => String.t() | Atom.t(),
        "UnauthenticatedLogin" => boolean()
      }

  """
  @type create_backend_auth_identity_pool_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_job_request() :: %{
        optional("Operation") => String.t() | Atom.t(),
        optional("Status") => String.t() | Atom.t()
      }

  """
  @type update_backend_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_o_auth_config() :: %{
        "DomainPrefix" => String.t() | Atom.t(),
        "OAuthGrantType" => list(any()),
        "OAuthScopes" => list(list(any())()),
        "RedirectSignInURIs" => list(String.t() | Atom.t()),
        "RedirectSignOutURIs" => list(String.t() | Atom.t()),
        "SocialProviderSettings" => social_provider_settings()
      }

  """
  @type create_backend_auth_o_auth_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t() | Atom.t()
      }

  """
  @type bad_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_backend_auth_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "ResourceConfig" => create_backend_auth_resource_config(),
        "ResourceName" => String.t() | Atom.t()
      }

  """
  @type get_backend_auth_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_token_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "ChallengeCode" => String.t() | Atom.t(),
        "SessionId" => String.t() | Atom.t(),
        "Ttl" => String.t() | Atom.t()
      }

  """
  @type create_token_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_token_request() :: %{}

  """
  @type get_token_request() :: %{}

  @typedoc """

  ## Example:

      get_backend_api_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "ResourceConfig" => backend_api_resource_config(),
        "ResourceName" => String.t() | Atom.t()
      }

  """
  @type get_backend_api_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_storage_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type delete_backend_storage_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      import_backend_auth_request() :: %{
        optional("IdentityPoolId") => String.t() | Atom.t(),
        required("NativeClientId") => String.t() | Atom.t(),
        required("UserPoolId") => String.t() | Atom.t(),
        required("WebClientId") => String.t() | Atom.t()
      }

  """
  @type import_backend_auth_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_forgot_password_config() :: %{
        "DeliveryMethod" => list(any()),
        "EmailSettings" => email_settings(),
        "SmsSettings" => sms_settings()
      }

  """
  @type update_backend_auth_forgot_password_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_auth_request() :: %{
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type delete_backend_auth_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_storage_resource_config() :: %{
        "Permissions" => backend_storage_permissions(),
        "ServiceName" => list(any())
      }

  """
  @type update_backend_storage_resource_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_auth_mfa_config() :: %{
        "MFAMode" => list(any()),
        "Settings" => settings()
      }

  """
  @type create_backend_auth_mfa_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_backend_api_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type delete_backend_api_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_identity_pool_config() :: %{
        "UnauthenticatedLogin" => boolean()
      }

  """
  @type update_backend_auth_identity_pool_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_auth_verification_message_config() :: %{
        "DeliveryMethod" => list(any()),
        "EmailSettings" => email_settings(),
        "SmsSettings" => sms_settings()
      }

  """
  @type update_backend_auth_verification_message_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_token_request() :: %{}

  """
  @type create_token_request() :: %{}

  @typedoc """

  ## Example:

      update_backend_storage_request() :: %{
        required("ResourceConfig") => update_backend_storage_resource_config(),
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type update_backend_storage_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_backend_api_request() :: %{
        required("BackendEnvironmentName") => String.t() | Atom.t(),
        required("ResourceConfig") => backend_api_resource_config(),
        required("ResourceName") => String.t() | Atom.t()
      }

  """
  @type create_backend_api_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_backend_job_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "CreateTime" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t(),
        "UpdateTime" => String.t() | Atom.t()
      }

  """
  @type update_backend_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      clone_backend_response() :: %{
        "AppId" => String.t() | Atom.t(),
        "BackendEnvironmentName" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "JobId" => String.t() | Atom.t(),
        "Operation" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type clone_backend_response() :: %{String.t() | Atom.t() => any()}

  @type clone_backend_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_api_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_config_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type create_token_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_backend_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_backend_api_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type delete_token_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type generate_backend_api_models_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_api_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_api_models_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_job_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type get_token_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type import_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type import_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type list_backend_jobs_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type list_s3_buckets_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type remove_all_backends_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type remove_backend_config_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_api_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_auth_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_config_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_job_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  @type update_backend_storage_errors() ::
          bad_request_exception()
          | gateway_timeout_exception()
          | not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2020-08-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "amplifybackend",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AmplifyBackend",
      signature_version: "v4",
      signing_name: "amplifybackend",
      target_prefix: nil
    }
  end

  @doc """
  This operation clones an existing backend.
  """
  @spec clone_backend(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          clone_backend_request(),
          list()
        ) ::
          {:ok, clone_backend_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, clone_backend_errors()}
  def clone_backend(%Client{} = client, app_id, backend_environment_name, input, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/environments/#{AWS.Util.encode_uri(backend_environment_name)}/clone"

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
  This operation creates a backend for an Amplify app.

  Backends are automatically created at the time of app creation.
  """
  @spec create_backend(map(), create_backend_request(), list()) ::
          {:ok, create_backend_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_backend_errors()}
  def create_backend(%Client{} = client, input, options \\ []) do
    url_path = "/backend"
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
  Creates a new backend API resource.
  """
  @spec create_backend_api(map(), String.t() | Atom.t(), create_backend_api_request(), list()) ::
          {:ok, create_backend_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_backend_api_errors()}
  def create_backend_api(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/api"
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
  Creates a new backend authentication resource.
  """
  @spec create_backend_auth(map(), String.t() | Atom.t(), create_backend_auth_request(), list()) ::
          {:ok, create_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_backend_auth_errors()}
  def create_backend_auth(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/auth"
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
  Creates a config object for a backend.
  """
  @spec create_backend_config(
          map(),
          String.t() | Atom.t(),
          create_backend_config_request(),
          list()
        ) ::
          {:ok, create_backend_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_backend_config_errors()}
  def create_backend_config(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/config"
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
  Creates a backend storage resource.
  """
  @spec create_backend_storage(
          map(),
          String.t() | Atom.t(),
          create_backend_storage_request(),
          list()
        ) ::
          {:ok, create_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_backend_storage_errors()}
  def create_backend_storage(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/storage"
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
  Generates a one-time challenge code to authenticate a user into your Amplify
  Admin UI.
  """
  @spec create_token(map(), String.t() | Atom.t(), create_token_request(), list()) ::
          {:ok, create_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_token_errors()}
  def create_token(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/challenge"
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
  Removes an existing environment from your Amplify project.
  """
  @spec delete_backend(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_backend_request(),
          list()
        ) ::
          {:ok, delete_backend_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_backend_errors()}
  def delete_backend(%Client{} = client, app_id, backend_environment_name, input, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/environments/#{AWS.Util.encode_uri(backend_environment_name)}/remove"

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
  Deletes an existing backend API resource.
  """
  @spec delete_backend_api(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_backend_api_request(),
          list()
        ) ::
          {:ok, delete_backend_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_backend_api_errors()}
  def delete_backend_api(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}/remove"

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
  Deletes an existing backend authentication resource.
  """
  @spec delete_backend_auth(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_backend_auth_request(),
          list()
        ) ::
          {:ok, delete_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_backend_auth_errors()}
  def delete_backend_auth(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/auth/#{AWS.Util.encode_uri(backend_environment_name)}/remove"

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
  Removes the specified backend storage resource.
  """
  @spec delete_backend_storage(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_backend_storage_request(),
          list()
        ) ::
          {:ok, delete_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_backend_storage_errors()}
  def delete_backend_storage(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/storage/#{AWS.Util.encode_uri(backend_environment_name)}/remove"

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
  Deletes the challenge token based on the given appId and sessionId.
  """
  @spec delete_token(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_token_request(),
          list()
        ) ::
          {:ok, delete_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_token_errors()}
  def delete_token(%Client{} = client, app_id, session_id, input, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/challenge/#{AWS.Util.encode_uri(session_id)}/remove"

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
  Generates a model schema for an existing backend API resource.
  """
  @spec generate_backend_api_models(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          generate_backend_api_models_request(),
          list()
        ) ::
          {:ok, generate_backend_api_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_backend_api_models_errors()}
  def generate_backend_api_models(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}/generateModels"

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
  Provides project-level details for your Amplify UI project.
  """
  @spec get_backend(map(), String.t() | Atom.t(), get_backend_request(), list()) ::
          {:ok, get_backend_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_backend_errors()}
  def get_backend(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/details"
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
  Gets the details for a backend API.
  """
  @spec get_backend_api(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          get_backend_api_request(),
          list()
        ) ::
          {:ok, get_backend_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_backend_api_errors()}
  def get_backend_api(%Client{} = client, app_id, backend_environment_name, input, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}/details"

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
  Gets a model introspection schema for an existing backend API resource.
  """
  @spec get_backend_api_models(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          get_backend_api_models_request(),
          list()
        ) ::
          {:ok, get_backend_api_models_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_backend_api_models_errors()}
  def get_backend_api_models(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}/getModels"

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
  Gets a backend auth details.
  """
  @spec get_backend_auth(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          get_backend_auth_request(),
          list()
        ) ::
          {:ok, get_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_backend_auth_errors()}
  def get_backend_auth(%Client{} = client, app_id, backend_environment_name, input, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/auth/#{AWS.Util.encode_uri(backend_environment_name)}/details"

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
  Returns information about a specific job.
  """
  @spec get_backend_job(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          list()
        ) ::
          {:ok, get_backend_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_backend_job_errors()}
  def get_backend_job(%Client{} = client, app_id, backend_environment_name, job_id, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/job/#{AWS.Util.encode_uri(backend_environment_name)}/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details for a backend storage resource.
  """
  @spec get_backend_storage(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          get_backend_storage_request(),
          list()
        ) ::
          {:ok, get_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_backend_storage_errors()}
  def get_backend_storage(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/storage/#{AWS.Util.encode_uri(backend_environment_name)}/details"

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
  Gets the challenge token based on the given appId and sessionId.
  """
  @spec get_token(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_token_errors()}
  def get_token(%Client{} = client, app_id, session_id, options \\ []) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/challenge/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports an existing backend authentication resource.
  """
  @spec import_backend_auth(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          import_backend_auth_request(),
          list()
        ) ::
          {:ok, import_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_backend_auth_errors()}
  def import_backend_auth(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/auth/#{AWS.Util.encode_uri(backend_environment_name)}/import"

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
  Imports an existing backend storage resource.
  """
  @spec import_backend_storage(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          import_backend_storage_request(),
          list()
        ) ::
          {:ok, import_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_backend_storage_errors()}
  def import_backend_storage(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/storage/#{AWS.Util.encode_uri(backend_environment_name)}/import"

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
  Lists the jobs for the backend of an Amplify app.
  """
  @spec list_backend_jobs(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          list_backend_jobs_request(),
          list()
        ) ::
          {:ok, list_backend_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_backend_jobs_errors()}
  def list_backend_jobs(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/job/#{AWS.Util.encode_uri(backend_environment_name)}"

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
  The list of S3 buckets in your account.
  """
  @spec list_s3_buckets(map(), list_s3_buckets_request(), list()) ::
          {:ok, list_s3_buckets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_s3_buckets_errors()}
  def list_s3_buckets(%Client{} = client, input, options \\ []) do
    url_path = "/s3Buckets"
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
  Removes all backend environments from your Amplify project.
  """
  @spec remove_all_backends(map(), String.t() | Atom.t(), remove_all_backends_request(), list()) ::
          {:ok, remove_all_backends_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_all_backends_errors()}
  def remove_all_backends(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/remove"
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
  Removes the AWS resources required to access the Amplify Admin UI.
  """
  @spec remove_backend_config(
          map(),
          String.t() | Atom.t(),
          remove_backend_config_request(),
          list()
        ) ::
          {:ok, remove_backend_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_backend_config_errors()}
  def remove_backend_config(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/config/remove"
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
  Updates an existing backend API resource.
  """
  @spec update_backend_api(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_backend_api_request(),
          list()
        ) ::
          {:ok, update_backend_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_backend_api_errors()}
  def update_backend_api(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/api/#{AWS.Util.encode_uri(backend_environment_name)}"

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
  Updates an existing backend authentication resource.
  """
  @spec update_backend_auth(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_backend_auth_request(),
          list()
        ) ::
          {:ok, update_backend_auth_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_backend_auth_errors()}
  def update_backend_auth(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/auth/#{AWS.Util.encode_uri(backend_environment_name)}"

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
  Updates the AWS resources required to access the Amplify Admin UI.
  """
  @spec update_backend_config(
          map(),
          String.t() | Atom.t(),
          update_backend_config_request(),
          list()
        ) ::
          {:ok, update_backend_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_backend_config_errors()}
  def update_backend_config(%Client{} = client, app_id, input, options \\ []) do
    url_path = "/backend/#{AWS.Util.encode_uri(app_id)}/config/update"
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
  Updates a specific job.
  """
  @spec update_backend_job(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_backend_job_request(),
          list()
        ) ::
          {:ok, update_backend_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_backend_job_errors()}
  def update_backend_job(
        %Client{} = client,
        app_id,
        backend_environment_name,
        job_id,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/job/#{AWS.Util.encode_uri(backend_environment_name)}/#{AWS.Util.encode_uri(job_id)}"

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
  Updates an existing backend storage resource.
  """
  @spec update_backend_storage(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_backend_storage_request(),
          list()
        ) ::
          {:ok, update_backend_storage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_backend_storage_errors()}
  def update_backend_storage(
        %Client{} = client,
        app_id,
        backend_environment_name,
        input,
        options \\ []
      ) do
    url_path =
      "/backend/#{AWS.Util.encode_uri(app_id)}/storage/#{AWS.Util.encode_uri(backend_environment_name)}"

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
