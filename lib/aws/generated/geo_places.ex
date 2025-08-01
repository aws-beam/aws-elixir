# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GeoPlaces do
  @moduledoc """
  The Places API enables powerful location search and geocoding capabilities for
  your applications, offering global coverage with rich, detailed information.

  Key features include:

    * Forward and reverse geocoding for addresses and coordinates

    * Comprehensive place searches with detailed information, including:

      * Business names and addresses

      * Contact information

      * Hours of operation

      * POI (Points of Interest) categories

      * Food types for restaurants

      * Chain affiliation for relevant businesses

    * Global data coverage with a wide range of POI categories

    * Regular data updates to ensure accuracy and relevance
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      reverse_geocode_result_item() :: %{
        "AccessPoints" => list(access_point()),
        "Address" => address(),
        "AddressNumberCorrected" => boolean(),
        "Categories" => list(category()),
        "Distance" => float(),
        "FoodTypes" => list(food_type()),
        "Intersections" => list(intersection()),
        "MapView" => list([float()]()),
        "PlaceId" => String.t() | atom(),
        "PlaceType" => String.t() | atom(),
        "PoliticalView" => String.t() | atom(),
        "Position" => list([float()]()),
        "PostalCodeDetails" => list(postal_code_details()),
        "TimeZone" => time_zone(),
        "Title" => String.t() | atom()
      }

  """
  @type reverse_geocode_result_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geocode_parsed_query_address_components() :: %{
        "AddressNumber" => list(parsed_query_component()),
        "Block" => list(parsed_query_component()),
        "Building" => list(parsed_query_component()),
        "Country" => list(parsed_query_component()),
        "District" => list(parsed_query_component()),
        "Locality" => list(parsed_query_component()),
        "PostalCode" => list(parsed_query_component()),
        "Region" => list(parsed_query_component()),
        "SecondaryAddressComponents" => list(parsed_query_secondary_address_component()),
        "Street" => list(parsed_query_component()),
        "SubBlock" => list(parsed_query_component()),
        "SubDistrict" => list(parsed_query_component()),
        "SubRegion" => list(parsed_query_component())
      }

  """
  @type geocode_parsed_query_address_components() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sub_region() :: %{
        "Code" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type sub_region() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phoneme_details() :: %{
        "Address" => address_component_phonemes(),
        "Title" => list(phoneme_transcription())
      }

  """
  @type phoneme_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      autocomplete_response() :: %{
        "PricingBucket" => [String.t() | atom()],
        "ResultItems" => list(autocomplete_result_item())
      }

  """
  @type autocomplete_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reverse_geocode_request() :: %{
        optional("AdditionalFeatures") => list(String.t() | atom()),
        optional("Filter") => reverse_geocode_filter(),
        optional("IntendedUse") => String.t() | atom(),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        optional("PoliticalView") => String.t() | atom(),
        optional("QueryRadius") => float(),
        required("QueryPosition") => list([float()]())
      }

  """
  @type reverse_geocode_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_text_result_item() :: %{
        "AccessPoints" => list(access_point()),
        "AccessRestrictions" => list(access_restriction()),
        "Address" => address(),
        "AddressNumberCorrected" => boolean(),
        "BusinessChains" => list(business_chain()),
        "Categories" => list(category()),
        "Contacts" => contacts(),
        "Distance" => float(),
        "FoodTypes" => list(food_type()),
        "MapView" => list([float()]()),
        "OpeningHours" => list(opening_hours()),
        "Phonemes" => phoneme_details(),
        "PlaceId" => String.t() | atom(),
        "PlaceType" => String.t() | atom(),
        "PoliticalView" => String.t() | atom(),
        "Position" => list([float()]()),
        "TimeZone" => time_zone(),
        "Title" => String.t() | atom()
      }

  """
  @type search_text_result_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      country_highlights() :: %{
        "Code" => list(highlight()),
        "Name" => list(highlight())
      }

  """
  @type country_highlights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggest_address_highlights() :: %{
        "Label" => list(highlight())
      }

  """
  @type suggest_address_highlights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      highlight() :: %{
        "EndIndex" => [integer()],
        "StartIndex" => [integer()],
        "Value" => String.t() | atom()
      }

  """
  @type highlight() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggest_response() :: %{
        "PricingBucket" => [String.t() | atom()],
        "QueryRefinements" => list(query_refinement()),
        "ResultItems" => list(suggest_result_item())
      }

  """
  @type suggest_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_nearby_filter() :: %{
        "BoundingBox" => list([float()]()),
        "ExcludeBusinessChains" => list(String.t() | atom()),
        "ExcludeCategories" => list(String.t() | atom()),
        "ExcludeFoodTypes" => list(String.t() | atom()),
        "IncludeBusinessChains" => list(String.t() | atom()),
        "IncludeCategories" => list(String.t() | atom()),
        "IncludeCountries" => list(String.t() | atom()),
        "IncludeFoodTypes" => list(String.t() | atom())
      }

  """
  @type search_nearby_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_circle() :: %{
        "Center" => list([float()]()),
        "Radius" => float()
      }

  """
  @type filter_circle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      autocomplete_address_highlights() :: %{
        "AddressNumber" => list(highlight()),
        "Block" => list(highlight()),
        "Building" => list(highlight()),
        "Country" => country_highlights(),
        "District" => list(highlight()),
        "Intersection" => list(list(highlight())()),
        "Label" => list(highlight()),
        "Locality" => list(highlight()),
        "PostalCode" => list(highlight()),
        "Region" => region_highlights(),
        "Street" => list(highlight()),
        "SubBlock" => list(highlight()),
        "SubDistrict" => list(highlight()),
        "SubRegion" => sub_region_highlights()
      }

  """
  @type autocomplete_address_highlights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usps_zip() :: %{
        "ZipClassificationCode" => String.t() | atom()
      }

  """
  @type usps_zip() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_text_response() :: %{
        "NextToken" => String.t() | atom(),
        "PricingBucket" => [String.t() | atom()],
        "ResultItems" => list(search_text_result_item())
      }

  """
  @type search_text_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggest_place_result() :: %{
        "AccessPoints" => list(access_point()),
        "AccessRestrictions" => list(access_restriction()),
        "Address" => address(),
        "BusinessChains" => list(business_chain()),
        "Categories" => list(category()),
        "Distance" => float(),
        "FoodTypes" => list(food_type()),
        "MapView" => list([float()]()),
        "Phonemes" => phoneme_details(),
        "PlaceId" => String.t() | atom(),
        "PlaceType" => String.t() | atom(),
        "PoliticalView" => String.t() | atom(),
        "Position" => list([float()]()),
        "TimeZone" => time_zone()
      }

  """
  @type suggest_place_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      food_type() :: %{
        "Id" => String.t() | atom(),
        "LocalizedName" => String.t() | atom(),
        "Primary" => boolean()
      }

  """
  @type food_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      match_score_details() :: %{
        "Components" => component_match_scores(),
        "Overall" => float()
      }

  """
  @type match_score_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      country() :: %{
        "Code2" => String.t() | atom(),
        "Code3" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type country() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggest_query_result() :: %{
        "QueryId" => String.t() | atom(),
        "QueryType" => String.t() | atom()
      }

  """
  @type suggest_query_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geocode_filter() :: %{
        "IncludeCountries" => list(String.t() | atom()),
        "IncludePlaceTypes" => list(String.t() | atom())
      }

  """
  @type geocode_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      autocomplete_highlights() :: %{
        "Address" => autocomplete_address_highlights(),
        "Title" => list(highlight())
      }

  """
  @type autocomplete_highlights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      autocomplete_result_item() :: %{
        "Address" => address(),
        "Distance" => float(),
        "Highlights" => autocomplete_highlights(),
        "Language" => String.t() | atom(),
        "PlaceId" => String.t() | atom(),
        "PlaceType" => String.t() | atom(),
        "PoliticalView" => String.t() | atom(),
        "Title" => String.t() | atom()
      }

  """
  @type autocomplete_result_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      region_highlights() :: %{
        "Code" => list(highlight()),
        "Name" => list(highlight())
      }

  """
  @type region_highlights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      usps_zip_plus4() :: %{
        "RecordTypeCode" => String.t() | atom()
      }

  """
  @type usps_zip_plus4() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reverse_geocode_response() :: %{
        "PricingBucket" => [String.t() | atom()],
        "ResultItems" => list(reverse_geocode_result_item())
      }

  """
  @type reverse_geocode_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geocode_parsed_query() :: %{
        "Address" => geocode_parsed_query_address_components(),
        "Title" => list(parsed_query_component())
      }

  """
  @type geocode_parsed_query() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      region() :: %{
        "Code" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type region() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      street_components() :: %{
        "BaseName" => String.t() | atom(),
        "Direction" => String.t() | atom(),
        "Language" => String.t() | atom(),
        "Prefix" => String.t() | atom(),
        "Suffix" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "TypePlacement" => String.t() | atom(),
        "TypeSeparator" => String.t() | atom()
      }

  """
  @type street_components() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggest_request() :: %{
        optional("AdditionalFeatures") => list(String.t() | atom()),
        optional("BiasPosition") => list([float()]()),
        optional("Filter") => suggest_filter(),
        optional("IntendedUse") => String.t() | atom(),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxQueryRefinements") => [integer()],
        optional("MaxResults") => [integer()],
        optional("PoliticalView") => String.t() | atom(),
        required("QueryText") => String.t() | atom()
      }

  """
  @type suggest_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      business_chain() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type business_chain() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_text_request() :: %{
        optional("AdditionalFeatures") => list(String.t() | atom()),
        optional("BiasPosition") => list([float()]()),
        optional("Filter") => search_text_filter(),
        optional("IntendedUse") => String.t() | atom(),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom(),
        optional("PoliticalView") => String.t() | atom(),
        optional("QueryId") => String.t() | atom(),
        optional("QueryText") => String.t() | atom()
      }

  """
  @type search_text_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_restriction() :: %{
        "Categories" => list(category()),
        "Restricted" => boolean()
      }

  """
  @type access_restriction() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_text_filter() :: %{
        "BoundingBox" => list([float()]()),
        "Circle" => filter_circle(),
        "IncludeCountries" => list(String.t() | atom())
      }

  """
  @type search_text_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      opening_hours_components() :: %{
        "OpenDuration" => String.t() | atom(),
        "OpenTime" => String.t() | atom(),
        "Recurrence" => String.t() | atom()
      }

  """
  @type opening_hours_components() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      postal_code_details() :: %{
        "PostalAuthority" => String.t() | atom(),
        "PostalCode" => String.t() | atom(),
        "PostalCodeType" => String.t() | atom(),
        "UspsZip" => usps_zip(),
        "UspsZipPlus4" => usps_zip_plus4()
      }

  """
  @type postal_code_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parsed_query_component() :: %{
        "EndIndex" => [integer()],
        "QueryComponent" => String.t() | atom(),
        "StartIndex" => [integer()],
        "Value" => String.t() | atom()
      }

  """
  @type parsed_query_component() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => [String.t() | atom()],
        "Name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_place_request() :: %{
        optional("AdditionalFeatures") => list(String.t() | atom()),
        optional("IntendedUse") => String.t() | atom(),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("PoliticalView") => String.t() | atom()
      }

  """
  @type get_place_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_zone() :: %{
        "Name" => String.t() | atom(),
        "Offset" => String.t() | atom(),
        "OffsetSeconds" => float()
      }

  """
  @type time_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      parsed_query_secondary_address_component() :: %{
        "Designator" => String.t() | atom(),
        "EndIndex" => [integer()],
        "Number" => String.t() | atom(),
        "StartIndex" => [integer()],
        "Value" => String.t() | atom()
      }

  """
  @type parsed_query_secondary_address_component() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_refinement() :: %{
        "EndIndex" => [integer()],
        "OriginalTerm" => String.t() | atom(),
        "RefinedTerm" => String.t() | atom(),
        "StartIndex" => [integer()]
      }

  """
  @type query_refinement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggest_highlights() :: %{
        "Address" => suggest_address_highlights(),
        "Title" => list(highlight())
      }

  """
  @type suggest_highlights() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      autocomplete_request() :: %{
        optional("AdditionalFeatures") => list(String.t() | atom()),
        optional("BiasPosition") => list([float()]()),
        optional("Filter") => autocomplete_filter(),
        optional("IntendedUse") => String.t() | atom(),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        optional("PoliticalView") => String.t() | atom(),
        optional("PostalCodeMode") => String.t() | atom(),
        required("QueryText") => String.t() | atom()
      }

  """
  @type autocomplete_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      secondary_address_component() :: %{
        "Number" => String.t() | atom()
      }

  """
  @type secondary_address_component() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geocode_response() :: %{
        "PricingBucket" => [String.t() | atom()],
        "ResultItems" => list(geocode_result_item())
      }

  """
  @type geocode_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      secondary_address_component_match_score() :: %{
        "Number" => float()
      }

  """
  @type secondary_address_component_match_score() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      intersection() :: %{
        "AccessPoints" => list(access_point()),
        "Address" => address(),
        "Distance" => float(),
        "MapView" => list([float()]()),
        "PlaceId" => String.t() | atom(),
        "Position" => list([float()]()),
        "RouteDistance" => float(),
        "Title" => String.t() | atom()
      }

  """
  @type intersection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_nearby_result_item() :: %{
        "AccessPoints" => list(access_point()),
        "AccessRestrictions" => list(access_restriction()),
        "Address" => address(),
        "AddressNumberCorrected" => boolean(),
        "BusinessChains" => list(business_chain()),
        "Categories" => list(category()),
        "Contacts" => contacts(),
        "Distance" => float(),
        "FoodTypes" => list(food_type()),
        "MapView" => list([float()]()),
        "OpeningHours" => list(opening_hours()),
        "Phonemes" => phoneme_details(),
        "PlaceId" => String.t() | atom(),
        "PlaceType" => String.t() | atom(),
        "PoliticalView" => String.t() | atom(),
        "Position" => list([float()]()),
        "TimeZone" => time_zone(),
        "Title" => String.t() | atom()
      }

  """
  @type search_nearby_result_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => [String.t() | atom()],
        "Reason" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_point() :: %{
        "Position" => list([float()]())
      }

  """
  @type access_point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_place_response() :: %{
        "AccessPoints" => list(access_point()),
        "AccessRestrictions" => list(access_restriction()),
        "Address" => address(),
        "AddressNumberCorrected" => boolean(),
        "BusinessChains" => list(business_chain()),
        "Categories" => list(category()),
        "Contacts" => contacts(),
        "FoodTypes" => list(food_type()),
        "MainAddress" => related_place(),
        "MapView" => list([float()]()),
        "OpeningHours" => list(opening_hours()),
        "Phonemes" => phoneme_details(),
        "PlaceId" => String.t() | atom(),
        "PlaceType" => String.t() | atom(),
        "PoliticalView" => String.t() | atom(),
        "Position" => list([float()]()),
        "PostalCodeDetails" => list(postal_code_details()),
        "PricingBucket" => [String.t() | atom()],
        "SecondaryAddresses" => list(related_place()),
        "TimeZone" => time_zone(),
        "Title" => String.t() | atom()
      }

  """
  @type get_place_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      related_place() :: %{
        "AccessPoints" => list(access_point()),
        "Address" => address(),
        "PlaceId" => String.t() | atom(),
        "PlaceType" => String.t() | atom(),
        "Position" => list([float()]()),
        "Title" => String.t() | atom()
      }

  """
  @type related_place() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      address_component_phonemes() :: %{
        "Block" => list(phoneme_transcription()),
        "Country" => list(phoneme_transcription()),
        "District" => list(phoneme_transcription()),
        "Locality" => list(phoneme_transcription()),
        "Region" => list(phoneme_transcription()),
        "Street" => list(phoneme_transcription()),
        "SubBlock" => list(phoneme_transcription()),
        "SubDistrict" => list(phoneme_transcription()),
        "SubRegion" => list(phoneme_transcription())
      }

  """
  @type address_component_phonemes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      address_component_match_scores() :: %{
        "AddressNumber" => float(),
        "Block" => float(),
        "Building" => float(),
        "Country" => float(),
        "District" => float(),
        "Intersection" => list(float()),
        "Locality" => float(),
        "PostalCode" => float(),
        "Region" => float(),
        "SecondaryAddressComponents" => list(secondary_address_component_match_score()),
        "SubBlock" => float(),
        "SubDistrict" => float(),
        "SubRegion" => float()
      }

  """
  @type address_component_match_scores() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      category() :: %{
        "Id" => String.t() | atom(),
        "LocalizedName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Primary" => boolean()
      }

  """
  @type category() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_details() :: %{
        "Categories" => list(category()),
        "Label" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type contact_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geocode_query_components() :: %{
        "AddressNumber" => String.t() | atom(),
        "Country" => String.t() | atom(),
        "District" => String.t() | atom(),
        "Locality" => String.t() | atom(),
        "PostalCode" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "Street" => String.t() | atom(),
        "SubRegion" => String.t() | atom()
      }

  """
  @type geocode_query_components() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggest_result_item() :: %{
        "Highlights" => suggest_highlights(),
        "Place" => suggest_place_result(),
        "Query" => suggest_query_result(),
        "SuggestResultItemType" => String.t() | atom(),
        "Title" => String.t() | atom()
      }

  """
  @type suggest_result_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geocode_request() :: %{
        optional("AdditionalFeatures") => list(String.t() | atom()),
        optional("BiasPosition") => list([float()]()),
        optional("Filter") => geocode_filter(),
        optional("IntendedUse") => String.t() | atom(),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        optional("PoliticalView") => String.t() | atom(),
        optional("QueryComponents") => geocode_query_components(),
        optional("QueryText") => String.t() | atom()
      }

  """
  @type geocode_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geocode_result_item() :: %{
        "AccessPoints" => list(access_point()),
        "Address" => address(),
        "AddressNumberCorrected" => boolean(),
        "Categories" => list(category()),
        "Distance" => float(),
        "FoodTypes" => list(food_type()),
        "Intersections" => list(intersection()),
        "MainAddress" => related_place(),
        "MapView" => list([float()]()),
        "MatchScores" => match_score_details(),
        "ParsedQuery" => geocode_parsed_query(),
        "PlaceId" => String.t() | atom(),
        "PlaceType" => String.t() | atom(),
        "PoliticalView" => String.t() | atom(),
        "Position" => list([float()]()),
        "PostalCodeDetails" => list(postal_code_details()),
        "SecondaryAddresses" => list(related_place()),
        "TimeZone" => time_zone(),
        "Title" => String.t() | atom()
      }

  """
  @type geocode_result_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reverse_geocode_filter() :: %{
        "IncludePlaceTypes" => list(String.t() | atom())
      }

  """
  @type reverse_geocode_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phoneme_transcription() :: %{
        "Language" => String.t() | atom(),
        "Preferred" => boolean(),
        "Value" => String.t() | atom()
      }

  """
  @type phoneme_transcription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_nearby_response() :: %{
        "NextToken" => String.t() | atom(),
        "PricingBucket" => [String.t() | atom()],
        "ResultItems" => list(search_nearby_result_item())
      }

  """
  @type search_nearby_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      autocomplete_filter() :: %{
        "BoundingBox" => list([float()]()),
        "Circle" => filter_circle(),
        "IncludeCountries" => list(String.t() | atom()),
        "IncludePlaceTypes" => list(String.t() | atom())
      }

  """
  @type autocomplete_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "AddressNumber" => String.t() | atom(),
        "Block" => String.t() | atom(),
        "Building" => String.t() | atom(),
        "Country" => country(),
        "District" => String.t() | atom(),
        "Intersection" => list(String.t() | atom()),
        "Label" => String.t() | atom(),
        "Locality" => String.t() | atom(),
        "PostalCode" => String.t() | atom(),
        "Region" => region(),
        "SecondaryAddressComponents" => list(secondary_address_component()),
        "Street" => String.t() | atom(),
        "StreetComponents" => list(street_components()),
        "SubBlock" => String.t() | atom(),
        "SubDistrict" => String.t() | atom(),
        "SubRegion" => sub_region()
      }

  """
  @type address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      opening_hours() :: %{
        "Categories" => list(category()),
        "Components" => list(opening_hours_components()),
        "Display" => list(String.t() | atom()),
        "OpenNow" => boolean()
      }

  """
  @type opening_hours() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contacts() :: %{
        "Emails" => list(contact_details()),
        "Faxes" => list(contact_details()),
        "Phones" => list(contact_details()),
        "Websites" => list(contact_details())
      }

  """
  @type contacts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_match_scores() :: %{
        "Address" => address_component_match_scores(),
        "Title" => float()
      }

  """
  @type component_match_scores() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggest_filter() :: %{
        "BoundingBox" => list([float()]()),
        "Circle" => filter_circle(),
        "IncludeCountries" => list(String.t() | atom())
      }

  """
  @type suggest_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_nearby_request() :: %{
        optional("AdditionalFeatures") => list(String.t() | atom()),
        optional("Filter") => search_nearby_filter(),
        optional("IntendedUse") => String.t() | atom(),
        optional("Key") => String.t() | atom(),
        optional("Language") => String.t() | atom(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t() | atom(),
        optional("PoliticalView") => String.t() | atom(),
        optional("QueryRadius") => float(),
        required("QueryPosition") => list([float()]())
      }

  """
  @type search_nearby_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sub_region_highlights() :: %{
        "Code" => list(highlight()),
        "Name" => list(highlight())
      }

  """
  @type sub_region_highlights() :: %{(String.t() | atom()) => any()}

  @type autocomplete_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type geocode_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_place_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type reverse_geocode_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_nearby_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_text_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type suggest_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2020-11-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "geo-places",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Geo Places",
      signature_version: "v4",
      signing_name: "geo-places",
      target_prefix: nil
    }
  end

  @doc """
  `Autocomplete` completes potential places and addresses as the user types, based
  on the partial input.

  The API enhances the efficiency and accuracy of address by completing query
  based on a few entered keystrokes. It helps you by completing partial queries
  with valid address completion. Also, the API supports the filtering of results
  based on geographic location, country, or specific place types, and can be
  tailored using optional parameters like language and political views.
  """
  @spec autocomplete(map(), autocomplete_request(), list()) ::
          {:ok, autocomplete_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, autocomplete_errors()}
  def autocomplete(%Client{} = client, input, options \\ []) do
    url_path = "/autocomplete"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  `Geocode` converts a textual address or place into geographic coordinates.

  You can obtain geographic coordinates, address component, and other related
  information. It supports flexible queries, including free-form text or
  structured queries with components like street names, postal codes, and regions.
  The Geocode API can also provide additional features such as time zone
  information and the inclusion of political views.
  """
  @spec geocode(map(), geocode_request(), list()) ::
          {:ok, geocode_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, geocode_errors()}
  def geocode(%Client{} = client, input, options \\ []) do
    url_path = "/geocode"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  `GetPlace` finds a place by its unique ID.

  A `PlaceId` is returned by other place operations.
  """
  @spec get_place(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_place_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_place_errors()}
  def get_place(
        %Client{} = client,
        place_id,
        additional_features \\ nil,
        intended_use \\ nil,
        key \\ nil,
        language \\ nil,
        political_view \\ nil,
        options \\ []
      ) do
    url_path = "/place/#{AWS.Util.encode_uri(place_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(political_view) do
        [{"political-view", political_view} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(language) do
        [{"language", language} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(key) do
        [{"key", key} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(intended_use) do
        [{"intended-use", intended_use} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(additional_features) do
        [{"additional-features", additional_features} | query_params]
      else
        query_params
      end

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  `ReverseGeocode` converts geographic coordinates into a human-readable address
  or place.

  You can obtain address component, and other related information such as place
  type, category, street information. The Reverse Geocode API supports filtering
  to on place type so that you can refine result based on your need. Also, The
  Reverse Geocode API can also provide additional features such as time zone
  information and the inclusion of political views.
  """
  @spec reverse_geocode(map(), reverse_geocode_request(), list()) ::
          {:ok, reverse_geocode_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reverse_geocode_errors()}
  def reverse_geocode(%Client{} = client, input, options \\ []) do
    url_path = "/reverse-geocode"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  `SearchNearby` queries for points of interest within a radius from a central
  coordinates, returning place results with optional filters such as categories,
  business chains, food types and more.

  The API returns details such as a place name, address, phone, category, food
  type, contact, opening hours. Also, the API can return phonemes, time zones and
  more based on requested parameters.
  """
  @spec search_nearby(map(), search_nearby_request(), list()) ::
          {:ok, search_nearby_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_nearby_errors()}
  def search_nearby(%Client{} = client, input, options \\ []) do
    url_path = "/search-nearby"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  `SearchText` searches for geocode and place information.

  You can then complete a follow-up query suggested from the `Suggest` API via a
  query id.
  """
  @spec search_text(map(), search_text_request(), list()) ::
          {:ok, search_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_text_errors()}
  def search_text(%Client{} = client, input, options \\ []) do
    url_path = "/search-text"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
  `Suggest` provides intelligent predictions or recommendations based on the
  user's input or context, such as relevant places, points of interest, query
  terms or search category.

  It is designed to help users find places or point of interests candidates or
  identify a follow on query based on incomplete or misspelled queries. It returns
  a list of possible matches or refinements that can be used to formulate a more
  accurate query. Users can select the most appropriate suggestion and use it for
  further searching. The API provides options for filtering results by location
  and other attributes, and allows for additional features like phonemes and
  timezones. The response includes refined query terms and detailed place
  information.
  """
  @spec suggest(map(), suggest_request(), list()) ::
          {:ok, suggest_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, suggest_errors()}
  def suggest(%Client{} = client, input, options \\ []) do
    url_path = "/suggest"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Key", "key"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-geo-pricing-bucket", "PricingBucket"}]
      )

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
