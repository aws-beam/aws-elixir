# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GeoPlaces do
  @moduledoc """

  The Places API enables powerful location search and geocoding capabilities for
  your applications, offering global coverage with rich, detailed information.

  Key features include:

    *
  Forward and reverse geocoding for addresses and coordinates

    *
  Comprehensive place searches with detailed information, including:

      *
  Business names and addresses

      *
  Contact information

      *
  Hours of operation

      *
  POI (Points of Interest) categories

      *
  Food types for restaurants

      *
  Chain affiliation for relevant businesses

    *
  Global data coverage with a wide range of POI categories

    *
  Regular data updates to ensure accuracy and relevance
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      reverse_geocode_result_item() :: %{
        "AccessPoints" => list(access_point()()),
        "Address" => address(),
        "AddressNumberCorrected" => [boolean()],
        "Categories" => list(category()()),
        "Distance" => float(),
        "FoodTypes" => list(food_type()()),
        "MapView" => list([float()]()),
        "PlaceId" => [String.t()],
        "PlaceType" => String.t(),
        "PoliticalView" => String.t(),
        "Position" => list([float()]()),
        "PostalCodeDetails" => list(postal_code_details()()),
        "TimeZone" => time_zone(),
        "Title" => [String.t()]
      }

  """
  @type reverse_geocode_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sub_region() :: %{
        "Code" => [String.t()],
        "Name" => [String.t()]
      }

  """
  @type sub_region() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phoneme_details() :: %{
        "Address" => address_component_phonemes(),
        "Title" => list(phoneme_transcription()())
      }

  """
  @type phoneme_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autocomplete_response() :: %{
        "PricingBucket" => [String.t()],
        "ResultItems" => list(autocomplete_result_item()())
      }

  """
  @type autocomplete_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reverse_geocode_request() :: %{
        optional("AdditionalFeatures") => list(String.t()()),
        optional("Filter") => reverse_geocode_filter(),
        optional("IntendedUse") => String.t(),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxResults") => [integer()],
        optional("PoliticalView") => String.t(),
        optional("QueryRadius") => float(),
        required("QueryPosition") => list([float()]())
      }

  """
  @type reverse_geocode_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_text_result_item() :: %{
        "AccessPoints" => list(access_point()()),
        "AccessRestrictions" => list(access_restriction()()),
        "Address" => address(),
        "AddressNumberCorrected" => [boolean()],
        "BusinessChains" => list(business_chain()()),
        "Categories" => list(category()()),
        "Contacts" => contacts(),
        "Distance" => float(),
        "FoodTypes" => list(food_type()()),
        "MapView" => list([float()]()),
        "OpeningHours" => list(opening_hours()()),
        "Phonemes" => phoneme_details(),
        "PlaceId" => [String.t()],
        "PlaceType" => String.t(),
        "PoliticalView" => String.t(),
        "Position" => list([float()]()),
        "TimeZone" => time_zone(),
        "Title" => [String.t()]
      }

  """
  @type search_text_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      country_highlights() :: %{
        "Code" => list(highlight()()),
        "Name" => list(highlight()())
      }

  """
  @type country_highlights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_address_highlights() :: %{
        "Label" => list(highlight()())
      }

  """
  @type suggest_address_highlights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      highlight() :: %{
        "EndIndex" => [integer()],
        "StartIndex" => [integer()],
        "Value" => [String.t()]
      }

  """
  @type highlight() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_response() :: %{
        "PricingBucket" => [String.t()],
        "QueryRefinements" => list(query_refinement()()),
        "ResultItems" => list(suggest_result_item()())
      }

  """
  @type suggest_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_nearby_filter() :: %{
        "BoundingBox" => list([float()]()),
        "ExcludeBusinessChains" => list([String.t()]()),
        "ExcludeCategories" => list([String.t()]()),
        "ExcludeFoodTypes" => list([String.t()]()),
        "IncludeBusinessChains" => list([String.t()]()),
        "IncludeCategories" => list([String.t()]()),
        "IncludeCountries" => list(String.t()()),
        "IncludeFoodTypes" => list([String.t()]())
      }

  """
  @type search_nearby_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_circle() :: %{
        "Center" => list([float()]()),
        "Radius" => float()
      }

  """
  @type filter_circle() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autocomplete_address_highlights() :: %{
        "AddressNumber" => list(highlight()()),
        "Block" => list(highlight()()),
        "Building" => list(highlight()()),
        "Country" => country_highlights(),
        "District" => list(highlight()()),
        "Intersection" => list(list(highlight()())()),
        "Label" => list(highlight()()),
        "Locality" => list(highlight()()),
        "PostalCode" => list(highlight()()),
        "Region" => region_highlights(),
        "Street" => list(highlight()()),
        "SubBlock" => list(highlight()()),
        "SubDistrict" => list(highlight()()),
        "SubRegion" => sub_region_highlights()
      }

  """
  @type autocomplete_address_highlights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usps_zip() :: %{
        "ZipClassificationCode" => String.t()
      }

  """
  @type usps_zip() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_text_response() :: %{
        "NextToken" => String.t(),
        "PricingBucket" => [String.t()],
        "ResultItems" => list(search_text_result_item()())
      }

  """
  @type search_text_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_place_result() :: %{
        "AccessPoints" => list(access_point()()),
        "AccessRestrictions" => list(access_restriction()()),
        "Address" => address(),
        "BusinessChains" => list(business_chain()()),
        "Categories" => list(category()()),
        "Distance" => float(),
        "FoodTypes" => list(food_type()()),
        "MapView" => list([float()]()),
        "Phonemes" => phoneme_details(),
        "PlaceId" => [String.t()],
        "PlaceType" => String.t(),
        "PoliticalView" => String.t(),
        "Position" => list([float()]()),
        "TimeZone" => time_zone()
      }

  """
  @type suggest_place_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      food_type() :: %{
        "Id" => [String.t()],
        "LocalizedName" => [String.t()],
        "Primary" => [boolean()]
      }

  """
  @type food_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      match_score_details() :: %{
        "Components" => component_match_scores(),
        "Overall" => float()
      }

  """
  @type match_score_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      country() :: %{
        "Code2" => String.t(),
        "Code3" => String.t(),
        "Name" => [String.t()]
      }

  """
  @type country() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_query_result() :: %{
        "QueryId" => [String.t()],
        "QueryType" => String.t()
      }

  """
  @type suggest_query_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geocode_filter() :: %{
        "IncludeCountries" => list(String.t()()),
        "IncludePlaceTypes" => list(String.t()())
      }

  """
  @type geocode_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autocomplete_highlights() :: %{
        "Address" => autocomplete_address_highlights(),
        "Title" => list(highlight()())
      }

  """
  @type autocomplete_highlights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autocomplete_result_item() :: %{
        "Address" => address(),
        "Distance" => float(),
        "Highlights" => autocomplete_highlights(),
        "Language" => String.t(),
        "PlaceId" => [String.t()],
        "PlaceType" => String.t(),
        "PoliticalView" => String.t(),
        "Title" => [String.t()]
      }

  """
  @type autocomplete_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      region_highlights() :: %{
        "Code" => list(highlight()()),
        "Name" => list(highlight()())
      }

  """
  @type region_highlights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      usps_zip_plus4() :: %{
        "RecordTypeCode" => String.t()
      }

  """
  @type usps_zip_plus4() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reverse_geocode_response() :: %{
        "PricingBucket" => [String.t()],
        "ResultItems" => list(reverse_geocode_result_item()())
      }

  """
  @type reverse_geocode_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      region() :: %{
        "Code" => [String.t()],
        "Name" => [String.t()]
      }

  """
  @type region() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      street_components() :: %{
        "BaseName" => [String.t()],
        "Direction" => [String.t()],
        "Language" => String.t(),
        "Prefix" => [String.t()],
        "Suffix" => [String.t()],
        "Type" => [String.t()],
        "TypePlacement" => String.t(),
        "TypeSeparator" => String.t()
      }

  """
  @type street_components() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_request() :: %{
        optional("AdditionalFeatures") => list(String.t()()),
        optional("BiasPosition") => list([float()]()),
        optional("Filter") => suggest_filter(),
        optional("IntendedUse") => String.t(),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxQueryRefinements") => [integer()],
        optional("MaxResults") => [integer()],
        optional("PoliticalView") => String.t(),
        required("QueryText") => String.t()
      }

  """
  @type suggest_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      business_chain() :: %{
        "Id" => [String.t()],
        "Name" => [String.t()]
      }

  """
  @type business_chain() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_text_request() :: %{
        optional("AdditionalFeatures") => list(String.t()()),
        optional("BiasPosition") => list([float()]()),
        optional("Filter") => search_text_filter(),
        optional("IntendedUse") => String.t(),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t(),
        optional("PoliticalView") => String.t(),
        optional("QueryId") => String.t(),
        optional("QueryText") => String.t()
      }

  """
  @type search_text_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_restriction() :: %{
        "Categories" => list(category()()),
        "Restricted" => [boolean()]
      }

  """
  @type access_restriction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_text_filter() :: %{
        "BoundingBox" => list([float()]()),
        "Circle" => filter_circle(),
        "IncludeCountries" => list(String.t()())
      }

  """
  @type search_text_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      opening_hours_components() :: %{
        "OpenDuration" => [String.t()],
        "OpenTime" => [String.t()],
        "Recurrence" => [String.t()]
      }

  """
  @type opening_hours_components() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      postal_code_details() :: %{
        "PostalAuthority" => String.t(),
        "PostalCode" => [String.t()],
        "PostalCodeType" => String.t(),
        "UspsZip" => usps_zip(),
        "UspsZipPlus4" => usps_zip_plus4()
      }

  """
  @type postal_code_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => [String.t()],
        "Name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_place_request() :: %{
        optional("AdditionalFeatures") => list(String.t()()),
        optional("IntendedUse") => String.t(),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("PoliticalView") => String.t()
      }

  """
  @type get_place_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_zone() :: %{
        "Name" => [String.t()],
        "Offset" => [String.t()],
        "OffsetSeconds" => float()
      }

  """
  @type time_zone() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_refinement() :: %{
        "EndIndex" => [integer()],
        "OriginalTerm" => [String.t()],
        "RefinedTerm" => [String.t()],
        "StartIndex" => [integer()]
      }

  """
  @type query_refinement() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_highlights() :: %{
        "Address" => suggest_address_highlights(),
        "Title" => list(highlight()())
      }

  """
  @type suggest_highlights() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autocomplete_request() :: %{
        optional("AdditionalFeatures") => list(String.t()()),
        optional("BiasPosition") => list([float()]()),
        optional("Filter") => autocomplete_filter(),
        optional("IntendedUse") => String.t(),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxResults") => [integer()],
        optional("PoliticalView") => String.t(),
        optional("PostalCodeMode") => String.t(),
        required("QueryText") => String.t()
      }

  """
  @type autocomplete_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geocode_response() :: %{
        "PricingBucket" => [String.t()],
        "ResultItems" => list(geocode_result_item()())
      }

  """
  @type geocode_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_nearby_result_item() :: %{
        "AccessPoints" => list(access_point()()),
        "AccessRestrictions" => list(access_restriction()()),
        "Address" => address(),
        "AddressNumberCorrected" => [boolean()],
        "BusinessChains" => list(business_chain()()),
        "Categories" => list(category()()),
        "Contacts" => contacts(),
        "Distance" => float(),
        "FoodTypes" => list(food_type()()),
        "MapView" => list([float()]()),
        "OpeningHours" => list(opening_hours()()),
        "Phonemes" => phoneme_details(),
        "PlaceId" => [String.t()],
        "PlaceType" => String.t(),
        "PoliticalView" => String.t(),
        "Position" => list([float()]()),
        "TimeZone" => time_zone(),
        "Title" => [String.t()]
      }

  """
  @type search_nearby_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()()),
        "Message" => [String.t()],
        "Reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_point() :: %{
        "Position" => list([float()]())
      }

  """
  @type access_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_place_response() :: %{
        "AccessPoints" => list(access_point()()),
        "AccessRestrictions" => list(access_restriction()()),
        "Address" => address(),
        "AddressNumberCorrected" => [boolean()],
        "BusinessChains" => list(business_chain()()),
        "Categories" => list(category()()),
        "Contacts" => contacts(),
        "FoodTypes" => list(food_type()()),
        "MapView" => list([float()]()),
        "OpeningHours" => list(opening_hours()()),
        "Phonemes" => phoneme_details(),
        "PlaceId" => [String.t()],
        "PlaceType" => String.t(),
        "PoliticalView" => String.t(),
        "Position" => list([float()]()),
        "PostalCodeDetails" => list(postal_code_details()()),
        "PricingBucket" => [String.t()],
        "TimeZone" => time_zone(),
        "Title" => [String.t()]
      }

  """
  @type get_place_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address_component_phonemes() :: %{
        "Block" => list(phoneme_transcription()()),
        "Country" => list(phoneme_transcription()()),
        "District" => list(phoneme_transcription()()),
        "Locality" => list(phoneme_transcription()()),
        "Region" => list(phoneme_transcription()()),
        "Street" => list(phoneme_transcription()()),
        "SubBlock" => list(phoneme_transcription()()),
        "SubDistrict" => list(phoneme_transcription()()),
        "SubRegion" => list(phoneme_transcription()())
      }

  """
  @type address_component_phonemes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address_component_match_scores() :: %{
        "AddressNumber" => float(),
        "Block" => float(),
        "Building" => float(),
        "Country" => float(),
        "District" => float(),
        "Intersection" => list(float()()),
        "Locality" => float(),
        "PostalCode" => float(),
        "Region" => float(),
        "SubBlock" => float(),
        "SubDistrict" => float(),
        "SubRegion" => float()
      }

  """
  @type address_component_match_scores() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      category() :: %{
        "Id" => [String.t()],
        "LocalizedName" => [String.t()],
        "Name" => [String.t()],
        "Primary" => [boolean()]
      }

  """
  @type category() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_details() :: %{
        "Categories" => list(category()()),
        "Label" => [String.t()],
        "Value" => [String.t()]
      }

  """
  @type contact_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geocode_query_components() :: %{
        "AddressNumber" => String.t(),
        "Country" => String.t(),
        "District" => String.t(),
        "Locality" => String.t(),
        "PostalCode" => String.t(),
        "Region" => String.t(),
        "Street" => String.t(),
        "SubRegion" => String.t()
      }

  """
  @type geocode_query_components() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_result_item() :: %{
        "Highlights" => suggest_highlights(),
        "Place" => suggest_place_result(),
        "Query" => suggest_query_result(),
        "SuggestResultItemType" => String.t(),
        "Title" => [String.t()]
      }

  """
  @type suggest_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geocode_request() :: %{
        optional("AdditionalFeatures") => list(String.t()()),
        optional("BiasPosition") => list([float()]()),
        optional("Filter") => geocode_filter(),
        optional("IntendedUse") => String.t(),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxResults") => [integer()],
        optional("PoliticalView") => String.t(),
        optional("QueryComponents") => geocode_query_components(),
        optional("QueryText") => String.t()
      }

  """
  @type geocode_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geocode_result_item() :: %{
        "AccessPoints" => list(access_point()()),
        "Address" => address(),
        "AddressNumberCorrected" => [boolean()],
        "Categories" => list(category()()),
        "Distance" => float(),
        "FoodTypes" => list(food_type()()),
        "MapView" => list([float()]()),
        "MatchScores" => match_score_details(),
        "PlaceId" => [String.t()],
        "PlaceType" => String.t(),
        "PoliticalView" => String.t(),
        "Position" => list([float()]()),
        "PostalCodeDetails" => list(postal_code_details()()),
        "TimeZone" => time_zone(),
        "Title" => [String.t()]
      }

  """
  @type geocode_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reverse_geocode_filter() :: %{
        "IncludePlaceTypes" => list(String.t()())
      }

  """
  @type reverse_geocode_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phoneme_transcription() :: %{
        "Language" => String.t(),
        "Preferred" => [boolean()],
        "Value" => [String.t()]
      }

  """
  @type phoneme_transcription() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_nearby_response() :: %{
        "NextToken" => String.t(),
        "PricingBucket" => [String.t()],
        "ResultItems" => list(search_nearby_result_item()())
      }

  """
  @type search_nearby_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      autocomplete_filter() :: %{
        "BoundingBox" => list([float()]()),
        "Circle" => filter_circle(),
        "IncludeCountries" => list(String.t()()),
        "IncludePlaceTypes" => list(String.t()())
      }

  """
  @type autocomplete_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "AddressNumber" => [String.t()],
        "Block" => [String.t()],
        "Building" => [String.t()],
        "Country" => country(),
        "District" => [String.t()],
        "Intersection" => list(String.t()()),
        "Label" => [String.t()],
        "Locality" => [String.t()],
        "PostalCode" => [String.t()],
        "Region" => region(),
        "Street" => [String.t()],
        "StreetComponents" => list(street_components()()),
        "SubBlock" => [String.t()],
        "SubDistrict" => [String.t()],
        "SubRegion" => sub_region()
      }

  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      opening_hours() :: %{
        "Categories" => list(category()()),
        "Components" => list(opening_hours_components()()),
        "Display" => list(String.t()()),
        "OpenNow" => [boolean()]
      }

  """
  @type opening_hours() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contacts() :: %{
        "Emails" => list(contact_details()()),
        "Faxes" => list(contact_details()()),
        "Phones" => list(contact_details()()),
        "Websites" => list(contact_details()())
      }

  """
  @type contacts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      component_match_scores() :: %{
        "Address" => address_component_match_scores(),
        "Title" => float()
      }

  """
  @type component_match_scores() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suggest_filter() :: %{
        "BoundingBox" => list([float()]()),
        "Circle" => filter_circle(),
        "IncludeCountries" => list(String.t()())
      }

  """
  @type suggest_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_nearby_request() :: %{
        optional("AdditionalFeatures") => list(String.t()()),
        optional("Filter") => search_nearby_filter(),
        optional("IntendedUse") => String.t(),
        optional("Key") => String.t(),
        optional("Language") => String.t(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t(),
        optional("PoliticalView") => String.t(),
        optional("QueryRadius") => float(),
        required("QueryPosition") => list([float()]())
      }

  """
  @type search_nearby_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sub_region_highlights() :: %{
        "Code" => list(highlight()()),
        "Name" => list(highlight()())
      }

  """
  @type sub_region_highlights() :: %{String.t() => any()}

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
  The autocomplete operation speeds up and increases the accuracy of entering
  addresses by providing a list of address candidates matching a partially entered
  address.

  Results are sorted from most to least matching. Filtering and biasing can be
  used to increase the relevance of the results if additional search context is
  known
  """
  @spec autocomplete(map(), autocomplete_request(), list()) ::
          {:ok, autocomplete_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  The `Geocode` action allows you to obtain coordinates, addresses, and other
  information about places.
  """
  @spec geocode(map(), geocode_request(), list()) ::
          {:ok, geocode_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Finds a place by its unique ID.

  A `PlaceId` is returned by other place
  operations.
  """
  @spec get_place(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_place_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  The `ReverseGeocode` operation allows you to retrieve addresses and place
  information from coordinates.
  """
  @spec reverse_geocode(map(), reverse_geocode_request(), list()) ::
          {:ok, reverse_geocode_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Search nearby a specified location.
  """
  @spec search_nearby(map(), search_nearby_request(), list()) ::
          {:ok, search_nearby_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Use the `SearchText` operation to search for geocode and place information.

  You can then complete a follow-up query suggested from the `Suggest` API via a
  query id.
  """
  @spec search_text(map(), search_text_request(), list()) ::
          {:ok, search_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  The `Suggest` operation finds addresses or place candidates based on
  incomplete or misspelled queries.

  You then select the best query to submit based on the
  returned results.
  """
  @spec suggest(map(), suggest_request(), list()) ::
          {:ok, suggest_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
