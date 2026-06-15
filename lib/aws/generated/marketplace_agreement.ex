# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceAgreement do
  @moduledoc """
  AWS Marketplace is a curated digital catalog that customers can use to find,
  buy, deploy, and manage third-party software, data, and services to build
  solutions and run their businesses.

  The AWS Marketplace Agreement Service provides an API interface that helps AWS
  Marketplace sellers and buyers manage their product-related agreements,
  including listing, searching, creating, and filtering agreements.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      reject_agreement_cancellation_request_output() :: %{
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
  @type reject_agreement_cancellation_request_output() :: %{(String.t() | atom()) => any()}

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
      
      selector() :: %{
        "type" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type selector() :: %{(String.t() | atom()) => any()}

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
      
      configurable_upfront_rate_card_item() :: %{
        "constraints" => constraints(),
        "rateCard" => list(rate_card_item()),
        "selector" => selector()
      }
      
  """
  @type configurable_upfront_rate_card_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_agreement_output() :: %{}
      
  """
  @type cancel_agreement_output() :: %{}

  @typedoc """

  ## Example:
      
      usage_based_rate_card_item() :: %{
        "rateCard" => list(rate_card_item())
      }
      
  """
  @type usage_based_rate_card_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      legal_term() :: %{
        "documents" => list(document_item()),
        "id" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type legal_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recurring_payment_term() :: %{
        "billingPeriod" => String.t() | atom(),
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "price" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type recurring_payment_term() :: %{(String.t() | atom()) => any()}

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
      
      create_agreement_request_input() :: %{
        optional("agreementProposalIdentifier") => String.t() | atom(),
        optional("clientToken") => String.t() | atom(),
        optional("sourceAgreementIdentifier") => String.t() | atom(),
        optional("taxConfiguration") => tax_configuration(),
        required("intent") => list(any()),
        required("requestedTerms") => list(requested_term())
      }
      
  """
  @type create_agreement_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom(),
        "reason" => list(any()),
        "requestId" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

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
      
      cancel_agreement_payment_request_input() :: %{
        required("agreementId") => String.t() | atom(),
        required("paymentRequestId") => String.t() | atom()
      }
      
  """
  @type cancel_agreement_payment_request_input() :: %{(String.t() | atom()) => any()}

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
      
      variable_payment_term() :: %{
        "configuration" => variable_payment_term_configuration(),
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "maxTotalChargeAmount" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type variable_payment_term() :: %{(String.t() | atom()) => any()}

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
      
      get_billing_adjustment_request_input() :: %{
        required("agreementId") => String.t() | atom(),
        required("billingAdjustmentRequestId") => String.t() | atom()
      }
      
  """
  @type get_billing_adjustment_request_input() :: %{(String.t() | atom()) => any()}

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
      
      get_agreement_entitlements_output() :: %{
        "agreementEntitlements" => list(agreement_entitlement()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_agreement_entitlements_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_agreement_request_input() :: %{
        optional("purchaseOrders") => list(purchase_order()),
        required("agreementRequestId") => String.t() | atom()
      }
      
  """
  @type accept_agreement_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      free_trial_pricing_term() :: %{
        "duration" => String.t() | atom(),
        "grants" => list(grant_item()),
        "id" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type free_trial_pricing_term() :: %{(String.t() | atom()) => any()}

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
      
      entitlement() :: %{
        "licenseArn" => [String.t() | atom()]
      }
      
  """
  @type entitlement() :: %{(String.t() | atom()) => any()}

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
      
      get_agreement_cancellation_request_input() :: %{
        required("agreementCancellationRequestId") => String.t() | atom(),
        required("agreementId") => String.t() | atom()
      }
      
  """
  @type get_agreement_cancellation_request_input() :: %{(String.t() | atom()) => any()}

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
      
      cancel_agreement_cancellation_request_input() :: %{
        required("agreementCancellationRequestId") => String.t() | atom(),
        required("agreementId") => String.t() | atom(),
        required("cancellationReason") => String.t() | atom()
      }
      
  """
  @type cancel_agreement_cancellation_request_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      usage_based_pricing_term() :: %{
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "rateCards" => list(usage_based_rate_card_item()),
        "type" => String.t() | atom()
      }
      
  """
  @type usage_based_pricing_term() :: %{(String.t() | atom()) => any()}

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
      
      reject_agreement_payment_request_input() :: %{
        optional("rejectionReason") => String.t() | atom(),
        required("agreementId") => String.t() | atom(),
        required("paymentRequestId") => String.t() | atom()
      }
      
  """
  @type reject_agreement_payment_request_input() :: %{(String.t() | atom()) => any()}

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
      
      pricing_currency_amount() :: %{
        "amount" => String.t() | atom(),
        "currencyCode" => String.t() | atom(),
        "maxAdjustmentAmount" => String.t() | atom()
      }
      
  """
  @type pricing_currency_amount() :: %{(String.t() | atom()) => any()}

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
      
      tax_configuration() :: %{
        "taxEstimation" => list(any())
      }
      
  """
  @type tax_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_agreement_input() :: %{
        required("agreementId") => String.t() | atom()
      }
      
  """
  @type describe_agreement_input() :: %{(String.t() | atom()) => any()}

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
      
      reject_agreement_payment_request_output() :: %{
        "agreementId" => String.t() | atom(),
        "chargeAmount" => String.t() | atom(),
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
  @type reject_agreement_payment_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      configurable_upfront_pricing_term() :: %{
        "configuration" => configurable_upfront_pricing_term_configuration(),
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "rateCards" => list(configurable_upfront_rate_card_item()),
        "type" => String.t() | atom()
      }
      
  """
  @type configurable_upfront_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_agreement_payment_request_input() :: %{
        optional("purchaseOrderReference") => String.t() | atom(),
        required("agreementId") => String.t() | atom(),
        required("paymentRequestId") => String.t() | atom()
      }
      
  """
  @type accept_agreement_payment_request_input() :: %{(String.t() | atom()) => any()}

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
      
      accept_agreement_cancellation_request_output() :: %{
        "agreementCancellationRequestId" => String.t() | atom(),
        "agreementId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "reasonCode" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }
      
  """
  @type accept_agreement_cancellation_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_create_billing_adjustment_request_input() :: %{
        required("billingAdjustmentRequestEntries") => list(batch_create_billing_adjustment_request_entry())
      }
      
  """
  @type batch_create_billing_adjustment_request_input() :: %{(String.t() | atom()) => any()}

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
      
      reject_agreement_cancellation_request_input() :: %{
        required("agreementCancellationRequestId") => String.t() | atom(),
        required("agreementId") => String.t() | atom(),
        required("rejectionReason") => String.t() | atom()
      }
      
  """
  @type reject_agreement_cancellation_request_input() :: %{(String.t() | atom()) => any()}

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
      
      itemized_charge() :: %{
        "chargeReference" => String.t() | atom(),
        "dimensionKey" => String.t() | atom(),
        "incrementalChargeAmount" => String.t() | atom(),
        "newQuantity" => [integer()],
        "oldQuantity" => [integer()]
      }
      
  """
  @type itemized_charge() :: %{(String.t() | atom()) => any()}

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
      
      expected_charge() :: %{
        "amount" => String.t() | atom(),
        "amountAfterTax" => String.t() | atom(),
        "estimatedTaxes" => estimated_taxes(),
        "id" => String.t() | atom(),
        "time" => non_neg_integer(),
        "timing" => list(any())
      }
      
  """
  @type expected_charge() :: %{(String.t() | atom()) => any()}

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
      
      charge_summary() :: %{
        "currencyCode" => String.t() | atom(),
        "estimatedTaxes" => estimated_taxes(),
        "expectedCharges" => list(expected_charge()),
        "invoicingEntity" => invoicing_entity(),
        "itemizedCharges" => list(itemized_charge()),
        "newAgreementValue" => String.t() | atom(),
        "newAgreementValueAfterTax" => String.t() | atom()
      }
      
  """
  @type charge_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      acceptor() :: %{
        "accountId" => String.t() | atom()
      }
      
  """
  @type acceptor() :: %{(String.t() | atom()) => any()}

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
      
      proposer() :: %{
        "accountId" => String.t() | atom()
      }
      
  """
  @type proposer() :: %{(String.t() | atom()) => any()}

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
      
      list_agreement_cancellation_requests_output() :: %{
        "items" => list(agreement_cancellation_request_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_agreement_cancellation_requests_output() :: %{(String.t() | atom()) => any()}

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
      
      cancel_agreement_input() :: %{
        required("agreementId") => String.t() | atom()
      }
      
  """
  @type cancel_agreement_input() :: %{(String.t() | atom()) => any()}

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
      
      accept_agreement_request_output() :: %{
        "agreementId" => String.t() | atom()
      }
      
  """
  @type accept_agreement_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_purchase_orders_input() :: %{
        required("purchaseOrders") => list(purchase_order())
      }
      
  """
  @type update_purchase_orders_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      agreement_entitlement() :: %{
        "licenseArn" => String.t() | atom(),
        "registrationToken" => String.t() | atom(),
        "resource" => resource(),
        "status" => list(any()),
        "statusReasonCode" => list(any()),
        "type" => String.t() | atom()
      }
      
  """
  @type agreement_entitlement() :: %{(String.t() | atom()) => any()}

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
      
      estimated_taxes() :: %{
        "breakdown" => list(tax_breakdown_item()),
        "totalAmount" => String.t() | atom()
      }
      
  """
  @type estimated_taxes() :: %{(String.t() | atom()) => any()}

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
        "entitlements" => list(entitlement()),
        "proposalSummary" => proposal_summary(),
        "proposer" => proposer(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type agreement_view_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      byol_pricing_term() :: %{
        "id" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type byol_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validity_term() :: %{
        "agreementDuration" => String.t() | atom(),
        "agreementEndDate" => non_neg_integer(),
        "agreementStartDate" => non_neg_integer(),
        "id" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type validity_term() :: %{(String.t() | atom()) => any()}

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
      
      tax_breakdown_item() :: %{
        "amount" => String.t() | atom(),
        "rate" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type tax_breakdown_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      renewal_term_configuration() :: %{
        "enableAutoRenew" => boolean()
      }
      
  """
  @type renewal_term_configuration() :: %{(String.t() | atom()) => any()}

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
      
      fixed_upfront_pricing_term() :: %{
        "currencyCode" => String.t() | atom(),
        "duration" => String.t() | atom(),
        "grants" => list(grant_item()),
        "id" => String.t() | atom(),
        "price" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type fixed_upfront_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_agreement_entitlements_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("agreementId") => String.t() | atom()
      }
      
  """
  @type get_agreement_entitlements_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agreement_charges_input() :: %{
        optional("agreementId") => String.t() | atom(),
        optional("agreementType") => String.t() | atom(),
        optional("catalog") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_agreement_charges_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      charge() :: %{
        "agreementId" => String.t() | atom(),
        "agreementType" => String.t() | atom(),
        "amount" => String.t() | atom(),
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "purchaseOrderReference" => String.t() | atom(),
        "revision" => float(),
        "time" => non_neg_integer()
      }
      
  """
  @type charge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      renewal_term() :: %{
        "configuration" => renewal_term_configuration(),
        "id" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type renewal_term() :: %{(String.t() | atom()) => any()}

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
      
      dimension() :: %{
        "dimensionKey" => String.t() | atom(),
        "dimensionValue" => integer()
      }
      
  """
  @type dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      support_term() :: %{
        "id" => String.t() | atom(),
        "refundPolicy" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type support_term() :: %{(String.t() | atom()) => any()}

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
      
      update_purchase_orders_output() :: %{}
      
  """
  @type update_purchase_orders_output() :: %{}

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
      
      payment_schedule_term() :: %{
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "schedule" => list(schedule_item()),
        "type" => String.t() | atom()
      }
      
  """
  @type payment_schedule_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_agreement_payment_request_output() :: %{
        "agreementId" => String.t() | atom(),
        "chargeAmount" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "currencyCode" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "paymentRequestId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type accept_agreement_payment_request_output() :: %{(String.t() | atom()) => any()}

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
      
      resource() :: %{
        "id" => String.t() | atom(),
        "type" => String.t() | atom()
      }
      
  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_agreement_request_output() :: %{
        "agreementRequestId" => String.t() | atom(),
        "chargeSummary" => charge_summary()
      }
      
  """
  @type create_agreement_request_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      purchase_order() :: %{
        "agreementId" => String.t() | atom(),
        "chargeId" => String.t() | atom(),
        "chargeRevision" => float(),
        "purchaseOrderReference" => String.t() | atom()
      }
      
  """
  @type purchase_order() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_agreement_charges_output() :: %{
        "items" => list(charge()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_agreement_charges_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_agreement_cancellation_request_input() :: %{
        required("agreementCancellationRequestId") => String.t() | atom(),
        required("agreementId") => String.t() | atom()
      }
      
  """
  @type accept_agreement_cancellation_request_input() :: %{(String.t() | atom()) => any()}

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
      
      filter() :: %{
        "name" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type filter() :: %{(String.t() | atom()) => any()}

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
      
      get_agreement_terms_output() :: %{
        "acceptedTerms" => list(list()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_agreement_terms_output() :: %{(String.t() | atom()) => any()}

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
      
      requested_term() :: %{
        "configuration" => list(),
        "id" => String.t() | atom()
      }
      
  """
  @type requested_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "serviceCode" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_agreements_output() :: %{
        "agreementViewSummaries" => list(agreement_view_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type search_agreements_output() :: %{(String.t() | atom()) => any()}

  @type accept_agreement_cancellation_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type accept_agreement_payment_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type accept_agreement_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type batch_create_billing_adjustment_request_errors() ::
          conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type cancel_agreement_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type cancel_agreement_cancellation_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type cancel_agreement_payment_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_agreement_request_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type describe_agreement_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_agreement_cancellation_request_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_agreement_entitlements_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_agreement_payment_request_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_agreement_terms_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_billing_adjustment_request_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_agreement_cancellation_requests_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_agreement_charges_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_agreement_invoice_line_items_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_agreement_payment_requests_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_billing_adjustment_requests_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type reject_agreement_cancellation_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type reject_agreement_payment_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type search_agreements_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type send_agreement_cancellation_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type send_agreement_payment_request_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_purchase_orders_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

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
  Allows buyers (acceptors) to accept a cancellation request that is in
  `PENDING_APPROVAL` status.

  Once accepted, the cancellation request transitions to `APPROVED` status and the
  agreement cancellation will be processed.

  Only cancellation requests in `PENDING_APPROVAL` status can be accepted. A
  `ConflictException` is thrown if the cancellation request is in any other
  status.
  """
  @spec accept_agreement_cancellation_request(
          map(),
          accept_agreement_cancellation_request_input(),
          list()
        ) ::
          {:ok, accept_agreement_cancellation_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_agreement_cancellation_request_errors()}
  def accept_agreement_cancellation_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptAgreementCancellationRequest", input, options)
  end

  @doc """
  Allows buyers (acceptors) to accept a payment request that is in
  `PENDING_APPROVAL` status.

  Once accepted, the payment request transitions to `APPROVED` status and the
  charge will be processed. Buyers can optionally provide a purchase order
  reference for their internal tracking.

  Only payment requests in `PENDING_APPROVAL` status can be accepted. A
  `ConflictException` is thrown if the payment request is in any other status.
  """
  @spec accept_agreement_payment_request(map(), accept_agreement_payment_request_input(), list()) ::
          {:ok, accept_agreement_payment_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_agreement_payment_request_errors()}
  def accept_agreement_payment_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptAgreementPaymentRequest", input, options)
  end

  @doc """
  Accepts an agreement request to finalize the agreement.

  The acceptor can optionally provide purchase orders to associate with the
  agreement charges.
  """
  @spec accept_agreement_request(map(), accept_agreement_request_input(), list()) ::
          {:ok, accept_agreement_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_agreement_request_errors()}
  def accept_agreement_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AcceptAgreementRequest", input, options)
  end

  @doc """
  Allows sellers (proposers) to submit billing adjustment requests for one or more
  invoices within an agreement.

  Each entry in the batch specifies an invoice and the adjustment amount. The
  operation returns successfully created adjustment request IDs and any errors for
  entries that failed to process.

  Each entry requires a unique `clientToken` for idempotency.
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
    meta =
      metadata()

    Request.request_post(client, meta, "BatchCreateBillingAdjustmentRequest", input, options)
  end

  @doc """
  Allows an acceptor to cancel an active agreement.

  Not all agreements are eligible for cancellation. Use the error response to
  determine why a cancellation request was rejected.
  """
  @spec cancel_agreement(map(), cancel_agreement_input(), list()) ::
          {:ok, cancel_agreement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_agreement_errors()}
  def cancel_agreement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelAgreement", input, options)
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
    meta =
      metadata()

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
    meta =
      metadata()

    Request.request_post(client, meta, "CancelAgreementPaymentRequest", input, options)
  end

  @doc """
  Creates an agreement request that acts as a quote for the terms you want to
  accept.

  The agreement request captures the requested terms, calculates charges, and
  returns a summary. Use `AcceptAgreementRequest` with the returned
  `agreementRequestId` to finalize the agreement.
  """
  @spec create_agreement_request(map(), create_agreement_request_input(), list()) ::
          {:ok, create_agreement_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_agreement_request_errors()}
  def create_agreement_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAgreementRequest", input, options)
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
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeAgreement", input, options)
  end

  @doc """
  Retrieves detailed information about a specific agreement cancellation request.

  Both sellers (proposers) and buyers (acceptors) can use this operation to view
  cancellation requests associated with their agreements.
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
    meta =
      metadata()

    Request.request_post(client, meta, "GetAgreementCancellationRequest", input, options)
  end

  @doc """
  Obtains details about the entitlements of an agreement.
  """
  @spec get_agreement_entitlements(map(), get_agreement_entitlements_input(), list()) ::
          {:ok, get_agreement_entitlements_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_agreement_entitlements_errors()}
  def get_agreement_entitlements(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAgreementEntitlements", input, options)
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
    meta =
      metadata()

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
    meta =
      metadata()

    Request.request_post(client, meta, "GetAgreementTerms", input, options)
  end

  @doc """
  Retrieves detailed information about a specific billing adjustment request.

  Sellers (proposers) can use this operation to view the status and details of a
  billing adjustment request they submitted.
  """
  @spec get_billing_adjustment_request(map(), get_billing_adjustment_request_input(), list()) ::
          {:ok, get_billing_adjustment_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_billing_adjustment_request_errors()}
  def get_billing_adjustment_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBillingAdjustmentRequest", input, options)
  end

  @doc """
  Lists agreement cancellation requests available to you as a seller or buyer.

  Both sellers (proposers) and buyers (acceptors) can use this operation to find
  cancellation requests by specifying their party type and applying optional
  filters.

  `PartyType` is a required parameter. A `ValidationException` is returned if
  `PartyType` is not provided.
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
    meta =
      metadata()

    Request.request_post(client, meta, "ListAgreementCancellationRequests", input, options)
  end

  @doc """
  Allows acceptors to view charges and purchase orders that are associated with an
  agreement.

  The response includes details about all charges regardless of whether a purchase
  order is linked to each charge.
  """
  @spec list_agreement_charges(map(), list_agreement_charges_input(), list()) ::
          {:ok, list_agreement_charges_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agreement_charges_errors()}
  def list_agreement_charges(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAgreementCharges", input, options)
  end

  @doc """
  Allows sellers (proposers) to retrieve aggregated billing data from AWS
  Marketplace agreements using flexible grouping.

  Supports invoice-level aggregation with filtering by billing period, invoice
  type, and issued date.

  The `groupBy` parameter is required and supports only `INVOICE_ID` as a value.
  The `agreementId` parameter is required.
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
    meta =
      metadata()

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
    meta =
      metadata()

    Request.request_post(client, meta, "ListAgreementPaymentRequests", input, options)
  end

  @doc """
  Lists billing adjustment requests for a specific agreement.

  Sellers (proposers) can use this operation to view all billing adjustment
  requests associated with an agreement.
  """
  @spec list_billing_adjustment_requests(map(), list_billing_adjustment_requests_input(), list()) ::
          {:ok, list_billing_adjustment_requests_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_billing_adjustment_requests_errors()}
  def list_billing_adjustment_requests(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBillingAdjustmentRequests", input, options)
  end

  @doc """
  Allows buyers (acceptors) to reject a cancellation request that is in
  `PENDING_APPROVAL` status.

  Once rejected, the cancellation request transitions to `REJECTED` status and the
  agreement remains active. Buyers must provide a reason for the rejection.

  Only cancellation requests in `PENDING_APPROVAL` status can be rejected. A
  `ConflictException` is thrown if the cancellation request is in any other
  status.
  """
  @spec reject_agreement_cancellation_request(
          map(),
          reject_agreement_cancellation_request_input(),
          list()
        ) ::
          {:ok, reject_agreement_cancellation_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_agreement_cancellation_request_errors()}
  def reject_agreement_cancellation_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RejectAgreementCancellationRequest", input, options)
  end

  @doc """
  Allows buyers (acceptors) to reject a payment request that is in
  `PENDING_APPROVAL` status.

  Once rejected, the payment request transitions to `REJECTED` status and cannot
  be accepted. Buyers can optionally provide a reason for the rejection.

  Only payment requests in `PENDING_APPROVAL` status can be rejected. A
  `ConflictException` is thrown if the payment request is in any other status.
  """
  @spec reject_agreement_payment_request(map(), reject_agreement_payment_request_input(), list()) ::
          {:ok, reject_agreement_payment_request_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_agreement_payment_request_errors()}
  def reject_agreement_payment_request(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RejectAgreementPaymentRequest", input, options)
  end

  @doc """
  Searches across all agreements that a proposer or an acceptor has in AWS
  Marketplace.

  The search returns a list of agreements with basic agreement information.

  The following filter combinations are supported when the `PartyType` is
  `Proposer`:

    * `AgreementType`

    * `AgreementType` + `EndTime`

    * `AgreementType` + `ResourceType`

    * `AgreementType` + `ResourceType` + `EndTime`

    * `AgreementType` + `ResourceType` + `Status`

    * `AgreementType` + `ResourceType` + `Status` + `EndTime`

    * `AgreementType` + `ResourceIdentifier`

    * `AgreementType` + `ResourceIdentifier` + `EndTime`

    * `AgreementType` + `ResourceIdentifier` + `Status`

    * `AgreementType` + `ResourceIdentifier` + `Status` + `EndTime`

    * `AgreementType` + `AcceptorAccountId`

    * `AgreementType` + `AcceptorAccountId` + `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `Status`

    * `AgreementType` + `AcceptorAccountId` + `Status` + `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `OfferId`

    * `AgreementType` + `AcceptorAccountId` + `OfferId` + `Status`

    * `AgreementType` + `AcceptorAccountId` + `OfferId` + `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `OfferId` + `Status` +
  `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `ResourceIdentifier`

    * `AgreementType` + `AcceptorAccountId` + `ResourceIdentifier` +
  `Status`

    * `AgreementType` + `AcceptorAccountId` + `ResourceIdentifier` +
  `EndTime`

    * `AgreementType` + `AcceptorAccountId` + `ResourceIdentifier` +
  `Status` + `EndTime`

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

  To filter by `EndTime`, you can use `BeforeEndTime` and/or `AfterEndTime`. Only
  `EndTime` is supported for sorting.

  The following filter combinations are supported when the `PartyType` is
  `Acceptor`:

    * `AgreementType`

    * `AgreementType` + `Status`

    * `AgreementType` + `EndTime`

    * `AgreementType` + `Status` + `EndTime`

    * `AgreementType` + `ResourceIdentifier`

    * `AgreementType` + `ResourceIdentifier` + `EndTime`

    * `AgreementType` + `ResourceIdentifier` + `Status`

    * `AgreementType` + `ResourceIdentifier` + `Status` + `EndTime`

    * `AgreementType` + `ResourceType`

    * `AgreementType` + `ResourceType` + `EndTime`

    * `AgreementType` + `OfferId`

    * `AgreementType` + `OfferId` + `EndTime`

    * `AgreementType` + `OfferId` + `Status`

    * `AgreementType` + `OfferId` + `Status` + `EndTime`

    * `AgreementType` + `OfferSetId`

    * `AgreementType` + `OfferSetId` + `EndTime`

    * `AgreementType` + `OfferSetId` + `Status`

    * `AgreementType` + `OfferSetId` + `Status` + `EndTime`
  """
  @spec search_agreements(map(), search_agreements_input(), list()) ::
          {:ok, search_agreements_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_agreements_errors()}
  def search_agreements(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

    Request.request_post(client, meta, "SendAgreementPaymentRequest", input, options)
  end

  @doc """
  Allows acceptors to associate purchase orders with agreement charges after an
  agreement is created.
  """
  @spec update_purchase_orders(map(), update_purchase_orders_input(), list()) ::
          {:ok, update_purchase_orders_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_purchase_orders_errors()}
  def update_purchase_orders(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePurchaseOrders", input, options)
  end
end
