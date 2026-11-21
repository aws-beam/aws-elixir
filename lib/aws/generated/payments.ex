# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Payments do
  @moduledoc """
  Amazon Web Services Payments manages how money moves between you and Amazon Web
  Services.

  It holds the payment instruments you use to pay Amazon Web Services and to
  receive money from Amazon Web Services, such as cards and bank accounts. It
  collects payment for your Amazon Web Services invoices, applies your payments
  and credit memos to them, and returns refunds.

  A payment instrument is a channel that moves money between you and Amazon Web
  Services, and its payment method is the kind of instrument, such as a card or a
  bank account. A financial record is an invoice or credit memo. It shows how much
  of its amount is outstanding, processing, settled, and canceled as Amazon Web
  Services applies payments and credits.

  With the Amazon Web Services Payments API, you can read your financial records
  and account balances, and read your payment instruments and their status.

  The Amazon Web Services Payments API provides the following endpoint:

  `https://payments.us-east-1.api.aws`
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_balance() :: %{
        "amount" => currency_amount(),
        "merchantOfRecord" => String.t() | atom()
      }
      
  """
  @type account_balance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      balances() :: %{
        "canceled" => currency_amount(),
        "outstanding" => currency_amount(),
        "processing" => currency_amount(),
        "settled" => currency_amount()
      }
      
  """
  @type balances() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_financial_record_request() :: %{
        required("keys") => list(list())
      }
      
  """
  @type batch_get_financial_record_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_financial_record_response() :: %{
        "errors" => list(financial_record_error()),
        "financialRecords" => list(financial_record())
      }
      
  """
  @type batch_get_financial_record_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_period() :: %{
        "endDate" => [non_neg_integer()],
        "startDate" => [non_neg_integer()]
      }
      
  """
  @type billing_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      business_unit() :: %{
        "lineOfBusiness" => list(any()),
        "merchantOfRecord" => String.t() | atom()
      }
      
  """
  @type business_unit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      card() :: %{
        "brand" => list(any()),
        "cardType" => list(any()),
        "expirationMonth" => integer(),
        "expirationYear" => integer(),
        "issuerCountry" => String.t() | atom(),
        "issuingBank" => String.t() | atom(),
        "last4" => String.t() | atom()
      }
      
  """
  @type card() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cn_bank_redirect() :: %{
        "bankCode" => String.t() | atom()
      }
      
  """
  @type cn_bank_redirect() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      credit_memo_details() :: %{
        "billingPeriod" => billing_period(),
        "invoiceId" => String.t() | atom()
      }
      
  """
  @type credit_memo_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      currency_amount() :: %{
        "currency" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type currency_amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      financial_record() :: %{
        "amount" => currency_amount(),
        "balances" => balances(),
        "businessUnit" => business_unit(),
        "closedAt" => [non_neg_integer()],
        "details" => list(),
        "id" => String.t() | atom(),
        "issuedAt" => [non_neg_integer()],
        "settlementStatus" => list(any()),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type financial_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      financial_record_error() :: %{
        "code" => list(any()),
        "key" => list(),
        "message" => [String.t() | atom()]
      }
      
  """
  @type financial_record_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      financial_record_summary() :: %{
        "amount" => currency_amount(),
        "balances" => balances(),
        "businessUnit" => business_unit(),
        "closedAt" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "issuedAt" => [non_neg_integer()],
        "settlementStatus" => list(any()),
        "status" => list(any()),
        "type" => list(any())
      }
      
  """
  @type financial_record_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_account_balance_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("balanceType") => list(any())
      }
      
  """
  @type get_account_balance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_account_balance_response() :: %{
        "accountBalances" => list(account_balance()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_account_balance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_financial_record_request() :: %{
        optional("identifier") => String.t() | atom(),
        optional("invoiceIdentifier") => String.t() | atom()
      }
      
  """
  @type get_financial_record_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_financial_record_response() :: %{
        "financialRecord" => financial_record()
      }
      
  """
  @type get_financial_record_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_payment_instrument_request() :: %{
        required("identifier") => String.t() | atom()
      }
      
  """
  @type get_payment_instrument_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_payment_instrument_response() :: %{
        "paymentInstrument" => payment_instrument()
      }
      
  """
  @type get_payment_instrument_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      in_net_banking() :: %{
        "bankCode" => String.t() | atom(),
        "bankName" => String.t() | atom()
      }
      
  """
  @type in_net_banking() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invoice_details() :: %{
        "billingPeriod" => billing_period(),
        "dueDate" => [non_neg_integer()],
        "dueStatus" => list(any()),
        "invoiceFrequency" => list(any()),
        "invoiceId" => String.t() | atom(),
        "paymentTerms" => String.t() | atom()
      }
      
  """
  @type invoice_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_financial_records_request() :: %{
        optional("issuedAfter") => [non_neg_integer()],
        optional("issuedBefore") => [non_neg_integer()],
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("settlementStatuses") => list(list(any())()),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("types") => list(list(any())())
      }
      
  """
  @type list_financial_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_financial_records_response() :: %{
        "financialRecordSummaries" => list(financial_record_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_financial_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_payment_instruments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_payment_instruments_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_payment_instruments_response() :: %{
        "nextToken" => String.t() | atom(),
        "paymentInstrumentSummaries" => list(payment_instrument_summary())
      }
      
  """
  @type list_payment_instruments_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      payment_instrument() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "details" => list(),
        "paymentMethod" => list(any()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type payment_instrument() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      payment_instrument_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "paymentMethod" => list(any()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type payment_instrument_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sepa_bank_account() :: %{
        "accountHolderName" => String.t() | atom(),
        "accountNumberTail" => String.t() | atom(),
        "accountType" => list(any()),
        "bankName" => String.t() | atom()
      }
      
  """
  @type sepa_bank_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      uk_bacs_bank_account() :: %{
        "accountHolderName" => String.t() | atom(),
        "accountNumberTail" => String.t() | atom(),
        "accountType" => list(any()),
        "bankName" => String.t() | atom()
      }
      
  """
  @type uk_bacs_bank_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upi() :: %{
        "appName" => String.t() | atom()
      }
      
  """
  @type upi() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      us_ach_bank_account() :: %{
        "accountHolderName" => String.t() | atom(),
        "accountNumberTail" => String.t() | atom(),
        "accountType" => list(any()),
        "bankName" => String.t() | atom()
      }
      
  """
  @type us_ach_bank_account() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => String.t() | atom()
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type batch_get_financial_record_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_account_balance_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_financial_record_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_payment_instrument_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_financial_records_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_payment_instruments_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-09-23",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "payments",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Payments",
      signature_version: "v4",
      signing_name: "payments",
      target_prefix: "AWSPayments"
    }
  end

  @doc """
  Retrieves up to 100 financial records in one request, including the details that
  are specific to each record's type.

  Identify each record by its ID or by its invoice ID. Results can be partial:
  each key that you request appears once in the response, either as a record in
  `financialRecords` or as an error in `errors`. A key that matches no record on
  your account is returned in `errors` and doesn't fail the request. This
  operation provides strongly consistent reads.

  To use this operation, you must have Amazon Web Services Identity and Access
  Management (IAM) permission for both `payments:BatchGetFinancialRecord` and
  `payments:GetPaymentStatus`.
  """
  @spec batch_get_financial_record(map(), batch_get_financial_record_request(), list()) ::
          {:ok, batch_get_financial_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_financial_record_errors()}
  def batch_get_financial_record(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetFinancialRecord", input, options)
  end

  @doc """
  Retrieves one balance of your account, selected by balance type, as one amount
  for each merchant of record and currency.

  Each amount is the sum of the outstanding balances of your invoices or credit
  memos that have the status `OUTSTANDING`. Amounts are never added together
  across merchants of record or currencies. This operation is eventually
  consistent. Results are paginated. Use `nextToken` to retrieve more results.

  To use this operation, you must have Amazon Web Services Identity and Access
  Management (IAM) permission for both `payments:GetAccountBalance` and
  `payments:GetPaymentStatus`.
  """
  @spec get_account_balance(map(), get_account_balance_request(), list()) ::
          {:ok, get_account_balance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_balance_errors()}
  def get_account_balance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccountBalance", input, options)
  end

  @doc """
  Retrieves a single financial record, including the details that are specific to
  its type.

  Specify exactly one of the following:

    * The ID that Amazon Web Services Payments issued for the record, in
  `identifier`.

    * The invoice ID that Amazon Web Services Invoicing issued for an
  invoice or a credit memo, in `invoiceIdentifier`.

  If you specify both or neither, the request fails with `ValidationException`. If
  no record on your account matches, the request fails with
  `ResourceNotFoundException`.

  This operation provides strongly consistent reads.

  To use this operation, you must have Amazon Web Services Identity and Access
  Management (IAM) permission for both `payments:GetFinancialRecord` and
  `payments:GetPaymentStatus`.
  """
  @spec get_financial_record(map(), get_financial_record_request(), list()) ::
          {:ok, get_financial_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_financial_record_errors()}
  def get_financial_record(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFinancialRecord", input, options)
  end

  @doc """
  Retrieves a payment instrument on your account, including the details that are
  specific to its payment method, such as a card's last four digits.

  Identify the instrument by its Amazon Resource Name (ARN) or by its ID.
  `ListPaymentInstruments` returns both.

  To use this operation, you must have Amazon Web Services Identity and Access
  Management (IAM) permission for `payments:GetPaymentInstrument`. You can scope
  this permission to the instrument's ARN.
  """
  @spec get_payment_instrument(map(), get_payment_instrument_request(), list()) ::
          {:ok, get_payment_instrument_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_payment_instrument_errors()}
  def get_payment_instrument(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPaymentInstrument", input, options)
  end

  @doc """
  Lists the financial records on your account, with the newest first by default.

  A financial record is an invoice or a credit memo. You must specify at least one
  record type in `types`. You can narrow the results further by settlement status
  and issue date. This operation returns summaries. To get the details that are
  specific to a record's type, use `GetFinancialRecord` or
  `BatchGetFinancialRecord`. Results are paginated. Use `nextToken` to retrieve
  more results.

  To use this operation, you must have Amazon Web Services Identity and Access
  Management (IAM) permission for both `payments:ListFinancialRecords` and
  `payments:GetPaymentStatus`.
  """
  @spec list_financial_records(map(), list_financial_records_request(), list()) ::
          {:ok, list_financial_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_financial_records_errors()}
  def list_financial_records(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFinancialRecords", input, options)
  end

  @doc """
  Lists the payment instruments on your account.

  This operation returns summaries. To get the details that are specific to an
  instrument's payment method, use `GetPaymentInstrument`. Results are paginated.
  Use `nextToken` to retrieve more results.

  To use this operation, you must have Amazon Web Services Identity and Access
  Management (IAM) permission for `payments:ListPaymentInstruments`.
  """
  @spec list_payment_instruments(map(), list_payment_instruments_request(), list()) ::
          {:ok, list_payment_instruments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_payment_instruments_errors()}
  def list_payment_instruments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPaymentInstruments", input, options)
  end
end
