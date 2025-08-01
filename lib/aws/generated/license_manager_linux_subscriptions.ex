# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManagerLinuxSubscriptions do
  @moduledoc """
  With License Manager, you can discover and track your commercial Linux
  subscriptions on running
  Amazon EC2 instances.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      deregister_subscription_provider_request() :: %{
        required("SubscriptionProviderArn") => String.t() | Atom.t()
      }

  """
  @type deregister_subscription_provider_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deregister_subscription_provider_response() :: %{}

  """
  @type deregister_subscription_provider_response() :: %{}

  @typedoc """

  ## Example:

      filter() :: %{
        "Name" => [String.t() | Atom.t()],
        "Operator" => String.t() | Atom.t(),
        "Values" => list([String.t() | Atom.t()]())
      }

  """
  @type filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_registered_subscription_provider_request() :: %{
        required("SubscriptionProviderArn") => String.t() | Atom.t()
      }

  """
  @type get_registered_subscription_provider_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_registered_subscription_provider_response() :: %{
        "LastSuccessfulDataRetrievalTime" => [String.t() | Atom.t()],
        "SecretArn" => String.t() | Atom.t(),
        "SubscriptionProviderArn" => String.t() | Atom.t(),
        "SubscriptionProviderSource" => String.t() | Atom.t(),
        "SubscriptionProviderStatus" => String.t() | Atom.t(),
        "SubscriptionProviderStatusMessage" => [String.t() | Atom.t()]
      }

  """
  @type get_registered_subscription_provider_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_service_settings_request() :: %{}

  """
  @type get_service_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_service_settings_response() :: %{
        optional("HomeRegions") => list([String.t() | Atom.t()]()),
        optional("LinuxSubscriptionsDiscovery") => String.t() | Atom.t(),
        optional("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings(),
        optional("Status") => String.t() | Atom.t(),
        optional("StatusMessage") => map()
      }

  """
  @type get_service_settings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      instance() :: %{
        "AccountID" => [String.t() | Atom.t()],
        "AmiId" => [String.t() | Atom.t()],
        "DualSubscription" => [String.t() | Atom.t()],
        "InstanceID" => [String.t() | Atom.t()],
        "InstanceType" => [String.t() | Atom.t()],
        "LastUpdatedTime" => [String.t() | Atom.t()],
        "OsVersion" => [String.t() | Atom.t()],
        "ProductCode" => list([String.t() | Atom.t()]()),
        "Region" => [String.t() | Atom.t()],
        "RegisteredWithSubscriptionProvider" => [String.t() | Atom.t()],
        "Status" => [String.t() | Atom.t()],
        "SubscriptionName" => [String.t() | Atom.t()],
        "SubscriptionProviderCreateTime" => [String.t() | Atom.t()],
        "SubscriptionProviderUpdateTime" => [String.t() | Atom.t()],
        "UsageOperation" => [String.t() | Atom.t()]
      }

  """
  @type instance() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      linux_subscriptions_discovery_settings() :: %{
        "OrganizationIntegration" => String.t() | Atom.t(),
        "SourceRegions" => list([String.t() | Atom.t()]())
      }

  """
  @type linux_subscriptions_discovery_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_linux_subscription_instances_request() :: %{
        "Filters" => list(filter()),
        "MaxResults" => integer(),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_linux_subscription_instances_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_linux_subscription_instances_response() :: %{
        optional("Instances") => list(instance()),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_linux_subscription_instances_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_linux_subscriptions_request() :: %{
        "Filters" => list(filter()),
        "MaxResults" => integer(),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_linux_subscriptions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_linux_subscriptions_response() :: %{
        optional("NextToken") => [String.t() | Atom.t()],
        optional("Subscriptions") => list(subscription())
      }

  """
  @type list_linux_subscriptions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_registered_subscription_providers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()],
        optional("SubscriptionProviderSources") => list(String.t() | Atom.t())
      }

  """
  @type list_registered_subscription_providers_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_registered_subscription_providers_response() :: %{
        "NextToken" => [String.t() | Atom.t()],
        "RegisteredSubscriptionProviders" => list(registered_subscription_provider())
      }

  """
  @type list_registered_subscription_providers_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      register_subscription_provider_request() :: %{
        optional("Tags") => map(),
        required("SecretArn") => String.t() | Atom.t(),
        required("SubscriptionProviderSource") => String.t() | Atom.t()
      }

  """
  @type register_subscription_provider_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      register_subscription_provider_response() :: %{
        "SubscriptionProviderArn" => [String.t() | Atom.t()],
        "SubscriptionProviderSource" => String.t() | Atom.t(),
        "SubscriptionProviderStatus" => String.t() | Atom.t()
      }

  """
  @type register_subscription_provider_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      registered_subscription_provider() :: %{
        "LastSuccessfulDataRetrievalTime" => [String.t() | Atom.t()],
        "SecretArn" => String.t() | Atom.t(),
        "SubscriptionProviderArn" => String.t() | Atom.t(),
        "SubscriptionProviderSource" => String.t() | Atom.t(),
        "SubscriptionProviderStatus" => String.t() | Atom.t(),
        "SubscriptionProviderStatusMessage" => [String.t() | Atom.t()]
      }

  """
  @type registered_subscription_provider() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      subscription() :: %{
        "InstanceCount" => float(),
        "Name" => [String.t() | Atom.t()],
        "Type" => [String.t() | Atom.t()]
      }

  """
  @type subscription() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list([String.t() | Atom.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_service_settings_request() :: %{
        optional("AllowUpdate") => [boolean()],
        required("LinuxSubscriptionsDiscovery") => String.t() | Atom.t(),
        required("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings()
      }

  """
  @type update_service_settings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_service_settings_response() :: %{
        optional("HomeRegions") => list([String.t() | Atom.t()]()),
        optional("LinuxSubscriptionsDiscovery") => String.t() | Atom.t(),
        optional("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings(),
        optional("Status") => String.t() | Atom.t(),
        optional("StatusMessage") => map()
      }

  """
  @type update_service_settings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @type deregister_subscription_provider_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type get_registered_subscription_provider_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type get_service_settings_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_linux_subscription_instances_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_linux_subscriptions_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_registered_subscription_providers_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type register_subscription_provider_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_server_exception()

  @type untag_resource_errors() :: resource_not_found_exception() | internal_server_exception()

  @type update_service_settings_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "license-manager-linux-subscriptions",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "License Manager Linux Subscriptions",
      signature_version: "v4",
      signing_name: "license-manager-linux-subscriptions",
      target_prefix: nil
    }
  end

  @doc """
  Remove a third-party subscription provider from the Bring Your Own License
  (BYOL) subscriptions
  registered to your account.
  """
  @spec deregister_subscription_provider(
          map(),
          deregister_subscription_provider_request(),
          list()
        ) ::
          {:ok, deregister_subscription_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_subscription_provider_errors()}
  def deregister_subscription_provider(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/DeregisterSubscriptionProvider"
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
  Get details for a Bring Your Own License (BYOL) subscription that's registered
  to your account.
  """
  @spec get_registered_subscription_provider(
          map(),
          get_registered_subscription_provider_request(),
          list()
        ) ::
          {:ok, get_registered_subscription_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_registered_subscription_provider_errors()}
  def get_registered_subscription_provider(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/GetRegisteredSubscriptionProvider"
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
  Lists the Linux subscriptions service settings for your account.
  """
  @spec get_service_settings(map(), get_service_settings_request(), list()) ::
          {:ok, get_service_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_settings_errors()}
  def get_service_settings(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/GetServiceSettings"
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
  Lists the running Amazon EC2 instances that were discovered with commercial
  Linux
  subscriptions.
  """
  @spec list_linux_subscription_instances(
          map(),
          list_linux_subscription_instances_request(),
          list()
        ) ::
          {:ok, list_linux_subscription_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_linux_subscription_instances_errors()}
  def list_linux_subscription_instances(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/ListLinuxSubscriptionInstances"
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
  Lists the Linux subscriptions that have been discovered.

  If you have linked your
  organization, the returned results will include data aggregated across your
  accounts in
  Organizations.
  """
  @spec list_linux_subscriptions(map(), list_linux_subscriptions_request(), list()) ::
          {:ok, list_linux_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_linux_subscriptions_errors()}
  def list_linux_subscriptions(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/ListLinuxSubscriptions"
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
  List Bring Your Own License (BYOL) subscription registration resources for your
  account.
  """
  @spec list_registered_subscription_providers(
          map(),
          list_registered_subscription_providers_request(),
          list()
        ) ::
          {:ok, list_registered_subscription_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_registered_subscription_providers_errors()}
  def list_registered_subscription_providers(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/ListRegisteredSubscriptionProviders"
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
  List the metadata tags that are assigned to the
  specified Amazon Web Services resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Register the supported third-party subscription provider for your Bring Your Own
  License (BYOL) subscription.
  """
  @spec register_subscription_provider(map(), register_subscription_provider_request(), list()) ::
          {:ok, register_subscription_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_subscription_provider_errors()}
  def register_subscription_provider(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/RegisterSubscriptionProvider"
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
  Add metadata tags to the specified Amazon Web Services resource.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Remove one or more metadata tag from the specified Amazon Web Services resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
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
      200
    )
  end

  @doc """
  Updates the service settings for Linux subscriptions.
  """
  @spec update_service_settings(map(), update_service_settings_request(), list()) ::
          {:ok, update_service_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_settings_errors()}
  def update_service_settings(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/UpdateServiceSettings"
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
