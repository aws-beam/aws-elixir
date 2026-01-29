# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Savingsplans do
  @moduledoc """
  Savings Plans are a pricing model that offer significant savings on Amazon Web
  Services usage (for example, on Amazon EC2 instances).

  You commit to a consistent
  amount of usage per hour, in the specified currency, for a term of one or three
  years, and
  receive a lower price for that usage. For more information, see the [Amazon Web Services
  Savings Plans User
  Guide](https://docs.aws.amazon.com/savingsplans/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_savings_plans_offerings_response() :: %{
        "nextToken" => String.t() | atom(),
        "searchResults" => list(savings_plan_offering())
      }

  """
  @type describe_savings_plans_offerings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_savings_plan_rates_request() :: %{
        optional("filters") => list(savings_plan_rate_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("savingsPlanId") => String.t() | atom()
      }

  """
  @type describe_savings_plan_rates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      savings_plan_rate_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type savings_plan_rate_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_savings_plans_request() :: %{
        optional("filters") => list(savings_plan_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("savingsPlanArns") => list(String.t() | atom()),
        optional("savingsPlanIds") => list(String.t() | atom()),
        optional("states") => list(list(any())())
      }

  """
  @type describe_savings_plans_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_savings_plan_response() :: %{
        "savingsPlanId" => String.t() | atom()
      }

  """
  @type create_savings_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      savings_plan_offering_rate() :: %{
        "operation" => String.t() | atom(),
        "productType" => list(any()),
        "properties" => list(savings_plan_offering_rate_property()),
        "rate" => String.t() | atom(),
        "savingsPlanOffering" => parent_savings_plan_offering(),
        "serviceCode" => list(any()),
        "unit" => list(any()),
        "usageType" => String.t() | atom()
      }

  """
  @type savings_plan_offering_rate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      savings_plan_offering_rate_property() :: %{
        "name" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type savings_plan_offering_rate_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      savings_plan_offering() :: %{
        "currency" => list(any()),
        "description" => String.t() | atom(),
        "durationSeconds" => float(),
        "offeringId" => String.t() | atom(),
        "operation" => String.t() | atom(),
        "paymentOption" => list(any()),
        "planType" => list(any()),
        "productTypes" => list(list(any())()),
        "properties" => list(savings_plan_offering_property()),
        "serviceCode" => String.t() | atom(),
        "usageType" => String.t() | atom()
      }

  """
  @type savings_plan_offering() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_savings_plans_offering_rates_request() :: %{
        optional("filters") => list(savings_plan_offering_rate_filter_element()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("operations") => list(String.t() | atom()),
        optional("products") => list(list(any())()),
        optional("savingsPlanOfferingIds") => list(String.t() | atom()),
        optional("savingsPlanPaymentOptions") => list(list(any())()),
        optional("savingsPlanTypes") => list(list(any())()),
        optional("serviceCodes") => list(list(any())()),
        optional("usageTypes") => list(String.t() | atom())
      }

  """
  @type describe_savings_plans_offering_rates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      savings_plan_rate() :: %{
        "currency" => list(any()),
        "operation" => String.t() | atom(),
        "productType" => list(any()),
        "properties" => list(savings_plan_rate_property()),
        "rate" => String.t() | atom(),
        "serviceCode" => list(any()),
        "unit" => list(any()),
        "usageType" => String.t() | atom()
      }

  """
  @type savings_plan_rate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_queued_savings_plan_response() :: %{}

  """
  @type delete_queued_savings_plan_response() :: %{}

  @typedoc """

  ## Example:

      savings_plan_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type savings_plan_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      savings_plan_offering_property() :: %{
        "name" => list(any()),
        "value" => String.t() | atom()
      }

  """
  @type savings_plan_offering_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parent_savings_plan_offering() :: %{
        "currency" => list(any()),
        "durationSeconds" => float(),
        "offeringId" => String.t() | atom(),
        "paymentOption" => list(any()),
        "planDescription" => String.t() | atom(),
        "planType" => list(any())
      }

  """
  @type parent_savings_plan_offering() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      return_savings_plan_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("savingsPlanId") => String.t() | atom()
      }

  """
  @type return_savings_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      savings_plan() :: %{
        "commitment" => String.t() | atom(),
        "currency" => list(any()),
        "description" => String.t() | atom(),
        "ec2InstanceFamily" => String.t() | atom(),
        "end" => String.t() | atom(),
        "offeringId" => String.t() | atom(),
        "paymentOption" => list(any()),
        "productTypes" => list(list(any())()),
        "recurringPaymentAmount" => String.t() | atom(),
        "region" => String.t() | atom(),
        "returnableUntil" => String.t() | atom(),
        "savingsPlanArn" => String.t() | atom(),
        "savingsPlanId" => String.t() | atom(),
        "savingsPlanType" => list(any()),
        "start" => String.t() | atom(),
        "state" => list(any()),
        "tags" => map(),
        "termDurationInSeconds" => float(),
        "upfrontPaymentAmount" => String.t() | atom()
      }

  """
  @type savings_plan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_savings_plan_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("purchaseTime") => non_neg_integer(),
        optional("tags") => map(),
        optional("upfrontPaymentAmount") => String.t() | atom(),
        required("commitment") => String.t() | atom(),
        required("savingsPlanOfferingId") => String.t() | atom()
      }

  """
  @type create_savings_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_savings_plans_response() :: %{
        "nextToken" => String.t() | atom(),
        "savingsPlans" => list(savings_plan())
      }

  """
  @type describe_savings_plans_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_savings_plans_offering_rates_response() :: %{
        "nextToken" => String.t() | atom(),
        "searchResults" => list(savings_plan_offering_rate())
      }

  """
  @type describe_savings_plans_offering_rates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_savings_plan_rates_response() :: %{
        "nextToken" => String.t() | atom(),
        "savingsPlanId" => String.t() | atom(),
        "searchResults" => list(savings_plan_rate())
      }

  """
  @type describe_savings_plan_rates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_queued_savings_plan_request() :: %{
        required("savingsPlanId") => String.t() | atom()
      }

  """
  @type delete_queued_savings_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      savings_plan_rate_property() :: %{
        "name" => list(any()),
        "value" => String.t() | atom()
      }

  """
  @type savings_plan_rate_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      return_savings_plan_response() :: %{
        "savingsPlanId" => String.t() | atom()
      }

  """
  @type return_savings_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom()
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

      savings_plan_offering_filter_element() :: %{
        "name" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type savings_plan_offering_filter_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_savings_plans_offerings_request() :: %{
        optional("currencies") => list(list(any())()),
        optional("descriptions") => list(String.t() | atom()),
        optional("durations") => list(float()),
        optional("filters") => list(savings_plan_offering_filter_element()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("offeringIds") => list(String.t() | atom()),
        optional("operations") => list(String.t() | atom()),
        optional("paymentOptions") => list(list(any())()),
        optional("planTypes") => list(list(any())()),
        optional("productType") => list(any()),
        optional("serviceCodes") => list(String.t() | atom()),
        optional("usageTypes") => list(String.t() | atom())
      }

  """
  @type describe_savings_plans_offerings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      savings_plan_offering_rate_filter_element() :: %{
        "name" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type savings_plan_offering_rate_filter_element() :: %{(String.t() | atom()) => any()}

  @type create_savings_plan_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_queued_savings_plan_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_savings_plan_rates_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_savings_plans_errors() :: validation_exception() | internal_server_exception()

  @type describe_savings_plans_offering_rates_errors() ::
          validation_exception() | internal_server_exception()

  @type describe_savings_plans_offerings_errors() ::
          validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type return_savings_plan_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2019-06-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "savingsplans",
      global?: true,
      hostname: "savingsplans.amazonaws.com",
      protocol: "rest-json",
      service_id: "savingsplans",
      signature_version: "v4",
      signing_name: "savingsplans",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Savings Plan.
  """
  @spec create_savings_plan(map(), create_savings_plan_request(), list()) ::
          {:ok, create_savings_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_savings_plan_errors()}
  def create_savings_plan(%Client{} = client, input, options \\ []) do
    url_path = "/CreateSavingsPlan"
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
  Deletes the queued purchase for the specified Savings Plan.
  """
  @spec delete_queued_savings_plan(map(), delete_queued_savings_plan_request(), list()) ::
          {:ok, delete_queued_savings_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_queued_savings_plan_errors()}
  def delete_queued_savings_plan(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteQueuedSavingsPlan"
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
  Describes the rates for a specific, existing Savings Plan.
  """
  @spec describe_savings_plan_rates(map(), describe_savings_plan_rates_request(), list()) ::
          {:ok, describe_savings_plan_rates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_savings_plan_rates_errors()}
  def describe_savings_plan_rates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSavingsPlanRates"
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
  Describes the specified Savings Plans.
  """
  @spec describe_savings_plans(map(), describe_savings_plans_request(), list()) ::
          {:ok, describe_savings_plans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_savings_plans_errors()}
  def describe_savings_plans(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSavingsPlans"
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
  Describes the offering rates for Savings Plans you might want to purchase.
  """
  @spec describe_savings_plans_offering_rates(
          map(),
          describe_savings_plans_offering_rates_request(),
          list()
        ) ::
          {:ok, describe_savings_plans_offering_rates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_savings_plans_offering_rates_errors()}
  def describe_savings_plans_offering_rates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSavingsPlansOfferingRates"
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
  Describes the offerings for the specified Savings Plans.
  """
  @spec describe_savings_plans_offerings(
          map(),
          describe_savings_plans_offerings_request(),
          list()
        ) ::
          {:ok, describe_savings_plans_offerings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_savings_plans_offerings_errors()}
  def describe_savings_plans_offerings(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSavingsPlansOfferings"
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
  Lists the tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
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
  Returns the specified Savings Plan.
  """
  @spec return_savings_plan(map(), return_savings_plan_request(), list()) ::
          {:ok, return_savings_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, return_savings_plan_errors()}
  def return_savings_plan(%Client{} = client, input, options \\ []) do
    url_path = "/ReturnSavingsPlan"
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
  Adds the specified tags to the specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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
  Removes the specified tags from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
