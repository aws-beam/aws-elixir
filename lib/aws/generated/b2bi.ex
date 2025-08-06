# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.B2bi do
  @moduledoc """
  This is the *Amazon Web Services B2B Data Interchange API Reference*.

  It provides descriptions, API request parameters, and the XML response for each
  of the B2BI API actions.

  B2BI enables automated exchange of EDI (electronic data interchange) based
  business-critical transactions at cloud scale, with elasticity and pay-as-you-go
  pricing. Businesses use EDI documents to exchange transactional data with
  trading partners, such as suppliers and end customers, using standardized
  formats such as X12.

  Rather than actually running a command, you can use the
  `--generate-cli-skeleton` parameter with any API call to generate and display a
  parameter template. You can then use the generated template to customize and use
  as input on a later command. For details, see [Generate and use a parameter skeleton
  file](https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-skeleton.html#cli-usage-skeleton-generate).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      x12_delimiters() :: %{
        "componentSeparator" => String.t() | atom(),
        "dataElementSeparator" => String.t() | atom(),
        "segmentTerminator" => String.t() | atom()
      }
      
  """
  @type x12_delimiters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      wrap_options() :: %{
        "lineLength" => integer(),
        "lineTerminator" => list(any()),
        "wrapBy" => list(any())
      }
      
  """
  @type wrap_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_details() :: %{
        "transactionSet" => list(any()),
        "version" => list(any())
      }
      
  """
  @type x12_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_conversion_response() :: %{
        "convertedFileContent" => [String.t() | atom()],
        "validationMessages" => list([String.t() | atom()]())
      }
      
  """
  @type test_conversion_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_capability_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("instructionsDocuments") => list(s3_location()),
        optional("tags") => list(tag()),
        required("configuration") => list(),
        required("name") => String.t() | atom(),
        required("type") => list(any())
      }
      
  """
  @type create_capability_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_profile_request() :: %{}
      
  """
  @type delete_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      create_partnership_request() :: %{
        optional("capabilityOptions") => capability_options(),
        optional("clientToken") => [String.t() | atom()],
        optional("phone") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("capabilities") => list(String.t() | atom()),
        required("email") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("profileId") => String.t() | atom()
      }
      
  """
  @type create_partnership_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_transformer_request() :: %{}
      
  """
  @type get_transformer_request() :: %{}

  @typedoc """

  ## Example:
      
      list_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partnership_summary() :: %{
        "capabilities" => list(String.t() | atom()),
        "capabilityOptions" => capability_options(),
        "createdAt" => non_neg_integer(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "partnershipId" => String.t() | atom(),
        "profileId" => String.t() | atom(),
        "tradingPartnerId" => String.t() | atom()
      }
      
  """
  @type partnership_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_partnerships_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("profileId") => String.t() | atom()
      }
      
  """
  @type list_partnerships_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partnership_response() :: %{
        "capabilities" => list(String.t() | atom()),
        "capabilityOptions" => capability_options(),
        "createdAt" => non_neg_integer(),
        "email" => String.t() | atom(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "partnershipArn" => String.t() | atom(),
        "partnershipId" => String.t() | atom(),
        "phone" => String.t() | atom(),
        "profileId" => String.t() | atom(),
        "tradingPartnerId" => String.t() | atom()
      }
      
  """
  @type get_partnership_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_capability_response() :: %{
        "capabilityArn" => String.t() | atom(),
        "capabilityId" => String.t() | atom(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "instructionsDocuments" => list(s3_location()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type get_capability_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_split_options() :: %{
        "splitBy" => list(any())
      }
      
  """
  @type x12_split_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_conversion_request() :: %{
        required("source") => conversion_source(),
        required("target") => conversion_target()
      }
      
  """
  @type test_conversion_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_transformer_request() :: %{
        optional("ediType") => list(),
        optional("fileFormat") => list(any()),
        optional("inputConversion") => input_conversion(),
        optional("mapping") => mapping(),
        optional("mappingTemplate") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("outputConversion") => output_conversion(),
        optional("sampleDocument") => String.t() | atom(),
        optional("sampleDocuments") => sample_documents(),
        optional("status") => list(any())
      }
      
  """
  @type update_transformer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_conversion() :: %{
        "advancedOptions" => advanced_options(),
        "formatOptions" => list(),
        "fromFormat" => list(any())
      }
      
  """
  @type input_conversion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generate_mapping_response() :: %{
        "mappingAccuracy" => [float()],
        "mappingTemplate" => [String.t() | atom()]
      }
      
  """
  @type generate_mapping_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_transformers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_transformers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_transformer_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("ediType") => list(),
        optional("fileFormat") => list(any()),
        optional("inputConversion") => input_conversion(),
        optional("mapping") => mapping(),
        optional("mappingTemplate") => String.t() | atom(),
        optional("outputConversion") => output_conversion(),
        optional("sampleDocument") => String.t() | atom(),
        optional("sampleDocuments") => sample_documents(),
        optional("tags") => list(tag()),
        required("name") => String.t() | atom()
      }
      
  """
  @type create_transformer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_transformer_response() :: %{
        "createdAt" => non_neg_integer(),
        "ediType" => list(),
        "fileFormat" => list(any()),
        "inputConversion" => input_conversion(),
        "mapping" => mapping(),
        "mappingTemplate" => String.t() | atom(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "outputConversion" => output_conversion(),
        "sampleDocument" => String.t() | atom(),
        "sampleDocuments" => sample_documents(),
        "status" => list(any()),
        "transformerArn" => String.t() | atom(),
        "transformerId" => String.t() | atom()
      }
      
  """
  @type get_transformer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_capability_response() :: %{
        "capabilityArn" => String.t() | atom(),
        "capabilityId" => String.t() | atom(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "instructionsDocuments" => list(s3_location()),
        "name" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type create_capability_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_transformers_response() :: %{
        "nextToken" => String.t() | atom(),
        "transformers" => list(transformer_summary())
      }
      
  """
  @type list_transformers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_capability_response() :: %{
        "capabilityArn" => String.t() | atom(),
        "capabilityId" => String.t() | atom(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "instructionsDocuments" => list(s3_location()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type update_capability_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_transformer_job_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        required("inputFile") => s3_location(),
        required("outputLocation") => s3_location(),
        required("transformerId") => String.t() | atom()
      }
      
  """
  @type start_transformer_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_partnership_request() :: %{
        optional("capabilities") => list(String.t() | atom()),
        optional("capabilityOptions") => capability_options(),
        optional("name") => String.t() | atom()
      }
      
  """
  @type update_partnership_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      capability_summary() :: %{
        "capabilityId" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type capability_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_starter_mapping_template_response() :: %{
        "mappingTemplate" => [String.t() | atom()]
      }
      
  """
  @type create_starter_mapping_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      output_conversion() :: %{
        "formatOptions" => list(),
        "toFormat" => list(any())
      }
      
  """
  @type output_conversion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transformer_summary() :: %{
        "createdAt" => non_neg_integer(),
        "ediType" => list(),
        "fileFormat" => list(any()),
        "inputConversion" => input_conversion(),
        "mapping" => mapping(),
        "mappingTemplate" => String.t() | atom(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "outputConversion" => output_conversion(),
        "sampleDocument" => String.t() | atom(),
        "sampleDocuments" => sample_documents(),
        "status" => list(any()),
        "transformerId" => String.t() | atom()
      }
      
  """
  @type transformer_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_profile_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("email") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("businessName") => String.t() | atom(),
        required("logging") => list(any()),
        required("name") => String.t() | atom(),
        required("phone") => String.t() | atom()
      }
      
  """
  @type create_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_transformer_job_request() :: %{
        required("transformerId") => String.t() | atom()
      }
      
  """
  @type get_transformer_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_profile_request() :: %{
        optional("businessName") => String.t() | atom(),
        optional("email") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("phone") => String.t() | atom()
      }
      
  """
  @type update_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_transformer_request() :: %{}
      
  """
  @type delete_transformer_request() :: %{}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_envelope() :: %{
        "common" => x12_outbound_edi_headers(),
        "wrapOptions" => wrap_options()
      }
      
  """
  @type x12_envelope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_profile_response() :: %{
        "businessName" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "email" => String.t() | atom(),
        "logGroupName" => String.t() | atom(),
        "logging" => list(any()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "phone" => String.t() | atom(),
        "profileArn" => String.t() | atom(),
        "profileId" => String.t() | atom()
      }
      
  """
  @type get_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_capabilities_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_capabilities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_profile_response() :: %{
        "businessName" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "email" => String.t() | atom(),
        "logGroupName" => String.t() | atom(),
        "logging" => list(any()),
        "name" => String.t() | atom(),
        "phone" => String.t() | atom(),
        "profileArn" => String.t() | atom(),
        "profileId" => String.t() | atom()
      }
      
  """
  @type create_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_functional_group_headers() :: %{
        "applicationReceiverCode" => String.t() | atom(),
        "applicationSenderCode" => String.t() | atom(),
        "responsibleAgencyCode" => String.t() | atom()
      }
      
  """
  @type x12_functional_group_headers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_transformer_job_response() :: %{
        "message" => [String.t() | atom()],
        "outputFiles" => list(s3_location()),
        "status" => list(any())
      }
      
  """
  @type get_transformer_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      inbound_edi_options() :: %{
        "x12" => x12_inbound_edi_options()
      }
      
  """
  @type inbound_edi_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      edi_configuration() :: %{
        "capabilityDirection" => list(any()),
        "inputLocation" => s3_location(),
        "outputLocation" => s3_location(),
        "transformerId" => String.t() | atom(),
        "type" => list()
      }
      
  """
  @type edi_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_capability_request() :: %{
        optional("configuration") => list(),
        optional("instructionsDocuments") => list(s3_location()),
        optional("name") => String.t() | atom()
      }
      
  """
  @type update_capability_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "bucketName" => String.t() | atom(),
        "key" => String.t() | atom()
      }
      
  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_partnerships_response() :: %{
        "nextToken" => String.t() | atom(),
        "partnerships" => list(partnership_summary())
      }
      
  """
  @type list_partnerships_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_transformer_response() :: %{
        "createdAt" => non_neg_integer(),
        "ediType" => list(),
        "fileFormat" => list(any()),
        "inputConversion" => input_conversion(),
        "mapping" => mapping(),
        "mappingTemplate" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputConversion" => output_conversion(),
        "sampleDocument" => String.t() | atom(),
        "sampleDocuments" => sample_documents(),
        "status" => list(any()),
        "transformerArn" => String.t() | atom(),
        "transformerId" => String.t() | atom()
      }
      
  """
  @type create_transformer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generate_mapping_request() :: %{
        required("inputFileContent") => String.t() | atom(),
        required("mappingType") => list(any()),
        required("outputFileContent") => String.t() | atom()
      }
      
  """
  @type generate_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_interchange_control_headers() :: %{
        "acknowledgmentRequestedCode" => String.t() | atom(),
        "receiverId" => String.t() | atom(),
        "receiverIdQualifier" => String.t() | atom(),
        "repetitionSeparator" => String.t() | atom(),
        "senderId" => String.t() | atom(),
        "senderIdQualifier" => String.t() | atom(),
        "usageIndicatorCode" => String.t() | atom()
      }
      
  """
  @type x12_interchange_control_headers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom(),
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_transformer_response() :: %{
        "createdAt" => non_neg_integer(),
        "ediType" => list(),
        "fileFormat" => list(any()),
        "inputConversion" => input_conversion(),
        "mapping" => mapping(),
        "mappingTemplate" => String.t() | atom(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "outputConversion" => output_conversion(),
        "sampleDocument" => String.t() | atom(),
        "sampleDocuments" => sample_documents(),
        "status" => list(any()),
        "transformerArn" => String.t() | atom(),
        "transformerId" => String.t() | atom()
      }
      
  """
  @type update_transformer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sample_document_keys() :: %{
        "input" => String.t() | atom(),
        "output" => String.t() | atom()
      }
      
  """
  @type sample_document_keys() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_parsing_response() :: %{
        "parsedFileContent" => [String.t() | atom()],
        "parsedSplitFileContents" => list([String.t() | atom()]())
      }
      
  """
  @type test_parsing_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_capabilities_response() :: %{
        "capabilities" => list(capability_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_capabilities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_acknowledgment_options() :: %{
        "functionalAcknowledgment" => list(any()),
        "technicalAcknowledgment" => list(any())
      }
      
  """
  @type x12_acknowledgment_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_partnership_request() :: %{}
      
  """
  @type delete_partnership_request() :: %{}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_profile_response() :: %{
        "businessName" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "email" => String.t() | atom(),
        "logGroupName" => String.t() | atom(),
        "logging" => list(any()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "phone" => String.t() | atom(),
        "profileArn" => String.t() | atom(),
        "profileId" => String.t() | atom()
      }
      
  """
  @type update_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_profile_request() :: %{}
      
  """
  @type get_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      list_profiles_response() :: %{
        "nextToken" => String.t() | atom(),
        "profiles" => list(profile_summary())
      }
      
  """
  @type list_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_capability_request() :: %{}
      
  """
  @type delete_capability_request() :: %{}

  @typedoc """

  ## Example:
      
      sample_documents() :: %{
        "bucketName" => String.t() | atom(),
        "keys" => list(sample_document_keys())
      }
      
  """
  @type sample_documents() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conversion_source() :: %{
        "fileFormat" => list(any()),
        "inputFile" => list()
      }
      
  """
  @type conversion_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_partnership_response() :: %{
        "capabilities" => list(String.t() | atom()),
        "capabilityOptions" => capability_options(),
        "createdAt" => non_neg_integer(),
        "email" => String.t() | atom(),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "partnershipArn" => String.t() | atom(),
        "partnershipId" => String.t() | atom(),
        "phone" => String.t() | atom(),
        "profileId" => String.t() | atom(),
        "tradingPartnerId" => String.t() | atom()
      }
      
  """
  @type update_partnership_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_control_numbers() :: %{
        "startingFunctionalGroupControlNumber" => integer(),
        "startingInterchangeControlNumber" => integer(),
        "startingTransactionSetControlNumber" => integer()
      }
      
  """
  @type x12_control_numbers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_outbound_edi_headers() :: %{
        "controlNumbers" => x12_control_numbers(),
        "delimiters" => x12_delimiters(),
        "functionalGroupHeaders" => x12_functional_group_headers(),
        "gs05TimeFormat" => list(any()),
        "interchangeControlHeaders" => x12_interchange_control_headers(),
        "validateEdi" => boolean()
      }
      
  """
  @type x12_outbound_edi_headers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom(),
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_mapping_request() :: %{
        required("fileFormat") => list(any()),
        required("inputFileContent") => String.t() | atom(),
        required("mappingTemplate") => String.t() | atom()
      }
      
  """
  @type test_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_starter_mapping_template_request() :: %{
        optional("outputSampleLocation") => s3_location(),
        required("mappingType") => list(any()),
        required("templateDetails") => list()
      }
      
  """
  @type create_starter_mapping_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partnership_request() :: %{}
      
  """
  @type get_partnership_request() :: %{}

  @typedoc """

  ## Example:
      
      capability_options() :: %{
        "inboundEdi" => inbound_edi_options(),
        "outboundEdi" => list()
      }
      
  """
  @type capability_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_advanced_options() :: %{
        "splitOptions" => x12_split_options()
      }
      
  """
  @type x12_advanced_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      mapping() :: %{
        "template" => String.t() | atom(),
        "templateLanguage" => list(any())
      }
      
  """
  @type mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_partnership_response() :: %{
        "capabilities" => list(String.t() | atom()),
        "capabilityOptions" => capability_options(),
        "createdAt" => non_neg_integer(),
        "email" => String.t() | atom(),
        "name" => String.t() | atom(),
        "partnershipArn" => String.t() | atom(),
        "partnershipId" => String.t() | atom(),
        "phone" => String.t() | atom(),
        "profileId" => String.t() | atom(),
        "tradingPartnerId" => String.t() | atom()
      }
      
  """
  @type create_partnership_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_parsing_request() :: %{
        optional("advancedOptions") => advanced_options(),
        required("ediType") => list(),
        required("fileFormat") => list(any()),
        required("inputFile") => s3_location()
      }
      
  """
  @type test_parsing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_capability_request() :: %{}
      
  """
  @type get_capability_request() :: %{}

  @typedoc """

  ## Example:
      
      conversion_target() :: %{
        "fileFormat" => list(any()),
        "formatDetails" => list(),
        "outputSampleFile" => list()
      }
      
  """
  @type conversion_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      advanced_options() :: %{
        "x12" => x12_advanced_options()
      }
      
  """
  @type advanced_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      test_mapping_response() :: %{
        "mappedFileContent" => [String.t() | atom()]
      }
      
  """
  @type test_mapping_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      profile_summary() :: %{
        "businessName" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "logGroupName" => String.t() | atom(),
        "logging" => list(any()),
        "modifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "profileId" => String.t() | atom()
      }
      
  """
  @type profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      x12_inbound_edi_options() :: %{
        "acknowledgmentOptions" => x12_acknowledgment_options()
      }
      
  """
  @type x12_inbound_edi_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_transformer_job_response() :: %{
        "transformerJobId" => String.t() | atom()
      }
      
  """
  @type start_transformer_job_response() :: %{(String.t() | atom()) => any()}

  @type create_capability_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_partnership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_starter_mapping_template_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_transformer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_capability_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_partnership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_transformer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type generate_mapping_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_capability_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_partnership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_transformer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_transformer_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_capabilities_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_partnerships_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profiles_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_transformers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type start_transformer_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type test_conversion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type test_mapping_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type test_parsing_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_capability_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_partnership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_profile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_transformer_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-06-23",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "b2bi",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "b2bi",
      signature_version: "v4",
      signing_name: "b2bi",
      target_prefix: "B2BI"
    }
  end

  @doc """
  Instantiates a capability based on the specified parameters.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  @spec create_capability(map(), create_capability_request(), list()) ::
          {:ok, create_capability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_capability_errors()}
  def create_capability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCapability", input, options)
  end

  @doc """
  Creates a partnership between a customer and a trading partner, based on the
  supplied parameters.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  @spec create_partnership(map(), create_partnership_request(), list()) ::
          {:ok, create_partnership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_partnership_errors()}
  def create_partnership(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePartnership", input, options)
  end

  @doc """
  Creates a customer profile.

  You can have up to five customer profiles, each representing a distinct private
  network. A profile is the mechanism used to create the concept of a private
  network.
  """
  @spec create_profile(map(), create_profile_request(), list()) ::
          {:ok, create_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_profile_errors()}
  def create_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProfile", input, options)
  end

  @doc """
  Amazon Web Services B2B Data Interchange uses a mapping template in JSONata or
  XSLT format to transform a customer input file into a JSON or XML file that can
  be converted to EDI.

  If you provide a sample EDI file with the same structure as the EDI files that
  you wish to generate, then the service can generate a mapping template. The
  starter template contains placeholder values which you can replace with JSONata
  or XSLT expressions to take data from your input file and insert it into the
  JSON or XML file that is used to generate the EDI.

  If you do not provide a sample EDI file, then the service can generate a mapping
  template based on the EDI settings in the `templateDetails` parameter.

  Currently, we only support generating a template that can generate the input to
  produce an Outbound X12 EDI file.
  """
  @spec create_starter_mapping_template(map(), create_starter_mapping_template_request(), list()) ::
          {:ok, create_starter_mapping_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_starter_mapping_template_errors()}
  def create_starter_mapping_template(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateStarterMappingTemplate", input, options)
  end

  @doc """
  Creates a transformer.

  Amazon Web Services B2B Data Interchange currently supports two scenarios:

    * *Inbound EDI*: the Amazon Web Services customer receives an EDI
  file from their trading partner. Amazon Web Services B2B Data Interchange
  converts this EDI file into a JSON or XML file with a service-defined structure.
  A mapping template provided by the customer, in JSONata or XSLT format, is
  optionally applied to this file to produce a JSON or XML file with the structure
  the customer requires.

    * *Outbound EDI*: the Amazon Web Services customer has a JSON or XML
  file containing data that they wish to use in an EDI file. A mapping template,
  provided by the customer (in either JSONata or XSLT format) is applied to this
  file to generate a JSON or XML file in the service-defined structure. This file
  is then converted to an EDI file.

  The following fields are provided for backwards compatibility only:
  `fileFormat`, `mappingTemplate`, `ediType`, and `sampleDocument`.

     Use the `mapping` data type in place of `mappingTemplate` and
  `fileFormat`

     Use the `sampleDocuments` data type in place of `sampleDocument`

     Use either the `inputConversion` or `outputConversion` in place of
  `ediType`
  """
  @spec create_transformer(map(), create_transformer_request(), list()) ::
          {:ok, create_transformer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_transformer_errors()}
  def create_transformer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateTransformer", input, options)
  end

  @doc """
  Deletes the specified capability.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  @spec delete_capability(map(), delete_capability_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_capability_errors()}
  def delete_capability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCapability", input, options)
  end

  @doc """
  Deletes the specified partnership.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  @spec delete_partnership(map(), delete_partnership_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_partnership_errors()}
  def delete_partnership(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePartnership", input, options)
  end

  @doc """
  Deletes the specified profile.

  A profile is the mechanism used to create the concept of a private network.
  """
  @spec delete_profile(map(), delete_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProfile", input, options)
  end

  @doc """
  Deletes the specified transformer.

  A transformer can take an EDI file as input and transform it into a JSON-or
  XML-formatted document. Alternatively, a transformer can take a JSON-or
  XML-formatted document as input and transform it into an EDI file.
  """
  @spec delete_transformer(map(), delete_transformer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_transformer_errors()}
  def delete_transformer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteTransformer", input, options)
  end

  @doc """
  Takes sample input and output documents and uses Amazon Bedrock to generate a
  mapping automatically.

  Depending on the accuracy and other factors, you can then edit the mapping for
  your needs.

  Before you can use the AI-assisted feature for Amazon Web Services B2B Data
  Interchange you must enable models in Amazon Bedrock. For details, see
  [AI-assisted template mapping prerequisites](https://docs.aws.amazon.com/b2bi/latest/userguide/ai-assisted-mapping.html#ai-assist-prereq)
  in the *Amazon Web Services B2B Data Interchange User guide*.

  To generate a mapping, perform the following steps:

    1. Start with an X12 EDI document to use as the input.

    2. Call `TestMapping` using your EDI document.

    3. Use the output from the `TestMapping` operation as either input
  or output for your GenerateMapping call, along with your sample file.
  """
  @spec generate_mapping(map(), generate_mapping_request(), list()) ::
          {:ok, generate_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_mapping_errors()}
  def generate_mapping(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GenerateMapping", input, options)
  end

  @doc """
  Retrieves the details for the specified capability.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  @spec get_capability(map(), get_capability_request(), list()) ::
          {:ok, get_capability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_capability_errors()}
  def get_capability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCapability", input, options)
  end

  @doc """
  Retrieves the details for a partnership, based on the partner and profile IDs
  specified.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  @spec get_partnership(map(), get_partnership_request(), list()) ::
          {:ok, get_partnership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_partnership_errors()}
  def get_partnership(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPartnership", input, options)
  end

  @doc """
  Retrieves the details for the profile specified by the profile ID.

  A profile is the mechanism used to create the concept of a private network.
  """
  @spec get_profile(map(), get_profile_request(), list()) ::
          {:ok, get_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_errors()}
  def get_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetProfile", input, options)
  end

  @doc """
  Retrieves the details for the transformer specified by the transformer ID.

  A transformer can take an EDI file as input and transform it into a JSON-or
  XML-formatted document. Alternatively, a transformer can take a JSON-or
  XML-formatted document as input and transform it into an EDI file.
  """
  @spec get_transformer(map(), get_transformer_request(), list()) ::
          {:ok, get_transformer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_transformer_errors()}
  def get_transformer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTransformer", input, options)
  end

  @doc """
  Returns the details of the transformer run, based on the Transformer job ID.

  If 30 days have elapsed since your transformer job was started, the system
  deletes it. So, if you run `GetTransformerJob` and supply a `transformerId` and
  `transformerJobId` for a job that was started more than 30 days previously, you
  receive a 404 response.
  """
  @spec get_transformer_job(map(), get_transformer_job_request(), list()) ::
          {:ok, get_transformer_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_transformer_job_errors()}
  def get_transformer_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTransformerJob", input, options)
  end

  @doc """
  Lists the capabilities associated with your Amazon Web Services account for your
  current or specified region.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  @spec list_capabilities(map(), list_capabilities_request(), list()) ::
          {:ok, list_capabilities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_capabilities_errors()}
  def list_capabilities(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCapabilities", input, options)
  end

  @doc """
  Lists the partnerships associated with your Amazon Web Services account for your
  current or specified region.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  @spec list_partnerships(map(), list_partnerships_request(), list()) ::
          {:ok, list_partnerships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_partnerships_errors()}
  def list_partnerships(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPartnerships", input, options)
  end

  @doc """
  Lists the profiles associated with your Amazon Web Services account for your
  current or specified region.

  A profile is the mechanism used to create the concept of a private network.
  """
  @spec list_profiles(map(), list_profiles_request(), list()) ::
          {:ok, list_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profiles_errors()}
  def list_profiles(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProfiles", input, options)
  end

  @doc """
  Lists all of the tags associated with the Amazon Resource Name (ARN) that you
  specify.

  The resource can be a capability, partnership, profile, or transformer.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the available transformers.

  A transformer can take an EDI file as input and transform it into a JSON-or
  XML-formatted document. Alternatively, a transformer can take a JSON-or
  XML-formatted document as input and transform it into an EDI file.
  """
  @spec list_transformers(map(), list_transformers_request(), list()) ::
          {:ok, list_transformers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_transformers_errors()}
  def list_transformers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTransformers", input, options)
  end

  @doc """
  Runs a job, using a transformer, to parse input EDI (electronic data
  interchange) file into the output structures used by Amazon Web Services B2B
  Data Interchange.

  If you only want to transform EDI (electronic data interchange) documents, you
  don't need to create profiles, partnerships or capabilities. Just create and
  configure a transformer, and then run the `StartTransformerJob` API to process
  your files.

  The system stores transformer jobs for 30 days. During that period, you can run
  [GetTransformerJob](https://docs.aws.amazon.com/b2bi/latest/APIReference/API_GetTransformerJob.html)
  and supply its `transformerId` and `transformerJobId` to return details of the
  job.
  """
  @spec start_transformer_job(map(), start_transformer_job_request(), list()) ::
          {:ok, start_transformer_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_transformer_job_errors()}
  def start_transformer_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartTransformerJob", input, options)
  end

  @doc """
  Attaches a key-value pair to a resource, as identified by its Amazon Resource
  Name (ARN).

  Resources are capability, partnership, profile, transformers and other entities.

  There is no response returned from this call.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  This operation mimics the latter half of a typical Outbound EDI request.

  It takes an input JSON/XML in the B2Bi shape as input, converts it to an X12 EDI
  string, and return that string.
  """
  @spec test_conversion(map(), test_conversion_request(), list()) ::
          {:ok, test_conversion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_conversion_errors()}
  def test_conversion(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestConversion", input, options)
  end

  @doc """
  Maps the input file according to the provided template file.

  The API call downloads the file contents from the Amazon S3 location, and passes
  the contents in as a string, to the `inputFileContent` parameter.
  """
  @spec test_mapping(map(), test_mapping_request(), list()) ::
          {:ok, test_mapping_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_mapping_errors()}
  def test_mapping(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestMapping", input, options)
  end

  @doc """
  Parses the input EDI (electronic data interchange) file.

  The input file has a file size limit of 250 KB.
  """
  @spec test_parsing(map(), test_parsing_request(), list()) ::
          {:ok, test_parsing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, test_parsing_errors()}
  def test_parsing(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TestParsing", input, options)
  end

  @doc """
  Detaches a key-value pair from the specified resource, as identified by its
  Amazon Resource Name (ARN).

  Resources are capability, partnership, profile, transformers and other entities.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates some of the parameters for a capability, based on the specified
  parameters.

  A trading capability contains the information required to transform incoming EDI
  documents into JSON or XML outputs.
  """
  @spec update_capability(map(), update_capability_request(), list()) ::
          {:ok, update_capability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_capability_errors()}
  def update_capability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCapability", input, options)
  end

  @doc """
  Updates some of the parameters for a partnership between a customer and trading
  partner.

  A partnership represents the connection between you and your trading partner. It
  ties together a profile and one or more trading capabilities.
  """
  @spec update_partnership(map(), update_partnership_request(), list()) ::
          {:ok, update_partnership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_partnership_errors()}
  def update_partnership(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePartnership", input, options)
  end

  @doc """
  Updates the specified parameters for a profile.

  A profile is the mechanism used to create the concept of a private network.
  """
  @spec update_profile(map(), update_profile_request(), list()) ::
          {:ok, update_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_profile_errors()}
  def update_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProfile", input, options)
  end

  @doc """
  Updates the specified parameters for a transformer.

  A transformer can take an EDI file as input and transform it into a JSON-or
  XML-formatted document. Alternatively, a transformer can take a JSON-or
  XML-formatted document as input and transform it into an EDI file.
  """
  @spec update_transformer(map(), update_transformer_request(), list()) ::
          {:ok, update_transformer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_transformer_errors()}
  def update_transformer(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateTransformer", input, options)
  end
end
