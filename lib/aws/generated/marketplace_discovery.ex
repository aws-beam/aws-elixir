# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceDiscovery do
  @moduledoc """
  The AWS Marketplace Discovery API provides programmatic access to the AWS
  Marketplace catalog, including searching and browsing listings, retrieving
  product details and fulfillment options, and accessing public and private offer
  pricing and terms.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      eks_add_on_fulfillment_option() :: %{
        "awsSupportedServices" => list(aws_supported_service()),
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionName" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentOptionVersion" => [String.t() | atom()],
        "operatingSystems" => list(eks_add_on_operating_system()),
        "releaseNotes" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type eks_add_on_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_artifact() :: %{
        "dataClassification" => [String.t() | atom()],
        "description" => [String.t() | atom()],
        "resourceArn" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type data_artifact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_facets_input() :: %{
        optional("facetTypes") => list(list(any())()),
        optional("filters") => list(search_filter()),
        optional("nextToken") => String.t() | atom(),
        optional("searchText") => String.t() | atom()
      }

  """
  @type search_facets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pricing_unit() :: %{
        "displayName" => String.t() | atom(),
        "pricingUnitType" => list(any())
      }

  """
  @type pricing_unit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_fulfillment_options_output() :: %{
        "fulfillmentOptions" => list(list()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_fulfillment_options_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_fulfillment_option() :: %{
        "awsSupportedServices" => list(aws_supported_service()),
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionName" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentOptionVersion" => [String.t() | atom()],
        "operatingSystems" => list(container_operating_system()),
        "releaseNotes" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type container_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fulfillment_option_summary() :: %{
        "displayName" => String.t() | atom(),
        "fulfillmentOptionType" => list(any())
      }

  """
  @type fulfillment_option_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      purchase_option_badge() :: %{
        "badgeType" => list(any()),
        "displayName" => String.t() | atom()
      }

  """
  @type purchase_option_badge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      use_case() :: %{
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type use_case() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_formation_fulfillment_option() :: %{
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionName" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentOptionVersion" => [String.t() | atom()],
        "releaseNotes" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type cloud_formation_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      selector() :: %{
        "type" => list(any()),
        "value" => String.t() | atom()
      }

  """
  @type selector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_listing_input() :: %{
        required("listingId") => String.t() | atom()
      }

  """
  @type get_listing_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_facets_output() :: %{
        "listingFacets" => map(),
        "nextToken" => String.t() | atom(),
        "totalResults" => float()
      }

  """
  @type search_facets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pricing_model() :: %{
        "displayName" => String.t() | atom(),
        "pricingModelType" => list(any())
      }

  """
  @type pricing_model() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_summary_associated_entity() :: %{
        "product" => product_information()
      }

  """
  @type listing_summary_associated_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      support_term() :: %{
        "id" => String.t() | atom(),
        "refundPolicy" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type support_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      renewal_term() :: %{
        "id" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type renewal_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_purchase_options_output() :: %{
        "nextToken" => String.t() | atom(),
        "purchaseOptions" => list(purchase_option_summary())
      }

  """
  @type list_purchase_options_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      saas_fulfillment_option() :: %{
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentUrl" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type saas_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_fulfillment_option() :: %{
        "awsSupportedServices" => list(aws_supported_service()),
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type api_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_associated_entity() :: %{
        "offer" => offer_information(),
        "product" => product_information()
      }

  """
  @type listing_associated_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      document_item() :: %{
        "type" => list(any()),
        "url" => String.t() | atom(),
        "version" => [String.t() | atom()]
      }

  """
  @type document_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      use_case_entry() :: %{
        "useCase" => use_case()
      }

  """
  @type use_case_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_badge() :: %{
        "badgeType" => list(any()),
        "displayName" => String.t() | atom()
      }

  """
  @type listing_badge() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_filter() :: %{
        "filterType" => list(any()),
        "filterValues" => list(String.t() | atom())
      }

  """
  @type search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_facet() :: %{
        "count" => float(),
        "displayName" => String.t() | atom(),
        "parent" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type listing_facet() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_operating_system() :: %{
        "operatingSystemFamilyName" => [String.t() | atom()],
        "operatingSystemName" => [String.t() | atom()]
      }

  """
  @type container_operating_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_offer_set_input() :: %{
        required("offerSetId") => String.t() | atom()
      }

  """
  @type get_offer_set_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_supported_service() :: %{
        "description" => [String.t() | atom()],
        "displayName" => [String.t() | atom()],
        "supportedServiceType" => [String.t() | atom()]
      }

  """
  @type aws_supported_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      purchase_option_summary() :: %{
        "associatedEntities" => list(purchase_option_associated_entity()),
        "availableFromTime" => [non_neg_integer()],
        "badges" => list(purchase_option_badge()),
        "catalog" => String.t() | atom(),
        "expirationTime" => [non_neg_integer()],
        "purchaseOptionId" => String.t() | atom(),
        "purchaseOptionName" => String.t() | atom(),
        "purchaseOptionType" => list(any()),
        "sellerOfRecord" => seller_information()
      }

  """
  @type purchase_option_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usage_based_pricing_term() :: %{
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "rateCards" => list(usage_based_rate_card_item()),
        "type" => list(any())
      }

  """
  @type usage_based_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dimension_label() :: %{
        "displayName" => String.t() | atom(),
        "labelType" => list(any()),
        "labelValue" => String.t() | atom()
      }

  """
  @type dimension_label() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_listings_output() :: %{
        "listingSummaries" => list(listing_summary()),
        "nextToken" => String.t() | atom(),
        "totalResults" => float()
      }

  """
  @type search_listings_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product_information() :: %{
        "manufacturer" => seller_information(),
        "productId" => String.t() | atom(),
        "productName" => String.t() | atom()
      }

  """
  @type product_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      byol_pricing_term() :: %{
        "id" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type byol_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recurring_payment_term() :: %{
        "billingPeriod" => list(any()),
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "price" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type recurring_payment_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      helm_fulfillment_option() :: %{
        "awsSupportedServices" => list(aws_supported_service()),
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionName" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentOptionVersion" => [String.t() | atom()],
        "operatingSystems" => list(helm_operating_system()),
        "releaseNotes" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type helm_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      grant_item() :: %{
        "description" => String.t() | atom(),
        "dimensionKey" => String.t() | atom(),
        "dimensionLabels" => list(dimension_label()),
        "displayName" => String.t() | atom(),
        "maxQuantity" => [integer()],
        "unit" => String.t() | atom()
      }

  """
  @type grant_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      legal_term() :: %{
        "documents" => list(document_item()),
        "id" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type legal_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      payment_schedule_term() :: %{
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "schedule" => list(schedule_item()),
        "type" => list(any())
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

      search_listings_input() :: %{
        optional("filters") => list(search_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("searchText") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any())
      }

  """
  @type search_listings_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amazon_machine_image_fulfillment_option() :: %{
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionName" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentOptionVersion" => [String.t() | atom()],
        "operatingSystems" => list(amazon_machine_image_operating_system()),
        "recommendation" => amazon_machine_image_recommendation(),
        "releaseNotes" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type amazon_machine_image_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      review_summary() :: %{
        "reviewSourceSummaries" => list(review_source_summary())
      }

  """
  @type review_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_offer_terms_output() :: %{
        "nextToken" => String.t() | atom(),
        "offerTerms" => list(list())
      }

  """
  @type get_offer_terms_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      listing_summary() :: %{
        "associatedEntities" => list(listing_summary_associated_entity()),
        "badges" => list(listing_badge()),
        "catalog" => String.t() | atom(),
        "categories" => list(category()),
        "fulfillmentOptionSummaries" => list(fulfillment_option_summary()),
        "listingId" => String.t() | atom(),
        "listingName" => String.t() | atom(),
        "logoThumbnailUrl" => String.t() | atom(),
        "pricingModels" => list(pricing_model()),
        "pricingUnits" => list(pricing_unit()),
        "publisher" => seller_information(),
        "reviewSummary" => review_summary(),
        "shortDescription" => String.t() | atom()
      }

  """
  @type listing_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      professional_services_fulfillment_option() :: %{
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any())
      }

  """
  @type professional_services_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      helm_operating_system() :: %{
        "operatingSystemFamilyName" => [String.t() | atom()],
        "operatingSystemName" => [String.t() | atom()]
      }

  """
  @type helm_operating_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fixed_upfront_pricing_term() :: %{
        "currencyCode" => String.t() | atom(),
        "duration" => String.t() | atom(),
        "grants" => list(grant_item()),
        "id" => String.t() | atom(),
        "price" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type fixed_upfront_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_offer_set_output() :: %{
        "associatedEntities" => list(offer_set_associated_entity()),
        "availableFromTime" => [non_neg_integer()],
        "badges" => list(purchase_option_badge()),
        "buyerNotes" => String.t() | atom(),
        "catalog" => String.t() | atom(),
        "expirationTime" => [non_neg_integer()],
        "offerSetId" => String.t() | atom(),
        "offerSetName" => String.t() | atom(),
        "sellerOfRecord" => seller_information()
      }

  """
  @type get_offer_set_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_fulfillment_options_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("productId") => String.t() | atom()
      }

  """
  @type list_fulfillment_options_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      constraints() :: %{
        "multipleDimensionSelection" => list(any()),
        "quantityConfiguration" => list(any())
      }

  """
  @type constraints() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      review_source_summary() :: %{
        "averageRating" => String.t() | atom(),
        "sourceId" => list(any()),
        "sourceName" => String.t() | atom(),
        "sourceUrl" => String.t() | atom(),
        "totalReviews" => float()
      }

  """
  @type review_source_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_offer_output() :: %{
        "agreementProposalId" => String.t() | atom(),
        "associatedEntities" => list(offer_associated_entity()),
        "availableFromTime" => [non_neg_integer()],
        "badges" => list(purchase_option_badge()),
        "catalog" => String.t() | atom(),
        "expirationTime" => [non_neg_integer()],
        "offerId" => String.t() | atom(),
        "offerName" => String.t() | atom(),
        "pricingModel" => pricing_model(),
        "replacementAgreementId" => String.t() | atom(),
        "sellerOfRecord" => seller_information()
      }

  """
  @type get_offer_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_offer_input() :: %{
        required("offerId") => String.t() | atom()
      }

  """
  @type get_offer_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_exchange_fulfillment_option() :: %{
        "dataArtifacts" => list(data_artifact()),
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any())
      }

  """
  @type data_exchange_fulfillment_option() :: %{(String.t() | atom()) => any()}

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
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "maxTotalChargeAmount" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type variable_payment_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sage_maker_algorithm_recommendation() :: %{
        "recommendedBatchTransformInstanceType" => [String.t() | atom()],
        "recommendedRealtimeInferenceInstanceType" => [String.t() | atom()],
        "recommendedTrainingInstanceType" => [String.t() | atom()]
      }

  """
  @type sage_maker_algorithm_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_item() :: %{
        "chargeAmount" => String.t() | atom(),
        "chargeDate" => [non_neg_integer()]
      }

  """
  @type schedule_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | atom(),
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sage_maker_algorithm_fulfillment_option() :: %{
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentOptionVersion" => [String.t() | atom()],
        "recommendation" => sage_maker_algorithm_recommendation(),
        "releaseNotes" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type sage_maker_algorithm_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      purchase_option_associated_entity() :: %{
        "offer" => offer_information(),
        "offerSet" => offer_set_information(),
        "product" => product_information()
      }

  """
  @type purchase_option_associated_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_listing_output() :: %{
        "associatedEntities" => list(listing_associated_entity()),
        "badges" => list(listing_badge()),
        "catalog" => String.t() | atom(),
        "categories" => list(category()),
        "fulfillmentOptionSummaries" => list(fulfillment_option_summary()),
        "highlights" => list(String.t() | atom()),
        "integrationGuide" => String.t() | atom(),
        "listingId" => String.t() | atom(),
        "listingName" => String.t() | atom(),
        "logoThumbnailUrl" => String.t() | atom(),
        "longDescription" => String.t() | atom(),
        "pricingModels" => list(pricing_model()),
        "pricingUnits" => list(pricing_unit()),
        "promotionalMedia" => list(list()),
        "publisher" => seller_information(),
        "resources" => list(resource()),
        "reviewSummary" => review_summary(),
        "sellerEngagements" => list(seller_engagement()),
        "shortDescription" => String.t() | atom(),
        "useCases" => list(use_case_entry())
      }

  """
  @type get_listing_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      seller_information() :: %{
        "displayName" => String.t() | atom(),
        "sellerProfileId" => String.t() | atom()
      }

  """
  @type seller_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sage_maker_model_recommendation() :: %{
        "recommendedBatchTransformInstanceType" => [String.t() | atom()],
        "recommendedRealtimeInferenceInstanceType" => [String.t() | atom()]
      }

  """
  @type sage_maker_model_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sage_maker_model_fulfillment_option() :: %{
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentOptionVersion" => [String.t() | atom()],
        "recommendation" => sage_maker_model_recommendation(),
        "releaseNotes" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type sage_maker_model_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_offer_terms_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("offerId") => String.t() | atom()
      }

  """
  @type get_offer_terms_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      category() :: %{
        "categoryId" => String.t() | atom(),
        "displayName" => String.t() | atom()
      }

  """
  @type category() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_purchase_options_input() :: %{
        optional("filters") => list(purchase_option_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_purchase_options_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      free_trial_pricing_term() :: %{
        "duration" => String.t() | atom(),
        "grants" => list(grant_item()),
        "id" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type free_trial_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validity_term() :: %{
        "agreementDuration" => String.t() | atom(),
        "agreementEndDate" => [non_neg_integer()],
        "agreementStartDate" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type validity_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      promotional_embedded_image() :: %{
        "description" => String.t() | atom(),
        "title" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type promotional_embedded_image() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_image_builder_component_fulfillment_option() :: %{
        "awsSupportedServices" => list(aws_supported_service()),
        "fulfillmentOptionDisplayName" => [String.t() | atom()],
        "fulfillmentOptionId" => [String.t() | atom()],
        "fulfillmentOptionName" => [String.t() | atom()],
        "fulfillmentOptionType" => list(any()),
        "fulfillmentOptionVersion" => [String.t() | atom()],
        "operatingSystems" => list(container_operating_system()),
        "releaseNotes" => [String.t() | atom()],
        "usageInstructions" => [String.t() | atom()]
      }

  """
  @type ec2_image_builder_component_fulfillment_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      offer_associated_entity() :: %{
        "offerSet" => offer_set_information(),
        "product" => product_information()
      }

  """
  @type offer_associated_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_output() :: %{
        "catalog" => String.t() | atom(),
        "categories" => list(category()),
        "deployedOnAws" => list(any()),
        "fulfillmentOptionSummaries" => list(fulfillment_option_summary()),
        "highlights" => list(String.t() | atom()),
        "logoThumbnailUrl" => String.t() | atom(),
        "longDescription" => String.t() | atom(),
        "manufacturer" => seller_information(),
        "productId" => String.t() | atom(),
        "productName" => String.t() | atom(),
        "promotionalMedia" => list(list()),
        "resources" => list(resource()),
        "sellerEngagements" => list(seller_engagement()),
        "shortDescription" => String.t() | atom()
      }

  """
  @type get_product_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rate_card_item() :: %{
        "description" => String.t() | atom(),
        "dimensionKey" => String.t() | atom(),
        "dimensionLabels" => list(dimension_label()),
        "displayName" => String.t() | atom(),
        "price" => String.t() | atom(),
        "unit" => String.t() | atom()
      }

  """
  @type rate_card_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amazon_machine_image_operating_system() :: %{
        "operatingSystemFamilyName" => [String.t() | atom()],
        "operatingSystemName" => [String.t() | atom()],
        "operatingSystemVersion" => [String.t() | atom()]
      }

  """
  @type amazon_machine_image_operating_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      offer_set_information() :: %{
        "offerSetId" => String.t() | atom(),
        "sellerOfRecord" => seller_information()
      }

  """
  @type offer_set_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      seller_engagement() :: %{
        "contentType" => list(any()),
        "engagementType" => list(any()),
        "value" => String.t() | atom()
      }

  """
  @type seller_engagement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_input() :: %{
        required("productId") => String.t() | atom()
      }

  """
  @type get_product_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      promotional_embedded_video() :: %{
        "description" => String.t() | atom(),
        "preview" => String.t() | atom(),
        "thumbnail" => String.t() | atom(),
        "title" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type promotional_embedded_video() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      offer_set_associated_entity() :: %{
        "offer" => offer_information(),
        "product" => product_information()
      }

  """
  @type offer_set_associated_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amazon_machine_image_recommendation() :: %{
        "instanceType" => [String.t() | atom()]
      }

  """
  @type amazon_machine_image_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      eks_add_on_operating_system() :: %{
        "operatingSystemFamilyName" => [String.t() | atom()],
        "operatingSystemName" => [String.t() | atom()]
      }

  """
  @type eks_add_on_operating_system() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      purchase_option_filter() :: %{
        "filterType" => list(any()),
        "filterValues" => list(String.t() | atom())
      }

  """
  @type purchase_option_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configurable_upfront_pricing_term() :: %{
        "currencyCode" => String.t() | atom(),
        "id" => String.t() | atom(),
        "rateCards" => list(configurable_upfront_rate_card_item()),
        "type" => list(any())
      }

  """
  @type configurable_upfront_pricing_term() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      offer_information() :: %{
        "offerId" => String.t() | atom(),
        "offerName" => String.t() | atom(),
        "sellerOfRecord" => seller_information()
      }

  """
  @type offer_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "contentType" => list(any()),
        "displayName" => String.t() | atom(),
        "resourceType" => list(any()),
        "value" => String.t() | atom()
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @type get_listing_errors() :: resource_not_found_exception()

  @type get_offer_errors() :: resource_not_found_exception()

  @type get_offer_set_errors() :: resource_not_found_exception()

  @type get_offer_terms_errors() :: resource_not_found_exception()

  @type get_product_errors() :: resource_not_found_exception()

  @type list_fulfillment_options_errors() :: resource_not_found_exception()

  def metadata do
    %{
      api_version: "2026-02-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "discovery-marketplace",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Marketplace Discovery",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: nil
    }
  end

  @doc """
  Provides details about a listing, such as descriptions, badges, categories,
  pricing model summaries, reviews, and associated products and offers.
  """
  @spec get_listing(map(), get_listing_input(), list()) ::
          {:ok, get_listing_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_listing_errors()}
  def get_listing(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/getListing"
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
  Provides details about an offer, such as the pricing model, seller of record,
  availability dates, badges, and associated products.
  """
  @spec get_offer(map(), get_offer_input(), list()) ::
          {:ok, get_offer_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_offer_errors()}
  def get_offer(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/getOffer"
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
  Provides details about an offer set, which is a bundle of offers across multiple
  products.

  Includes the seller, availability dates, buyer notes, and associated
  product-offer pairs.
  """
  @spec get_offer_set(map(), get_offer_set_input(), list()) ::
          {:ok, get_offer_set_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_offer_set_errors()}
  def get_offer_set(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/getOfferSet"
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
  Returns the terms attached to an offer, such as pricing terms (usage-based,
  contract, BYOL, free trial), legal terms, payment schedules, validity terms,
  support terms, and renewal terms.
  """
  @spec get_offer_terms(map(), get_offer_terms_input(), list()) ::
          {:ok, get_offer_terms_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_offer_terms_errors()}
  def get_offer_terms(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/getOfferTerms"
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
  Provides details about a product, such as descriptions, highlights, categories,
  fulfillment option summaries, promotional media, and seller engagement options.
  """
  @spec get_product(map(), get_product_input(), list()) ::
          {:ok, get_product_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_product_errors()}
  def get_product(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/getProduct"
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
  Returns the fulfillment options available for a product, including deployment
  details such as version information, operating systems, usage instructions, and
  release notes.
  """
  @spec list_fulfillment_options(map(), list_fulfillment_options_input(), list()) ::
          {:ok, list_fulfillment_options_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fulfillment_options_errors()}
  def list_fulfillment_options(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/listFulfillmentOptions"
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
  Returns the purchase options (offers and offer sets) available to the buyer.

  You can filter results by product, seller, purchase option type, visibility
  scope, and availability status.

  You must include at least one of the following filters in the request: a
  `PRODUCT_ID` filter to specify the product for which to retrieve purchase
  options, or a `VISIBILITY_SCOPE` filter to retrieve purchase options by
  visibility.
  """
  @spec list_purchase_options(map(), list_purchase_options_input(), list()) ::
          {:ok, list_purchase_options_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_purchase_options(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/listPurchaseOptions"
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
  Returns available facet values for filtering listings, such as categories,
  pricing models, fulfillment option types, publishers, and customer ratings.

  Each facet value includes a count of matching listings.
  """
  @spec search_facets(map(), search_facets_input(), list()) ::
          {:ok, search_facets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def search_facets(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/searchFacets"
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
  Returns a list of product listings based on search criteria and filters.

  You can search by keyword, filter by category, pricing model, fulfillment type,
  and other attributes, and sort results by relevance or customer rating.
  """
  @spec search_listings(map(), search_listings_input(), list()) ::
          {:ok, search_listings_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def search_listings(%Client{} = client, input, options \\ []) do
    url_path = "/2026-02-05/searchListings"
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
