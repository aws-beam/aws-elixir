# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QApps do
  @moduledoc """
  The Amazon Q Apps feature capability within Amazon Q Business allows web
  experience
  users to create lightweight, purpose-built AI apps to fulfill specific tasks
  from
  within their web experience.

  For example, users can create a Q App that exclusively
  generates marketing-related content to improve your marketing team's
  productivity or a
  Q App for writing customer emails and creating promotional content using a
  certain
  style of voice, tone, and branding. For more information on the capabilities,
  see
  [Amazon Q Apps capabilities](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-experience-iam-role.html#q-apps-actions)
  in the *Amazon Q Business User Guide*.

  For an overview of the Amazon Q App APIs, see [Overview of Amazon Q Apps API
  operations](https://docs.aws.amazon.com/amazonq/latest/api-reference/API_Operations_QApps.html).

  For information about the IAM access control permissions you need to
  use the Amazon Q Apps API, see [
  IAM role for the Amazon Q Business web experience including Amazon Q
  Apps](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/deploy-experience-iam-role.html)
  in the
  *Amazon Q Business User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_library_item_input() :: %{
        required("appId") => String.t(),
        required("appVersion") => integer(),
        required("categories") => list(String.t()()),
        required("instanceId") => String.t()
      }

  """
  @type create_library_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_library_item_metadata_input() :: %{
        optional("isVerified") => [boolean()],
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }

  """
  @type update_library_item_metadata_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_app_item() :: %{
        "appArn" => String.t(),
        "appId" => String.t(),
        "canEdit" => [boolean()],
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "isVerified" => [boolean()],
        "status" => [String.t()],
        "title" => String.t()
      }

  """
  @type user_app_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_library_item_output() :: %{
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "isVerified" => [boolean()],
        "libraryItemId" => String.t(),
        "ratingCount" => [integer()],
        "status" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()]
      }

  """
  @type create_library_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_document_output() :: %{
        "fileId" => [String.t()]
      }

  """
  @type import_document_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_library_item_input() :: %{
        optional("appId") => String.t(),
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }

  """
  @type get_library_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_attribute() :: %{
        "name" => String.t(),
        "value" => list()
      }

  """
  @type document_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_q_app_from_user_input() :: %{
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }

  """
  @type disassociate_q_app_from_user_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_category_input() :: %{
        required("categories") => list(batch_create_category_input_category()()),
        required("instanceId") => String.t()
      }

  """
  @type batch_create_category_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_categories_output() :: %{
        "categories" => list(category()())
      }

  """
  @type list_categories_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      category_input() :: %{
        "color" => [String.t()],
        "id" => String.t(),
        "title" => [String.t()]
      }

  """
  @type category_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_definition_input() :: %{
        "cards" => list(list()()),
        "initialPrompt" => String.t()
      }

  """
  @type app_definition_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_q_app_session_input() :: %{
        optional("initialValues") => list(card_value()()),
        optional("tags") => map(),
        required("appId") => String.t(),
        required("appVersion") => integer(),
        required("instanceId") => String.t()
      }

  """
  @type start_q_app_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_library_item_output() :: %{
        "appId" => String.t(),
        "appVersion" => integer(),
        "categories" => list(category()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "isRatedByUser" => [boolean()],
        "isVerified" => [boolean()],
        "libraryItemId" => String.t(),
        "ratingCount" => [integer()],
        "status" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()],
        "userCount" => [integer()]
      }

  """
  @type get_library_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_q_app_session_input() :: %{
        optional("values") => list(card_value()()),
        required("instanceId") => String.t(),
        required("sessionId") => String.t()
      }

  """
  @type update_q_app_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_q_app_input() :: %{
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }

  """
  @type delete_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predict_q_app_output() :: %{
        "app" => predict_app_definition(),
        "problemStatement" => [String.t()]
      }

  """
  @type predict_q_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_q_app_with_user_input() :: %{
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }

  """
  @type associate_q_app_with_user_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_q_app_input() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("appDefinition") => app_definition_input(),
        required("instanceId") => String.t(),
        required("title") => String.t()
      }

  """
  @type create_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_plugin_card() :: %{
        "dependencies" => list([String.t()]()),
        "id" => String.t(),
        "pluginId" => [String.t()],
        "pluginType" => list(any()),
        "prompt" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }

  """
  @type q_plugin_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_library_item_output() :: %{
        "appId" => String.t(),
        "appVersion" => integer(),
        "categories" => list(category()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "isRatedByUser" => [boolean()],
        "isVerified" => [boolean()],
        "libraryItemId" => String.t(),
        "ratingCount" => [integer()],
        "status" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()],
        "userCount" => [integer()]
      }

  """
  @type update_library_item_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_upload_card_input() :: %{
        "allowOverride" => [boolean()],
        "fileId" => String.t(),
        "filename" => String.t(),
        "id" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }

  """
  @type file_upload_card_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_q_app_session_output() :: %{
        "sessionArn" => [String.t()],
        "sessionId" => [String.t()]
      }

  """
  @type update_q_app_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_definition() :: %{
        "appDefinitionVersion" => [String.t()],
        "canEdit" => [boolean()],
        "cards" => list(list()())
      }

  """
  @type app_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      library_item_member() :: %{
        "appId" => String.t(),
        "appVersion" => integer(),
        "categories" => list(category()()),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "isRatedByUser" => [boolean()],
        "isVerified" => [boolean()],
        "libraryItemId" => String.t(),
        "ratingCount" => [integer()],
        "status" => [String.t()],
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()],
        "userCount" => [integer()]
      }

  """
  @type library_item_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_q_app_input() :: %{
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }

  """
  @type get_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_q_app_session_input() :: %{
        required("instanceId") => String.t(),
        required("sessionId") => String.t()
      }

  """
  @type get_q_app_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_library_item_input() :: %{
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }

  """
  @type delete_library_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predict_app_definition() :: %{
        "appDefinition" => app_definition_input(),
        "description" => String.t(),
        "title" => String.t()
      }

  """
  @type predict_app_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      card_status() :: %{
        "currentState" => list(any()),
        "currentValue" => [String.t()]
      }

  """
  @type card_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_query_card() :: %{
        "attributeFilter" => attribute_filter(),
        "dependencies" => list([String.t()]()),
        "id" => String.t(),
        "outputSource" => list(any()),
        "prompt" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }

  """
  @type q_query_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_category_input() :: %{
        required("categories") => list(String.t()()),
        required("instanceId") => String.t()
      }

  """
  @type batch_delete_category_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_category_input_category() :: %{
        "color" => [String.t()],
        "id" => String.t(),
        "title" => [String.t()]
      }

  """
  @type batch_create_category_input_category() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_plugin_card_input() :: %{
        "id" => String.t(),
        "pluginId" => String.t(),
        "prompt" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }

  """
  @type q_plugin_card_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_q_app_output() :: %{
        "appArn" => String.t(),
        "appDefinition" => app_definition(),
        "appId" => String.t(),
        "appVersion" => integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "description" => String.t(),
        "initialPrompt" => String.t(),
        "requiredCapabilities" => list(list(any())()),
        "status" => list(any()),
        "title" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()]
      }

  """
  @type get_q_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_library_item_review_input() :: %{
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }

  """
  @type disassociate_library_item_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_library_items_input() :: %{
        optional("categoryId") => String.t(),
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        required("instanceId") => String.t()
      }

  """
  @type list_library_items_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_input_card_input() :: %{
        "defaultValue" => String.t(),
        "id" => String.t(),
        "placeholder" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }

  """
  @type text_input_card_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conversation_message() :: %{
        "body" => [String.t()],
        "type" => list(any())
      }

  """
  @type conversation_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_library_item_input() :: %{
        optional("categories") => list(String.t()()),
        optional("status") => list(any()),
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }

  """
  @type update_library_item_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_q_app_output() :: %{
        "appArn" => String.t(),
        "appId" => String.t(),
        "appVersion" => integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "description" => String.t(),
        "initialPrompt" => String.t(),
        "requiredCapabilities" => list(list(any())()),
        "status" => list(any()),
        "title" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()]
      }

  """
  @type create_q_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_categories_input() :: %{
        required("instanceId") => String.t()
      }

  """
  @type list_categories_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      text_input_card() :: %{
        "defaultValue" => String.t(),
        "dependencies" => list([String.t()]()),
        "id" => String.t(),
        "placeholder" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }

  """
  @type text_input_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_library_items_output() :: %{
        "libraryItems" => list(library_item_member()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_library_items_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_q_app_session_output() :: %{
        "cardStatus" => map(),
        "sessionArn" => [String.t()],
        "sessionId" => [String.t()],
        "status" => list(any())
      }

  """
  @type get_q_app_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_q_apps_input() :: %{
        optional("limit") => integer(),
        optional("nextToken") => String.t(),
        required("instanceId") => String.t()
      }

  """
  @type list_q_apps_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_library_item_review_input() :: %{
        required("instanceId") => String.t(),
        required("libraryItemId") => String.t()
      }

  """
  @type associate_library_item_review_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_upload_card() :: %{
        "allowOverride" => [boolean()],
        "dependencies" => list([String.t()]()),
        "fileId" => [String.t()],
        "filename" => [String.t()],
        "id" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }

  """
  @type file_upload_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      card_value() :: %{
        "cardId" => String.t(),
        "value" => [String.t()]
      }

  """
  @type card_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_q_app_output() :: %{
        "appArn" => String.t(),
        "appId" => String.t(),
        "appVersion" => integer(),
        "createdAt" => non_neg_integer(),
        "createdBy" => [String.t()],
        "description" => String.t(),
        "initialPrompt" => String.t(),
        "requiredCapabilities" => list(list(any())()),
        "status" => list(any()),
        "title" => String.t(),
        "updatedAt" => non_neg_integer(),
        "updatedBy" => [String.t()]
      }

  """
  @type update_q_app_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      category() :: %{
        "appCount" => [integer()],
        "color" => [String.t()],
        "id" => String.t(),
        "title" => [String.t()]
      }

  """
  @type category() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_q_app_session_input() :: %{
        required("instanceId") => String.t(),
        required("sessionId") => String.t()
      }

  """
  @type stop_q_app_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_filter() :: %{
        "andAllFilters" => list(attribute_filter()()),
        "containsAll" => document_attribute(),
        "containsAny" => document_attribute(),
        "equalsTo" => document_attribute(),
        "greaterThan" => document_attribute(),
        "greaterThanOrEquals" => document_attribute(),
        "lessThan" => document_attribute(),
        "lessThanOrEquals" => document_attribute(),
        "notFilter" => attribute_filter(),
        "orAllFilters" => list(attribute_filter()())
      }

  """
  @type attribute_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_query_card_input() :: %{
        "attributeFilter" => attribute_filter(),
        "id" => String.t(),
        "outputSource" => list(any()),
        "prompt" => String.t(),
        "title" => String.t(),
        "type" => list(any())
      }

  """
  @type q_query_card_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_q_app_input() :: %{
        optional("appDefinition") => app_definition_input(),
        optional("description") => String.t(),
        optional("title") => String.t(),
        required("appId") => String.t(),
        required("instanceId") => String.t()
      }

  """
  @type update_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predict_q_app_input() :: %{
        optional("options") => list(),
        required("instanceId") => String.t()
      }

  """
  @type predict_q_app_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_too_large_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type content_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_document_input() :: %{
        optional("sessionId") => String.t(),
        required("appId") => String.t(),
        required("cardId") => String.t(),
        required("fileContentsBase64") => [String.t()],
        required("fileName") => String.t(),
        required("instanceId") => String.t(),
        required("scope") => list(any())
      }

  """
  @type import_document_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_category_input() :: %{
        required("categories") => list(category_input()()),
        required("instanceId") => String.t()
      }

  """
  @type batch_update_category_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_q_app_session_output() :: %{
        "sessionArn" => [String.t()],
        "sessionId" => [String.t()]
      }

  """
  @type start_q_app_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_q_apps_output() :: %{
        "apps" => list(user_app_item()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_q_apps_output() :: %{String.t() => any()}

  @type associate_library_item_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type associate_q_app_with_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type batch_create_category_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type batch_delete_category_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type batch_update_category_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type create_library_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type create_q_app_errors() ::
          content_too_large_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_library_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type delete_q_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type disassociate_library_item_review_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type disassociate_q_app_from_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_library_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_q_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_q_app_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type import_document_errors() ::
          content_too_large_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_categories_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_library_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_q_apps_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type predict_q_app_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | unauthorized_exception()

  @type start_q_app_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type stop_q_app_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_library_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type update_library_item_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type update_q_app_errors() ::
          content_too_large_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_q_app_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2023-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "data.qapps",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "QApps",
      signature_version: "v4",
      signing_name: "qapps",
      target_prefix: nil
    }
  end

  @doc """
  Associates a rating or review for a library item with the user submitting
  the request.

  This increments the rating count for the specified library item.
  """
  @spec associate_library_item_review(map(), associate_library_item_review_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_library_item_review_errors()}
  def associate_library_item_review(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.associateItemRating"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  This operation creates a link between the user's identity calling the operation
  and a
  specific Q App.

  This is useful to mark the Q App as a *favorite* for
  the user if the user doesn't own the Amazon Q App so they can still run it and
  see it in their
  inventory of Q Apps.
  """
  @spec associate_q_app_with_user(map(), associate_q_app_with_user_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_q_app_with_user_errors()}
  def associate_q_app_with_user(%Client{} = client, input, options \\ []) do
    url_path = "/apps.install"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Creates Categories for the Amazon Q Business application environment instance.

  Web experience users use Categories to tag and filter library items. For more
  information, see [Custom labels for Amazon Q Apps](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html).
  """
  @spec batch_create_category(map(), batch_create_category_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_category_errors()}
  def batch_create_category(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.createCategories"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Deletes Categories for the Amazon Q Business application environment instance.

  Web experience users use Categories to tag and filter library items. For more
  information, see [Custom labels for Amazon Q Apps](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html).
  """
  @spec batch_delete_category(map(), batch_delete_category_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_category_errors()}
  def batch_delete_category(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.deleteCategories"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Updates Categories for the Amazon Q Business application environment instance.

  Web experience users use Categories to tag and filter library items. For more
  information, see [Custom labels for Amazon Q Apps](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html).
  """
  @spec batch_update_category(map(), batch_update_category_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_category_errors()}
  def batch_update_category(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.updateCategories"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Creates a new library item for an Amazon Q App, allowing it to be discovered and
  used by other allowed users.
  """
  @spec create_library_item(map(), create_library_item_input(), list()) ::
          {:ok, create_library_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_library_item_errors()}
  def create_library_item(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.createItem"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Creates a new Amazon Q App based on the provided definition.

  The Q App definition specifies
  the cards and flow of the Q App. This operation also calculates the dependencies
  between the cards
  by inspecting the references in the prompts.
  """
  @spec create_q_app(map(), create_q_app_input(), list()) ::
          {:ok, create_q_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_q_app_errors()}
  def create_q_app(%Client{} = client, input, options \\ []) do
    url_path = "/apps.create"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Deletes a library item for an Amazon Q App, removing it from the library
  so it can no longer be discovered or used by other users.
  """
  @spec delete_library_item(map(), delete_library_item_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_library_item_errors()}
  def delete_library_item(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.deleteItem"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Deletes an Amazon Q App owned by the user.

  If the Q App was previously published to the library, it is also removed from
  the library.
  """
  @spec delete_q_app(map(), delete_q_app_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_q_app_errors()}
  def delete_q_app(%Client{} = client, input, options \\ []) do
    url_path = "/apps.delete"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Removes a rating or review previously submitted by the user for a library item.
  """
  @spec disassociate_library_item_review(map(), disassociate_library_item_review_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_library_item_review_errors()}
  def disassociate_library_item_review(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.disassociateItemRating"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Disassociates a Q App from a user removing the user's access to run the
  Q App.
  """
  @spec disassociate_q_app_from_user(map(), disassociate_q_app_from_user_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_q_app_from_user_errors()}
  def disassociate_q_app_from_user(%Client{} = client, input, options \\ []) do
    url_path = "/apps.uninstall"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Retrieves details about a library item for an Amazon Q App, including its
  metadata,
  categories, ratings, and usage statistics.
  """
  @spec get_library_item(map(), String.t() | nil, String.t(), String.t(), list()) ::
          {:ok, get_library_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_library_item_errors()}
  def get_library_item(
        %Client{} = client,
        app_id \\ nil,
        library_item_id,
        instance_id,
        options \\ []
      ) do
    url_path = "/catalog.getItem"
    headers = []

    headers =
      if !is_nil(instance_id) do
        [{"instance-id", instance_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(library_item_id) do
        [{"libraryItemId", library_item_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(app_id) do
        [{"appId", app_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the full details of an Q App, including its definition specifying the
  cards and flow.
  """
  @spec get_q_app(map(), String.t(), String.t(), list()) ::
          {:ok, get_q_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_q_app_errors()}
  def get_q_app(%Client{} = client, app_id, instance_id, options \\ []) do
    url_path = "/apps.get"
    headers = []

    headers =
      if !is_nil(instance_id) do
        [{"instance-id", instance_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(app_id) do
        [{"appId", app_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current state and results for an active session of an Amazon Q
  App.
  """
  @spec get_q_app_session(map(), String.t(), String.t(), list()) ::
          {:ok, get_q_app_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_q_app_session_errors()}
  def get_q_app_session(%Client{} = client, session_id, instance_id, options \\ []) do
    url_path = "/runtime.getQAppSession"
    headers = []

    headers =
      if !is_nil(instance_id) do
        [{"instance-id", instance_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(session_id) do
        [{"sessionId", session_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Uploads a file that can then be used either as a default in a
  `FileUploadCard` from Q App definition or as a file that
  is used inside a single Q App run.

  The purpose of the document is
  determined by a scope parameter that indicates whether it is at the
  app definition level or at the app session level.
  """
  @spec import_document(map(), import_document_input(), list()) ::
          {:ok, import_document_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_document_errors()}
  def import_document(%Client{} = client, input, options \\ []) do
    url_path = "/apps.importDocument"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Lists the categories of a Amazon Q Business application environment instance.

  For more information, see [Custom labels for Amazon Q Apps](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/qapps-custom-labels.html).
  """
  @spec list_categories(map(), String.t(), list()) ::
          {:ok, list_categories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_categories_errors()}
  def list_categories(%Client{} = client, instance_id, options \\ []) do
    url_path = "/catalog.listCategories"
    headers = []

    headers =
      if !is_nil(instance_id) do
        [{"instance-id", instance_id} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the library items for Amazon Q Apps that are published and available for
  users in your Amazon Web Services account.
  """
  @spec list_library_items(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_library_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_library_items_errors()}
  def list_library_items(
        %Client{} = client,
        category_id \\ nil,
        limit \\ nil,
        next_token \\ nil,
        instance_id,
        options \\ []
      ) do
    url_path = "/catalog.list"
    headers = []

    headers =
      if !is_nil(instance_id) do
        [{"instance-id", instance_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(category_id) do
        [{"categoryId", category_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Q Apps owned by or associated with the user either because
  they created it or because they used it from the library in the past.

  The user
  identity is extracted from the credentials used to invoke this operation..
  """
  @spec list_q_apps(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_q_apps_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_q_apps_errors()}
  def list_q_apps(%Client{} = client, limit \\ nil, next_token \\ nil, instance_id, options \\ []) do
    url_path = "/apps.list"
    headers = []

    headers =
      if !is_nil(instance_id) do
        [{"instance-id", instance_id} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with an Amazon Q Apps resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates an Amazon Q App definition based on either a conversation or
  a problem statement provided as input.The resulting app definition
  can be used to call `CreateQApp`.

  This API doesn't create
  Amazon Q Apps directly.
  """
  @spec predict_q_app(map(), predict_q_app_input(), list()) ::
          {:ok, predict_q_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, predict_q_app_errors()}
  def predict_q_app(%Client{} = client, input, options \\ []) do
    url_path = "/apps.predictQApp"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Starts a new session for an Amazon Q App, allowing inputs to be provided
  and the app to be run.

  Each Q App session will be condensed into a single conversation
  in the web experience.
  """
  @spec start_q_app_session(map(), start_q_app_session_input(), list()) ::
          {:ok, start_q_app_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_q_app_session_errors()}
  def start_q_app_session(%Client{} = client, input, options \\ []) do
    url_path = "/runtime.startQAppSession"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Stops an active session for an Amazon Q App.This deletes all data
  related to the session and makes it invalid for future uses.

  The
  results of the session will be persisted as part of the conversation.
  """
  @spec stop_q_app_session(map(), stop_q_app_session_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_q_app_session_errors()}
  def stop_q_app_session(%Client{} = client, input, options \\ []) do
    url_path = "/runtime.deleteMiniAppRun"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Associates tags with an Amazon Q Apps resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Disassociates tags from an Amazon Q Apps resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the library item for an Amazon Q App.
  """
  @spec update_library_item(map(), update_library_item_input(), list()) ::
          {:ok, update_library_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_library_item_errors()}
  def update_library_item(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.updateItem"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Updates the verification status of a library item for an Amazon Q App.
  """
  @spec update_library_item_metadata(map(), update_library_item_metadata_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_library_item_metadata_errors()}
  def update_library_item_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/catalog.updateItemMetadata"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Updates an existing Amazon Q App, allowing modifications to its title,
  description, and definition.
  """
  @spec update_q_app(map(), update_q_app_input(), list()) ::
          {:ok, update_q_app_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_q_app_errors()}
  def update_q_app(%Client{} = client, input, options \\ []) do
    url_path = "/apps.update"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
  Updates the session for a given Q App `sessionId`.

  This is only
  valid when at least one card of the session is in the `WAITING` state.
  Data for each `WAITING` card can be provided as input. If inputs
  are not provided, the call will be accepted but session will not move forward.
  Inputs for cards that are not in the `WAITING` status will be ignored.
  """
  @spec update_q_app_session(map(), update_q_app_session_input(), list()) ::
          {:ok, update_q_app_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_q_app_session_errors()}
  def update_q_app_session(%Client{} = client, input, options \\ []) do
    url_path = "/runtime.updateQAppSession"

    {headers, input} =
      [
        {"instanceId", "instance-id"}
      ]
      |> Request.build_params(input)

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
