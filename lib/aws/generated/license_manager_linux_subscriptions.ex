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

      filter() :: %{
        "Name" => [String.t()],
        "Operator" => String.t(),
        "Values" => list([String.t()]())
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_settings_request() :: %{}

  """
  @type get_service_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_service_settings_response() :: %{
        optional("HomeRegions") => list([String.t()]()),
        optional("LinuxSubscriptionsDiscovery") => String.t(),
        optional("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings(),
        optional("Status") => String.t(),
        optional("StatusMessage") => map()
      }

  """
  @type get_service_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance() :: %{
        "AccountID" => [String.t()],
        "AmiId" => [String.t()],
        "InstanceID" => [String.t()],
        "InstanceType" => [String.t()],
        "LastUpdatedTime" => [String.t()],
        "ProductCode" => list([String.t()]()),
        "Region" => [String.t()],
        "Status" => [String.t()],
        "SubscriptionName" => [String.t()],
        "UsageOperation" => [String.t()]
      }

  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      linux_subscriptions_discovery_settings() :: %{
        "OrganizationIntegration" => String.t(),
        "SourceRegions" => list([String.t()]())
      }

  """
  @type linux_subscriptions_discovery_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_linux_subscription_instances_request() :: %{
        "Filters" => list(filter()()),
        "MaxResults" => integer(),
        "NextToken" => [String.t()]
      }

  """
  @type list_linux_subscription_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_linux_subscription_instances_response() :: %{
        optional("Instances") => list(instance()()),
        optional("NextToken") => [String.t()]
      }

  """
  @type list_linux_subscription_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_linux_subscriptions_request() :: %{
        "Filters" => list(filter()()),
        "MaxResults" => integer(),
        "NextToken" => [String.t()]
      }

  """
  @type list_linux_subscriptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_linux_subscriptions_response() :: %{
        optional("NextToken") => [String.t()],
        optional("Subscriptions") => list(subscription()())
      }

  """
  @type list_linux_subscriptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subscription() :: %{
        "InstanceCount" => float(),
        "Name" => [String.t()],
        "Type" => [String.t()]
      }

  """
  @type subscription() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_settings_request() :: %{
        optional("AllowUpdate") => [boolean()],
        required("LinuxSubscriptionsDiscovery") => String.t(),
        required("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings()
      }

  """
  @type update_service_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_service_settings_response() :: %{
        optional("HomeRegions") => list([String.t()]()),
        optional("LinuxSubscriptionsDiscovery") => String.t(),
        optional("LinuxSubscriptionsDiscoverySettings") => linux_subscriptions_discovery_settings(),
        optional("Status") => String.t(),
        optional("StatusMessage") => map()
      }

  """
  @type update_service_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @type get_service_settings_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_linux_subscription_instances_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_linux_subscriptions_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

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
  Lists the Linux subscriptions service settings.
  """
  @spec get_service_settings(map(), get_service_settings_request(), list()) ::
          {:ok, get_service_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_settings_errors()}
  def get_service_settings(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/GetServiceSettings"
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
          | {:error, list_linux_subscription_instances_errors()}
  def list_linux_subscription_instances(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/ListLinuxSubscriptionInstances"
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
  Lists the Linux subscriptions that have been discovered.

  If you have linked your
  organization, the returned results will include data aggregated across your
  accounts in
  Organizations.
  """
  @spec list_linux_subscriptions(map(), list_linux_subscriptions_request(), list()) ::
          {:ok, list_linux_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_linux_subscriptions_errors()}
  def list_linux_subscriptions(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/ListLinuxSubscriptions"
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
  Updates the service settings for Linux subscriptions.
  """
  @spec update_service_settings(map(), update_service_settings_request(), list()) ::
          {:ok, update_service_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_service_settings_errors()}
  def update_service_settings(%Client{} = client, input, options \\ []) do
    url_path = "/subscription/UpdateServiceSettings"
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
