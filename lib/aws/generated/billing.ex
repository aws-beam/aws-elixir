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
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("resourceTags") => list(resource_tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_billing_views_request() :: %{
        optional("activeTimeRange") => active_time_range(),
        optional("arns") => list(String.t() | atom()),
        optional("billingViewTypes") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("ownerAccountId") => String.t() | atom()
      }
      
  """
  @type list_billing_views_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_source_views_for_billing_view_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("arn") => String.t() | atom()
      }
      
  """
  @type list_source_views_for_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_billing_view_response() :: %{
        "arn" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type update_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_source_views_for_billing_view_response() :: %{
        "nextToken" => String.t() | atom(),
        "sourceViews" => list(String.t() | atom())
      }
      
  """
  @type list_source_views_for_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_billing_view_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type delete_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_values() :: %{
        "key" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type tag_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_response() :: %{
        "policy" => String.t() | atom(),
        "resourceArn" => String.t() | atom()
      }
      
  """
  @type get_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_billing_view_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type get_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("resourceTagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_billing_view_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("dataFilterExpression") => expression(),
        optional("description") => String.t() | atom(),
        optional("resourceTags") => list(resource_tag()),
        required("name") => String.t() | atom(),
        required("sourceViews") => list(String.t() | atom())
      }
      
  """
  @type create_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension_values() :: %{
        "key" => list(any()),
        "values" => list(String.t() | atom())
      }
      
  """
  @type dimension_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_billing_view_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_billing_view_request() :: %{
        optional("dataFilterExpression") => expression(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        required("arn") => String.t() | atom()
      }
      
  """
  @type update_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "serviceCode" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "resourceTags" => list(resource_tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t() | atom(),
        "name" => String.t() | atom()
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type get_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      active_time_range() :: %{
        "activeAfterInclusive" => [non_neg_integer()],
        "activeBeforeInclusive" => [non_neg_integer()]
      }
      
  """
  @type active_time_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_view_element() :: %{
        "arn" => String.t() | atom(),
        "billingViewType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "dataFilterExpression" => expression(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type billing_view_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      billing_view_list_element() :: %{
        "arn" => String.t() | atom(),
        "billingViewType" => list(any()),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom()
      }
      
  """
  @type billing_view_list_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | atom(),
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "dimensions" => dimension_values(),
        "tags" => tag_values()
      }
      
  """
  @type expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_billing_view_response() :: %{
        "billingView" => billing_view_element()
      }
      
  """
  @type get_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_billing_views_response() :: %{
        "billingViews" => list(billing_view_list_element()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_billing_views_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_billing_view_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()]
      }
      
  """
  @type create_billing_view_response() :: %{(String.t() | atom()) => any()}

  @type create_billing_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_billing_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_billing_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_billing_views_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_source_views_for_billing_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_billing_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

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

  Creates a billing view with the specified billing view attributes.
  """
  @spec create_billing_view(map(), create_billing_view_request(), list()) ::
          {:ok, create_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_billing_view_errors()}
  def create_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBillingView", input, options)
  end

  @doc """
  Deletes the specified billing view.
  """
  @spec delete_billing_view(map(), delete_billing_view_request(), list()) ::
          {:ok, delete_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_billing_view_errors()}
  def delete_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBillingView", input, options)
  end

  @doc """
  Returns the metadata associated to the specified billing view ARN.
  """
  @spec get_billing_view(map(), get_billing_view_request(), list()) ::
          {:ok, get_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_billing_view_errors()}
  def get_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBillingView", input, options)
  end

  @doc """
  Returns the resource-based policy document attached to the resource in `JSON`
  format.
  """
  @spec get_resource_policy(map(), get_resource_policy_request(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
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
          | {:error, term()}
          | {:error, list_billing_views_errors()}
  def list_billing_views(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBillingViews", input, options)
  end

  @doc """
  Lists the source views (managed Amazon Web Services billing views) associated
  with the billing view.
  """
  @spec list_source_views_for_billing_view(
          map(),
          list_source_views_for_billing_view_request(),
          list()
        ) ::
          {:ok, list_source_views_for_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_source_views_for_billing_view_errors()}
  def list_source_views_for_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSourceViewsForBillingView", input, options)
  end

  @doc """
  Lists tags associated with the billing view resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """

  An API operation for adding one or more tags (key-value pairs) to a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """

  Removes one or more tags from a resource.

  Specify only tag keys in your request. Don't specify the value.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  An API to update the attributes of the billing view.
  """
  @spec update_billing_view(map(), update_billing_view_request(), list()) ::
          {:ok, update_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_billing_view_errors()}
  def update_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBillingView", input, options)
  end
end
