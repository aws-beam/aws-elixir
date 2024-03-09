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

  def metadata do
    %{
      api_version: "2020-03-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "agreement-marketplace",
      global?: false,
      protocol: "json",
      service_id: "Marketplace Agreement",
      signature_version: "v4",
      signing_name: "agreement-marketplace",
      target_prefix: "AWSMPCommerceService_v20200301"
    }
  end

  @doc """
  Provides details about an agreement, such as the proposer, acceptor, start date,
  and end date.
  """
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
  def search_agreements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchAgreements", input, options)
  end
end
