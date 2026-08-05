# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PricingPlanManager do
  @moduledoc """
  Manages flat-rate pricing subscriptions for supported AWS services.

  Use this API to create, approve, update, and cancel subscriptions; associate and
  disassociate resources; and retrieve subscription details. With a flat-rate
  pricing subscription, you pay a fixed recurring fee for eligible resources
  instead of usage-based pricing.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      approve_paid_subscription_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("ifMatch") => [String.t() | atom()]
      }

  """
  @type approve_paid_subscription_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      approve_paid_subscription_output() :: %{
        "eTag" => [String.t() | atom()],
        "subscription" => subscription()
      }

  """
  @type approve_paid_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_resources_to_subscription_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("ifMatch") => [String.t() | atom()],
        required("resourceArns") => list([String.t() | atom()]())
      }

  """
  @type associate_resources_to_subscription_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_resources_to_subscription_output() :: %{
        "eTag" => [String.t() | atom()],
        "subscription" => subscription()
      }

  """
  @type associate_resources_to_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_subscription_change_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("ifMatch") => [String.t() | atom()]
      }

  """
  @type cancel_subscription_change_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_subscription_change_output() :: %{
        "eTag" => [String.t() | atom()],
        "subscription" => subscription()
      }

  """
  @type cancel_subscription_change_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_subscription_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("ifMatch") => [String.t() | atom()]
      }

  """
  @type cancel_subscription_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_subscription_output() :: %{
        "eTag" => [String.t() | atom()],
        "subscription" => subscription()
      }

  """
  @type cancel_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_input() :: %{
        optional("approvalMode") => list(any()),
        optional("clientToken") => String.t() | atom(),
        optional("usageLevel") => [String.t() | atom()],
        required("planFamily") => [String.t() | atom()],
        required("planTier") => [String.t() | atom()],
        required("resourceArns") => list([String.t() | atom()]())
      }

  """
  @type create_subscription_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_output() :: %{
        "eTag" => [String.t() | atom()],
        "subscription" => subscription()
      }

  """
  @type create_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_resources_from_subscription_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("arn") => String.t() | atom(),
        required("ifMatch") => [String.t() | atom()],
        required("resourceArns") => list([String.t() | atom()]())
      }

  """
  @type disassociate_resources_from_subscription_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_resources_from_subscription_output() :: %{
        "eTag" => [String.t() | atom()],
        "subscription" => subscription()
      }

  """
  @type disassociate_resources_from_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_input() :: %{
        required("arn") => String.t() | atom()
      }

  """
  @type get_subscription_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_output() :: %{
        "eTag" => [String.t() | atom()],
        "subscription" => subscription()
      }

  """
  @type get_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscriptions_input() :: %{
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_subscriptions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscriptions_output() :: %{
        "nextToken" => [String.t() | atom()],
        "subscriptionSummaries" => list(subscription_summary())
      }

  """
  @type list_subscriptions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scheduled_change() :: %{
        "changeType" => list(any()),
        "effectiveDate" => [non_neg_integer()],
        "planTier" => [String.t() | atom()],
        "usageLevel" => [String.t() | atom()]
      }

  """
  @type scheduled_change() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscription() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "planFamily" => [String.t() | atom()],
        "planTier" => [String.t() | atom()],
        "resourceArns" => list([String.t() | atom()]()),
        "scheduledChange" => scheduled_change(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()],
        "usageLevel" => [String.t() | atom()]
      }

  """
  @type subscription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscription_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "eTag" => [String.t() | atom()],
        "planFamily" => [String.t() | atom()],
        "planTier" => [String.t() | atom()],
        "resourceArns" => list([String.t() | atom()]()),
        "scheduledChange" => scheduled_change(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()],
        "usageLevel" => [String.t() | atom()]
      }

  """
  @type subscription_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_subscription_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("usageLevel") => [String.t() | atom()],
        required("arn") => String.t() | atom(),
        required("ifMatch") => [String.t() | atom()],
        required("planTier") => [String.t() | atom()]
      }

  """
  @type update_subscription_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_subscription_output() :: %{
        "eTag" => [String.t() | atom()],
        "subscription" => subscription()
      }

  """
  @type update_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type approve_paid_subscription_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type associate_resources_to_subscription_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type cancel_subscription_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type cancel_subscription_change_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_subscription_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type disassociate_resources_from_subscription_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_subscription_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_subscriptions_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_subscription_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2025-08-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pricingplanmanager",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Pricing Plan Manager",
      signature_version: "v4",
      signing_name: "pricingplanmanager",
      target_prefix: nil
    }
  end

  @doc """
  Approves a subscription that is in `PENDING_APPROVAL` status, activating it and
  starting billing.

  This operation requires the current `ETag` value for concurrency control.
  Retrieve it from a previous `GetSubscription` or `ListSubscriptions` response.
  """
  @spec approve_paid_subscription(map(), approve_paid_subscription_input(), list()) ::
          {:ok, approve_paid_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, approve_paid_subscription_errors()}
  def approve_paid_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/ApprovePaidSubscription"

    {headers, input} =
      [
        {"ifMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

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
  Adds one or more resources to an existing subscription.

  The subscription must be in an active state that is not pending other changes.

  For subscriptions in the CloudFront plan family, the associated resources must
  include exactly one Amazon CloudFront distribution and one AWS WAF web ACL. You
  can also include other supported resources, such as Amazon Route 53 hosted
  zones, and CloudFront KeyValueStores.
  """
  @spec associate_resources_to_subscription(
          map(),
          associate_resources_to_subscription_input(),
          list()
        ) ::
          {:ok, associate_resources_to_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_resources_to_subscription_errors()}
  def associate_resources_to_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/AssociateResourcesToSubscription"

    {headers, input} =
      [
        {"ifMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

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
  Cancels a flat-rate pricing subscription.

  For active subscriptions, the cancellation is scheduled to take effect at the
  end of the current billing period. The subscription remains active until that
  date. To revert a pending cancellation, use `CancelSubscriptionChange`.

  For subscriptions in `PENDING_APPROVAL` status, the subscription is deleted
  immediately without scheduling.
  """
  @spec cancel_subscription(map(), cancel_subscription_input(), list()) ::
          {:ok, cancel_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_subscription_errors()}
  def cancel_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/CancelSubscription"

    {headers, input} =
      [
        {"ifMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

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
  Cancels a pending scheduled change on a subscription, such as a pending
  downgrade or cancellation.

  The subscription returns to its state before the change was scheduled.

  You cannot cancel a scheduled change close to its effective date. If the change
  is within the processing window, this operation returns an error.
  """
  @spec cancel_subscription_change(map(), cancel_subscription_change_input(), list()) ::
          {:ok, cancel_subscription_change_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_subscription_change_errors()}
  def cancel_subscription_change(%Client{} = client, input, options \\ []) do
    url_path = "/v1/CancelSubscriptionChange"

    {headers, input} =
      [
        {"ifMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

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
  Creates a flat-rate pricing subscription for the specified resources.

  When `approvalMode` is set to `MANUAL`, paid-tier subscriptions are created in
  `PENDING_APPROVAL` status and require a separate `ApprovePaidSubscription` call
  before billing starts. Free-tier subscriptions are always activated immediately
  regardless of approval mode.

  When `approvalMode` is set to `IMMEDIATE` or is not specified, the subscription
  is activated immediately.
  """
  @spec create_subscription(map(), create_subscription_input(), list()) ::
          {:ok, create_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_subscription_errors()}
  def create_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/CreateSubscription"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

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
  Removes one or more resources from an existing subscription.

  For subscriptions in the CloudFront plan family, the associated resources must
  always include exactly one Amazon CloudFront distribution and exactly one AWS
  WAF web ACL. You cannot remove these required resources.
  """
  @spec disassociate_resources_from_subscription(
          map(),
          disassociate_resources_from_subscription_input(),
          list()
        ) ::
          {:ok, disassociate_resources_from_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_resources_from_subscription_errors()}
  def disassociate_resources_from_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/DisassociateResourcesFromSubscription"

    {headers, input} =
      [
        {"ifMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

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
  Returns the details of a flat-rate pricing subscription, including its current
  status, associated resources, and any pending scheduled changes.
  """
  @spec get_subscription(map(), get_subscription_input(), list()) ::
          {:ok, get_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_subscription_errors()}
  def get_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/GetSubscription"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

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
  Returns a summary of all flat-rate pricing subscriptions in the calling account.
  """
  @spec list_subscriptions(map(), list_subscriptions_input(), list()) ::
          {:ok, list_subscriptions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_subscriptions_errors()}
  def list_subscriptions(%Client{} = client, input, options \\ []) do
    url_path = "/v1/ListSubscriptions"
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
  Changes the plan tier of an existing subscription.

  Upgrades take effect immediately. Downgrades are scheduled and the current tier
  remains unchanged until the end of the billing cycle (calendar month). You
  cannot update a subscription while a scheduled change is pending. To make a new
  change, first cancel the pending change using `CancelSubscriptionChange`.

  This operation replaces the plan tier value. If you omit the optional
  `usageLevel` field, it is reset to the default.
  """
  @spec update_subscription(map(), update_subscription_input(), list()) ::
          {:ok, update_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_subscription_errors()}
  def update_subscription(%Client{} = client, input, options \\ []) do
    url_path = "/v1/UpdateSubscription"

    {headers, input} =
      [
        {"ifMatch", "If-Match"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"ETag", "eTag"}]
      )

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
