# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceCatalog do
  @moduledoc """
  Catalog API actions allow you to manage your entities through list, describe,
  and
  update capabilities.

  An entity can be a product or an offer on AWS Marketplace.

  You can automate your entity update process by integrating the AWS Marketplace
  Catalog
  API with your AWS Marketplace product build or deployment pipelines. You can
  also create
  your own applications on top of the Catalog API to manage your products on AWS
  Marketplace.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      resale_authorization_product_name_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type resale_authorization_product_name_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_entities_request() :: %{
        optional("EntityTypeFilters") => list(),
        optional("EntityTypeSort") => list(),
        optional("FilterList") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("OwnershipType") => list(any()),
        optional("Sort") => sort(),
        required("Catalog") => String.t(),
        required("EntityType") => String.t()
      }

  """
  @type list_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_change_set_request() :: %{
        required("Catalog") => String.t(),
        required("ChangeSetId") => String.t()
      }

  """
  @type describe_change_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_response() :: %{}

  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      cancel_change_set_response() :: %{
        "ChangeSetArn" => String.t(),
        "ChangeSetId" => String.t()
      }

  """
  @type cancel_change_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change() :: %{
        "ChangeName" => String.t(),
        "ChangeType" => String.t(),
        "Details" => String.t(),
        "DetailsDocument" => any(),
        "Entity" => entity(),
        "EntityTags" => list(tag()())
      }

  """
  @type change() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_created_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type resale_authorization_created_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_change_sets_request() :: %{
        optional("FilterList") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Sort") => sort(),
        required("Catalog") => String.t()
      }

  """
  @type list_change_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_filters() :: %{
        "EntityId" => data_product_entity_id_filter(),
        "LastModifiedDate" => data_product_last_modified_date_filter(),
        "ProductTitle" => data_product_title_filter(),
        "Visibility" => data_product_visibility_filter()
      }

  """
  @type data_product_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity_detail() :: %{
        "DetailsDocument" => any(),
        "EntityArn" => String.t(),
        "EntityIdentifier" => String.t(),
        "EntityType" => String.t(),
        "LastModifiedDate" => String.t()
      }

  """
  @type entity_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      entity() :: %{
        "Identifier" => String.t(),
        "Type" => String.t()
      }

  """
  @type entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_product_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type ami_product_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_manufacturer_account_id_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type resale_authorization_manufacturer_account_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_product_title_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type ami_product_title_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_targeting_filter() :: %{
        "ValueList" => list(list(any())())
      }

  """
  @type offer_targeting_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_summary() :: %{
        "AvailabilityEndDate" => String.t(),
        "CreatedDate" => String.t(),
        "ManufacturerAccountId" => String.t(),
        "ManufacturerLegalName" => String.t(),
        "Name" => String.t(),
        "OfferExtendedStatus" => String.t(),
        "ProductId" => String.t(),
        "ProductName" => String.t(),
        "ResellerAccountID" => String.t(),
        "ResellerLegalName" => String.t(),
        "Status" => list(any())
      }

  """
  @type resale_authorization_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saa_s_product_entity_id_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type saa_s_product_entity_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_summary() :: %{
        "ProductTitle" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type data_product_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_manufacturer_legal_name_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type resale_authorization_manufacturer_legal_name_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saa_s_product_title_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type saa_s_product_title_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_created_date_filter() :: %{
        "DateRange" => resale_authorization_created_date_filter_date_range(),
        "ValueList" => list(String.t()())
      }

  """
  @type resale_authorization_created_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity_summary() :: %{
        "AmiProductSummary" => ami_product_summary(),
        "ContainerProductSummary" => container_product_summary(),
        "DataProductSummary" => data_product_summary(),
        "EntityArn" => String.t(),
        "EntityId" => String.t(),
        "EntityType" => String.t(),
        "LastModifiedDate" => String.t(),
        "Name" => String.t(),
        "OfferSummary" => offer_summary(),
        "ResaleAuthorizationSummary" => resale_authorization_summary(),
        "SaaSProductSummary" => saa_s_product_summary(),
        "Visibility" => String.t()
      }

  """
  @type entity_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_availability_end_date_filter() :: %{
        "DateRange" => resale_authorization_availability_end_date_filter_date_range(),
        "ValueList" => list(String.t()())
      }

  """
  @type resale_authorization_availability_end_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_change_set_response() :: %{
        "ChangeSet" => list(change_summary()()),
        "ChangeSetArn" => String.t(),
        "ChangeSetId" => String.t(),
        "ChangeSetName" => String.t(),
        "EndTime" => String.t(),
        "FailureCode" => list(any()),
        "FailureDescription" => String.t(),
        "Intent" => list(any()),
        "StartTime" => String.t(),
        "Status" => list(any())
      }

  """
  @type describe_change_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_availability_end_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type offer_availability_end_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_product_summary() :: %{
        "ProductTitle" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type ami_product_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "Policy" => String.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_last_modified_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type data_product_last_modified_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_product_entity_id_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type container_product_entity_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_product_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type container_product_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_entity_response() :: %{
        "Details" => String.t(),
        "DetailsDocument" => any(),
        "EntityArn" => String.t(),
        "EntityIdentifier" => String.t(),
        "EntityType" => String.t(),
        "LastModifiedDate" => String.t()
      }

  """
  @type describe_entity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_product_id_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type resale_authorization_product_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_filters() :: %{
        "AvailabilityEndDate" => resale_authorization_availability_end_date_filter(),
        "CreatedDate" => resale_authorization_created_date_filter(),
        "EntityId" => resale_authorization_entity_id_filter(),
        "LastModifiedDate" => resale_authorization_last_modified_date_filter(),
        "ManufacturerAccountId" => resale_authorization_manufacturer_account_id_filter(),
        "ManufacturerLegalName" => resale_authorization_manufacturer_legal_name_filter(),
        "Name" => resale_authorization_name_filter(),
        "OfferExtendedStatus" => resale_authorization_offer_extended_status_filter(),
        "ProductId" => resale_authorization_product_id_filter(),
        "ProductName" => resale_authorization_product_name_filter(),
        "ResellerAccountID" => resale_authorization_reseller_account_id_filter(),
        "ResellerLegalName" => resale_authorization_reseller_legal_name_filter(),
        "Status" => resale_authorization_status_filter()
      }

  """
  @type resale_authorization_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_visibility_filter() :: %{
        "ValueList" => list(list(any())())
      }

  """
  @type data_product_visibility_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_offer_extended_status_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type resale_authorization_offer_extended_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_product_visibility_filter() :: %{
        "ValueList" => list(list(any())())
      }

  """
  @type container_product_visibility_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_last_modified_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type resale_authorization_last_modified_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_reseller_legal_name_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type resale_authorization_reseller_legal_name_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_product_filters() :: %{
        "EntityId" => container_product_entity_id_filter(),
        "LastModifiedDate" => container_product_last_modified_date_filter(),
        "ProductTitle" => container_product_title_filter(),
        "Visibility" => container_product_visibility_filter()
      }

  """
  @type container_product_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_describe_entities_request() :: %{
        required("EntityRequestList") => list(entity_request()())
      }

  """
  @type batch_describe_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saa_s_product_last_modified_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type saa_s_product_last_modified_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saa_s_product_visibility_filter() :: %{
        "ValueList" => list(list(any())())
      }

  """
  @type saa_s_product_visibility_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_last_modified_date_filter() :: %{
        "DateRange" => offer_last_modified_date_filter_date_range()
      }

  """
  @type offer_last_modified_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_product_last_modified_date_filter() :: %{
        "DateRange" => container_product_last_modified_date_filter_date_range()
      }

  """
  @type container_product_last_modified_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_product_visibility_filter() :: %{
        "ValueList" => list(list(any())())
      }

  """
  @type ami_product_visibility_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_release_date_filter() :: %{
        "DateRange" => offer_release_date_filter_date_range()
      }

  """
  @type offer_release_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_change_set_request() :: %{
        optional("ChangeSetName") => String.t(),
        optional("ChangeSetTags") => list(tag()()),
        optional("ClientRequestToken") => String.t(),
        optional("Intent") => list(any()),
        required("Catalog") => String.t(),
        required("ChangeSet") => list(change()())
      }

  """
  @type start_change_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_product_entity_id_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type ami_product_entity_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_product_summary() :: %{
        "ProductTitle" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type container_product_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_resale_authorization_id_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type offer_resale_authorization_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_entity_id_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type resale_authorization_entity_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_product_id_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type offer_product_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_set_summary_list_item() :: %{
        "ChangeSetArn" => String.t(),
        "ChangeSetId" => String.t(),
        "ChangeSetName" => String.t(),
        "EndTime" => String.t(),
        "EntityIdList" => list(String.t()()),
        "FailureCode" => list(any()),
        "StartTime" => String.t(),
        "Status" => list(any())
      }

  """
  @type change_set_summary_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "ResourceArn" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_supported_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_name_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type resale_authorization_name_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type data_product_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saa_s_product_filters() :: %{
        "EntityId" => saa_s_product_entity_id_filter(),
        "LastModifiedDate" => saa_s_product_last_modified_date_filter(),
        "ProductTitle" => saa_s_product_title_filter(),
        "Visibility" => saa_s_product_visibility_filter()
      }

  """
  @type saa_s_product_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type get_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_summary() :: %{
        "AvailabilityEndDate" => String.t(),
        "BuyerAccounts" => list(String.t()()),
        "Name" => String.t(),
        "ProductId" => String.t(),
        "ReleaseDate" => String.t(),
        "ResaleAuthorizationId" => String.t(),
        "State" => list(any()),
        "Targeting" => list(list(any())())
      }

  """
  @type offer_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Name" => String.t(),
        "ValueList" => list(String.t()())
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saa_s_product_summary() :: %{
        "ProductTitle" => String.t(),
        "Visibility" => list(any())
      }

  """
  @type saa_s_product_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sort() :: %{
        "SortBy" => String.t(),
        "SortOrder" => list(any())
      }

  """
  @type sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_product_last_modified_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type ami_product_last_modified_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_title_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type data_product_title_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_status_filter() :: %{
        "ValueList" => list(list(any())())
      }

  """
  @type resale_authorization_status_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_entity_request() :: %{
        required("Catalog") => String.t(),
        required("EntityId") => String.t()
      }

  """
  @type describe_entity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        required("Policy") => String.t(),
        required("ResourceArn") => String.t()
      }

  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }

  """
  @type error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      change_summary() :: %{
        "ChangeName" => String.t(),
        "ChangeType" => String.t(),
        "Details" => String.t(),
        "DetailsDocument" => any(),
        "Entity" => entity(),
        "ErrorDetailList" => list(error_detail()())
      }

  """
  @type change_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_change_set_response() :: %{
        "ChangeSetArn" => String.t(),
        "ChangeSetId" => String.t()
      }

  """
  @type start_change_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saa_s_product_last_modified_date_filter() :: %{
        "DateRange" => saa_s_product_last_modified_date_filter_date_range()
      }

  """
  @type saa_s_product_last_modified_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      offer_name_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type offer_name_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type offer_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saa_s_product_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type saa_s_product_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_state_filter() :: %{
        "ValueList" => list(list(any())())
      }

  """
  @type offer_state_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_entity_id_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type offer_entity_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_buyer_accounts_filter() :: %{
        "WildCardValue" => String.t()
      }

  """
  @type offer_buyer_accounts_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{}

  """
  @type put_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      data_product_entity_id_filter() :: %{
        "ValueList" => list(String.t()())
      }

  """
  @type data_product_entity_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_last_modified_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type offer_last_modified_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      entity_request() :: %{
        "Catalog" => String.t(),
        "EntityId" => String.t()
      }

  """
  @type entity_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_product_title_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type container_product_title_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }

  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_product_filters() :: %{
        "EntityId" => ami_product_entity_id_filter(),
        "LastModifiedDate" => ami_product_last_modified_date_filter(),
        "ProductTitle" => ami_product_title_filter(),
        "Visibility" => ami_product_visibility_filter()
      }

  """
  @type ami_product_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_availability_end_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type resale_authorization_availability_end_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_describe_entities_response() :: %{
        "EntityDetails" => map(),
        "Errors" => map()
      }

  """
  @type batch_describe_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_describe_error_detail() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }

  """
  @type batch_describe_error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_entities_response() :: %{
        "EntitySummaryList" => list(entity_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_last_modified_date_filter() :: %{
        "DateRange" => resale_authorization_last_modified_date_filter_date_range()
      }

  """
  @type resale_authorization_last_modified_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_reseller_account_id_filter() :: %{
        "ValueList" => list(String.t()()),
        "WildCardValue" => String.t()
      }

  """
  @type resale_authorization_reseller_account_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_change_set_request() :: %{
        required("Catalog") => String.t(),
        required("ChangeSetId") => String.t()
      }

  """
  @type cancel_change_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resale_authorization_sort() :: %{
        "SortBy" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type resale_authorization_sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_product_last_modified_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type container_product_last_modified_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_filters() :: %{
        "AvailabilityEndDate" => offer_availability_end_date_filter(),
        "BuyerAccounts" => offer_buyer_accounts_filter(),
        "EntityId" => offer_entity_id_filter(),
        "LastModifiedDate" => offer_last_modified_date_filter(),
        "Name" => offer_name_filter(),
        "ProductId" => offer_product_id_filter(),
        "ReleaseDate" => offer_release_date_filter(),
        "ResaleAuthorizationId" => offer_resale_authorization_id_filter(),
        "State" => offer_state_filter(),
        "Targeting" => offer_targeting_filter()
      }

  """
  @type offer_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ami_product_last_modified_date_filter() :: %{
        "DateRange" => ami_product_last_modified_date_filter_date_range()
      }

  """
  @type ami_product_last_modified_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_change_sets_response() :: %{
        "ChangeSetSummaryList" => list(change_set_summary_list_item()()),
        "NextToken" => String.t()
      }

  """
  @type list_change_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_product_last_modified_date_filter() :: %{
        "DateRange" => data_product_last_modified_date_filter_date_range()
      }

  """
  @type data_product_last_modified_date_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_release_date_filter_date_range() :: %{
        "AfterValue" => String.t(),
        "BeforeValue" => String.t()
      }

  """
  @type offer_release_date_filter_date_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      offer_availability_end_date_filter() :: %{
        "DateRange" => offer_availability_end_date_filter_date_range()
      }

  """
  @type offer_availability_end_date_filter() :: %{String.t() => any()}

  @type batch_describe_entities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type cancel_change_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_change_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_entity_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_supported_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_change_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type list_entities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_change_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  def metadata do
    %{
      api_version: "2018-09-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "catalog.marketplace",
      global?: false,
      protocol: "rest-json",
      service_id: "Marketplace Catalog",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: nil
    }
  end

  @doc """
  Returns metadata and content for multiple entities.

  This is the Batch version of the `DescribeEntity` API and uses the same IAM
  permission action as `DescribeEntity` API.
  """
  @spec batch_describe_entities(map(), batch_describe_entities_request(), list()) ::
          {:ok, batch_describe_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_describe_entities_errors()}
  def batch_describe_entities(%Client{} = client, input, options \\ []) do
    url_path = "/BatchDescribeEntities"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Used to cancel an open change request.

  Must be sent before the status of the request
  changes to `APPLYING`, the final stage of completing your change request. You
  can describe a change during the 60-day request history retention period for API
  calls.
  """
  @spec cancel_change_set(map(), cancel_change_set_request(), list()) ::
          {:ok, cancel_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_change_set_errors()}
  def cancel_change_set(%Client{} = client, input, options \\ []) do
    url_path = "/CancelChangeSet"
    headers = []

    {query_params, input} =
      [
        {"Catalog", "catalog"},
        {"ChangeSetId", "changeSetId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a resource-based policy on an entity that is identified by its resource
  ARN.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteResourcePolicy"
    headers = []

    {query_params, input} =
      [
        {"ResourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides information about a given change set.
  """
  @spec describe_change_set(map(), String.t(), String.t(), list()) ::
          {:ok, describe_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_change_set_errors()}
  def describe_change_set(%Client{} = client, catalog, change_set_id, options \\ []) do
    url_path = "/DescribeChangeSet"
    headers = []
    query_params = []

    query_params =
      if !is_nil(change_set_id) do
        [{"changeSetId", change_set_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(catalog) do
        [{"catalog", catalog} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the metadata and content of the entity.
  """
  @spec describe_entity(map(), String.t(), String.t(), list()) ::
          {:ok, describe_entity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_entity_errors()}
  def describe_entity(%Client{} = client, catalog, entity_id, options \\ []) do
    url_path = "/DescribeEntity"
    headers = []
    query_params = []

    query_params =
      if !is_nil(entity_id) do
        [{"entityId", entity_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(catalog) do
        [{"catalog", catalog} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a resource-based policy of an entity that is identified by its resource
  ARN.
  """
  @spec get_resource_policy(map(), String.t(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/GetResourcePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the list of change sets owned by the account being used to make the
  call.

  You
  can filter this list by providing any combination of `entityId`,
  `ChangeSetName`, and status. If you provide more than one filter, the API
  operation applies a logical AND between the filters.

  You can describe a change during the 60-day request history retention period for
  API
  calls.
  """
  @spec list_change_sets(map(), list_change_sets_request(), list()) ::
          {:ok, list_change_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_change_sets_errors()}
  def list_change_sets(%Client{} = client, input, options \\ []) do
    url_path = "/ListChangeSets"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides the list of entities of a given type.
  """
  @spec list_entities(map(), list_entities_request(), list()) ::
          {:ok, list_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_entities_errors()}
  def list_entities(%Client{} = client, input, options \\ []) do
    url_path = "/ListEntities"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all tags that have been added to a resource (either an
  [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change
  set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Attaches a resource-based policy to an entity.

  Examples of an entity include:
  `AmiProduct` and `ContainerProduct`.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutResourcePolicy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows you to request changes for your entities.

  Within a single
  `ChangeSet`, you can't start the same change type against the same entity
  multiple times. Additionally, when a `ChangeSet` is running, all the entities
  targeted by the different changes are locked until the change set has completed
  (either
  succeeded, cancelled, or failed). If you try to start a change set containing a
  change
  against an entity that is already locked, you will receive a
  `ResourceInUseException` error.

  For example, you can't start the `ChangeSet` described in the
  [example](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_StartChangeSet.html#API_StartChangeSet_Examples) later in this topic because it contains two changes to run the same
  change type (`AddRevisions`) against the same entity
  (`entity-id@1`).

  For more information about working with change sets, see [ Working with change
  sets](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets).
  For information about change types for
  single-AMI products, see [Working with single-AMI products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/ami-products.html#working-with-single-AMI-products).
  Also, for more information about change
  types available for container-based products, see [Working with container products](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/container-products.html#working-with-container-products).
  """
  @spec start_change_set(map(), start_change_set_request(), list()) ::
          {:ok, start_change_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_change_set_errors()}
  def start_change_set(%Client{} = client, input, options \\ []) do
    url_path = "/StartChangeSet"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Tags a resource (either an
  [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change
  set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes a tag or list of tags from a resource (either an
  [entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities) or [change
  set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
