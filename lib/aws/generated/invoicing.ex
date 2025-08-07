# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Invoicing do
  @moduledoc """
  ## Amazon Web Services Invoice Configuration

  You can use Amazon Web Services Invoice Configuration APIs to programmatically
  create, update, delete, get, and list invoice units.

  You can also programmatically fetch the information of the invoice receiver. For
  example, business legal name, address, and invoicing contacts.

  You can use Amazon Web Services Invoice Configuration to receive separate Amazon
  Web Services invoices based your organizational needs. By using Amazon Web
  Services Invoice Configuration, you can configure invoice units that are groups
  of Amazon Web Services accounts that represent your business entities, and
  receive separate invoices for each business entity. You can also assign a unique
  member or payer account as the invoice receiver for each invoice unit. As you
  create new accounts within your Organizations using Amazon Web Services Invoice
  Configuration APIs, you can automate the creation of new invoice units and
  subsequently automate the addition of new accounts to your invoice units.

  Service endpoint

  You can use the following endpoints for Amazon Web Services Invoice
  Configuration:

    * `https://invoicing.us-east-1.api.aws`
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("ResourceTags") => list(resource_tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_invoice_unit_response() :: %{
        "InvoiceUnitArn" => String.t() | atom()
      }
      
  """
  @type delete_invoice_unit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_invoice_unit_response() :: %{
        "Description" => String.t() | atom(),
        "InvoiceReceiver" => String.t() | atom(),
        "InvoiceUnitArn" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Rule" => invoice_unit_rule(),
        "TaxInheritanceDisabled" => boolean()
      }
      
  """
  @type get_invoice_unit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      entity() :: %{
        "InvoicingEntity" => String.t() | atom()
      }
      
  """
  @type entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      discounts_breakdown_amount() :: %{
        "Amount" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Rate" => String.t() | atom()
      }
      
  """
  @type discounts_breakdown_amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      date_interval() :: %{
        "EndDate" => [non_neg_integer()],
        "StartDate" => [non_neg_integer()]
      }
      
  """
  @type date_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invoice_summaries_filter() :: %{
        "BillingPeriod" => billing_period(),
        "InvoicingEntity" => String.t() | atom(),
        "TimeInterval" => date_interval()
      }
      
  """
  @type invoice_summaries_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invoice_profile() :: %{
        "AccountId" => String.t() | atom(),
        "Issuer" => String.t() | atom(),
        "ReceiverAddress" => receiver_address(),
        "ReceiverEmail" => String.t() | atom(),
        "ReceiverName" => String.t() | atom(),
        "TaxRegistrationNumber" => String.t() | atom()
      }
      
  """
  @type invoice_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("ResourceTagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_invoice_unit_response() :: %{
        "InvoiceUnitArn" => String.t() | atom()
      }
      
  """
  @type update_invoice_unit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      receiver_address() :: %{
        "AddressLine1" => String.t() | atom(),
        "AddressLine2" => String.t() | atom(),
        "AddressLine3" => String.t() | atom(),
        "City" => String.t() | atom(),
        "CompanyName" => String.t() | atom(),
        "CountryCode" => String.t() | atom(),
        "DistrictOrCounty" => String.t() | atom(),
        "PostalCode" => String.t() | atom(),
        "StateOrRegion" => String.t() | atom()
      }
      
  """
  @type receiver_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_invoice_units_response() :: %{
        "InvoiceUnits" => list(invoice_unit()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_invoice_units_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom(),
        "resourceName" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_invoice_unit_request() :: %{
        required("InvoiceUnitArn") => String.t() | atom()
      }
      
  """
  @type delete_invoice_unit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      taxes_breakdown_amount() :: %{
        "Amount" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Rate" => String.t() | atom()
      }
      
  """
  @type taxes_breakdown_amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invoice_summary() :: %{
        "AccountId" => String.t() | atom(),
        "BaseCurrencyAmount" => invoice_currency_amount(),
        "BillingPeriod" => billing_period(),
        "DueDate" => [non_neg_integer()],
        "Entity" => entity(),
        "InvoiceId" => String.t() | atom(),
        "InvoiceType" => list(any()),
        "IssuedDate" => [non_neg_integer()],
        "OriginalInvoiceId" => String.t() | atom(),
        "PaymentCurrencyAmount" => invoice_currency_amount(),
        "PurchaseOrderNumber" => String.t() | atom(),
        "TaxCurrencyAmount" => invoice_currency_amount()
      }
      
  """
  @type invoice_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "ResourceTags" => list(resource_tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      currency_exchange_details() :: %{
        "Rate" => String.t() | atom(),
        "SourceCurrencyCode" => String.t() | atom(),
        "TargetCurrencyCode" => String.t() | atom()
      }
      
  """
  @type currency_exchange_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_invoice_profile_request() :: %{
        required("AccountIds") => list(String.t() | atom())
      }
      
  """
  @type batch_get_invoice_profile_request() :: %{(String.t() | atom()) => any()}

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
      
      invoice_currency_amount() :: %{
        "AmountBreakdown" => amount_breakdown(),
        "CurrencyCode" => String.t() | atom(),
        "CurrencyExchangeDetails" => currency_exchange_details(),
        "TotalAmount" => String.t() | atom(),
        "TotalAmountBeforeTax" => String.t() | atom()
      }
      
  """
  @type invoice_currency_amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      discounts_breakdown() :: %{
        "Breakdown" => list(discounts_breakdown_amount()),
        "TotalAmount" => String.t() | atom()
      }
      
  """
  @type discounts_breakdown() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_period() :: %{
        "Month" => integer(),
        "Year" => integer()
      }
      
  """
  @type billing_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fees_breakdown_amount() :: %{
        "Amount" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Rate" => String.t() | atom()
      }
      
  """
  @type fees_breakdown_amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom(),
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_invoice_units_request() :: %{
        optional("AsOf") => non_neg_integer(),
        optional("Filters") => filters(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_invoice_units_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom(),
        "resourceName" => String.t() | atom()
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
      
      invoice_unit_rule() :: %{
        "LinkedAccounts" => list(String.t() | atom())
      }
      
  """
  @type invoice_unit_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_invoice_profile_response() :: %{
        "Profiles" => list(invoice_profile())
      }
      
  """
  @type batch_get_invoice_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invoice_summaries_selector() :: %{
        "ResourceType" => list(any()),
        "Value" => String.t() | atom()
      }
      
  """
  @type invoice_summaries_selector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | atom(),
        "reason" => list(any()),
        "resourceName" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_invoice_unit_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ResourceTags") => list(resource_tag()),
        optional("TaxInheritanceDisabled") => boolean(),
        required("InvoiceReceiver") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Rule") => invoice_unit_rule()
      }
      
  """
  @type create_invoice_unit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_invoice_unit_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Rule") => invoice_unit_rule(),
        optional("TaxInheritanceDisabled") => boolean(),
        required("InvoiceUnitArn") => String.t() | atom()
      }
      
  """
  @type update_invoice_unit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      amount_breakdown() :: %{
        "Discounts" => discounts_breakdown(),
        "Fees" => fees_breakdown(),
        "SubTotalAmount" => String.t() | atom(),
        "Taxes" => taxes_breakdown()
      }
      
  """
  @type amount_breakdown() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filters() :: %{
        "Accounts" => list(String.t() | atom()),
        "InvoiceReceivers" => list(String.t() | atom()),
        "Names" => list(String.t() | atom())
      }
      
  """
  @type filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_invoice_summaries_response() :: %{
        "InvoiceSummaries" => list(invoice_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_invoice_summaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_invoice_unit_response() :: %{
        "InvoiceUnitArn" => String.t() | atom()
      }
      
  """
  @type create_invoice_unit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fees_breakdown() :: %{
        "Breakdown" => list(fees_breakdown_amount()),
        "TotalAmount" => String.t() | atom()
      }
      
  """
  @type fees_breakdown() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_invoice_unit_request() :: %{
        optional("AsOf") => non_neg_integer(),
        required("InvoiceUnitArn") => String.t() | atom()
      }
      
  """
  @type get_invoice_unit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invoice_unit() :: %{
        "Description" => String.t() | atom(),
        "InvoiceReceiver" => String.t() | atom(),
        "InvoiceUnitArn" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Rule" => invoice_unit_rule(),
        "TaxInheritanceDisabled" => boolean()
      }
      
  """
  @type invoice_unit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_invoice_summaries_request() :: %{
        optional("Filter") => invoice_summaries_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Selector") => invoice_summaries_selector()
      }
      
  """
  @type list_invoice_summaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      taxes_breakdown() :: %{
        "Breakdown" => list(taxes_breakdown_amount()),
        "TotalAmount" => String.t() | atom()
      }
      
  """
  @type taxes_breakdown() :: %{(String.t() | atom()) => any()}

  @type batch_get_invoice_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_invoice_unit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_invoice_unit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_invoice_unit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_invoice_summaries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_invoice_units_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

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
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_invoice_unit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2024-12-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "invoicing",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Invoicing",
      signature_version: "v4",
      signing_name: "invoicing",
      target_prefix: "Invoicing"
    }
  end

  @doc """
  This gets the invoice profile associated with a set of accounts.

  The accounts must be linked accounts under the requester management account
  organization.
  """
  @spec batch_get_invoice_profile(map(), batch_get_invoice_profile_request(), list()) ::
          {:ok, batch_get_invoice_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_invoice_profile_errors()}
  def batch_get_invoice_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetInvoiceProfile", input, options)
  end

  @doc """
  This creates a new invoice unit with the provided definition.
  """
  @spec create_invoice_unit(map(), create_invoice_unit_request(), list()) ::
          {:ok, create_invoice_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_invoice_unit_errors()}
  def create_invoice_unit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInvoiceUnit", input, options)
  end

  @doc """
  This deletes an invoice unit with the provided invoice unit ARN.
  """
  @spec delete_invoice_unit(map(), delete_invoice_unit_request(), list()) ::
          {:ok, delete_invoice_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_invoice_unit_errors()}
  def delete_invoice_unit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInvoiceUnit", input, options)
  end

  @doc """
  This retrieves the invoice unit definition.
  """
  @spec get_invoice_unit(map(), get_invoice_unit_request(), list()) ::
          {:ok, get_invoice_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_invoice_unit_errors()}
  def get_invoice_unit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInvoiceUnit", input, options)
  end

  @doc """
  Retrieves your invoice details programmatically, without line item details.
  """
  @spec list_invoice_summaries(map(), list_invoice_summaries_request(), list()) ::
          {:ok, list_invoice_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_invoice_summaries_errors()}
  def list_invoice_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInvoiceSummaries", input, options)
  end

  @doc """
  This fetches a list of all invoice unit definitions for a given account, as of
  the provided `AsOf` date.
  """
  @spec list_invoice_units(map(), list_invoice_units_request(), list()) ::
          {:ok, list_invoice_units_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_invoice_units_errors()}
  def list_invoice_units(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInvoiceUnits", input, options)
  end

  @doc """
  Lists the tags for a resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds a tag to a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  You can update the invoice unit configuration at any time, and Amazon Web
  Services will use the latest configuration at the end of the month.
  """
  @spec update_invoice_unit(map(), update_invoice_unit_request(), list()) ::
          {:ok, update_invoice_unit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_invoice_unit_errors()}
  def update_invoice_unit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInvoiceUnit", input, options)
  end
end
