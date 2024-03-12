# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Kendra do
  @moduledoc """
  Amazon Kendra is a service for indexing large document sets.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  one_drive_users() :: %{
    "OneDriveUserList" => list(String.t()()),
    "OneDriveUserS3Path" => s3_path()
  }
  """
  @type one_drive_users() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  saa_s_configuration() :: %{
    "HostUrl" => String.t(),
    "OrganizationName" => String.t()
  }
  """
  @type saa_s_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_experience_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type delete_experience_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  salesforce_knowledge_article_configuration() :: %{
    "CustomKnowledgeArticleTypeConfigurations" => list(salesforce_custom_knowledge_article_type_configuration()()),
    "IncludedStates" => list(list(any())()),
    "StandardKnowledgeArticleTypeConfiguration" => salesforce_standard_knowledge_article_type_configuration()
  }
  """
  @type salesforce_knowledge_article_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  entity_persona_configuration() :: %{
    "EntityId" => String.t(),
    "Persona" => list(any())
  }
  """
  @type entity_persona_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_control_configuration_summary() :: %{
    "Id" => String.t()
  }
  """
  @type access_control_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  suggestion_value() :: %{
    "Text" => suggestion_text_with_highlights()
  }
  """
  @type suggestion_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  featured_results_item() :: %{
    "AdditionalAttributes" => list(additional_result_attribute()()),
    "DocumentAttributes" => list(document_attribute()()),
    "DocumentExcerpt" => text_with_highlights(),
    "DocumentId" => String.t(),
    "DocumentTitle" => text_with_highlights(),
    "DocumentURI" => String.t(),
    "FeedbackToken" => String.t(),
    "Id" => String.t(),
    "Type" => list(any())
  }
  """
  @type featured_results_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_query_suggestions_block_list_request() :: %{
    optional("Description") => String.t(),
    optional("Name") => String.t(),
    optional("RoleArn") => String.t(),
    optional("SourceS3Path") => s3_path(),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type update_query_suggestions_block_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  retrieve_result_item() :: %{
    "Content" => String.t(),
    "DocumentAttributes" => list(document_attribute()()),
    "DocumentId" => String.t(),
    "DocumentTitle" => String.t(),
    "DocumentURI" => String.t(),
    "Id" => String.t(),
    "ScoreAttributes" => score_attributes()
  }
  """
  @type retrieve_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  box_configuration() :: %{
    "CommentFieldMappings" => list(data_source_to_index_field_mapping()()),
    "CrawlComments" => boolean(),
    "CrawlTasks" => boolean(),
    "CrawlWebLinks" => boolean(),
    "EnterpriseId" => String.t(),
    "ExclusionPatterns" => list(String.t()()),
    "FileFieldMappings" => list(data_source_to_index_field_mapping()()),
    "InclusionPatterns" => list(String.t()()),
    "SecretArn" => String.t(),
    "TaskFieldMappings" => list(data_source_to_index_field_mapping()()),
    "UseChangeLog" => boolean(),
    "VpcConfiguration" => data_source_vpc_configuration(),
    "WebLinkFieldMappings" => list(data_source_to_index_field_mapping()())
  }
  """
  @type box_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("ResourceARN") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_access_control_configuration_request() :: %{
    optional("AccessControlList") => list(principal()()),
    optional("Description") => String.t(),
    optional("HierarchicalAccessControlList") => list(hierarchical_principal()()),
    optional("Name") => String.t(),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type update_access_control_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_vpc_configuration() :: %{
    "SecurityGroupIds" => list(String.t()()),
    "SubnetIds" => list(String.t()())
  }
  """
  @type data_source_vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_data_source_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type describe_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_path() :: %{
    "Bucket" => String.t(),
    "Key" => String.t()
  }
  """
  @type s3_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_sync_job_metric_target() :: %{
    "DataSourceId" => String.t(),
    "DataSourceSyncJobId" => String.t()
  }
  """
  @type data_source_sync_job_metric_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document_attribute() :: %{
    "Key" => String.t(),
    "Value" => document_attribute_value()
  }
  """
  @type document_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_experience_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type describe_experience_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  text_with_highlights() :: %{
    "Highlights" => list(highlight()()),
    "Text" => String.t()
  }
  """
  @type text_with_highlights() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  proxy_configuration() :: %{
    "Credentials" => String.t(),
    "Host" => String.t(),
    "Port" => integer()
  }
  """
  @type proxy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_data_source_request() :: %{
    optional("ClientToken") => String.t(),
    optional("Configuration") => data_source_configuration(),
    optional("CustomDocumentEnrichmentConfiguration") => custom_document_enrichment_configuration(),
    optional("Description") => String.t(),
    optional("LanguageCode") => String.t(),
    optional("RoleArn") => String.t(),
    optional("Schedule") => String.t(),
    optional("Tags") => list(tag()()),
    optional("VpcConfiguration") => data_source_vpc_configuration(),
    required("IndexId") => String.t(),
    required("Name") => String.t(),
    required("Type") => list(any())
  }
  """
  @type create_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_page_to_index_field_mapping() :: %{
    "DataSourceFieldName" => list(any()),
    "DateFieldFormat" => String.t(),
    "IndexFieldName" => String.t()
  }
  """
  @type confluence_page_to_index_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  site_maps_configuration() :: %{
    "SiteMaps" => list(String.t()())
  }
  """
  @type site_maps_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_configuration() :: %{
    "AlfrescoConfiguration" => alfresco_configuration(),
    "BoxConfiguration" => box_configuration(),
    "ConfluenceConfiguration" => confluence_configuration(),
    "DatabaseConfiguration" => database_configuration(),
    "FsxConfiguration" => fsx_configuration(),
    "GitHubConfiguration" => git_hub_configuration(),
    "GoogleDriveConfiguration" => google_drive_configuration(),
    "JiraConfiguration" => jira_configuration(),
    "OneDriveConfiguration" => one_drive_configuration(),
    "QuipConfiguration" => quip_configuration(),
    "S3Configuration" => s3_data_source_configuration(),
    "SalesforceConfiguration" => salesforce_configuration(),
    "ServiceNowConfiguration" => service_now_configuration(),
    "SharePointConfiguration" => share_point_configuration(),
    "SlackConfiguration" => slack_configuration(),
    "TemplateConfiguration" => template_configuration(),
    "WebCrawlerConfiguration" => web_crawler_configuration(),
    "WorkDocsConfiguration" => work_docs_configuration()
  }
  """
  @type data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  content_source_configuration() :: %{
    "DataSourceIds" => list(String.t()()),
    "DirectPutContent" => boolean(),
    "FaqIds" => list(String.t()())
  }
  """
  @type content_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_thesauri_response() :: %{
    "NextToken" => String.t(),
    "ThesaurusSummaryItems" => list(thesaurus_summary()())
  }
  """
  @type list_thesauri_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflicting_item() :: %{
    "QueryText" => String.t(),
    "SetId" => String.t(),
    "SetName" => String.t()
  }
  """
  @type conflicting_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_document_enrichment_configuration() :: %{
    "InlineConfigurations" => list(inline_custom_document_enrichment_configuration()()),
    "PostExtractionHookConfiguration" => hook_configuration(),
    "PreExtractionHookConfiguration" => hook_configuration(),
    "RoleArn" => String.t()
  }
  """
  @type custom_document_enrichment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  git_hub_configuration() :: %{
    "ExclusionFileNamePatterns" => list(String.t()()),
    "ExclusionFileTypePatterns" => list(String.t()()),
    "ExclusionFolderNamePatterns" => list(String.t()()),
    "GitHubCommitConfigurationFieldMappings" => list(data_source_to_index_field_mapping()()),
    "GitHubDocumentCrawlProperties" => git_hub_document_crawl_properties(),
    "GitHubIssueAttachmentConfigurationFieldMappings" => list(data_source_to_index_field_mapping()()),
    "GitHubIssueCommentConfigurationFieldMappings" => list(data_source_to_index_field_mapping()()),
    "GitHubIssueDocumentConfigurationFieldMappings" => list(data_source_to_index_field_mapping()()),
    "GitHubPullRequestCommentConfigurationFieldMappings" => list(data_source_to_index_field_mapping()()),
    "GitHubPullRequestDocumentAttachmentConfigurationFieldMappings" => list(data_source_to_index_field_mapping()()),
    "GitHubPullRequestDocumentConfigurationFieldMappings" => list(data_source_to_index_field_mapping()()),
    "GitHubRepositoryConfigurationFieldMappings" => list(data_source_to_index_field_mapping()()),
    "InclusionFileNamePatterns" => list(String.t()()),
    "InclusionFileTypePatterns" => list(String.t()()),
    "InclusionFolderNamePatterns" => list(String.t()()),
    "OnPremiseConfiguration" => on_premise_configuration(),
    "RepositoryFilter" => list(String.t()()),
    "SaaSConfiguration" => saa_s_configuration(),
    "SecretArn" => String.t(),
    "Type" => list(any()),
    "UseChangeLog" => boolean(),
    "VpcConfiguration" => data_source_vpc_configuration()
  }
  """
  @type git_hub_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  member_group() :: %{
    "DataSourceId" => String.t(),
    "GroupId" => String.t()
  }
  """
  @type member_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  json_token_type_configuration() :: %{
    "GroupAttributeField" => String.t(),
    "UserNameAttributeField" => String.t()
  }
  """
  @type json_token_type_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  highlight() :: %{
    "BeginOffset" => integer(),
    "EndOffset" => integer(),
    "TopAnswer" => boolean(),
    "Type" => list(any())
  }
  """
  @type highlight() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_in_use_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_query_suggestions_config_response() :: %{
    "AttributeSuggestionsConfig" => attribute_suggestions_describe_config(),
    "IncludeQueriesWithoutUserInformation" => boolean(),
    "LastClearTime" => non_neg_integer(),
    "LastSuggestionsBuildTime" => non_neg_integer(),
    "MinimumNumberOfQueryingUsers" => integer(),
    "MinimumQueryCount" => integer(),
    "Mode" => list(any()),
    "QueryLogLookBackWindowInDays" => integer(),
    "Status" => list(any()),
    "TotalSuggestionsCount" => integer()
  }
  """
  @type describe_query_suggestions_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_index_request() :: %{
    required("Id") => String.t()
  }
  """
  @type delete_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  index_configuration_summary() :: %{
    "CreatedAt" => non_neg_integer(),
    "Edition" => list(any()),
    "Id" => String.t(),
    "Name" => String.t(),
    "Status" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type index_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_control_configuration_response() :: %{
    "Id" => String.t()
  }
  """
  @type create_access_control_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  faq_statistics() :: %{
    "IndexedQuestionAnswersCount" => integer()
  }
  """
  @type faq_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  user_group_resolution_configuration() :: %{
    "UserGroupResolutionMode" => list(any())
  }
  """
  @type user_group_resolution_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_query_suggestions_request() :: %{
    optional("AttributeSuggestionsConfig") => attribute_suggestions_get_config(),
    optional("MaxSuggestionsCount") => integer(),
    optional("SuggestionTypes") => list(list(any())()),
    required("IndexId") => String.t(),
    required("QueryText") => String.t()
  }
  """
  @type get_query_suggestions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experience_response() :: %{
    "Id" => String.t()
  }
  """
  @type create_experience_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document_attribute_target() :: %{
    "TargetDocumentAttributeKey" => String.t(),
    "TargetDocumentAttributeValue" => document_attribute_value(),
    "TargetDocumentAttributeValueDeletion" => boolean()
  }
  """
  @type document_attribute_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  click_feedback() :: %{
    "ClickTime" => non_neg_integer(),
    "ResultId" => String.t()
  }
  """
  @type click_feedback() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_query_suggestions_block_list_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type delete_query_suggestions_block_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_group() :: %{
    "DataSourceId" => String.t(),
    "GroupId" => String.t()
  }
  """
  @type data_source_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_unavailable_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_query_suggestions_block_list_response() :: %{
    "Id" => String.t()
  }
  """
  @type create_query_suggestions_block_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_sync_job_metrics() :: %{
    "DocumentsAdded" => String.t(),
    "DocumentsDeleted" => String.t(),
    "DocumentsFailed" => String.t(),
    "DocumentsModified" => String.t(),
    "DocumentsScanned" => String.t()
  }
  """
  @type data_source_sync_job_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  connection_configuration() :: %{
    "DatabaseHost" => String.t(),
    "DatabaseName" => String.t(),
    "DatabasePort" => integer(),
    "SecretArn" => String.t(),
    "TableName" => String.t()
  }
  """
  @type connection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_delete_featured_results_set_error() :: %{
    "ErrorCode" => list(any()),
    "ErrorMessage" => String.t(),
    "Id" => String.t()
  }
  """
  @type batch_delete_featured_results_set_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  salesforce_standard_knowledge_article_type_configuration() :: %{
    "DocumentDataFieldName" => String.t(),
    "DocumentTitleFieldName" => String.t(),
    "FieldMappings" => list(data_source_to_index_field_mapping()())
  }
  """
  @type salesforce_standard_knowledge_article_type_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  clear_query_suggestions_request() :: %{
    required("IndexId") => String.t()
  }
  """
  @type clear_query_suggestions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_control_configurations_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_access_control_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  salesforce_standard_object_attachment_configuration() :: %{
    "DocumentTitleFieldName" => String.t(),
    "FieldMappings" => list(data_source_to_index_field_mapping()())
  }
  """
  @type salesforce_standard_object_attachment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  failed_entity() :: %{
    "EntityId" => String.t(),
    "ErrorMessage" => String.t()
  }
  """
  @type failed_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  git_hub_document_crawl_properties() :: %{
    "CrawlIssue" => boolean(),
    "CrawlIssueComment" => boolean(),
    "CrawlIssueCommentAttachment" => boolean(),
    "CrawlPullRequest" => boolean(),
    "CrawlPullRequestComment" => boolean(),
    "CrawlPullRequestCommentAttachment" => boolean(),
    "CrawlRepositoryDocuments" => boolean()
  }
  """
  @type git_hub_document_crawl_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experience_entities_response() :: %{
    "NextToken" => String.t(),
    "SummaryItems" => list(experience_entities_summary()())
  }
  """
  @type list_experience_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  salesforce_standard_object_configuration() :: %{
    "DocumentDataFieldName" => String.t(),
    "DocumentTitleFieldName" => String.t(),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "Name" => list(any())
  }
  """
  @type salesforce_standard_object_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document_metadata_configuration() :: %{
    "Name" => String.t(),
    "Relevance" => relevance(),
    "Search" => search(),
    "Type" => list(any())
  }
  """
  @type document_metadata_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_space_to_index_field_mapping() :: %{
    "DataSourceFieldName" => list(any()),
    "DateFieldFormat" => String.t(),
    "IndexFieldName" => String.t()
  }
  """
  @type confluence_space_to_index_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  query_result() :: %{
    "FacetResults" => list(facet_result()()),
    "FeaturedResultsItems" => list(featured_results_item()()),
    "QueryId" => String.t(),
    "ResultItems" => list(query_result_item()()),
    "SpellCorrectedQueries" => list(spell_corrected_query()()),
    "TotalNumberOfResults" => integer(),
    "Warnings" => list(warning()())
  }
  """
  @type query_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_attachment_configuration() :: %{
    "AttachmentFieldMappings" => list(confluence_attachment_to_index_field_mapping()()),
    "CrawlAttachments" => boolean()
  }
  """
  @type confluence_attachment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_featured_results_set_response() :: %{
    "CreationTimestamp" => float(),
    "Description" => String.t(),
    "FeaturedDocumentsMissing" => list(featured_document_missing()()),
    "FeaturedDocumentsWithMetadata" => list(featured_document_with_metadata()()),
    "FeaturedResultsSetId" => String.t(),
    "FeaturedResultsSetName" => String.t(),
    "LastUpdatedTimestamp" => float(),
    "QueryTexts" => list(String.t()()),
    "Status" => list(any())
  }
  """
  @type describe_featured_results_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  principal() :: %{
    "Access" => list(any()),
    "DataSourceId" => String.t(),
    "Name" => String.t(),
    "Type" => list(any())
  }
  """
  @type principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_query_suggestions_block_list_response() :: %{
    "CreatedAt" => non_neg_integer(),
    "Description" => String.t(),
    "ErrorMessage" => String.t(),
    "FileSizeBytes" => float(),
    "Id" => String.t(),
    "IndexId" => String.t(),
    "ItemCount" => integer(),
    "Name" => String.t(),
    "RoleArn" => String.t(),
    "SourceS3Path" => s3_path(),
    "Status" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type describe_query_suggestions_block_list_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_experience_response() :: %{

  }
  """
  @type delete_experience_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("ResourceARN") => String.t(),
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_index_request() :: %{
    required("Id") => String.t()
  }
  """
  @type describe_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  on_premise_configuration() :: %{
    "HostUrl" => String.t(),
    "OrganizationName" => String.t(),
    "SslCertificateS3Path" => s3_path()
  }
  """
  @type on_premise_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_experience_request() :: %{
    optional("ClientToken") => String.t(),
    optional("Configuration") => experience_configuration(),
    optional("Description") => String.t(),
    optional("RoleArn") => String.t(),
    required("IndexId") => String.t(),
    required("Name") => String.t()
  }
  """
  @type create_experience_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document_attribute_value_count_pair() :: %{
    "Count" => integer(),
    "DocumentAttributeValue" => document_attribute_value(),
    "FacetResults" => list(facet_result()())
  }
  """
  @type document_attribute_value_count_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_index_response() :: %{
    "CapacityUnits" => capacity_units_configuration(),
    "CreatedAt" => non_neg_integer(),
    "Description" => String.t(),
    "DocumentMetadataConfigurations" => list(document_metadata_configuration()()),
    "Edition" => list(any()),
    "ErrorMessage" => String.t(),
    "Id" => String.t(),
    "IndexStatistics" => index_statistics(),
    "Name" => String.t(),
    "RoleArn" => String.t(),
    "ServerSideEncryptionConfiguration" => server_side_encryption_configuration(),
    "Status" => list(any()),
    "UpdatedAt" => non_neg_integer(),
    "UserContextPolicy" => list(any()),
    "UserGroupResolutionConfiguration" => user_group_resolution_configuration(),
    "UserTokenConfigurations" => list(user_token_configuration()())
  }
  """
  @type describe_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_already_exist_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_already_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  table_row() :: %{
    "Cells" => list(table_cell()())
  }
  """
  @type table_row() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_entities_from_experience_response() :: %{
    "FailedEntityList" => list(failed_entity()())
  }
  """
  @type disassociate_entities_from_experience_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_attachment_to_index_field_mapping() :: %{
    "DataSourceFieldName" => list(any()),
    "DateFieldFormat" => String.t(),
    "IndexFieldName" => String.t()
  }
  """
  @type confluence_attachment_to_index_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  user_identity_configuration() :: %{
    "IdentityAttributeName" => String.t()
  }
  """
  @type user_identity_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document_attribute_condition() :: %{
    "ConditionDocumentAttributeKey" => String.t(),
    "ConditionOnValue" => document_attribute_value(),
    "Operator" => list(any())
  }
  """
  @type document_attribute_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_indices_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_indices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  salesforce_configuration() :: %{
    "ChatterFeedConfiguration" => salesforce_chatter_feed_configuration(),
    "CrawlAttachments" => boolean(),
    "ExcludeAttachmentFilePatterns" => list(String.t()()),
    "IncludeAttachmentFilePatterns" => list(String.t()()),
    "KnowledgeArticleConfiguration" => salesforce_knowledge_article_configuration(),
    "SecretArn" => String.t(),
    "ServerUrl" => String.t(),
    "StandardObjectAttachmentConfiguration" => salesforce_standard_object_attachment_configuration(),
    "StandardObjectConfigurations" => list(salesforce_standard_object_configuration()())
  }
  """
  @type salesforce_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sorting_configuration() :: %{
    "DocumentAttributeKey" => String.t(),
    "SortOrder" => list(any())
  }
  """
  @type sorting_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  thesaurus_summary() :: %{
    "CreatedAt" => non_neg_integer(),
    "Id" => String.t(),
    "Name" => String.t(),
    "Status" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type thesaurus_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_thesauri_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_thesauri_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  additional_result_attribute() :: %{
    "Key" => String.t(),
    "Value" => additional_result_attribute_value(),
    "ValueType" => list(any())
  }
  """
  @type additional_result_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_data_source_response() :: %{
    "Configuration" => data_source_configuration(),
    "CreatedAt" => non_neg_integer(),
    "CustomDocumentEnrichmentConfiguration" => custom_document_enrichment_configuration(),
    "Description" => String.t(),
    "ErrorMessage" => String.t(),
    "Id" => String.t(),
    "IndexId" => String.t(),
    "LanguageCode" => String.t(),
    "Name" => String.t(),
    "RoleArn" => String.t(),
    "Schedule" => String.t(),
    "Status" => list(any()),
    "Type" => list(any()),
    "UpdatedAt" => non_neg_integer(),
    "VpcConfiguration" => data_source_vpc_configuration()
  }
  """
  @type describe_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_configuration() :: %{
    "AttachmentConfiguration" => confluence_attachment_configuration(),
    "AuthenticationType" => list(any()),
    "BlogConfiguration" => confluence_blog_configuration(),
    "ExclusionPatterns" => list(String.t()()),
    "InclusionPatterns" => list(String.t()()),
    "PageConfiguration" => confluence_page_configuration(),
    "ProxyConfiguration" => proxy_configuration(),
    "SecretArn" => String.t(),
    "ServerUrl" => String.t(),
    "SpaceConfiguration" => confluence_space_configuration(),
    "Version" => list(any()),
    "VpcConfiguration" => data_source_vpc_configuration()
  }
  """
  @type confluence_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  sql_configuration() :: %{
    "QueryIdentifiersEnclosingOption" => list(any())
  }
  """
  @type sql_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_featured_results_set_request() :: %{
    required("FeaturedResultsSetId") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type describe_featured_results_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  search() :: %{
    "Displayable" => boolean(),
    "Facetable" => boolean(),
    "Searchable" => boolean(),
    "Sortable" => boolean()
  }
  """
  @type search() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  collapse_configuration() :: %{
    "DocumentAttributeKey" => String.t(),
    "Expand" => boolean(),
    "ExpandConfiguration" => expand_configuration(),
    "MissingAttributeKeyStrategy" => list(any()),
    "SortingConfigurations" => list(sorting_configuration()())
  }
  """
  @type collapse_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experiences_summary() :: %{
    "CreatedAt" => non_neg_integer(),
    "Endpoints" => list(experience_endpoint()()),
    "Id" => String.t(),
    "Name" => String.t(),
    "Status" => list(any())
  }
  """
  @type experiences_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  entity_display_data() :: %{
    "FirstName" => String.t(),
    "GroupName" => String.t(),
    "IdentifiedUserName" => String.t(),
    "LastName" => String.t(),
    "UserName" => String.t()
  }
  """
  @type entity_display_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  basic_authentication_configuration() :: %{
    "Credentials" => String.t(),
    "Host" => String.t(),
    "Port" => integer()
  }
  """
  @type basic_authentication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_groups_older_than_ordering_id_request() :: %{
    optional("DataSourceId") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t(),
    required("OrderingId") => float()
  }
  """
  @type list_groups_older_than_ordering_id_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  slack_configuration() :: %{
    "CrawlBotMessage" => boolean(),
    "ExcludeArchived" => boolean(),
    "ExclusionPatterns" => list(String.t()()),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "InclusionPatterns" => list(String.t()()),
    "LookBackPeriod" => integer(),
    "PrivateChannelFilter" => list(String.t()()),
    "PublicChannelFilter" => list(String.t()()),
    "SecretArn" => String.t(),
    "SinceCrawlDate" => String.t(),
    "SlackEntityList" => list(list(any())()),
    "TeamId" => String.t(),
    "UseChangeLog" => boolean(),
    "VpcConfiguration" => data_source_vpc_configuration()
  }
  """
  @type slack_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_data_sources_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_data_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiences_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_experiences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  query_suggestions_block_list_summary() :: %{
    "CreatedAt" => non_neg_integer(),
    "Id" => String.t(),
    "ItemCount" => integer(),
    "Name" => String.t(),
    "Status" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type query_suggestions_block_list_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_access_control_configuration_response() :: %{

  }
  """
  @type update_access_control_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_query_suggestions_block_list_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type describe_query_suggestions_block_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  personas_summary() :: %{
    "CreatedAt" => non_neg_integer(),
    "EntityId" => String.t(),
    "Persona" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type personas_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  relevance_feedback() :: %{
    "RelevanceValue" => list(any()),
    "ResultId" => String.t()
  }
  """
  @type relevance_feedback() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "Message" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_data_source_sync_job_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type start_data_source_sync_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  featured_document() :: %{
    "Id" => String.t()
  }
  """
  @type featured_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  work_docs_configuration() :: %{
    "CrawlComments" => boolean(),
    "ExclusionPatterns" => list(String.t()()),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "InclusionPatterns" => list(String.t()()),
    "OrganizationId" => String.t(),
    "UseChangeLog" => boolean()
  }
  """
  @type work_docs_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_principal_mapping_request() :: %{
    optional("DataSourceId") => String.t(),
    optional("OrderingId") => float(),
    required("GroupId") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type delete_principal_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_data_source_sync_job_response() :: %{
    "ExecutionId" => String.t()
  }
  """
  @type start_data_source_sync_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_suggestions_describe_config() :: %{
    "AttributeSuggestionsMode" => list(any()),
    "SuggestableConfigList" => list(suggestable_config()())
  }
  """
  @type attribute_suggestions_describe_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_access_control_configuration_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type describe_access_control_configuration_request() :: %{String.t() => any()}

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
  capacity_units_configuration() :: %{
    "QueryCapacityUnits" => integer(),
    "StorageCapacityUnits" => integer()
  }
  """
  @type capacity_units_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_snapshots_response() :: %{
    "NextToken" => String.t(),
    "SnapShotTimeFilter" => time_range(),
    "SnapshotsData" => list(list(String.t()())()),
    "SnapshotsDataHeader" => list(String.t()())
  }
  """
  @type get_snapshots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_request_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  salesforce_custom_knowledge_article_type_configuration() :: %{
    "DocumentDataFieldName" => String.t(),
    "DocumentTitleFieldName" => String.t(),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "Name" => String.t()
  }
  """
  @type salesforce_custom_knowledge_article_type_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_delete_document_response() :: %{
    "FailedDocuments" => list(batch_delete_document_response_failed_document()())
  }
  """
  @type batch_delete_document_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_query_suggestions_response() :: %{
    "QuerySuggestionsId" => String.t(),
    "Suggestions" => list(suggestion()())
  }
  """
  @type get_query_suggestions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  member_user() :: %{
    "UserId" => String.t()
  }
  """
  @type member_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experience_configuration() :: %{
    "ContentSourceConfiguration" => content_source_configuration(),
    "UserIdentityConfiguration" => user_identity_configuration()
  }
  """
  @type experience_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  table_excerpt() :: %{
    "Rows" => list(table_row()()),
    "TotalNumberOfRows" => integer()
  }
  """
  @type table_excerpt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  salesforce_chatter_feed_configuration() :: %{
    "DocumentDataFieldName" => String.t(),
    "DocumentTitleFieldName" => String.t(),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "IncludeFilterTypes" => list(list(any())())
  }
  """
  @type salesforce_chatter_feed_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_quota_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_control_list_configuration() :: %{
    "KeyPath" => String.t()
  }
  """
  @type access_control_list_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  featured_results_conflict_exception() :: %{
    "ConflictingItems" => list(conflicting_item()()),
    "Message" => String.t()
  }
  """
  @type featured_results_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_query_suggestions_block_list_request() :: %{
    optional("ClientToken") => String.t(),
    optional("Description") => String.t(),
    optional("Tags") => list(tag()()),
    required("IndexId") => String.t(),
    required("Name") => String.t(),
    required("RoleArn") => String.t(),
    required("SourceS3Path") => s3_path()
  }
  """
  @type create_query_suggestions_block_list_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  group_ordering_id_summary() :: %{
    "FailureReason" => String.t(),
    "LastUpdatedAt" => non_neg_integer(),
    "OrderingId" => float(),
    "ReceivedAt" => non_neg_integer(),
    "Status" => list(any())
  }
  """
  @type group_ordering_id_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_featured_results_set_request() :: %{
    optional("Description") => String.t(),
    optional("FeaturedDocuments") => list(featured_document()()),
    optional("FeaturedResultsSetName") => String.t(),
    optional("QueryTexts") => list(String.t()()),
    optional("Status") => list(any()),
    required("FeaturedResultsSetId") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type update_featured_results_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  inline_custom_document_enrichment_configuration() :: %{
    "Condition" => document_attribute_condition(),
    "DocumentContentDeletion" => boolean(),
    "Target" => document_attribute_target()
  }
  """
  @type inline_custom_document_enrichment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_data_sources_response() :: %{
    "NextToken" => String.t(),
    "SummaryItems" => list(data_source_summary()())
  }
  """
  @type list_data_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_data_source_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type delete_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  google_drive_configuration() :: %{
    "ExcludeMimeTypes" => list(String.t()()),
    "ExcludeSharedDrives" => list(String.t()()),
    "ExcludeUserAccounts" => list(String.t()()),
    "ExclusionPatterns" => list(String.t()()),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "InclusionPatterns" => list(String.t()()),
    "SecretArn" => String.t()
  }
  """
  @type google_drive_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_featured_results_set_response() :: %{
    "FeaturedResultsSet" => featured_results_set()
  }
  """
  @type update_featured_results_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  seed_url_configuration() :: %{
    "SeedUrls" => list(String.t()()),
    "WebCrawlerMode" => list(any())
  }
  """
  @type seed_url_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  retrieve_result() :: %{
    "QueryId" => String.t(),
    "ResultItems" => list(retrieve_result_item()())
  }
  """
  @type retrieve_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_thesaurus_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type delete_thesaurus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_access_control_configurations_response() :: %{
    "AccessControlConfigurations" => list(access_control_configuration_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_access_control_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experience_entities_summary() :: %{
    "DisplayData" => entity_display_data(),
    "EntityId" => String.t(),
    "EntityType" => list(any())
  }
  """
  @type experience_entities_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  share_point_configuration() :: %{
    "AuthenticationType" => list(any()),
    "CrawlAttachments" => boolean(),
    "DisableLocalGroups" => boolean(),
    "DocumentTitleFieldName" => String.t(),
    "ExclusionPatterns" => list(String.t()()),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "InclusionPatterns" => list(String.t()()),
    "ProxyConfiguration" => proxy_configuration(),
    "SecretArn" => String.t(),
    "SharePointVersion" => list(any()),
    "SslCertificateS3Path" => s3_path(),
    "Urls" => list(String.t()()),
    "UseChangeLog" => boolean(),
    "VpcConfiguration" => data_source_vpc_configuration()
  }
  """
  @type share_point_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  suggestable_config() :: %{
    "AttributeName" => String.t(),
    "Suggestable" => boolean()
  }
  """
  @type suggestable_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_thesaurus_request() :: %{
    optional("ClientToken") => String.t(),
    optional("Description") => String.t(),
    optional("Tags") => list(tag()()),
    required("IndexId") => String.t(),
    required("Name") => String.t(),
    required("RoleArn") => String.t(),
    required("SourceS3Path") => s3_path()
  }
  """
  @type create_thesaurus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  hook_configuration() :: %{
    "InvocationCondition" => document_attribute_condition(),
    "LambdaArn" => String.t(),
    "S3Bucket" => String.t()
  }
  """
  @type hook_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_to_index_field_mapping() :: %{
    "DataSourceFieldName" => String.t(),
    "DateFieldFormat" => String.t(),
    "IndexFieldName" => String.t()
  }
  """
  @type data_source_to_index_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  spell_corrected_query() :: %{
    "Corrections" => list(correction()()),
    "SuggestedQueryText" => String.t()
  }
  """
  @type spell_corrected_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_featured_results_set_response() :: %{
    "FeaturedResultsSet" => featured_results_set()
  }
  """
  @type create_featured_results_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  urls() :: %{
    "SeedUrlConfiguration" => seed_url_configuration(),
    "SiteMapsConfiguration" => site_maps_configuration()
  }
  """
  @type urls() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  expanded_result_item() :: %{
    "DocumentAttributes" => list(document_attribute()()),
    "DocumentExcerpt" => text_with_highlights(),
    "DocumentId" => String.t(),
    "DocumentTitle" => text_with_highlights(),
    "DocumentURI" => String.t(),
    "Id" => String.t()
  }
  """
  @type expanded_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_indices_response() :: %{
    "IndexConfigurationSummaryItems" => list(index_configuration_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_indices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  user_token_configuration() :: %{
    "JsonTokenTypeConfiguration" => json_token_type_configuration(),
    "JwtTokenTypeConfiguration" => jwt_token_type_configuration()
  }
  """
  @type user_token_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_sync_job() :: %{
    "DataSourceErrorCode" => String.t(),
    "EndTime" => non_neg_integer(),
    "ErrorCode" => list(any()),
    "ErrorMessage" => String.t(),
    "ExecutionId" => String.t(),
    "Metrics" => data_source_sync_job_metrics(),
    "StartTime" => non_neg_integer(),
    "Status" => list(any())
  }
  """
  @type data_source_sync_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  featured_document_with_metadata() :: %{
    "Id" => String.t(),
    "Title" => String.t(),
    "URI" => String.t()
  }
  """
  @type featured_document_with_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_thesaurus_response() :: %{
    "CreatedAt" => non_neg_integer(),
    "Description" => String.t(),
    "ErrorMessage" => String.t(),
    "FileSizeBytes" => float(),
    "Id" => String.t(),
    "IndexId" => String.t(),
    "Name" => String.t(),
    "RoleArn" => String.t(),
    "SourceS3Path" => s3_path(),
    "Status" => list(any()),
    "SynonymRuleCount" => float(),
    "TermCount" => float(),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type describe_thesaurus_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_delete_featured_results_set_response() :: %{
    "Errors" => list(batch_delete_featured_results_set_error()())
  }
  """
  @type batch_delete_featured_results_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  server_side_encryption_configuration() :: %{
    "KmsKeyId" => String.t()
  }
  """
  @type server_side_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_data_source_sync_job_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type stop_data_source_sync_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_faq_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type delete_faq_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  suggestion_text_with_highlights() :: %{
    "Highlights" => list(suggestion_highlight()()),
    "Text" => String.t()
  }
  """
  @type suggestion_text_with_highlights() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  fsx_configuration() :: %{
    "ExclusionPatterns" => list(String.t()()),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "FileSystemId" => String.t(),
    "FileSystemType" => list(any()),
    "InclusionPatterns" => list(String.t()()),
    "SecretArn" => String.t(),
    "VpcConfiguration" => data_source_vpc_configuration()
  }
  """
  @type fsx_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  score_attributes() :: %{
    "ScoreConfidence" => list(any())
  }
  """
  @type score_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_principal_mapping_request() :: %{
    optional("DataSourceId") => String.t(),
    required("GroupId") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type describe_principal_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  source_document() :: %{
    "AdditionalAttributes" => list(document_attribute()()),
    "DocumentId" => String.t(),
    "SuggestionAttributes" => list(String.t()())
  }
  """
  @type source_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_faq_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type describe_faq_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_delete_document_response_failed_document() :: %{
    "ErrorCode" => list(any()),
    "ErrorMessage" => String.t(),
    "Id" => String.t()
  }
  """
  @type batch_delete_document_response_failed_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_now_configuration() :: %{
    "AuthenticationType" => list(any()),
    "HostUrl" => String.t(),
    "KnowledgeArticleConfiguration" => service_now_knowledge_article_configuration(),
    "SecretArn" => String.t(),
    "ServiceCatalogConfiguration" => service_now_service_catalog_configuration(),
    "ServiceNowBuildVersion" => list(any())
  }
  """
  @type service_now_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_now_service_catalog_configuration() :: %{
    "CrawlAttachments" => boolean(),
    "DocumentDataFieldName" => String.t(),
    "DocumentTitleFieldName" => String.t(),
    "ExcludeAttachmentFilePatterns" => list(String.t()()),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "IncludeAttachmentFilePatterns" => list(String.t()())
  }
  """
  @type service_now_service_catalog_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_suggestions_update_config() :: %{
    "AttributeSuggestionsMode" => list(any()),
    "SuggestableConfigList" => list(suggestable_config()())
  }
  """
  @type attribute_suggestions_update_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  web_crawler_configuration() :: %{
    "AuthenticationConfiguration" => authentication_configuration(),
    "CrawlDepth" => integer(),
    "MaxContentSizePerPageInMegaBytes" => float(),
    "MaxLinksPerPage" => integer(),
    "MaxUrlsPerMinuteCrawlRate" => integer(),
    "ProxyConfiguration" => proxy_configuration(),
    "UrlExclusionPatterns" => list(String.t()()),
    "UrlInclusionPatterns" => list(String.t()()),
    "Urls" => urls()
  }
  """
  @type web_crawler_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  additional_result_attribute_value() :: %{
    "TextWithHighlightsValue" => text_with_highlights()
  }
  """
  @type additional_result_attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_result() :: %{
    "DocumentAttributeKey" => String.t(),
    "DocumentAttributeValueCountPairs" => list(document_attribute_value_count_pair()()),
    "DocumentAttributeValueType" => list(any())
  }
  """
  @type facet_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experiences_response() :: %{
    "NextToken" => String.t(),
    "SummaryItems" => list(experiences_summary()())
  }
  """
  @type list_experiences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_data_source_response() :: %{
    "Id" => String.t()
  }
  """
  @type create_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_delete_document_request() :: %{
    optional("DataSourceSyncJobMetricTarget") => data_source_sync_job_metric_target(),
    required("DocumentIdList") => list(String.t()()),
    required("IndexId") => String.t()
  }
  """
  @type batch_delete_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  data_source_summary() :: %{
    "CreatedAt" => non_neg_integer(),
    "Id" => String.t(),
    "LanguageCode" => String.t(),
    "Name" => String.t(),
    "Status" => list(any()),
    "Type" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type data_source_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_put_document_response() :: %{
    "FailedDocuments" => list(batch_put_document_response_failed_document()())
  }
  """
  @type batch_put_document_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_entity_personas_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_entity_personas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  suggestion() :: %{
    "Id" => String.t(),
    "SourceDocuments" => list(source_document()()),
    "Value" => suggestion_value()
  }
  """
  @type suggestion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_delete_featured_results_set_request() :: %{
    required("FeaturedResultsSetIds") => list(String.t()()),
    required("IndexId") => String.t()
  }
  """
  @type batch_delete_featured_results_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_index_request() :: %{
    optional("ClientToken") => String.t(),
    optional("Description") => String.t(),
    optional("Edition") => list(any()),
    optional("ServerSideEncryptionConfiguration") => server_side_encryption_configuration(),
    optional("Tags") => list(tag()()),
    optional("UserContextPolicy") => list(any()),
    optional("UserGroupResolutionConfiguration") => user_group_resolution_configuration(),
    optional("UserTokenConfigurations") => list(user_token_configuration()()),
    required("Name") => String.t(),
    required("RoleArn") => String.t()
  }
  """
  @type create_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_index_request() :: %{
    optional("CapacityUnits") => capacity_units_configuration(),
    optional("Description") => String.t(),
    optional("DocumentMetadataConfigurationUpdates") => list(document_metadata_configuration()()),
    optional("Name") => String.t(),
    optional("RoleArn") => String.t(),
    optional("UserContextPolicy") => list(any()),
    optional("UserGroupResolutionConfiguration") => user_group_resolution_configuration(),
    optional("UserTokenConfigurations") => list(user_token_configuration()()),
    required("Id") => String.t()
  }
  """
  @type update_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  column_configuration() :: %{
    "ChangeDetectingColumns" => list(String.t()()),
    "DocumentDataColumnName" => String.t(),
    "DocumentIdColumnName" => String.t(),
    "DocumentTitleColumnName" => String.t(),
    "FieldMappings" => list(data_source_to_index_field_mapping()())
  }
  """
  @type column_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  hierarchical_principal() :: %{
    "PrincipalList" => list(principal()())
  }
  """
  @type hierarchical_principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  warning() :: %{
    "Code" => list(any()),
    "Message" => String.t()
  }
  """
  @type warning() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  time_range() :: %{
    "EndTime" => non_neg_integer(),
    "StartTime" => non_neg_integer()
  }
  """
  @type time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "Message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_now_knowledge_article_configuration() :: %{
    "CrawlAttachments" => boolean(),
    "DocumentDataFieldName" => String.t(),
    "DocumentTitleFieldName" => String.t(),
    "ExcludeAttachmentFilePatterns" => list(String.t()()),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "FilterQuery" => String.t(),
    "IncludeAttachmentFilePatterns" => list(String.t()())
  }
  """
  @type service_now_knowledge_article_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_control_configuration_response() :: %{

  }
  """
  @type delete_access_control_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_principal_mapping_request() :: %{
    optional("DataSourceId") => String.t(),
    optional("OrderingId") => float(),
    optional("RoleArn") => String.t(),
    required("GroupId") => String.t(),
    required("GroupMembers") => group_members(),
    required("IndexId") => String.t()
  }
  """
  @type put_principal_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_thesaurus_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type describe_thesaurus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document_attribute_value() :: %{
    "DateValue" => non_neg_integer(),
    "LongValue" => float(),
    "StringListValue" => list(String.t()()),
    "StringValue" => String.t()
  }
  """
  @type document_attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_faq_request() :: %{
    optional("ClientToken") => String.t(),
    optional("Description") => String.t(),
    optional("FileFormat") => list(any()),
    optional("LanguageCode") => String.t(),
    optional("Tags") => list(tag()()),
    required("IndexId") => String.t(),
    required("Name") => String.t(),
    required("RoleArn") => String.t(),
    required("S3Path") => s3_path()
  }
  """
  @type create_faq_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  experience_endpoint() :: %{
    "Endpoint" => String.t(),
    "EndpointType" => list(any())
  }
  """
  @type experience_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  correction() :: %{
    "BeginOffset" => integer(),
    "CorrectedTerm" => String.t(),
    "EndOffset" => integer(),
    "Term" => String.t()
  }
  """
  @type correction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  entity_configuration() :: %{
    "EntityId" => String.t(),
    "EntityType" => list(any())
  }
  """
  @type entity_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  suggestion_highlight() :: %{
    "BeginOffset" => integer(),
    "EndOffset" => integer()
  }
  """
  @type suggestion_highlight() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  relevance() :: %{
    "Duration" => String.t(),
    "Freshness" => boolean(),
    "Importance" => integer(),
    "RankOrder" => list(any()),
    "ValueImportanceMap" => map()
  }
  """
  @type relevance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  featured_document_missing() :: %{
    "Id" => String.t()
  }
  """
  @type featured_document_missing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_personas_from_entities_response() :: %{
    "FailedEntityList" => list(failed_entity()())
  }
  """
  @type disassociate_personas_from_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  documents_metadata_configuration() :: %{
    "S3Prefix" => String.t()
  }
  """
  @type documents_metadata_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_snapshots_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t(),
    required("Interval") => list(any()),
    required("MetricType") => list(any())
  }
  """
  @type get_snapshots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_featured_results_sets_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_featured_results_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_experience_response() :: %{
    "Configuration" => experience_configuration(),
    "CreatedAt" => non_neg_integer(),
    "Description" => String.t(),
    "Endpoints" => list(experience_endpoint()()),
    "ErrorMessage" => String.t(),
    "Id" => String.t(),
    "IndexId" => String.t(),
    "Name" => String.t(),
    "RoleArn" => String.t(),
    "Status" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type describe_experience_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_entities_to_experience_request() :: %{
    required("EntityList") => list(entity_configuration()()),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type associate_entities_to_experience_request() :: %{String.t() => any()}

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
    required("ResourceARN") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  jwt_token_type_configuration() :: %{
    "ClaimRegex" => String.t(),
    "GroupAttributeField" => String.t(),
    "Issuer" => String.t(),
    "KeyLocation" => list(any()),
    "SecretManagerArn" => String.t(),
    "URL" => String.t(),
    "UserNameAttributeField" => String.t()
  }
  """
  @type jwt_token_type_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_access_control_configuration_response() :: %{
    "AccessControlList" => list(principal()()),
    "Description" => String.t(),
    "ErrorMessage" => String.t(),
    "HierarchicalAccessControlList" => list(hierarchical_principal()()),
    "Name" => String.t()
  }
  """
  @type describe_access_control_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  template_configuration() :: %{
    "Template" => any()
  }
  """
  @type template_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet() :: %{
    "DocumentAttributeKey" => String.t(),
    "Facets" => list(facet()()),
    "MaxResults" => integer()
  }
  """
  @type facet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_data_source_request() :: %{
    optional("Configuration") => data_source_configuration(),
    optional("CustomDocumentEnrichmentConfiguration") => custom_document_enrichment_configuration(),
    optional("Description") => String.t(),
    optional("LanguageCode") => String.t(),
    optional("Name") => String.t(),
    optional("RoleArn") => String.t(),
    optional("Schedule") => String.t(),
    optional("VpcConfiguration") => data_source_vpc_configuration(),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type update_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  expand_configuration() :: %{
    "MaxExpandedResultsPerItem" => integer(),
    "MaxResultItemsToExpand" => integer()
  }
  """
  @type expand_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_put_document_request() :: %{
    optional("CustomDocumentEnrichmentConfiguration") => custom_document_enrichment_configuration(),
    optional("RoleArn") => String.t(),
    required("Documents") => list(document()()),
    required("IndexId") => String.t()
  }
  """
  @type batch_put_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "Message" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_experience_entities_request() :: %{
    optional("NextToken") => String.t(),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_experience_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  group_members() :: %{
    "MemberGroups" => list(member_group()()),
    "MemberUsers" => list(member_user()()),
    "S3PathforGroupMembers" => s3_path()
  }
  """
  @type group_members() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_blog_to_index_field_mapping() :: %{
    "DataSourceFieldName" => list(any()),
    "DateFieldFormat" => String.t(),
    "IndexFieldName" => String.t()
  }
  """
  @type confluence_blog_to_index_field_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_faq_response() :: %{
    "CreatedAt" => non_neg_integer(),
    "Description" => String.t(),
    "ErrorMessage" => String.t(),
    "FileFormat" => list(any()),
    "Id" => String.t(),
    "IndexId" => String.t(),
    "LanguageCode" => String.t(),
    "Name" => String.t(),
    "RoleArn" => String.t(),
    "S3Path" => s3_path(),
    "Status" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type describe_faq_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_data_source_sync_jobs_response() :: %{
    "History" => list(data_source_sync_job()()),
    "NextToken" => String.t()
  }
  """
  @type list_data_source_sync_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  submit_feedback_request() :: %{
    optional("ClickFeedbackItems") => list(click_feedback()()),
    optional("RelevanceFeedbackItems") => list(relevance_feedback()()),
    required("IndexId") => String.t(),
    required("QueryId") => String.t()
  }
  """
  @type submit_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  jira_configuration() :: %{
    "AttachmentFieldMappings" => list(data_source_to_index_field_mapping()()),
    "CommentFieldMappings" => list(data_source_to_index_field_mapping()()),
    "ExclusionPatterns" => list(String.t()()),
    "InclusionPatterns" => list(String.t()()),
    "IssueFieldMappings" => list(data_source_to_index_field_mapping()()),
    "IssueSubEntityFilter" => list(list(any())()),
    "IssueType" => list(String.t()()),
    "JiraAccountUrl" => String.t(),
    "Project" => list(String.t()()),
    "ProjectFieldMappings" => list(data_source_to_index_field_mapping()()),
    "SecretArn" => String.t(),
    "Status" => list(String.t()()),
    "UseChangeLog" => boolean(),
    "VpcConfiguration" => data_source_vpc_configuration(),
    "WorkLogFieldMappings" => list(data_source_to_index_field_mapping()())
  }
  """
  @type jira_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  quip_configuration() :: %{
    "AttachmentFieldMappings" => list(data_source_to_index_field_mapping()()),
    "CrawlAttachments" => boolean(),
    "CrawlChatRooms" => boolean(),
    "CrawlFileComments" => boolean(),
    "Domain" => String.t(),
    "ExclusionPatterns" => list(String.t()()),
    "FolderIds" => list(String.t()()),
    "InclusionPatterns" => list(String.t()()),
    "MessageFieldMappings" => list(data_source_to_index_field_mapping()()),
    "SecretArn" => String.t(),
    "ThreadFieldMappings" => list(data_source_to_index_field_mapping()()),
    "VpcConfiguration" => data_source_vpc_configuration()
  }
  """
  @type quip_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_groups_older_than_ordering_id_response() :: %{
    "GroupsSummaries" => list(group_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_groups_older_than_ordering_id_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_space_configuration() :: %{
    "CrawlArchivedSpaces" => boolean(),
    "CrawlPersonalSpaces" => boolean(),
    "ExcludeSpaces" => list(String.t()()),
    "IncludeSpaces" => list(String.t()()),
    "SpaceFieldMappings" => list(confluence_space_to_index_field_mapping()())
  }
  """
  @type confluence_space_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_personas_to_entities_response() :: %{
    "FailedEntityList" => list(failed_entity()())
  }
  """
  @type associate_personas_to_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_document_status_response_error() :: %{
    "DocumentId" => String.t(),
    "ErrorCode" => list(any()),
    "ErrorMessage" => String.t()
  }
  """
  @type batch_get_document_status_response_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_filter() :: %{
    "AndAllFilters" => list(attribute_filter()()),
    "ContainsAll" => document_attribute(),
    "ContainsAny" => document_attribute(),
    "EqualsTo" => document_attribute(),
    "GreaterThan" => document_attribute(),
    "GreaterThanOrEquals" => document_attribute(),
    "LessThan" => document_attribute(),
    "LessThanOrEquals" => document_attribute(),
    "NotFilter" => attribute_filter(),
    "OrAllFilters" => list(attribute_filter()())
  }
  """
  @type attribute_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_data_source_sync_jobs_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("StartTimeFilter") => time_range(),
    optional("StatusFilter") => list(any()),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_data_source_sync_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_principal_mapping_response() :: %{
    "DataSourceId" => String.t(),
    "GroupId" => String.t(),
    "GroupOrderingIdSummaries" => list(group_ordering_id_summary()()),
    "IndexId" => String.t()
  }
  """
  @type describe_principal_mapping_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  featured_results_set() :: %{
    "CreationTimestamp" => float(),
    "Description" => String.t(),
    "FeaturedDocuments" => list(featured_document()()),
    "FeaturedResultsSetId" => String.t(),
    "FeaturedResultsSetName" => String.t(),
    "LastUpdatedTimestamp" => float(),
    "QueryTexts" => list(String.t()()),
    "Status" => list(any())
  }
  """
  @type featured_results_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_access_control_configuration_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type delete_access_control_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  collapsed_result_detail() :: %{
    "DocumentAttribute" => document_attribute(),
    "ExpandedResults" => list(expanded_result_item()())
  }
  """
  @type collapsed_result_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_query_suggestions_block_lists_response() :: %{
    "BlockListSummaryItems" => list(query_suggestions_block_list_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_query_suggestions_block_lists_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_suggestions_get_config() :: %{
    "AdditionalResponseAttributes" => list(String.t()()),
    "AttributeFilter" => attribute_filter(),
    "SuggestionAttributes" => list(String.t()()),
    "UserContext" => user_context()
  }
  """
  @type attribute_suggestions_get_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  query_request() :: %{
    optional("AttributeFilter") => attribute_filter(),
    optional("CollapseConfiguration") => collapse_configuration(),
    optional("DocumentRelevanceOverrideConfigurations") => list(document_relevance_configuration()()),
    optional("Facets") => list(facet()()),
    optional("PageNumber") => integer(),
    optional("PageSize") => integer(),
    optional("QueryResultTypeFilter") => list(any()),
    optional("QueryText") => String.t(),
    optional("RequestedDocumentAttributes") => list(String.t()()),
    optional("SortingConfiguration") => sorting_configuration(),
    optional("SortingConfigurations") => list(sorting_configuration()()),
    optional("SpellCorrectionConfiguration") => spell_correction_configuration(),
    optional("UserContext") => user_context(),
    optional("VisitorId") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  user_context() :: %{
    "DataSourceGroups" => list(data_source_group()()),
    "Groups" => list(String.t()()),
    "Token" => String.t(),
    "UserId" => String.t()
  }
  """
  @type user_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  group_summary() :: %{
    "GroupId" => String.t(),
    "OrderingId" => float()
  }
  """
  @type group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  one_drive_configuration() :: %{
    "DisableLocalGroups" => boolean(),
    "ExclusionPatterns" => list(String.t()()),
    "FieldMappings" => list(data_source_to_index_field_mapping()()),
    "InclusionPatterns" => list(String.t()()),
    "OneDriveUsers" => one_drive_users(),
    "SecretArn" => String.t(),
    "TenantDomain" => String.t()
  }
  """
  @type one_drive_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  query_result_item() :: %{
    "AdditionalAttributes" => list(additional_result_attribute()()),
    "CollapsedResultDetail" => collapsed_result_detail(),
    "DocumentAttributes" => list(document_attribute()()),
    "DocumentExcerpt" => text_with_highlights(),
    "DocumentId" => String.t(),
    "DocumentTitle" => text_with_highlights(),
    "DocumentURI" => String.t(),
    "FeedbackToken" => String.t(),
    "Format" => list(any()),
    "Id" => String.t(),
    "ScoreAttributes" => score_attributes(),
    "TableExcerpt" => table_excerpt(),
    "Type" => list(any())
  }
  """
  @type query_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_entities_to_experience_response() :: %{
    "FailedEntityList" => list(failed_entity()())
  }
  """
  @type associate_entities_to_experience_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_index_response() :: %{
    "Id" => String.t()
  }
  """
  @type create_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_blog_configuration() :: %{
    "BlogFieldMappings" => list(confluence_blog_to_index_field_mapping()())
  }
  """
  @type confluence_blog_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_query_suggestions_config_request() :: %{
    optional("AttributeSuggestionsConfig") => attribute_suggestions_update_config(),
    optional("IncludeQueriesWithoutUserInformation") => boolean(),
    optional("MinimumNumberOfQueryingUsers") => integer(),
    optional("MinimumQueryCount") => integer(),
    optional("Mode") => list(any()),
    optional("QueryLogLookBackWindowInDays") => integer(),
    required("IndexId") => String.t()
  }
  """
  @type update_query_suggestions_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_query_suggestions_block_lists_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_query_suggestions_block_lists_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  status() :: %{
    "DocumentId" => String.t(),
    "DocumentStatus" => list(any()),
    "FailureCode" => String.t(),
    "FailureReason" => String.t()
  }
  """
  @type status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  authentication_configuration() :: %{
    "BasicAuthentication" => list(basic_authentication_configuration()())
  }
  """
  @type authentication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_faq_response() :: %{
    "Id" => String.t()
  }
  """
  @type create_faq_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  alfresco_configuration() :: %{
    "BlogFieldMappings" => list(data_source_to_index_field_mapping()()),
    "CrawlComments" => boolean(),
    "CrawlSystemFolders" => boolean(),
    "DocumentLibraryFieldMappings" => list(data_source_to_index_field_mapping()()),
    "EntityFilter" => list(list(any())()),
    "ExclusionPatterns" => list(String.t()()),
    "InclusionPatterns" => list(String.t()()),
    "SecretArn" => String.t(),
    "SiteId" => String.t(),
    "SiteUrl" => String.t(),
    "SslCertificateS3Path" => s3_path(),
    "VpcConfiguration" => data_source_vpc_configuration(),
    "WikiFieldMappings" => list(data_source_to_index_field_mapping()())
  }
  """
  @type alfresco_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_document_status_response() :: %{
    "DocumentStatusList" => list(status()()),
    "Errors" => list(batch_get_document_status_response_error()())
  }
  """
  @type batch_get_document_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  confluence_page_configuration() :: %{
    "PageFieldMappings" => list(confluence_page_to_index_field_mapping()())
  }
  """
  @type confluence_page_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_personas_from_entities_request() :: %{
    required("EntityIds") => list(String.t()()),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type disassociate_personas_from_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  text_document_statistics() :: %{
    "IndexedTextBytes" => float(),
    "IndexedTextDocumentsCount" => integer()
  }
  """
  @type text_document_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_experience_request() :: %{
    optional("Configuration") => experience_configuration(),
    optional("Description") => String.t(),
    optional("Name") => String.t(),
    optional("RoleArn") => String.t(),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type update_experience_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  retrieve_request() :: %{
    optional("AttributeFilter") => attribute_filter(),
    optional("DocumentRelevanceOverrideConfigurations") => list(document_relevance_configuration()()),
    optional("PageNumber") => integer(),
    optional("PageSize") => integer(),
    optional("RequestedDocumentAttributes") => list(String.t()()),
    optional("UserContext") => user_context(),
    required("IndexId") => String.t(),
    required("QueryText") => String.t()
  }
  """
  @type retrieve_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_featured_results_sets_response() :: %{
    "FeaturedResultsSetSummaryItems" => list(featured_results_set_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_featured_results_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  acl_configuration() :: %{
    "AllowedGroupsColumnName" => String.t()
  }
  """
  @type acl_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_thesaurus_request() :: %{
    optional("Description") => String.t(),
    optional("Name") => String.t(),
    optional("RoleArn") => String.t(),
    optional("SourceS3Path") => s3_path(),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type update_thesaurus_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  table_cell() :: %{
    "Header" => boolean(),
    "Highlighted" => boolean(),
    "TopAnswer" => boolean(),
    "Value" => String.t()
  }
  """
  @type table_cell() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_access_control_configuration_request() :: %{
    optional("AccessControlList") => list(principal()()),
    optional("ClientToken") => String.t(),
    optional("Description") => String.t(),
    optional("HierarchicalAccessControlList") => list(hierarchical_principal()()),
    required("IndexId") => String.t(),
    required("Name") => String.t()
  }
  """
  @type create_access_control_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document_info() :: %{
    "Attributes" => list(document_attribute()()),
    "DocumentId" => String.t()
  }
  """
  @type document_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_entity_personas_response() :: %{
    "NextToken" => String.t(),
    "SummaryItems" => list(personas_summary()())
  }
  """
  @type list_entity_personas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_faqs_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type list_faqs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_thesaurus_response() :: %{
    "Id" => String.t()
  }
  """
  @type create_thesaurus_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document() :: %{
    "AccessControlConfigurationId" => String.t(),
    "AccessControlList" => list(principal()()),
    "Attributes" => list(document_attribute()()),
    "Blob" => binary(),
    "ContentType" => list(any()),
    "HierarchicalAccessControlList" => list(hierarchical_principal()()),
    "Id" => String.t(),
    "S3Path" => s3_path(),
    "Title" => String.t()
  }
  """
  @type document() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_faqs_response() :: %{
    "FaqSummaryItems" => list(faq_summary()()),
    "NextToken" => String.t()
  }
  """
  @type list_faqs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  database_configuration() :: %{
    "AclConfiguration" => acl_configuration(),
    "ColumnConfiguration" => column_configuration(),
    "ConnectionConfiguration" => connection_configuration(),
    "DatabaseEngineType" => list(any()),
    "SqlConfiguration" => sql_configuration(),
    "VpcConfiguration" => data_source_vpc_configuration()
  }
  """
  @type database_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_document_status_request() :: %{
    required("DocumentInfoList") => list(document_info()()),
    required("IndexId") => String.t()
  }
  """
  @type batch_get_document_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disassociate_entities_from_experience_request() :: %{
    required("EntityList") => list(entity_configuration()()),
    required("Id") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type disassociate_entities_from_experience_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_featured_results_set_request() :: %{
    optional("ClientToken") => String.t(),
    optional("Description") => String.t(),
    optional("FeaturedDocuments") => list(featured_document()()),
    optional("QueryTexts") => list(String.t()()),
    optional("Status") => list(any()),
    optional("Tags") => list(tag()()),
    required("FeaturedResultsSetName") => String.t(),
    required("IndexId") => String.t()
  }
  """
  @type create_featured_results_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  featured_results_set_summary() :: %{
    "CreationTimestamp" => float(),
    "FeaturedResultsSetId" => String.t(),
    "FeaturedResultsSetName" => String.t(),
    "LastUpdatedTimestamp" => float(),
    "Status" => list(any())
  }
  """
  @type featured_results_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  faq_summary() :: %{
    "CreatedAt" => non_neg_integer(),
    "FileFormat" => list(any()),
    "Id" => String.t(),
    "LanguageCode" => String.t(),
    "Name" => String.t(),
    "Status" => list(any()),
    "UpdatedAt" => non_neg_integer()
  }
  """
  @type faq_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_data_source_configuration() :: %{
    "AccessControlListConfiguration" => access_control_list_configuration(),
    "BucketName" => String.t(),
    "DocumentsMetadataConfiguration" => documents_metadata_configuration(),
    "ExclusionPatterns" => list(String.t()()),
    "InclusionPatterns" => list(String.t()()),
    "InclusionPrefixes" => list(String.t()())
  }
  """
  @type s3_data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  index_statistics() :: %{
    "FaqStatistics" => faq_statistics(),
    "TextDocumentStatistics" => text_document_statistics()
  }
  """
  @type index_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  document_relevance_configuration() :: %{
    "Name" => String.t(),
    "Relevance" => relevance()
  }
  """
  @type document_relevance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associate_personas_to_entities_request() :: %{
    required("Id") => String.t(),
    required("IndexId") => String.t(),
    required("Personas") => list(entity_persona_configuration()())
  }
  """
  @type associate_personas_to_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_query_suggestions_config_request() :: %{
    required("IndexId") => String.t()
  }
  """
  @type describe_query_suggestions_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  spell_correction_configuration() :: %{
    "IncludeQuerySpellCheckSuggestions" => boolean()
  }
  """
  @type spell_correction_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_put_document_response_failed_document() :: %{
    "ErrorCode" => list(any()),
    "ErrorMessage" => String.t(),
    "Id" => String.t()
  }
  """
  @type batch_put_document_response_failed_document() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2019-02-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kendra",
      global?: false,
      protocol: "json",
      service_id: "kendra",
      signature_version: "v4",
      signing_name: "kendra",
      target_prefix: "AWSKendraFrontendService"
    }
  end

  @doc """
  Grants users or groups in your IAM Identity Center identity source access
  to your Amazon Kendra experience.

  You can create an Amazon Kendra experience such as a
  search application. For more information on creating a search application
  experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec associate_entities_to_experience(
          map(),
          associate_entities_to_experience_request(),
          list()
        ) ::
          {:ok, associate_entities_to_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_already_exist_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def associate_entities_to_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateEntitiesToExperience", input, options)
  end

  @doc """
  Defines the specific permissions of users or groups in your IAM Identity Center
  identity source with access to your Amazon Kendra experience.

  You can create an Amazon Kendra
  experience such as a search application. For more information on creating a
  search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec associate_personas_to_entities(map(), associate_personas_to_entities_request(), list()) ::
          {:ok, associate_personas_to_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_already_exist_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def associate_personas_to_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociatePersonasToEntities", input, options)
  end

  @doc """
  Removes one or more documents from an index.

  The documents must have been added with
  the `BatchPutDocument` API.

  The documents are deleted asynchronously. You can see the progress of the
  deletion by
  using Amazon Web Services
  CloudWatch. Any error messages related to the processing of the batch are sent
  to
  your Amazon Web Services
  CloudWatch log. You can also use the `BatchGetDocumentStatus` API to
  monitor the progress of deleting your documents.

  Deleting documents from an index using `BatchDeleteDocument` could take up
  to an hour or more, depending on the number of documents you want to delete.
  """
  @spec batch_delete_document(map(), batch_delete_document_request(), list()) ::
          {:ok, batch_delete_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def batch_delete_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteDocument", input, options)
  end

  @doc """
  Removes one or more sets of featured results.

  Features results are placed
  above all other results for certain queries. If there's an exact match of a
  query, then one or more specific documents are featured in the search results.
  """
  @spec batch_delete_featured_results_set(
          map(),
          batch_delete_featured_results_set_request(),
          list()
        ) ::
          {:ok, batch_delete_featured_results_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def batch_delete_featured_results_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteFeaturedResultsSet", input, options)
  end

  @doc """
  Returns the indexing status for one or more documents submitted with the [
  BatchPutDocument](https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html)
  API.

  When you use the `BatchPutDocument` API, documents are indexed
  asynchronously. You can use the `BatchGetDocumentStatus` API to get the
  current status of a list of documents so that you can determine if they have
  been
  successfully indexed.

  You can also use the `BatchGetDocumentStatus` API to check the status of
  the [
  BatchDeleteDocument](https://docs.aws.amazon.com/kendra/latest/dg/API_BatchDeleteDocument.html)
  API. When a document is deleted from the index, Amazon Kendra returns
  `NOT_FOUND` as the status.
  """
  @spec batch_get_document_status(map(), batch_get_document_status_request(), list()) ::
          {:ok, batch_get_document_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def batch_get_document_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchGetDocumentStatus", input, options)
  end

  @doc """
  Adds one or more documents to an index.

  The `BatchPutDocument` API enables you to ingest inline documents or a set
  of documents stored in an Amazon S3 bucket. Use this API to ingest your text and
  unstructured text into an index, add custom attributes to the documents, and to
  attach
  an access control list to the documents added to the index.

  The documents are indexed asynchronously. You can see the progress of the batch
  using
  Amazon Web Services
  CloudWatch. Any error messages related to processing the batch are sent to your
  Amazon Web Services
  CloudWatch log. You can also use the `BatchGetDocumentStatus` API to
  monitor the progress of indexing your documents.

  For an example of ingesting inline documents using Python and Java SDKs, see
  [Adding files directly to an
  index](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-binary-doc.html).
  """
  @spec batch_put_document(map(), batch_put_document_request(), list()) ::
          {:ok, batch_put_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def batch_put_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchPutDocument", input, options)
  end

  @doc """
  Clears existing query suggestions from an index.

  This deletes existing suggestions only, not the queries
  in the query log. After you clear suggestions, Amazon Kendra learns
  new suggestions based on new queries added to the query log
  from the time you cleared suggestions. If you do not see any
  new suggestions, then please allow Amazon Kendra to collect
  enough queries to learn new suggestions.

  `ClearQuerySuggestions` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec clear_query_suggestions(map(), clear_query_suggestions_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def clear_query_suggestions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ClearQuerySuggestions", input, options)
  end

  @doc """
  Creates an access configuration for your documents.

  This includes user and group
  access information for your documents. This is useful for user context
  filtering, where
  search results are filtered based on the user or their group access to
  documents.

  You can use this to re-configure your existing document level access control
  without
  indexing all of your documents again. For example, your index contains
  top-secret
  company documents that only certain employees or users should access. One of
  these users
  leaves the company or switches to a team that should be blocked from accessing
  top-secret documents. The user still has access to top-secret documents because
  the user
  had access when your documents were previously indexed. You can create a
  specific access
  control configuration for the user with deny access. You can later update the
  access
  control configuration to allow access if the user returns to the company and
  re-joins
  the 'top-secret' team. You can re-configure access control for your documents as
  circumstances change.

  To apply your access control configuration to certain documents, you call the
  [BatchPutDocument](https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html) API with the `AccessControlConfigurationId`
  included in the
  [Document](https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html)
  object. If you use an S3 bucket as a data source, you update the
  `.metadata.json` with the `AccessControlConfigurationId` and
  synchronize your data source. Amazon Kendra currently only supports access
  control
  configuration for S3 data sources and documents indexed using the
  `BatchPutDocument` API.
  """
  @spec create_access_control_configuration(
          map(),
          create_access_control_configuration_request(),
          list()
        ) ::
          {:ok, create_access_control_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_access_control_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccessControlConfiguration", input, options)
  end

  @doc """
  Creates a data source connector that you want to use with an Amazon Kendra
  index.

  You specify a name, data source connector type and description for your data
  source. You
  also specify configuration information for the data source connector.

  `CreateDataSource` is a synchronous operation. The operation returns 200 if the
  data source was successfully created. Otherwise, an exception is raised.

  For an example of creating an index and data source using the Python SDK, see
  [Getting started with Python SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html). For an
  example of creating an index and data source using the Java SDK, see
  [Getting started with Java SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html).
  """
  @spec create_data_source(map(), create_data_source_request(), list()) ::
          {:ok, create_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_already_exist_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataSource", input, options)
  end

  @doc """
  Creates an Amazon Kendra experience such as a search application.

  For more information
  on creating a search application experience, including using the Python and Java
  SDKs,
  see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec create_experience(map(), create_experience_request(), list()) ::
          {:ok, create_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateExperience", input, options)
  end

  @doc """
  Creates a set of frequently ask questions (FAQs) using a specified FAQ file
  stored
  in an Amazon S3 bucket.

  Adding FAQs to an index is an asynchronous operation.

  For an example of adding an FAQ to an index using Python and Java SDKs, see
  [Using your FAQ file](https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html#using-faq-file).
  """
  @spec create_faq(map(), create_faq_request(), list()) ::
          {:ok, create_faq_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_faq(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFaq", input, options)
  end

  @doc """
  Creates a set of featured results to display at the top of the search results
  page.

  Featured results are placed above all other results for certain queries. You map
  specific queries to specific documents for featuring in the results. If a query
  contains an exact match, then one or more specific documents are featured in the
  search results.

  You can create up to 50 sets of featured results per index. You can request to
  increase this limit by contacting [Support](http://aws.amazon.com/contact-us/).
  """
  @spec create_featured_results_set(map(), create_featured_results_set_request(), list()) ::
          {:ok, create_featured_results_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, featured_results_conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_featured_results_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFeaturedResultsSet", input, options)
  end

  @doc """
  Creates an Amazon Kendra index.

  Index creation is an asynchronous API. To determine
  if index creation has completed, check the `Status` field returned from a call
  to
  `DescribeIndex`. The `Status` field is set to `ACTIVE` when
  the index is ready to use.

  Once the index is active, you can index your documents using the
  `BatchPutDocument` API or using one of the supported [data sources](https://docs.aws.amazon.com/kendra/latest/dg/data-sources.html).

  For an example of creating an index and data source using the Python SDK, see
  [Getting started with Python SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html). For an
  example of creating an index and data source using the Java SDK, see
  [Getting started with Java SDK](https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html).
  """
  @spec create_index(map(), create_index_request(), list()) ::
          {:ok, create_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_already_exist_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIndex", input, options)
  end

  @doc """
  Creates a block list to exlcude certain queries from suggestions.

  Any query that contains words or phrases specified in the block
  list is blocked or filtered out from being shown as a suggestion.

  You need to provide the file location of your block list text file
  in your S3 bucket. In your text file, enter each block word or phrase
  on a separate line.

  For information on the current quota limits for block lists, see
  [Quotas for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

  `CreateQuerySuggestionsBlockList` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.

  For an example of creating a block list for query suggestions using the
  Python SDK, see [Query suggestions block
  list](https://docs.aws.amazon.com/kendra/latest/dg/query-suggestions.html#query-suggestions-blocklist).
  """
  @spec create_query_suggestions_block_list(
          map(),
          create_query_suggestions_block_list_request(),
          list()
        ) ::
          {:ok, create_query_suggestions_block_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Creates a thesaurus for an index.

  The thesaurus
  contains a list of synonyms in Solr format.

  For an example of adding a thesaurus file to an index, see
  [Adding custom synonyms to an
  index](https://docs.aws.amazon.com/kendra/latest/dg/index-synonyms-adding-thesaurus-file.html).
  """
  @spec create_thesaurus(map(), create_thesaurus_request(), list()) ::
          {:ok, create_thesaurus_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_thesaurus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateThesaurus", input, options)
  end

  @doc """
  Deletes an access control configuration that you created for your documents in
  an
  index.

  This includes user and group access information for your documents. This is
  useful for user context filtering, where search results are filtered based on
  the user
  or their group access to documents.
  """
  @spec delete_access_control_configuration(
          map(),
          delete_access_control_configuration_request(),
          list()
        ) ::
          {:ok, delete_access_control_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_access_control_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccessControlConfiguration", input, options)
  end

  @doc """
  Deletes an Amazon Kendra data source connector.

  An exception is not thrown if the
  data source is already being deleted. While the data source is being deleted,
  the
  `Status` field returned by a call to the `DescribeDataSource` API is
  set to `DELETING`. For more information, see [Deleting Data Sources](https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html).

  Deleting an entire data source or re-syncing your index after deleting specific
  documents
  from a data source could take up to an hour or more, depending on the number of
  documents you
  want to delete.
  """
  @spec delete_data_source(map(), delete_data_source_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataSource", input, options)
  end

  @doc """
  Deletes your Amazon Kendra experience such as a search application.

  For more information on
  creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec delete_experience(map(), delete_experience_request(), list()) ::
          {:ok, delete_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteExperience", input, options)
  end

  @doc """
  Removes an FAQ from an index.
  """
  @spec delete_faq(map(), delete_faq_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_faq(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFaq", input, options)
  end

  @doc """
  Deletes an existing Amazon Kendra index.

  An exception is not thrown if the index is
  already being deleted. While the index is being deleted, the `Status` field
  returned by a call to the `DescribeIndex` API is set to
  `DELETING`.
  """
  @spec delete_index(map(), delete_index_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIndex", input, options)
  end

  @doc """
  Deletes a group so that all users and sub groups that belong to the group can no
  longer access documents only available to that group.

  For example, after deleting the group "Summer Interns", all interns who belonged
  to
  that group no longer see intern-only documents in their search results.

  If you want to delete or replace users or sub groups of a group, you need to use
  the
  `PutPrincipalMapping` operation. For example, if a user in the group
  "Engineering" leaves the engineering team and another user takes their place,
  you
  provide an updated list of users or sub groups that belong to the "Engineering"
  group
  when calling `PutPrincipalMapping`. You can update your internal list of
  users or sub groups and input this list when calling
  `PutPrincipalMapping`.

  `DeletePrincipalMapping` is currently not supported in the Amazon Web Services
  GovCloud (US-West) region.
  """
  @spec delete_principal_mapping(map(), delete_principal_mapping_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_principal_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePrincipalMapping", input, options)
  end

  @doc """
  Deletes a block list used for query suggestions for an index.

  A deleted block list might not take effect right away. Amazon Kendra
  needs to refresh the entire suggestions list to add back the
  queries that were previously blocked.

  `DeleteQuerySuggestionsBlockList` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec delete_query_suggestions_block_list(
          map(),
          delete_query_suggestions_block_list_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Deletes an existing Amazon Kendra thesaurus.
  """
  @spec delete_thesaurus(map(), delete_thesaurus_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def delete_thesaurus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteThesaurus", input, options)
  end

  @doc """
  Gets information about an access control configuration that you created for your
  documents in an index.

  This includes user and group access information for your
  documents. This is useful for user context filtering, where search results are
  filtered
  based on the user or their group access to documents.
  """
  @spec describe_access_control_configuration(
          map(),
          describe_access_control_configuration_request(),
          list()
        ) ::
          {:ok, describe_access_control_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_access_control_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccessControlConfiguration", input, options)
  end

  @doc """
  Gets information about an Amazon Kendra data source connector.
  """
  @spec describe_data_source(map(), describe_data_source_request(), list()) ::
          {:ok, describe_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataSource", input, options)
  end

  @doc """
  Gets information about your Amazon Kendra experience such as a search
  application.

  For more information on creating a search application experience,
  see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec describe_experience(map(), describe_experience_request(), list()) ::
          {:ok, describe_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExperience", input, options)
  end

  @doc """
  Gets information about an FAQ list.
  """
  @spec describe_faq(map(), describe_faq_request(), list()) ::
          {:ok, describe_faq_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_faq(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFaq", input, options)
  end

  @doc """
  Gets information about a set of featured results.

  Features results are placed
  above all other results for certain queries. If there's an exact match of a
  query,
  then one or more specific documents are featured in the search results.
  """
  @spec describe_featured_results_set(map(), describe_featured_results_set_request(), list()) ::
          {:ok, describe_featured_results_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_featured_results_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFeaturedResultsSet", input, options)
  end

  @doc """
  Gets information about an existing Amazon Kendra index.
  """
  @spec describe_index(map(), describe_index_request(), list()) ::
          {:ok, describe_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIndex", input, options)
  end

  @doc """
  Describes the processing of `PUT` and `DELETE` actions for
  mapping users to their groups.

  This includes information on the status of actions
  currently processing or yet to be processed, when actions were last updated,
  when
  actions were received by Amazon Kendra, the latest action that should process
  and
  apply after other actions, and useful error messages if an action could not be
  processed.

  `DescribePrincipalMapping` is currently not supported in the Amazon Web Services
  GovCloud (US-West) region.
  """
  @spec describe_principal_mapping(map(), describe_principal_mapping_request(), list()) ::
          {:ok, describe_principal_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_principal_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePrincipalMapping", input, options)
  end

  @doc """
  Gets information about a block list used for query suggestions for
  an index.

  This is used to check the current settings that are applied to a
  block list.

  `DescribeQuerySuggestionsBlockList` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec describe_query_suggestions_block_list(
          map(),
          describe_query_suggestions_block_list_request(),
          list()
        ) ::
          {:ok, describe_query_suggestions_block_list_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Gets information on the settings of query suggestions for an index.

  This is used to check the current settings applied
  to query suggestions.

  `DescribeQuerySuggestionsConfig` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec describe_query_suggestions_config(
          map(),
          describe_query_suggestions_config_request(),
          list()
        ) ::
          {:ok, describe_query_suggestions_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_query_suggestions_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeQuerySuggestionsConfig", input, options)
  end

  @doc """
  Gets information about an existing Amazon Kendra thesaurus.
  """
  @spec describe_thesaurus(map(), describe_thesaurus_request(), list()) ::
          {:ok, describe_thesaurus_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def describe_thesaurus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeThesaurus", input, options)
  end

  @doc """
  Prevents users or groups in your IAM Identity Center identity source
  from accessing your Amazon Kendra experience.

  You can create an Amazon Kendra experience
  such as a search application. For more information on creating a search
  application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec disassociate_entities_from_experience(
          map(),
          disassociate_entities_from_experience_request(),
          list()
        ) ::
          {:ok, disassociate_entities_from_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def disassociate_entities_from_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateEntitiesFromExperience", input, options)
  end

  @doc """
  Removes the specific permissions of users or groups in your IAM Identity Center
  identity source with access to your Amazon Kendra experience.

  You can create an Amazon Kendra
  experience such as a search application. For more information on creating a
  search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec disassociate_personas_from_entities(
          map(),
          disassociate_personas_from_entities_request(),
          list()
        ) ::
          {:ok, disassociate_personas_from_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def disassociate_personas_from_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociatePersonasFromEntities", input, options)
  end

  @doc """
  Fetches the queries that are suggested to your users.

  `GetQuerySuggestions` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec get_query_suggestions(map(), get_query_suggestions_request(), list()) ::
          {:ok, get_query_suggestions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def get_query_suggestions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQuerySuggestions", input, options)
  end

  @doc """
  Retrieves search metrics data.

  The data provides a snapshot of how your users interact
  with your search application and how effective the application is.
  """
  @spec get_snapshots(map(), get_snapshots_request(), list()) ::
          {:ok, get_snapshots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, invalid_request_exception()}
          | {:error, resource_not_found_exception()}
  def get_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSnapshots", input, options)
  end

  @doc """
  Lists one or more access control configurations for an index.

  This includes user and
  group access information for your documents. This is useful for user context
  filtering,
  where search results are filtered based on the user or their group access to
  documents.
  """
  @spec list_access_control_configurations(
          map(),
          list_access_control_configurations_request(),
          list()
        ) ::
          {:ok, list_access_control_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_access_control_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccessControlConfigurations", input, options)
  end

  @doc """
  Gets statistics about synchronizing a data source connector.
  """
  @spec list_data_source_sync_jobs(map(), list_data_source_sync_jobs_request(), list()) ::
          {:ok, list_data_source_sync_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_data_source_sync_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataSourceSyncJobs", input, options)
  end

  @doc """
  Lists the data source connectors that you have created.
  """
  @spec list_data_sources(map(), list_data_sources_request(), list()) ::
          {:ok, list_data_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_data_sources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataSources", input, options)
  end

  @doc """
  Lists specific permissions of users and groups with access to your
  Amazon Kendra experience.
  """
  @spec list_entity_personas(map(), list_entity_personas_request(), list()) ::
          {:ok, list_entity_personas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_entity_personas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntityPersonas", input, options)
  end

  @doc """
  Lists users or groups in your IAM Identity Center identity source that are
  granted access to your Amazon Kendra experience.

  You can create an Amazon Kendra experience
  such as a search application. For more information on creating a search
  application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec list_experience_entities(map(), list_experience_entities_request(), list()) ::
          {:ok, list_experience_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_experience_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExperienceEntities", input, options)
  end

  @doc """
  Lists one or more Amazon Kendra experiences.

  You can create an Amazon Kendra experience such
  as a search application. For more information on creating a search application
  experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec list_experiences(map(), list_experiences_request(), list()) ::
          {:ok, list_experiences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_experiences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExperiences", input, options)
  end

  @doc """
  Gets a list of FAQ lists associated with an index.
  """
  @spec list_faqs(map(), list_faqs_request(), list()) ::
          {:ok, list_faqs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_faqs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFaqs", input, options)
  end

  @doc """
  Lists all your sets of featured results for a given index.

  Features results
  are placed above all other results for certain queries. If there's an exact
  match
  of a query, then one or more specific documents are featured in the search
  results.
  """
  @spec list_featured_results_sets(map(), list_featured_results_sets_request(), list()) ::
          {:ok, list_featured_results_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_featured_results_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFeaturedResultsSets", input, options)
  end

  @doc """
  Provides a list of groups that are mapped to users before a given ordering or
  timestamp identifier.

  `ListGroupsOlderThanOrderingId` is currently not supported in the Amazon Web
  Services GovCloud (US-West) region.
  """
  @spec list_groups_older_than_ordering_id(
          map(),
          list_groups_older_than_ordering_id_request(),
          list()
        ) ::
          {:ok, list_groups_older_than_ordering_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_groups_older_than_ordering_id(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGroupsOlderThanOrderingId", input, options)
  end

  @doc """
  Lists the Amazon Kendra indexes that you created.
  """
  @spec list_indices(map(), list_indices_request(), list()) ::
          {:ok, list_indices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_indices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListIndices", input, options)
  end

  @doc """
  Lists the block lists used for query suggestions for an index.

  For information on the current quota limits for block lists, see
  [Quotas for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

  `ListQuerySuggestionsBlockLists` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec list_query_suggestions_block_lists(
          map(),
          list_query_suggestions_block_lists_request(),
          list()
        ) ::
          {:ok, list_query_suggestions_block_lists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_query_suggestions_block_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListQuerySuggestionsBlockLists", input, options)
  end

  @doc """
  Gets a list of tags associated with a specified resource.

  Indexes, FAQs, and data sources
  can have tags associated with them.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the thesauri for an index.
  """
  @spec list_thesauri(map(), list_thesauri_request(), list()) ::
          {:ok, list_thesauri_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def list_thesauri(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListThesauri", input, options)
  end

  @doc """
  Maps users to their groups so that you only need to provide the user ID when you
  issue
  the query.

  You can also map sub groups to groups. For example, the group "Company
  Intellectual
  Property Teams" includes sub groups "Research" and "Engineering". These sub
  groups
  include their own list of users or people who work in these teams. Only users
  who work
  in research and engineering, and therefore belong in the intellectual property
  group,
  can see top-secret company documents in their search results.

  This is useful for user context filtering, where search results are filtered
  based on
  the user or their group access to documents. For more information, see
  [Filtering on user
  context](https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html).

  If more than five `PUT` actions for a group are currently processing, a
  validation exception is thrown.
  """
  @spec put_principal_mapping(map(), put_principal_mapping_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def put_principal_mapping(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPrincipalMapping", input, options)
  end

  @doc """
  Searches an index given an input query.

  If you are working with large language models (LLMs) or implementing retrieval
  augmented generation (RAG) systems, you can use Amazon Kendra's
  [Retrieve](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Retrieve.html)
  API, which can return longer semantically relevant passages. We
  recommend using the `Retrieve` API instead of filing a service limit increase
  to increase the `Query` API document excerpt length.

  You can configure boosting or relevance tuning at the query level to override
  boosting
  at the index level, filter based on document fields/attributes and faceted
  search, and
  filter based on the user or their group access to documents. You can also
  include certain
  fields in the response that might provide useful additional information.

  A query response contains three types of results.

    *
  Relevant suggested answers. The answers can be either a text excerpt or table
  excerpt. The answer can be highlighted in the excerpt.

    *
  Matching FAQs or questions-answer from your FAQ file.

    *
  Relevant documents. This result type includes an excerpt of the document with
  the
  document title. The searched terms can be highlighted in the excerpt.

  You can specify that the query return only one type of result using the
  `QueryResultTypeFilter` parameter. Each query returns the 100 most relevant
  results. If you filter result type to only question-answers, a maximum of four
  results are
  returned. If you filter result type to only answers, a maximum of three results
  are
  returned.
  """
  @spec query(map(), query_request(), list()) ::
          {:ok, query_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Query", input, options)
  end

  @doc """
  Retrieves relevant passages or text excerpts given an input query.

  This API is similar to the
  [Query](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Query.html) API. However, by
  default, the `Query` API only returns excerpt passages of up to 100 token
  words. With the `Retrieve` API, you can retrieve longer passages of up to 200
  token words and up to 100 semantically relevant passages. This doesn't include
  question-answer or FAQ type responses from your index. The passages are text
  excerpts
  that can be semantically extracted from multiple documents and multiple parts of
  the
  same document. If in extreme cases your documents produce zero passages using
  the
  `Retrieve` API, you can alternatively use the `Query` API and
  its types of responses.

  You can also do the following:

    *
  Override boosting at the index level

    *
  Filter based on document fields or attributes

    *
  Filter based on the user or their group access to documents

    *
  View the confidence score bucket for a retrieved passage result. The
  confidence bucket provides a relative ranking that indicates how confident
  Amazon Kendra is that the response is relevant to the query.

  Confidence score buckets are currently available only for English.

  You can also include certain fields in the response that might provide useful
  additional information.

  The `Retrieve` API shares the number of [query capacity
  units](https://docs.aws.amazon.com/kendra/latest/APIReference/API_CapacityUnitsConfiguration.html)
  that you set for your index. For more information on what's included
  in a single capacity unit and the default base capacity for an index, see
  [Adjusting capacity](https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html).
  """
  @spec retrieve(map(), retrieve_request(), list()) ::
          {:ok, retrieve_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def retrieve(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "Retrieve", input, options)
  end

  @doc """
  Starts a synchronization job for a data source connector.

  If a synchronization job is
  already in progress, Amazon Kendra returns a `ResourceInUseException`
  exception.

  Re-syncing your data source with your index after modifying, adding, or deleting
  documents from your data source respository could take up to an hour or more,
  depending on
  the number of documents to sync.
  """
  @spec start_data_source_sync_job(map(), start_data_source_sync_job_request(), list()) ::
          {:ok, start_data_source_sync_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def start_data_source_sync_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDataSourceSyncJob", input, options)
  end

  @doc """
  Stops a synchronization job that is currently running.

  You can't stop a scheduled
  synchronization job.
  """
  @spec stop_data_source_sync_job(map(), stop_data_source_sync_job_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def stop_data_source_sync_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDataSourceSyncJob", input, options)
  end

  @doc """
  Enables you to provide feedback to Amazon Kendra to improve the
  performance of your index.

  `SubmitFeedback` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec submit_feedback(map(), submit_feedback_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, resource_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def submit_feedback(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitFeedback", input, options)
  end

  @doc """
  Adds the specified tag to the specified index, FAQ, or data source resource.

  If the tag
  already exists, the existing value is replaced with the new value.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag from an index, FAQ, or a data source.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an access control configuration for your documents in an index.

  This includes
  user and group access information for your documents. This is useful for user
  context
  filtering, where search results are filtered based on the user or their group
  access to
  documents.

  You can update an access control configuration you created without indexing all
  of
  your documents again. For example, your index contains top-secret company
  documents that
  only certain employees or users should access. You created an 'allow' access
  control
  configuration for one user who recently joined the 'top-secret' team, switching
  from a
  team with 'deny' access to top-secret documents. However, the user suddenly
  returns to
  their previous team and should no longer have access to top secret documents.
  You can
  update the access control configuration to re-configure access control for your
  documents as circumstances change.

  You call the
  [BatchPutDocument](https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html) API to
  apply the updated access control configuration, with the
  `AccessControlConfigurationId` included in the
  [Document](https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html)
  object. If you use an S3 bucket as a data source, you synchronize your data
  source to
  apply the `AccessControlConfigurationId` in the `.metadata.json`
  file. Amazon Kendra currently only supports access control configuration for S3
  data sources and documents indexed using the `BatchPutDocument` API.
  """
  @spec update_access_control_configuration(
          map(),
          update_access_control_configuration_request(),
          list()
        ) ::
          {:ok, update_access_control_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_access_control_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccessControlConfiguration", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra data source connector.
  """
  @spec update_data_source(map(), update_data_source_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDataSource", input, options)
  end

  @doc """
  Updates your Amazon Kendra experience such as a search application.

  For more information on
  creating a search application experience, see [Building a search experience with no
  code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).
  """
  @spec update_experience(map(), update_experience_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_experience(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateExperience", input, options)
  end

  @doc """
  Updates a set of featured results.

  Features results are placed
  above
  all other results for certain queries. You map specific queries to specific
  documents
  for featuring in the results. If a query contains an exact match of a query,
  then one
  or more specific documents are featured in the search results.
  """
  @spec update_featured_results_set(map(), update_featured_results_set_request(), list()) ::
          {:ok, update_featured_results_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, featured_results_conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_featured_results_set(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFeaturedResultsSet", input, options)
  end

  @doc """
  Updates an existing Amazon Kendra index.
  """
  @spec update_index(map(), update_index_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_quota_exceeded_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_index(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateIndex", input, options)
  end

  @doc """
  Updates a block list used for query suggestions for an index.

  Updates to a block list might not take effect right away. Amazon Kendra
  needs to refresh the entire suggestions list to apply any updates to the
  block list. Other changes not related to the block list apply immediately.

  If a block list is updating, then you need to wait for the first update to
  finish before submitting another update.

  Amazon Kendra supports partial updates, so you only need to provide the fields
  you want to update.

  `UpdateQuerySuggestionsBlockList` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec update_query_suggestions_block_list(
          map(),
          update_query_suggestions_block_list_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_query_suggestions_block_list(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateQuerySuggestionsBlockList", input, options)
  end

  @doc """
  Updates the settings of query suggestions for an index.

  Amazon Kendra supports partial updates, so you only need to provide
  the fields you want to update.

  If an update is currently processing, you
  need to wait for the update to finish before making another update.

  Updates to query suggestions settings might not take effect right away.
  The time for your updated settings to take effect depends on the updates
  made and the number of search queries in your index.

  You can still enable/disable query suggestions at any time.

  `UpdateQuerySuggestionsConfig` is currently not supported in the
  Amazon Web Services GovCloud (US-West) region.
  """
  @spec update_query_suggestions_config(map(), update_query_suggestions_config_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_query_suggestions_config(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateQuerySuggestionsConfig", input, options)
  end

  @doc """
  Updates a thesaurus for an index.
  """
  @spec update_thesaurus(map(), update_thesaurus_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_thesaurus(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateThesaurus", input, options)
  end
end
