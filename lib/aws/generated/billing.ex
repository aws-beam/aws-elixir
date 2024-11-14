# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Billing do
  @moduledoc """

  You can use the Billing API to programatically list the billing views available
  to you for a given time period.

  A billing view represents a set of billing data.

  The Billing API provides the following endpoint:

  `https://billing.us-east-1.api.aws`
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      active_time_range() :: %{
        "activeAfterInclusive" => [non_neg_integer()],
        "activeBeforeInclusive" => [non_neg_integer()]
      }
      
  """
  @type active_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      billing_view_list_element() :: %{
        "arn" => String.t(),
        "billingViewType" => list(any()),
        "name" => String.t(),
        "ownerAccountId" => String.t()
      }
      
  """
  @type billing_view_list_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_billing_views_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("activeTimeRange") => active_time_range()
      }
      
  """
  @type list_billing_views_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_billing_views_response() :: %{
        "billingViews" => list(billing_view_list_element()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_billing_views_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @type list_billing_views_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2023-09-07",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "billing",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Billing",
      signature_version: "v4",
      signing_name: "billing",
      target_prefix: "AWSBilling"
    }
  end

  @doc """
  Lists the billing views available for a given time period.

  Every Amazon Web Services account has a unique `PRIMARY` billing view that
  represents the billing data available by default. Accounts that use Billing
  Conductor also have `BILLING_GROUP` billing views representing pro forma costs
  associated with each created billing group.
  """
  @spec list_billing_views(map(), list_billing_views_request(), list()) ::
          {:ok, list_billing_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_billing_views_errors()}
  def list_billing_views(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillingViews", input, options)
  end
end
