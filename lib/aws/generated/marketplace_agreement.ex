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
  and
  Access Management (IAM) policies and roles are set up. The user must have the
  required
  policies/permissions that allow them to carry out the actions in AWS:

    *

  `DescribeAgreement` – Grants permission to users to obtain detailed
  meta data about any of their agreements.

    *

  `GetAgreementTerms` – Grants permission to users to obtain details
  about the terms of an agreement.

    *

  `SearchAgreements` – Grants permission to users to search through all
  their agreements.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      renewal_term_configuration() :: %{
        "enableAutoRenew" => boolean()
      }
      
  """
  @type renewal_term_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_agreement_terms_output() :: %{
        "acceptedTerms" => list(list()),
        "nextToken" => String.t()
      }
      
  """
  @type get_agreement_terms_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      estimated_charges() :: %{
        "agreementValue" => String.t(),
        "currencyCode" => String.t()
      }
      
  """
  @type estimated_charges() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configurable_upfront_pricing_term_configuration() :: %{
        "dimensions" => list(dimension()),
        "selectorValue" => String.t()
      }
      
  """
  @type configurable_upfront_pricing_term_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      selector() :: %{
        "type" => String.t(),
        "value" => String.t()
      }
      
  """
  @type selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      support_term() :: %{
        "refundPolicy" => String.t(),
        "type" => String.t()
      }
      
  """
  @type support_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renewal_term() :: %{
        "configuration" => renewal_term_configuration(),
        "type" => String.t()
      }
      
  """
  @type renewal_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      acceptor() :: %{
        "accountId" => String.t()
      }
      
  """
  @type acceptor() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_item() :: %{
        "type" => String.t(),
        "url" => String.t(),
        "version" => String.t()
      }
      
  """
  @type document_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agreement_view_summary() :: %{
        "acceptanceTime" => non_neg_integer(),
        "acceptor" => acceptor(),
        "agreementId" => String.t(),
        "agreementType" => String.t(),
        "endTime" => non_neg_integer(),
        "proposalSummary" => proposal_summary(),
        "proposer" => proposer(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type agreement_view_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t(),
        "requestId" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agreement_output() :: %{
        "acceptanceTime" => non_neg_integer(),
        "acceptor" => acceptor(),
        "agreementId" => String.t(),
        "agreementType" => String.t(),
        "endTime" => non_neg_integer(),
        "estimatedCharges" => estimated_charges(),
        "proposalSummary" => proposal_summary(),
        "proposer" => proposer(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type describe_agreement_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_based_pricing_term() :: %{
        "currencyCode" => String.t(),
        "rateCards" => list(usage_based_rate_card_item()),
        "type" => String.t()
      }
      
  """
  @type usage_based_pricing_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      byol_pricing_term() :: %{
        "type" => String.t()
      }
      
  """
  @type byol_pricing_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recurring_payment_term() :: %{
        "billingPeriod" => String.t(),
        "currencyCode" => String.t(),
        "price" => String.t(),
        "type" => String.t()
      }
      
  """
  @type recurring_payment_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      proposer() :: %{
        "accountId" => String.t()
      }
      
  """
  @type proposer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grant_item() :: %{
        "dimensionKey" => String.t(),
        "maxQuantity" => integer()
      }
      
  """
  @type grant_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      legal_term() :: %{
        "documents" => list(document_item()),
        "type" => String.t()
      }
      
  """
  @type legal_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      payment_schedule_term() :: %{
        "currencyCode" => String.t(),
        "schedule" => list(schedule_item()),
        "type" => String.t()
      }
      
  """
  @type payment_schedule_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_based_rate_card_item() :: %{
        "rateCard" => list(rate_card_item())
      }
      
  """
  @type usage_based_rate_card_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_agreement_terms_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("agreementId") => String.t()
      }
      
  """
  @type get_agreement_terms_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "name" => String.t(),
        "values" => list(String.t())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sort() :: %{
        "sortBy" => String.t(),
        "sortOrder" => list(any())
      }
      
  """
  @type sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agreement_input() :: %{
        required("agreementId") => String.t()
      }
      
  """
  @type describe_agreement_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_agreements_output() :: %{
        "agreementViewSummaries" => list(agreement_view_summary()),
        "nextToken" => String.t()
      }
      
  """
  @type search_agreements_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      fixed_upfront_pricing_term() :: %{
        "currencyCode" => String.t(),
        "duration" => String.t(),
        "grants" => list(grant_item()),
        "price" => String.t(),
        "type" => String.t()
      }
      
  """
  @type fixed_upfront_pricing_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_agreements_input() :: %{
        optional("catalog") => String.t(),
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sort") => sort()
      }
      
  """
  @type search_agreements_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      constraints() :: %{
        "multipleDimensionSelection" => String.t(),
        "quantityConfiguration" => String.t()
      }
      
  """
  @type constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configurable_upfront_rate_card_item() :: %{
        "constraints" => constraints(),
        "rateCard" => list(rate_card_item()),
        "selector" => selector()
      }
      
  """
  @type configurable_upfront_rate_card_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_item() :: %{
        "chargeAmount" => String.t(),
        "chargeDate" => non_neg_integer()
      }
      
  """
  @type schedule_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fields" => list(validation_exception_field()),
        "message" => String.t(),
        "reason" => list(any()),
        "requestId" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      proposal_summary() :: %{
        "offerId" => String.t(),
        "resources" => list(resource())
      }
      
  """
  @type proposal_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t(),
        "requestId" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      free_trial_pricing_term() :: %{
        "duration" => String.t(),
        "grants" => list(grant_item()),
        "type" => String.t()
      }
      
  """
  @type free_trial_pricing_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension() :: %{
        "dimensionKey" => String.t(),
        "dimensionValue" => integer()
      }
      
  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validity_term() :: %{
        "agreementDuration" => String.t(),
        "agreementEndDate" => non_neg_integer(),
        "agreementStartDate" => non_neg_integer(),
        "type" => String.t()
      }
      
  """
  @type validity_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rate_card_item() :: %{
        "dimensionKey" => String.t(),
        "price" => String.t()
      }
      
  """
  @type rate_card_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      configurable_upfront_pricing_term() :: %{
        "configuration" => configurable_upfront_pricing_term_configuration(),
        "currencyCode" => String.t(),
        "rateCards" => list(configurable_upfront_rate_card_item()),
        "type" => String.t()
      }
      
  """
  @type configurable_upfront_pricing_term() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "id" => String.t(),
        "type" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type describe_agreement_errors() ::
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

  @type search_agreements_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

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
  Obtains details about the terms in an agreement that you participated in as
  proposer or
  acceptor.

  The details include:

    *

  `TermType` – The type of term, such as `LegalTerm`,
  `RenewalTerm`, or `ConfigurableUpfrontPricingTerm`.

    *

  `TermID` – The ID of the particular term, which is common between offer
  and agreement.

    *

  `TermPayload` – The key information contained in the term, such as the
  EULA for `LegalTerm` or pricing and dimensions for various pricing terms,
  such as `ConfigurableUpfrontPricingTerm` or
  `UsageBasedPricingTerm`.

    *

  `Configuration` – The buyer/acceptor's selection at the time of
  agreement creation, such as the number of units purchased for a dimension or
  setting
  the `EnableAutoRenew` flag.
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
  Searches across all agreements that a proposer or an acceptor has in AWS
  Marketplace.

  The search returns a list of agreements with basic agreement information.

  The following filter combinations are supported:

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `ResourceIdentifier`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `OfferId`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `AcceptorAccountId`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `Status`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `ResourceIdentifier` + `Status`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `OfferId` + `Status`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `AcceptorAccountId` + `Status`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `ResourceType` + `Status`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `AcceptorAccountId` + `ResourceType` +
  `Status`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `AcceptorAccountId` + `OfferId`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `AcceptorAccountId` + `OfferId` + `Status`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `AcceptorAccountId` + `ResourceIdentifier`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `AcceptorAccountId` + `ResourceIdentifier` +
  `Status`

    *

  `PartyType` as `Proposer` + `AgreementType` +
  `AcceptorAccountId` + `ResourceType`
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
end
