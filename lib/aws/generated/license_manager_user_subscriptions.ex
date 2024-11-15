# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManagerUserSubscriptions do
  @moduledoc """
  With License Manager, you can create user-based subscriptions to utilize
  licensed software with
  a per user subscription fee on Amazon EC2 instances.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      stop_product_subscription_request() :: %{
        optional("Domain") => [String.t()],
        optional("IdentityProvider") => list(),
        optional("Product") => [String.t()],
        optional("ProductUserArn") => String.t(),
        optional("Username") => [String.t()]
      }

  """
  @type stop_product_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_license_server_endpoints_response() :: %{
        "LicenseServerEndpoints" => list(license_server_endpoint()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_license_server_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_request() :: %{
        optional("Domain") => [String.t()],
        optional("IdentityProvider") => list(),
        optional("InstanceId") => [String.t()],
        optional("InstanceUserArn") => String.t(),
        optional("Username") => [String.t()]
      }

  """
  @type disassociate_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_identity_providers_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }

  """
  @type list_identity_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_license_server_endpoint_response() :: %{
        "IdentityProviderArn" => String.t(),
        "LicenseServerEndpointArn" => String.t()
      }

  """
  @type create_license_server_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_product_subscriptions_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        optional("Product") => [String.t()],
        required("IdentityProvider") => list()
      }

  """
  @type list_product_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      instance_user_summary() :: %{
        "AssociationDate" => [String.t()],
        "DisassociationDate" => [String.t()],
        "Domain" => [String.t()],
        "IdentityProvider" => list(),
        "InstanceId" => [String.t()],
        "InstanceUserArn" => String.t(),
        "Status" => [String.t()],
        "StatusMessage" => [String.t()],
        "Username" => [String.t()]
      }

  """
  @type instance_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_license_server_endpoint_request() :: %{
        optional("Tags") => map(),
        required("IdentityProviderArn") => String.t(),
        required("LicenseServerSettings") => license_server_settings()
      }

  """
  @type create_license_server_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_license_server_endpoint_request() :: %{
        required("LicenseServerEndpointArn") => String.t(),
        required("ServerType") => String.t()
      }

  """
  @type delete_license_server_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_settings() :: %{
        "AddSubnets" => list(String.t()()),
        "RemoveSubnets" => list(String.t()()),
        "SecurityGroupId" => String.t()
      }

  """
  @type update_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_directory_settings() :: %{
        "DomainCredentialsProvider" => list(),
        "DomainIpv4List" => list(String.t()()),
        "DomainName" => [String.t()],
        "DomainNetworkSettings" => domain_network_settings()
      }

  """
  @type active_directory_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_endpoint() :: %{
        "Endpoint" => [String.t()]
      }

  """
  @type server_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_identity_provider_request() :: %{
        optional("IdentityProvider") => list(),
        optional("IdentityProviderArn") => String.t(),
        optional("Product") => [String.t()]
      }

  """
  @type deregister_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_associations_response() :: %{
        "InstanceUserSummaries" => list(instance_user_summary()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_user_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_identity_provider_settings_response() :: %{
        "IdentityProviderSummary" => identity_provider_summary()
      }

  """
  @type update_identity_provider_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_identity_provider_response() :: %{
        "IdentityProviderSummary" => identity_provider_summary()
      }

  """
  @type register_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      settings() :: %{
        "SecurityGroupId" => String.t(),
        "Subnets" => list(String.t()())
      }

  """
  @type settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_product_subscription_response() :: %{
        "ProductUserSummary" => product_user_summary()
      }

  """
  @type stop_product_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_response() :: %{
        "InstanceUserSummary" => instance_user_summary()
      }

  """
  @type disassociate_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_response() :: %{
        "InstanceUserSummary" => instance_user_summary()
      }

  """
  @type associate_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      secrets_manager_credentials_provider() :: %{
        "SecretId" => [String.t()]
      }

  """
  @type secrets_manager_credentials_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      product_user_summary() :: %{
        "Domain" => [String.t()],
        "IdentityProvider" => list(),
        "Product" => [String.t()],
        "ProductUserArn" => String.t(),
        "Status" => [String.t()],
        "StatusMessage" => [String.t()],
        "SubscriptionEndDate" => [String.t()],
        "SubscriptionStartDate" => [String.t()],
        "Username" => [String.t()]
      }

  """
  @type product_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      identity_provider_summary() :: %{
        "FailureMessage" => [String.t()],
        "IdentityProvider" => list(),
        "IdentityProviderArn" => String.t(),
        "Product" => [String.t()],
        "Settings" => settings(),
        "Status" => [String.t()]
      }

  """
  @type identity_provider_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_network_settings() :: %{
        "Subnets" => list(String.t()())
      }

  """
  @type domain_network_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instances_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }

  """
  @type list_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Attribute" => [String.t()],
        "Operation" => [String.t()],
        "Value" => [String.t()]
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_product_subscriptions_response() :: %{
        "NextToken" => [String.t()],
        "ProductUserSummaries" => list(product_user_summary()())
      }

  """
  @type list_product_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instances_response() :: %{
        "InstanceSummaries" => list(instance_summary()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_license_server_endpoint_response() :: %{
        "LicenseServerEndpoint" => license_server_endpoint()
      }

  """
  @type delete_license_server_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_license_server_endpoints_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()]
      }

  """
  @type list_license_server_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_identity_provider_settings_request() :: %{
        optional("IdentityProvider") => list(),
        optional("IdentityProviderArn") => String.t(),
        optional("Product") => [String.t()],
        required("UpdateSettings") => update_settings()
      }

  """
  @type update_identity_provider_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_identity_provider_request() :: %{
        optional("Settings") => settings(),
        optional("Tags") => map(),
        required("IdentityProvider") => list(),
        required("Product") => [String.t()]
      }

  """
  @type register_identity_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_identity_provider_response() :: %{
        "IdentityProviderSummary" => identity_provider_summary()
      }

  """
  @type deregister_identity_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      license_server_endpoint() :: %{
        "CreationTime" => [non_neg_integer()],
        "IdentityProviderArn" => [String.t()],
        "LicenseServerEndpointArn" => String.t(),
        "LicenseServerEndpointId" => String.t(),
        "LicenseServerEndpointProvisioningStatus" => String.t(),
        "LicenseServers" => list(license_server()()),
        "ServerEndpoint" => server_endpoint(),
        "ServerType" => String.t(),
        "StatusMessage" => [String.t()]
      }

  """
  @type license_server_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_identity_providers_response() :: %{
        "IdentityProviderSummaries" => list(identity_provider_summary()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_identity_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_summary() :: %{
        "InstanceId" => [String.t()],
        "LastStatusCheckDate" => [String.t()],
        "Products" => list([String.t()]()),
        "Status" => [String.t()],
        "StatusMessage" => [String.t()]
      }

  """
  @type instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      license_server_settings() :: %{
        "ServerSettings" => list(),
        "ServerType" => String.t()
      }

  """
  @type license_server_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_product_subscription_request() :: %{
        optional("Domain") => [String.t()],
        optional("Tags") => map(),
        required("IdentityProvider") => list(),
        required("Product") => [String.t()],
        required("Username") => [String.t()]
      }

  """
  @type start_product_subscription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_product_subscription_response() :: %{
        "ProductUserSummary" => product_user_summary()
      }

  """
  @type start_product_subscription_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_request() :: %{
        optional("Domain") => [String.t()],
        optional("Tags") => map(),
        required("IdentityProvider") => list(),
        required("InstanceId") => [String.t()],
        required("Username") => [String.t()]
      }

  """
  @type associate_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      license_server() :: %{
        "HealthStatus" => String.t(),
        "Ipv4Address" => [String.t()],
        "ProvisioningStatus" => String.t()
      }

  """
  @type license_server() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_associations_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t()],
        required("IdentityProvider") => list(),
        required("InstanceId") => [String.t()]
      }

  """
  @type list_user_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_directory_identity_provider() :: %{
        "ActiveDirectorySettings" => active_directory_settings(),
        "ActiveDirectoryType" => String.t(),
        "DirectoryId" => String.t()
      }

  """
  @type active_directory_identity_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rds_sal_settings() :: %{
        "RdsSalCredentialsProvider" => list()
      }

  """
  @type rds_sal_settings() :: %{String.t() => any()}

  @type associate_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_license_server_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_license_server_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type deregister_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_identity_providers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_license_server_endpoints_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type list_product_subscriptions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_user_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type register_identity_provider_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_product_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_product_subscription_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type update_identity_provider_settings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "license-manager-user-subscriptions",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "License Manager User Subscriptions",
      signature_version: "v4",
      signing_name: "license-manager-user-subscriptions",
      target_prefix: nil
    }
  end

  @doc """
  Associates the user to an EC2 instance to utilize user-based subscriptions.

  Your estimated bill for charges on the number of users and related costs will
  take 48
  hours to appear for billing periods that haven't closed (marked as ## Pending
  billing status) in Amazon Web Services Billing. For more information, see
  [Viewing your monthly
  charges](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html)
  in the *Amazon Web Services Billing User Guide*.
  """
  @spec associate_user(map(), associate_user_request(), list()) ::
          {:ok, associate_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_user_errors()}
  def associate_user(%Client{} = client, input, options \\ []) do
    url_path = "/user/AssociateUser"
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
  Creates a network endpoint for the Remote Desktop Services (RDS) license server.
  """
  @spec create_license_server_endpoint(map(), create_license_server_endpoint_request(), list()) ::
          {:ok, create_license_server_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_license_server_endpoint_errors()}
  def create_license_server_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/license-server/CreateLicenseServerEndpoint"
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
  Deletes a `LicenseServerEndpoint` resource.
  """
  @spec delete_license_server_endpoint(map(), delete_license_server_endpoint_request(), list()) ::
          {:ok, delete_license_server_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_license_server_endpoint_errors()}
  def delete_license_server_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/license-server/DeleteLicenseServerEndpoint"
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
  Deregisters the Active Directory identity provider from License Manager
  user-based subscriptions.
  """
  @spec deregister_identity_provider(map(), deregister_identity_provider_request(), list()) ::
          {:ok, deregister_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_identity_provider_errors()}
  def deregister_identity_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identity-provider/DeregisterIdentityProvider"
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
  Disassociates the user from an EC2 instance providing user-based subscriptions.
  """
  @spec disassociate_user(map(), disassociate_user_request(), list()) ::
          {:ok, disassociate_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_user_errors()}
  def disassociate_user(%Client{} = client, input, options \\ []) do
    url_path = "/user/DisassociateUser"
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
  Lists the Active Directory identity providers for user-based subscriptions.
  """
  @spec list_identity_providers(map(), list_identity_providers_request(), list()) ::
          {:ok, list_identity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_identity_providers_errors()}
  def list_identity_providers(%Client{} = client, input, options \\ []) do
    url_path = "/identity-provider/ListIdentityProviders"
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
  Lists the EC2 instances providing user-based subscriptions.
  """
  @spec list_instances(map(), list_instances_request(), list()) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instances_errors()}
  def list_instances(%Client{} = client, input, options \\ []) do
    url_path = "/instance/ListInstances"
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
  List the Remote Desktop Services (RDS) License Server endpoints
  """
  @spec list_license_server_endpoints(map(), list_license_server_endpoints_request(), list()) ::
          {:ok, list_license_server_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_license_server_endpoints_errors()}
  def list_license_server_endpoints(%Client{} = client, input, options \\ []) do
    url_path = "/license-server/ListLicenseServerEndpoints"
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
  Lists the user-based subscription products available from an identity provider.
  """
  @spec list_product_subscriptions(map(), list_product_subscriptions_request(), list()) ::
          {:ok, list_product_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_product_subscriptions_errors()}
  def list_product_subscriptions(%Client{} = client, input, options \\ []) do
    url_path = "/user/ListProductSubscriptions"
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
  Returns the list of tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists user associations for an identity provider.
  """
  @spec list_user_associations(map(), list_user_associations_request(), list()) ::
          {:ok, list_user_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_user_associations_errors()}
  def list_user_associations(%Client{} = client, input, options \\ []) do
    url_path = "/user/ListUserAssociations"
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
  Registers an identity provider for user-based subscriptions.
  """
  @spec register_identity_provider(map(), register_identity_provider_request(), list()) ::
          {:ok, register_identity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_identity_provider_errors()}
  def register_identity_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identity-provider/RegisterIdentityProvider"
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
  Starts a product subscription for a user with the specified identity provider.

  Your estimated bill for charges on the number of users and related costs will
  take 48
  hours to appear for billing periods that haven't closed (marked as ## Pending
  billing status) in Amazon Web Services Billing. For more information, see
  [Viewing your monthly
  charges](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html)
  in the *Amazon Web Services Billing User Guide*.
  """
  @spec start_product_subscription(map(), start_product_subscription_request(), list()) ::
          {:ok, start_product_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_product_subscription_errors()}
  def start_product_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/user/StartProductSubscription"
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
  Stops a product subscription for a user with the specified identity provider.
  """
  @spec stop_product_subscription(map(), stop_product_subscription_request(), list()) ::
          {:ok, stop_product_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_product_subscription_errors()}
  def stop_product_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/user/StopProductSubscription"
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
  Adds tags to a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
  Updates additional product configuration settings for the registered identity
  provider.
  """
  @spec update_identity_provider_settings(
          map(),
          update_identity_provider_settings_request(),
          list()
        ) ::
          {:ok, update_identity_provider_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_identity_provider_settings_errors()}
  def update_identity_provider_settings(%Client{} = client, input, options \\ []) do
    url_path = "/identity-provider/UpdateIdentityProviderSettings"
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
