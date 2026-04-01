# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceAgreement do
  @moduledoc """
  AWS Marketplace is a curated digital catalog that customers can use to find,
  buy, deploy, and manage third-party software, data, and services to build
  solutions and run their businesses.

  The AWS Marketplace Agreement Service provides an API interface that helps AWS
  Marketplace sellers manage their product-related agreements, including listing,
  searching, and filtering agreements.

  To manage agreements in AWS Marketplace, you must ensure that your AWS Identity
  and Access Management (IAM) policies and roles are set up. The user must have
  the required policies/permissions that allow them to carry out the actions in
  AWS:

    * `DescribeAgreement` – Grants permission to users to obtain
  detailed meta data about any of their agreements.

    * `GetAgreementTerms` – Grants permission to users to obtain details
  about the terms of an agreement.

    * `SearchAgreements` – Grants permission to users to search through
  all their agreements.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      batch_create_billing_adjustment_error() :: %{
        "clientToken" => String.t() | atom(),
        "code" => list(any()),
        "message" => [String.t() | atom()]
      }
      
  """
  @type batch_create_billing_adjustment_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      pricing_currency_amount() :: %{
        "amount" => String.t() | atom(),
        "currencyCode" => String.t() | atom(),
        "maxAdjustmentAmount" => String.t() | atom()
      }
      
  """
  @type pricing_currency_amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      agreement_invoice_line_item_group_summary() :: %{
        "agreementId" => String.t() | atom(),
        "invoiceBillingPeriod" => invoice_billing_period(),
        "invoiceId" => String.t() | atom(),
        "invoiceType" => list(any()),
        "invoicingEntity" => invoicing_entity(),
        "issuedTime" => non_neg_integer(),
        "pricingCurrencyAmount" => pricing_currency_amount()
      }
      
  """
  @type agreement_invoice_line_item_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      renewal_term_configuration() :: %{
        "enableAutoRenew" => boolean()
      }
      
  """
  @type renewal_term_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_billing_adjustment_requests_input() :: %{
        optional("agreementId") => String.t() | atom(),
        optional("agreementType") => String.t() | atom(),
        optional("catalog") => String.t() | atom(),
        optional("createdAfter") => non_neg_integer(),
        optional("createdBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }
      
  """
  @type list_billing_adjustment_requests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agreement_payment_requests_input() :: %{
        optional("agreementId") => String.t() | atom(),
        optional("agreementType") => String.t() | atom(),
        optional("catalog") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any()),
        required("partyType") => String.t() | atom()
      }
      
  """
  @type list_agreement_payment_requests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_agreement_payment_request_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("agreementId") => String.t() | atom(),
        required("chargeAmount") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("termId") => String.t() | atom()
      }
      
  """
  @type send_agreement_payment_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_agreement_terms_output() :: %{
        "acceptedTerms" => list(list()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_agreement_terms_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_agreement_cancellation_request_output() :: %{
        "agreementCancellationRequestId" => String.t() | atom(),
        "agreementId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "reasonCode" => list(any()),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type get_agreement_cancellation_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_create_billing_adjustment_request_input() :: %{
        required("billingAdjustmentRequestEntries") => list(batch_create_billing_adjustment_request_entry())
      }
      
  """
  @type batch_create_billing_adjustment_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      estimated_charges() :: %{
        "agreementValue" => String.t() | atom(),
        "currencyCode" => String.t() | atom()
      }
      
  """
  @type estimated_charges() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configurable_upfront_pricing_term_configuration() :: %{
        "dimensions" => list(dimension()),
        "selectorValue" => String.t() | atom()
      }
      
  """
  @type configurable_upfront_pricing_term_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      selector() :: %{
        "type" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type selector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_billing_adjustment_request_output() :: %{
        "adjustmentAmount" => String.t() | atom(),
        "adjustmentReasonCode" => list(any()),
        "agreementId" => String.t() | atom(),
        "billingAdjustmentRequestId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "currencyCode" => String.t() | atom(),
        "description" => [String.t() | atom()],
        "originalInvoiceId" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type get_billing_adjustment_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      support_term() :: %{
        "refundPolicy" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type support_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      renewal_term() :: %{
        "configuration" => renewal_term_configuration(),
        "type" => String.t() | atom()
      }
      
  """
  @type renewal_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_agreement_payment_request_output() :: %{
        "agreementId" => String.t() | atom(),
        "chargeAmount" => String.t() | atom(),
        "chargeId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "currencyCode" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "paymentRequestId" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type get_agreement_payment_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      acceptor() :: %{
        "accountId" => String.t() | atom()
      }
      
  """
  @type acceptor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invoicing_entity() :: %{
        "branchName" => String.t() | atom(),
        "legalName" => String.t() | atom()
      }
      
  """
  @type invoicing_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_agreement_payment_request_input() :: %{
        required("agreementId") => String.t() | atom(),
        required("paymentRequestId") => String.t() | atom()
      }
      
  """
  @type cancel_agreement_payment_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_item() :: %{
        "type" => String.t() | atom(),
        "url" => String.t() | atom(),
        "version" => String.t() | atom()
      }
      
  """
  @type document_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      agreement_cancellation_request_summary() :: %{
        "agreementCancellationRequestId" => String.t() | atom(),
        "agreementId" => String.t() | atom(),
        "agreementType" => String.t() | atom(),
        "catalog" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "reasonCode" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type agreement_cancellation_request_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_agreement_payment_request_output() :: %{
        "agreementId" => String.t() | atom(),
        "chargeAmount" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "currencyCode" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "paymentRequestId" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type send_agreement_payment_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      agreement_view_summary() :: %{
        "acceptanceTime" => non_neg_integer(),
        "acceptor" => acceptor(),
        "agreementId" => String.t() | atom(),
        "agreementType" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "proposalSummary" => proposal_summary(),
        "proposer" => proposer(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type agreement_view_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_agreement_cancellation_request_output() :: %{
        "agreementCancellationRequestId" => String.t() | atom(),
        "agreementId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "reasonCode" => list(any()),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type cancel_agreement_cancellation_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => list(any())
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_agreement_output() :: %{
        "acceptanceTime" => non_neg_integer(),
        "acceptor" => acceptor(),
        "agreementId" => String.t() | atom(),
        "agreementType" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "estimatedCharges" => estimated_charges(),
        "proposalSummary" => proposal_summary(),
        "proposer" => proposer(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type describe_agreement_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      usage_based_pricing_term() :: %{
        "currencyCode" => String.t() | atom(),
        "rateCards" => list(usage_based_rate_card_item()),
        "type" => String.t() | atom()
      }
      
  """
  @type usage_based_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agreement_payment_requests_output() :: %{
        "items" => list(payment_request_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_agreement_payment_requests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      byol_pricing_term() :: %{
        "type" => String.t() | atom()
      }
      
  """
  @type byol_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recurring_payment_term() :: %{
        "billingPeriod" => String.t() | atom(),
        "currencyCode" => String.t() | atom(),
        "price" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type recurring_payment_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      proposer() :: %{
        "accountId" => String.t() | atom()
      }
      
  """
  @type proposer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_billing_adjustment_request_input() :: %{
        required("agreementId") => String.t() | atom(),
        required("billingAdjustmentRequestId") => String.t() | atom()
      }
      
  """
  @type get_billing_adjustment_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_agreement_cancellation_request_input() :: %{
        required("agreementCancellationRequestId") => String.t() | atom(),
        required("agreementId") => String.t() | atom()
      }
      
  """
  @type get_agreement_cancellation_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      grant_item() :: %{
        "dimensionKey" => String.t() | atom(),
        "maxQuantity" => integer()
      }
      
  """
  @type grant_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_create_billing_adjustment_request_entry() :: %{
        "adjustmentAmount" => String.t() | atom(),
        "adjustmentReasonCode" => list(any()),
        "agreementId" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "currencyCode" => String.t() | atom(),
        "description" => String.t() | atom(),
        "originalInvoiceId" => String.t() | atom()
      }
      
  """
  @type batch_create_billing_adjustment_request_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      legal_term() :: %{
        "documents" => list(document_item()),
        "type" => String.t() | atom()
      }
      
  """
  @type legal_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_create_billing_adjustment_item() :: %{
        "billingAdjustmentRequestId" => String.t() | atom(),
        "clientToken" => String.t() | atom()
      }
      
  """
  @type batch_create_billing_adjustment_item() :: %{(String.t() | atom()) => any()}

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
      
      batch_create_billing_adjustment_request_output() :: %{
        "errors" => list(batch_create_billing_adjustment_error()),
        "items" => list(batch_create_billing_adjustment_item())
      }
      
  """
  @type batch_create_billing_adjustment_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      payment_schedule_term() :: %{
        "currencyCode" => String.t() | atom(),
        "schedule" => list(schedule_item()),
        "type" => String.t() | atom()
      }
      
  """
  @type payment_schedule_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      usage_based_rate_card_item() :: %{
        "rateCard" => list(rate_card_item())
      }
      
  """
  @type usage_based_rate_card_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_agreement_terms_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("agreementId") => String.t() | atom()
      }
      
  """
  @type get_agreement_terms_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "name" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agreement_invoice_line_items_output() :: %{
        "agreementInvoiceLineItemGroupSummaries" => list(agreement_invoice_line_item_group_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_agreement_invoice_line_items_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sort() :: %{
        "sortBy" => String.t() | atom(),
        "sortOrder" => list(any())
      }
      
  """
  @type sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_agreement_input() :: %{
        required("agreementId") => String.t() | atom()
      }
      
  """
  @type describe_agreement_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_agreements_output() :: %{
        "agreementViewSummaries" => list(agreement_view_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type search_agreements_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      fixed_upfront_pricing_term() :: %{
        "currencyCode" => String.t() | atom(),
        "duration" => String.t() | atom(),
        "grants" => list(grant_item()),
        "price" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type fixed_upfront_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_adjustment_summary() :: %{
        "adjustmentAmount" => String.t() | atom(),
        "agreementId" => String.t() | atom(),
        "agreementType" => String.t() | atom(),
        "billingAdjustmentRequestId" => String.t() | atom(),
        "catalog" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "currencyCode" => String.t() | atom(),
        "originalInvoiceId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type billing_adjustment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_agreements_input() :: %{
        optional("catalog") => String.t() | atom(),
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sort") => sort()
      }
      
  """
  @type search_agreements_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      payment_request_summary() :: %{
        "agreementId" => String.t() | atom(),
        "chargeAmount" => String.t() | atom(),
        "chargeId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "currencyCode" => String.t() | atom(),
        "name" => String.t() | atom(),
        "paymentRequestId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type payment_request_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_agreement_cancellation_request_output() :: %{
        "agreementCancellationRequestId" => String.t() | atom(),
        "agreementId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "reasonCode" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type send_agreement_cancellation_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_agreement_cancellation_request_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        required("agreementId") => String.t() | atom(),
        required("reasonCode") => list(any())
      }
      
  """
  @type send_agreement_cancellation_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      constraints() :: %{
        "multipleDimensionSelection" => String.t() | atom(),
        "quantityConfiguration" => String.t() | atom()
      }
      
  """
  @type constraints() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agreement_cancellation_requests_output() :: %{
        "items" => list(agreement_cancellation_request_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_agreement_cancellation_requests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configurable_upfront_rate_card_item() :: %{
        "constraints" => constraints(),
        "rateCard" => list(rate_card_item()),
        "selector" => selector()
      }
      
  """
  @type configurable_upfront_rate_card_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      variable_payment_term() :: %{
        "configuration" => variable_payment_term_configuration(),
        "currencyCode" => String.t() | atom(),
        "maxTotalChargeAmount" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type variable_payment_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      schedule_item() :: %{
        "chargeAmount" => String.t() | atom(),
        "chargeDate" => non_neg_integer()
      }
      
  """
  @type schedule_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fields" => list(validation_exception_field()),
        "message" => String.t() | atom(),
        "reason" => list(any()),
        "requestId" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      proposal_summary() :: %{
        "offerId" => String.t() | atom(),
        "offerSetId" => String.t() | atom(),
        "resources" => list(resource())
      }
      
  """
  @type proposal_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_billing_adjustment_requests_output() :: %{
        "items" => list(billing_adjustment_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_billing_adjustment_requests_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_agreement_payment_request_input() :: %{
        required("agreementId") => String.t() | atom(),
        required("paymentRequestId") => String.t() | atom()
      }
      
  """
  @type get_agreement_payment_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      free_trial_pricing_term() :: %{
        "duration" => String.t() | atom(),
        "grants" => list(grant_item()),
        "type" => String.t() | atom()
      }
      
  """
  @type free_trial_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension() :: %{
        "dimensionKey" => String.t() | atom(),
        "dimensionValue" => integer()
      }
      
  """
  @type dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validity_term() :: %{
        "agreementDuration" => String.t() | atom(),
        "agreementEndDate" => non_neg_integer(),
        "agreementStartDate" => non_neg_integer(),
        "type" => String.t() | atom()
      }
      
  """
  @type validity_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agreement_invoice_line_items_input() :: %{
        optional("afterIssuedTime") => non_neg_integer(),
        optional("beforeIssuedTime") => non_neg_integer(),
        optional("invoiceBillingPeriod") => invoice_billing_period(),
        optional("invoiceId") => String.t() | atom(),
        optional("invoiceType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("agreementId") => String.t() | atom(),
        required("groupBy") => list(any())
      }
      
  """
  @type list_agreement_invoice_line_items_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_agreement_cancellation_request_input() :: %{
        required("agreementCancellationRequestId") => String.t() | atom(),
        required("agreementId") => String.t() | atom(),
        required("cancellationReason") => String.t() | atom()
      }
      
  """
  @type cancel_agreement_cancellation_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invoice_billing_period() :: %{
        "month" => [integer()],
        "year" => [integer()]
      }
      
  """
  @type invoice_billing_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rate_card_item() :: %{
        "dimensionKey" => String.t() | atom(),
        "price" => String.t() | atom()
      }
      
  """
  @type rate_card_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agreement_cancellation_requests_input() :: %{
        optional("agreementId") => String.t() | atom(),
        optional("agreementType") => String.t() | atom(),
        optional("catalog") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any()),
        required("partyType") => String.t() | atom()
      }
      
  """
  @type list_agreement_cancellation_requests_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_agreement_payment_request_output() :: %{
        "agreementId" => String.t() | atom(),
        "chargeAmount" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "currencyCode" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "paymentRequestId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type cancel_agreement_payment_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      variable_payment_term_configuration() :: %{
        "expirationDuration" => String.t() | atom(),
        "paymentRequestApprovalStrategy" => list(any())
      }
      
  """
  @type variable_payment_term_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configurable_upfront_pricing_term() :: %{
        "configuration" => configurable_upfront_pricing_term_configuration(),
        "currencyCode" => String.t() | atom(),
        "rateCards" => list(configurable_upfront_rate_card_item()),
        "type" => String.t() | atom()
      }
      
  """
  @type configurable_upfront_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "id" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @type batch_create_billing_adjustment_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type cancel_agreement_cancellation_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_agreement_payment_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_agreement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_agreement_cancellation_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_agreement_payment_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_agreement_terms_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_billing_adjustment_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_agreement_cancellation_requests_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_agreement_invoice_line_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_agreement_payment_requests_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_billing_adjustment_requests_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_agreements_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type send_agreement_cancellation_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type send_agreement_payment_request_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-03-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "agreement-marketplace",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Marketplace Agreement",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: "AWSMPCommerceService_v20200301"
    }
  end

  @doc """
  Allows sellers (proposers) to submit billing adjustment requests for one or more
  invoices within an agreement.

  Each entry in the batch specifies an invoice and the adjustment amount. The
  operation returns successfully created adjustment request IDs and any errors for
  entries that failed validation.

  Each entry requires a unique `clientToken` for idempotency. A
  `ValidationException` is returned if the adjustment amount exceeds the maximum
  refundable amount for the invoice.
  """
  @spec batch_create_billing_adjustment_request(
          map(),
          batch_create_billing_adjustment_request_input(),
          list()
        ) ::
          {:ok, batch_create_billing_adjustment_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_create_billing_adjustment_request_errors()}
  def batch_create_billing_adjustment_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchCreateBillingAdjustmentRequest", input, options)
  end

  @doc """
  Allows sellers (proposers) to withdraw an existing agreement cancellation
  request that is in a pending state.

  Once cancelled, the cancellation request transitions to `CANCELLED` status and
  can no longer be approved or rejected by the buyer.

  Only cancellation requests in `PENDING_APPROVAL` status can be cancelled. A
  `ConflictException` is thrown if the cancellation request is in any other
  status.
  """
  @spec cancel_agreement_cancellation_request(
          map(),
          cancel_agreement_cancellation_request_input(),
          list()
        ) ::
          {:ok, cancel_agreement_cancellation_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_agreement_cancellation_request_errors()}
  def cancel_agreement_cancellation_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelAgreementCancellationRequest", input, options)
  end

  @doc """
  Allows sellers (proposers) to cancel a payment request that is in
  `PENDING_APPROVAL` status.

  Once cancelled, the payment request transitions to `CANCELLED` status and can no
  longer be accepted or rejected by the buyer.

  Only payment requests in `PENDING_APPROVAL` status can be cancelled. A
  `ConflictException` is thrown if the payment request is in any other status.
  """
  @spec cancel_agreement_payment_request(map(), cancel_agreement_payment_request_input(), list()) ::
          {:ok, cancel_agreement_payment_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_agreement_payment_request_errors()}
  def cancel_agreement_payment_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelAgreementPaymentRequest", input, options)
  end

  @doc """
  Provides details about an agreement, such as the proposer, acceptor, start date,
  and end date.
  """
  @spec describe_agreement(map(), describe_agreement_input(), list()) ::
          {:ok, describe_agreement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_agreement_errors()}
  def describe_agreement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAgreement", input, options)
  end

  @doc """
  Retrieves detailed information about a specific agreement cancellation request.

  Both sellers (proposers) and buyers (acceptors) can use this operation to view
  cancellation requests associated with their agreements.

  The calling identity must be either the acceptor or proposer of the agreement. A
  `ResourceNotFoundException` is returned if the cancellation request does not
  exist.
  """
  @spec get_agreement_cancellation_request(
          map(),
          get_agreement_cancellation_request_input(),
          list()
        ) ::
          {:ok, get_agreement_cancellation_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agreement_cancellation_request_errors()}
  def get_agreement_cancellation_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAgreementCancellationRequest", input, options)
  end

  @doc """
  Retrieves detailed information about a specific payment request.

  Both sellers (proposers) and buyers (acceptors) can use this operation to view
  payment requests associated with their agreements. The response includes the
  current status, charge details, timestamps, and the charge ID if the request has
  been approved.

  The calling identity must be either the acceptor or proposer of the payment
  request. A `ResourceNotFoundException` is returned if the payment request does
  not exist.
  """
  @spec get_agreement_payment_request(map(), get_agreement_payment_request_input(), list()) ::
          {:ok, get_agreement_payment_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agreement_payment_request_errors()}
  def get_agreement_payment_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAgreementPaymentRequest", input, options)
  end

  @doc """
  Obtains details about the terms in an agreement that you participated in as
  proposer or acceptor.

  The details include:

    * `TermType` – The type of term, such as `LegalTerm`, `RenewalTerm`,
  or `ConfigurableUpfrontPricingTerm`.

    * `TermID` – The ID of the particular term, which is common between
  offer and agreement.

    * `TermPayload` – The key information contained in the term, such as
  the EULA for `LegalTerm` or pricing and dimensions for various pricing terms,
  such as `ConfigurableUpfrontPricingTerm` or `UsageBasedPricingTerm`.

    * `Configuration` – The buyer/acceptor's selection at the time of
  agreement creation, such as the number of units purchased for a dimension or
  setting the `EnableAutoRenew` flag.
  """
  @spec get_agreement_terms(map(), get_agreement_terms_input(), list()) ::
          {:ok, get_agreement_terms_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agreement_terms_errors()}
  def get_agreement_terms(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAgreementTerms", input, options)
  end

  @doc """
  Retrieves detailed information about a specific billing adjustment request.

  Sellers (proposers) can use this operation to view the status and details of a
  billing adjustment request they submitted.

  A `ResourceNotFoundException` is returned if the billing adjustment request does
  not exist or the caller does not have permission to access it.
  """
  @spec get_billing_adjustment_request(map(), get_billing_adjustment_request_input(), list()) ::
          {:ok, get_billing_adjustment_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_billing_adjustment_request_errors()}
  def get_billing_adjustment_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBillingAdjustmentRequest", input, options)
  end

  @doc """
  Lists agreement cancellation requests available to you as a seller or buyer.

  Both sellers (proposers) and buyers (acceptors) can use this operation to find
  cancellation requests by specifying their party type and applying optional
  filters.

  `PartyType` is a required parameter. A `ValidationException` is returned if
  `PartyType` is not provided. Pagination is supported through `maxResults` (1-50,
  default 20) and `nextToken` parameters.
  """
  @spec list_agreement_cancellation_requests(
          map(),
          list_agreement_cancellation_requests_input(),
          list()
        ) ::
          {:ok, list_agreement_cancellation_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agreement_cancellation_requests_errors()}
  def list_agreement_cancellation_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAgreementCancellationRequests", input, options)
  end

  @doc """
  Allows sellers (proposers) to retrieve aggregated billing data from AWS
  Marketplace agreements using flexible grouping.

  Supports invoice-level aggregation with filtering by billing period, invoice
  type, and issued date.

  The `groupBy` parameter is required and currently supports only `INVOICE_ID` as
  a value. The `agreementId` parameter is required.
  """
  @spec list_agreement_invoice_line_items(
          map(),
          list_agreement_invoice_line_items_input(),
          list()
        ) ::
          {:ok, list_agreement_invoice_line_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agreement_invoice_line_items_errors()}
  def list_agreement_invoice_line_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAgreementInvoiceLineItems", input, options)
  end

  @doc """
  Lists payment requests available to you as a seller or buyer.

  Both sellers (proposers) and buyers (acceptors) can use this operation to find
  payment requests by specifying their party type and applying optional
  parameters.

  `PartyType` is a required parameter. A `ValidationException` is returned if
  `PartyType` is not provided. Pagination is supported through `maxResults` (1-50,
  default 50) and `nextToken` parameters.
  """
  @spec list_agreement_payment_requests(map(), list_agreement_payment_requests_input(), list()) ::
          {:ok, list_agreement_payment_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agreement_payment_requests_errors()}
  def list_agreement_payment_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAgreementPaymentRequests", input, options)
  end

  @doc """
  Lists billing adjustment requests for a specific agreement.

  Sellers (proposers) can use this operation to view all billing adjustment
  requests associated with an agreement.

  Pagination is supported through `maxResults` and `nextToken` parameters.
  """
  @spec list_billing_adjustment_requests(map(), list_billing_adjustment_requests_input(), list()) ::
          {:ok, list_billing_adjustment_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_billing_adjustment_requests_errors()}
  def list_billing_adjustment_requests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillingAdjustmentRequests", input, options)
  end

  @doc """
  Searches across all agreements that a proposer has in AWS Marketplace.

  The search returns a list of agreements with basic agreement information.

  The following filter combinations are supported when the `PartyType` is
  `Proposer`:

    * `AgreementType`

    * `AgreementType` + `EndTime`

    * `AgreementType` + `ResourceType`

    * `AgreementType` + `ResourceType` + `EndTime`

    * `AgreementType` + `ResourceType` + `Status`

    * `AgreementType` + `ResourceType` + `Status` + `EndTime`

    * `AgreementType` + `ResourceId`

    * `AgreementType` + `ResourceId` + `EndTime`

    * `AgreementType` + `ResourceId` + `Status`

    * `AgreementType` + `ResourceId` + `Status` + `EndTime`

    * `AgreementType` + `AcceptorAccountId`

    * `AgreementType` + `AcceptorAccountId` + `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `Status`

    * `AgreementType` + `AcceptorAccountId` + `Status` + `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `OfferId`

    * `AgreementType` + `AcceptorAccountId` + `OfferId` + `Status`

    * `AgreementType` + `AcceptorAccountId` + `OfferId` + `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `OfferId` + `Status` +
  `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `ResourceId`

    * `AgreementType` + `AcceptorAccountId` + `ResourceId` + `Status`

    * `AgreementType` + `AcceptorAccountId` + `ResourceId` + `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `ResourceId` + `Status` +
  `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `ResourceType`

    * `AgreementType` + `AcceptorAccountId` + `ResourceType` + `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `ResourceType` + `Status`

    * `AgreementType` + `AcceptorAccountId` + `ResourceType` + `Status`
  + `EndTime`

    * `AgreementType` + `Status`

    * `AgreementType` + `Status` + `EndTime`

    * `AgreementType` + `OfferId`

    * `AgreementType` + `OfferId` + `EndTime`

    * `AgreementType` + `OfferId` + `Status`

    * `AgreementType` + `OfferId` + `Status` + `EndTime`

    * `AgreementType` + `OfferSetId`

    * `AgreementType` + `OfferSetId` + `EndTime`

    * `AgreementType` + `OfferSetId` + `Status`

    * `AgreementType` + `OfferSetId` + `Status` + `EndTime`

  To filter by `EndTime`, you can use either `BeforeEndTime` or `AfterEndTime`.
  Only `EndTime` is supported for sorting.
  """
  @spec search_agreements(map(), search_agreements_input(), list()) ::
          {:ok, search_agreements_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_agreements_errors()}
  def search_agreements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchAgreements", input, options)
  end

  @doc """
  Allows sellers (proposers) to submit a cancellation request for an active
  agreement.

  The cancellation request is created in `PENDING_APPROVAL` status, at which point
  the buyer can review it.
  """
  @spec send_agreement_cancellation_request(
          map(),
          send_agreement_cancellation_request_input(),
          list()
        ) ::
          {:ok, send_agreement_cancellation_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_agreement_cancellation_request_errors()}
  def send_agreement_cancellation_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendAgreementCancellationRequest", input, options)
  end

  @doc """
  Allows sellers (proposers) to submit a payment request to buyers (acceptors) for
  a specific charge amount for an agreement that includes a `VariablePaymentTerm`.

  The payment request is created in `PENDING_APPROVAL` status, at which point the
  buyer can accept or reject it.

  The agreement must be active and have a `VariablePaymentTerm` to support payment
  requests. The `chargeAmount` must not exceed the remaining available balance
  under the `VariablePaymentTerm` `maxTotalChargeAmount`.
  """
  @spec send_agreement_payment_request(map(), send_agreement_payment_request_input(), list()) ::
          {:ok, send_agreement_payment_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_agreement_payment_request_errors()}
  def send_agreement_payment_request(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendAgreementPaymentRequest", input, options)
  end
end
