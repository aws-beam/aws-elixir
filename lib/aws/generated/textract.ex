# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Textract do
  @moduledoc """
  Amazon Textract detects and analyzes text in documents and converts it
  into machine-readable text.

  This is the API reference documentation for
  Amazon Textract.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      adapter() :: %{
        "AdapterId" => String.t() | atom(),
        "Pages" => list(String.t() | atom()),
        "Version" => String.t() | atom()
      }
      
  """
  @type adapter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      adapter_overview() :: %{
        "AdapterId" => String.t() | atom(),
        "AdapterName" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "FeatureTypes" => list(list(any())())
      }
      
  """
  @type adapter_overview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      adapter_version_dataset_config() :: %{
        "ManifestS3Object" => s3_object()
      }
      
  """
  @type adapter_version_dataset_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      adapter_version_evaluation_metric() :: %{
        "AdapterVersion" => evaluation_metric(),
        "Baseline" => evaluation_metric(),
        "FeatureType" => list(any())
      }
      
  """
  @type adapter_version_evaluation_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      adapter_version_overview() :: %{
        "AdapterId" => String.t() | atom(),
        "AdapterVersion" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "FeatureTypes" => list(list(any())()),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }
      
  """
  @type adapter_version_overview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      adapters_config() :: %{
        "Adapters" => list(adapter())
      }
      
  """
  @type adapters_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analyze_document_request() :: %{
        optional("AdaptersConfig") => adapters_config(),
        optional("HumanLoopConfig") => human_loop_config(),
        optional("QueriesConfig") => queries_config(),
        required("Document") => document(),
        required("FeatureTypes") => list(list(any())())
      }
      
  """
  @type analyze_document_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analyze_document_response() :: %{
        "AnalyzeDocumentModelVersion" => String.t() | atom(),
        "Blocks" => list(block()),
        "DocumentMetadata" => document_metadata(),
        "HumanLoopActivationOutput" => human_loop_activation_output()
      }
      
  """
  @type analyze_document_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analyze_expense_request() :: %{
        required("Document") => document()
      }
      
  """
  @type analyze_expense_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analyze_expense_response() :: %{
        "DocumentMetadata" => document_metadata(),
        "ExpenseDocuments" => list(expense_document())
      }
      
  """
  @type analyze_expense_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analyze_id_detections() :: %{
        "Confidence" => float(),
        "NormalizedValue" => normalized_value(),
        "Text" => String.t() | atom()
      }
      
  """
  @type analyze_id_detections() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analyze_id_request() :: %{
        required("DocumentPages") => list(document())
      }
      
  """
  @type analyze_id_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analyze_id_response() :: %{
        "AnalyzeIDModelVersion" => String.t() | atom(),
        "DocumentMetadata" => document_metadata(),
        "IdentityDocuments" => list(identity_document())
      }
      
  """
  @type analyze_id_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bad_document_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type bad_document_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      block() :: %{
        "BlockType" => list(any()),
        "ColumnIndex" => integer(),
        "ColumnSpan" => integer(),
        "Confidence" => float(),
        "EntityTypes" => list(list(any())()),
        "Geometry" => geometry(),
        "Id" => String.t() | atom(),
        "Page" => integer(),
        "Query" => query(),
        "Relationships" => list(relationship()),
        "RowIndex" => integer(),
        "RowSpan" => integer(),
        "SelectionStatus" => list(any()),
        "Text" => String.t() | atom(),
        "TextType" => list(any())
      }
      
  """
  @type block() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blueprint_filter() :: %{
        "BlueprintArn" => String.t() | atom(),
        "BlueprintVersion" => String.t() | atom()
      }
      
  """
  @type blueprint_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blueprint_item() :: %{
        "BlueprintArn" => String.t() | atom(),
        "BlueprintVersion" => String.t() | atom()
      }
      
  """
  @type blueprint_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blueprint_summary() :: %{
        "BlueprintArn" => String.t() | atom(),
        "BlueprintName" => String.t() | atom(),
        "BlueprintVersion" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "ResourceOwner" => list(any())
      }
      
  """
  @type blueprint_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bounding_box() :: %{
        "Height" => float(),
        "Left" => float(),
        "Top" => float(),
        "Width" => float()
      }
      
  """
  @type bounding_box() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bounding_box_configuration() :: %{
        "State" => list(any())
      }
      
  """
  @type bounding_box_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_adapter_request() :: %{
        optional("AutoUpdate") => list(any()),
        optional("ClientRequestToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("AdapterName") => String.t() | atom(),
        required("FeatureTypes") => list(list(any())())
      }
      
  """
  @type create_adapter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_adapter_response() :: %{
        "AdapterId" => String.t() | atom()
      }
      
  """
  @type create_adapter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_adapter_version_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("KMSKeyId") => String.t() | atom(),
        optional("Tags") => map(),
        required("AdapterId") => String.t() | atom(),
        required("DatasetConfig") => adapter_version_dataset_config(),
        required("OutputConfig") => output_config()
      }
      
  """
  @type create_adapter_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_adapter_version_response() :: %{
        "AdapterId" => String.t() | atom(),
        "AdapterVersion" => String.t() | atom()
      }
      
  """
  @type create_adapter_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_blueprint_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("Tags") => map(),
        required("BlueprintName") => String.t() | atom(),
        required("Schema") => String.t() | atom()
      }
      
  """
  @type create_blueprint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_blueprint_response() :: %{
        "BlueprintArn" => String.t() | atom()
      }
      
  """
  @type create_blueprint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_blueprint_version_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("BlueprintArn") => String.t() | atom()
      }
      
  """
  @type create_blueprint_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_blueprint_version_response() :: %{
        "BlueprintArn" => String.t() | atom(),
        "BlueprintVersion" => String.t() | atom()
      }
      
  """
  @type create_blueprint_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_project_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("CustomConfiguration") => custom_configuration(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("GenerativeConfiguration") => generative_configuration(),
        optional("ProjectDescription") => String.t() | atom(),
        optional("SensitiveDataConfiguration") => sensitive_data_configuration(),
        optional("SplitterConfiguration") => splitter_configuration(),
        optional("Tags") => map(),
        required("ExtractionConfiguration") => extraction_configuration(),
        required("ProjectName") => String.t() | atom()
      }
      
  """
  @type create_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_project_response() :: %{
        "ProjectArn" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type create_project_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      custom_configuration() :: %{
        "Blueprints" => list(blueprint_item()),
        "FallbackBlueprints" => list(blueprint_item())
      }
      
  """
  @type custom_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_adapter_request() :: %{
        required("AdapterId") => String.t() | atom()
      }
      
  """
  @type delete_adapter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_adapter_response() :: %{}
      
  """
  @type delete_adapter_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_adapter_version_request() :: %{
        required("AdapterId") => String.t() | atom(),
        required("AdapterVersion") => String.t() | atom()
      }
      
  """
  @type delete_adapter_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_adapter_version_response() :: %{}
      
  """
  @type delete_adapter_version_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_blueprint_request() :: %{
        optional("BlueprintVersion") => String.t() | atom(),
        required("BlueprintArn") => String.t() | atom()
      }
      
  """
  @type delete_blueprint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_blueprint_response() :: %{}
      
  """
  @type delete_blueprint_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_project_request() :: %{
        required("ProjectArn") => String.t() | atom()
      }
      
  """
  @type delete_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_project_response() :: %{}
      
  """
  @type delete_project_response() :: %{}

  @typedoc """

  ## Example:
      
      detect_document_text_request() :: %{
        required("Document") => document()
      }
      
  """
  @type detect_document_text_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detect_document_text_response() :: %{
        "Blocks" => list(block()),
        "DetectDocumentTextModelVersion" => String.t() | atom(),
        "DocumentMetadata" => document_metadata()
      }
      
  """
  @type detect_document_text_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      detected_signature() :: %{
        "Page" => integer()
      }
      
  """
  @type detected_signature() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document() :: %{
        "Bytes" => binary(),
        "S3Object" => s3_object()
      }
      
  """
  @type document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_group() :: %{
        "DetectedSignatures" => list(detected_signature()),
        "SplitDocuments" => list(split_document()),
        "Type" => String.t() | atom(),
        "UndetectedSignatures" => list(undetected_signature())
      }
      
  """
  @type document_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_location() :: %{
        "S3Object" => s3_object()
      }
      
  """
  @type document_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_metadata() :: %{
        "Pages" => integer()
      }
      
  """
  @type document_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      document_too_large_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type document_too_large_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "KmsEncryptionContext" => map(),
        "KmsKeyId" => String.t() | atom()
      }
      
  """
  @type encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      evaluation_metric() :: %{
        "F1Score" => float(),
        "Precision" => float(),
        "Recall" => float()
      }
      
  """
  @type evaluation_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_bridge_configuration() :: %{
        "State" => list(any())
      }
      
  """
  @type event_bridge_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expense_currency() :: %{
        "Code" => String.t() | atom(),
        "Confidence" => float()
      }
      
  """
  @type expense_currency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expense_detection() :: %{
        "Confidence" => float(),
        "Geometry" => geometry(),
        "Text" => String.t() | atom()
      }
      
  """
  @type expense_detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expense_document() :: %{
        "Blocks" => list(block()),
        "ExpenseIndex" => integer(),
        "LineItemGroups" => list(line_item_group()),
        "SummaryFields" => list(expense_field())
      }
      
  """
  @type expense_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expense_field() :: %{
        "Currency" => expense_currency(),
        "GroupProperties" => list(expense_group_property()),
        "LabelDetection" => expense_detection(),
        "PageNumber" => integer(),
        "Type" => expense_type(),
        "ValueDetection" => expense_detection()
      }
      
  """
  @type expense_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expense_group_property() :: %{
        "Id" => String.t() | atom(),
        "Types" => list(String.t() | atom())
      }
      
  """
  @type expense_group_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expense_type() :: %{
        "Confidence" => float(),
        "Text" => String.t() | atom()
      }
      
  """
  @type expense_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      extraction() :: %{
        "ExpenseDocument" => expense_document(),
        "IdentityDocument" => identity_document(),
        "LendingDocument" => lending_document()
      }
      
  """
  @type extraction() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      extraction_configuration() :: %{
        "BoundingBox" => bounding_box_configuration(),
        "Granularity" => extraction_granularity(),
        "OutputFormat" => output_format()
      }
      
  """
  @type extraction_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      extraction_granularity() :: %{
        "Types" => list(list(any())())
      }
      
  """
  @type extraction_granularity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      figure_caption_configuration() :: %{
        "State" => list(any())
      }
      
  """
  @type figure_caption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generative_configuration() :: %{
        "FigureCaption" => figure_caption_configuration(),
        "Summarization" => summarization_configuration()
      }
      
  """
  @type generative_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      geometry() :: %{
        "BoundingBox" => bounding_box(),
        "Polygon" => list(point()),
        "RotationAngle" => float()
      }
      
  """
  @type geometry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_adapter_request() :: %{
        required("AdapterId") => String.t() | atom()
      }
      
  """
  @type get_adapter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_adapter_response() :: %{
        "AdapterId" => String.t() | atom(),
        "AdapterName" => String.t() | atom(),
        "AutoUpdate" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "FeatureTypes" => list(list(any())()),
        "Tags" => map()
      }
      
  """
  @type get_adapter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_adapter_version_request() :: %{
        required("AdapterId") => String.t() | atom(),
        required("AdapterVersion") => String.t() | atom()
      }
      
  """
  @type get_adapter_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_adapter_version_response() :: %{
        "AdapterId" => String.t() | atom(),
        "AdapterVersion" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "DatasetConfig" => adapter_version_dataset_config(),
        "EvaluationMetrics" => list(adapter_version_evaluation_metric()),
        "FeatureTypes" => list(list(any())()),
        "KMSKeyId" => String.t() | atom(),
        "OutputConfig" => output_config(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "Tags" => map()
      }
      
  """
  @type get_adapter_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprint_request() :: %{
        optional("BlueprintVersion") => String.t() | atom(),
        required("BlueprintArn") => String.t() | atom()
      }
      
  """
  @type get_blueprint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_blueprint_response() :: %{
        "BlueprintArn" => String.t() | atom(),
        "BlueprintName" => String.t() | atom(),
        "BlueprintVersion" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "KmsEncryptionContext" => map(),
        "KmsKeyId" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Schema" => String.t() | atom()
      }
      
  """
  @type get_blueprint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_document_analysis_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("JobId") => String.t() | atom()
      }
      
  """
  @type get_document_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_document_analysis_response() :: %{
        "AnalyzeDocumentModelVersion" => String.t() | atom(),
        "Blocks" => list(block()),
        "DocumentMetadata" => document_metadata(),
        "JobStatus" => list(any()),
        "NextToken" => String.t() | atom(),
        "StatusMessage" => String.t() | atom(),
        "Warnings" => list(warning())
      }
      
  """
  @type get_document_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_document_insights_request() :: %{
        required("JobArn") => String.t() | atom()
      }
      
  """
  @type get_document_insights_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_document_insights_response() :: %{
        "ErrorMessage" => String.t() | atom(),
        "ErrorType" => String.t() | atom(),
        "OutputConfiguration" => output_configuration(),
        "Status" => list(any())
      }
      
  """
  @type get_document_insights_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_document_text_detection_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("JobId") => String.t() | atom()
      }
      
  """
  @type get_document_text_detection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_document_text_detection_response() :: %{
        "Blocks" => list(block()),
        "DetectDocumentTextModelVersion" => String.t() | atom(),
        "DocumentMetadata" => document_metadata(),
        "JobStatus" => list(any()),
        "NextToken" => String.t() | atom(),
        "StatusMessage" => String.t() | atom(),
        "Warnings" => list(warning())
      }
      
  """
  @type get_document_text_detection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_expense_analysis_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("JobId") => String.t() | atom()
      }
      
  """
  @type get_expense_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_expense_analysis_response() :: %{
        "AnalyzeExpenseModelVersion" => String.t() | atom(),
        "DocumentMetadata" => document_metadata(),
        "ExpenseDocuments" => list(expense_document()),
        "JobStatus" => list(any()),
        "NextToken" => String.t() | atom(),
        "StatusMessage" => String.t() | atom(),
        "Warnings" => list(warning())
      }
      
  """
  @type get_expense_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_lending_analysis_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("JobId") => String.t() | atom()
      }
      
  """
  @type get_lending_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_lending_analysis_response() :: %{
        "AnalyzeLendingModelVersion" => String.t() | atom(),
        "DocumentMetadata" => document_metadata(),
        "JobStatus" => list(any()),
        "NextToken" => String.t() | atom(),
        "Results" => list(lending_result()),
        "StatusMessage" => String.t() | atom(),
        "Warnings" => list(warning())
      }
      
  """
  @type get_lending_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_lending_analysis_summary_request() :: %{
        required("JobId") => String.t() | atom()
      }
      
  """
  @type get_lending_analysis_summary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_lending_analysis_summary_response() :: %{
        "AnalyzeLendingModelVersion" => String.t() | atom(),
        "DocumentMetadata" => document_metadata(),
        "JobStatus" => list(any()),
        "StatusMessage" => String.t() | atom(),
        "Summary" => lending_summary(),
        "Warnings" => list(warning())
      }
      
  """
  @type get_lending_analysis_summary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_project_request() :: %{
        required("ProjectArn") => String.t() | atom()
      }
      
  """
  @type get_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_project_response() :: %{
        "CreationTime" => non_neg_integer(),
        "CustomConfiguration" => custom_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ExtractionConfiguration" => extraction_configuration(),
        "GenerativeConfiguration" => generative_configuration(),
        "LastModifiedTime" => non_neg_integer(),
        "ProjectArn" => String.t() | atom(),
        "ProjectDescription" => String.t() | atom(),
        "ProjectName" => String.t() | atom(),
        "SensitiveDataConfiguration" => sensitive_data_configuration(),
        "SplitterConfiguration" => splitter_configuration(),
        "Status" => list(any())
      }
      
  """
  @type get_project_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      human_loop_activation_output() :: %{
        "HumanLoopActivationConditionsEvaluationResults" => String.t() | atom(),
        "HumanLoopActivationReasons" => list(String.t() | atom()),
        "HumanLoopArn" => String.t() | atom()
      }
      
  """
  @type human_loop_activation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      human_loop_config() :: %{
        "DataAttributes" => human_loop_data_attributes(),
        "FlowDefinitionArn" => String.t() | atom(),
        "HumanLoopName" => String.t() | atom()
      }
      
  """
  @type human_loop_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      human_loop_data_attributes() :: %{
        "ContentClassifiers" => list(list(any())())
      }
      
  """
  @type human_loop_data_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      human_loop_quota_exceeded_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "QuotaCode" => String.t() | atom(),
        "ResourceType" => String.t() | atom(),
        "ServiceCode" => String.t() | atom()
      }
      
  """
  @type human_loop_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      idempotent_parameter_mismatch_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type idempotent_parameter_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      identity_document() :: %{
        "Blocks" => list(block()),
        "DocumentIndex" => integer(),
        "IdentityDocumentFields" => list(identity_document_field())
      }
      
  """
  @type identity_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      identity_document_field() :: %{
        "Type" => analyze_id_detections(),
        "ValueDetection" => analyze_id_detections()
      }
      
  """
  @type identity_document_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      input_configuration() :: %{
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type input_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_error() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_job_id_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_job_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_kms_key_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_kms_key_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_object_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_s3_object_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lending_detection() :: %{
        "Confidence" => float(),
        "Geometry" => geometry(),
        "SelectionStatus" => list(any()),
        "Text" => String.t() | atom()
      }
      
  """
  @type lending_detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lending_document() :: %{
        "LendingFields" => list(lending_field()),
        "SignatureDetections" => list(signature_detection())
      }
      
  """
  @type lending_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lending_field() :: %{
        "KeyDetection" => lending_detection(),
        "Type" => String.t() | atom(),
        "ValueDetections" => list(lending_detection())
      }
      
  """
  @type lending_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lending_result() :: %{
        "Extractions" => list(extraction()),
        "Page" => integer(),
        "PageClassification" => page_classification()
      }
      
  """
  @type lending_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lending_summary() :: %{
        "DocumentGroups" => list(document_group()),
        "UndetectedDocumentTypes" => list(String.t() | atom())
      }
      
  """
  @type lending_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      line_item_fields() :: %{
        "LineItemExpenseFields" => list(expense_field())
      }
      
  """
  @type line_item_fields() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      line_item_group() :: %{
        "LineItemGroupIndex" => integer(),
        "LineItems" => list(line_item_fields())
      }
      
  """
  @type line_item_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_adapter_versions_request() :: %{
        optional("AdapterId") => String.t() | atom(),
        optional("AfterCreationTime") => non_neg_integer(),
        optional("BeforeCreationTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_adapter_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_adapter_versions_response() :: %{
        "AdapterVersions" => list(adapter_version_overview()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_adapter_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_adapters_request() :: %{
        optional("AfterCreationTime") => non_neg_integer(),
        optional("BeforeCreationTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_adapters_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_adapters_response() :: %{
        "Adapters" => list(adapter_overview()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_adapters_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_blueprints_request() :: %{
        optional("BlueprintArn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProjectFilter") => project_filter(),
        optional("ResourceOwner") => list(any())
      }
      
  """
  @type list_blueprints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_blueprints_response() :: %{
        "Blueprints" => list(blueprint_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_blueprints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_projects_request() :: %{
        optional("BlueprintFilter") => blueprint_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_projects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_projects_response() :: %{
        "NextToken" => String.t() | atom(),
        "Projects" => list(project_summary())
      }
      
  """
  @type list_projects_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      normalized_value() :: %{
        "Value" => String.t() | atom(),
        "ValueType" => list(any())
      }
      
  """
  @type normalized_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notification_channel() :: %{
        "RoleArn" => String.t() | atom(),
        "SNSTopicArn" => String.t() | atom()
      }
      
  """
  @type notification_channel() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      notification_configuration() :: %{
        "EventBridgeConfiguration" => event_bridge_configuration()
      }
      
  """
  @type notification_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      output_additional_file_format() :: %{
        "State" => list(any())
      }
      
  """
  @type output_additional_file_format() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      output_config() :: %{
        "S3Bucket" => String.t() | atom(),
        "S3Prefix" => String.t() | atom()
      }
      
  """
  @type output_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      output_configuration() :: %{
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type output_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      output_format() :: %{
        "AdditionalFileFormat" => output_additional_file_format(),
        "TextFormat" => output_text_format()
      }
      
  """
  @type output_format() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      output_text_format() :: %{
        "Types" => list(list(any())())
      }
      
  """
  @type output_text_format() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      p_i_i_entities_configuration() :: %{
        "PiiEntityTypes" => list(list(any())()),
        "RedactionMaskMode" => list(any())
      }
      
  """
  @type p_i_i_entities_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      page_classification() :: %{
        "PageNumber" => list(prediction()),
        "PageType" => list(prediction())
      }
      
  """
  @type page_classification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      point() :: %{
        "X" => float(),
        "Y" => float()
      }
      
  """
  @type point() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      prediction() :: %{
        "Confidence" => float(),
        "Value" => String.t() | atom()
      }
      
  """
  @type prediction() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_filter() :: %{
        "ProjectArn" => String.t() | atom()
      }
      
  """
  @type project_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      project_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "ProjectArn" => String.t() | atom(),
        "ProjectName" => String.t() | atom()
      }
      
  """
  @type project_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provisioned_throughput_exceeded_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type provisioned_throughput_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      queries_config() :: %{
        "Queries" => list(query())
      }
      
  """
  @type queries_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      query() :: %{
        "Alias" => String.t() | atom(),
        "Pages" => list(String.t() | atom()),
        "Text" => String.t() | atom()
      }
      
  """
  @type query() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      relationship() :: %{
        "Ids" => list(String.t() | atom()),
        "Type" => list(any())
      }
      
  """
  @type relationship() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_object() :: %{
        "Bucket" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Version" => String.t() | atom()
      }
      
  """
  @type s3_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sensitive_data_configuration() :: %{
        "DetectionMode" => list(any()),
        "PiiEntitiesConfiguration" => p_i_i_entities_configuration()
      }
      
  """
  @type sensitive_data_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      signature_detection() :: %{
        "Confidence" => float(),
        "Geometry" => geometry()
      }
      
  """
  @type signature_detection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      split_document() :: %{
        "Index" => integer(),
        "Pages" => list(integer())
      }
      
  """
  @type split_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      splitter_configuration() :: %{
        "State" => list(any())
      }
      
  """
  @type splitter_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_document_analysis_request() :: %{
        optional("AdaptersConfig") => adapters_config(),
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobTag") => String.t() | atom(),
        optional("KMSKeyId") => String.t() | atom(),
        optional("NotificationChannel") => notification_channel(),
        optional("OutputConfig") => output_config(),
        optional("QueriesConfig") => queries_config(),
        required("DocumentLocation") => document_location(),
        required("FeatureTypes") => list(list(any())())
      }
      
  """
  @type start_document_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_document_analysis_response() :: %{
        "JobId" => String.t() | atom()
      }
      
  """
  @type start_document_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_document_insights_request() :: %{
        optional("Blueprints") => list(blueprint_item()),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("NotificationConfiguration") => notification_configuration(),
        optional("ProjectArn") => String.t() | atom(),
        optional("Tags") => map(),
        required("InputConfiguration") => input_configuration(),
        required("OutputConfiguration") => output_configuration()
      }
      
  """
  @type start_document_insights_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_document_insights_response() :: %{
        "JobArn" => String.t() | atom()
      }
      
  """
  @type start_document_insights_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_document_text_detection_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobTag") => String.t() | atom(),
        optional("KMSKeyId") => String.t() | atom(),
        optional("NotificationChannel") => notification_channel(),
        optional("OutputConfig") => output_config(),
        required("DocumentLocation") => document_location()
      }
      
  """
  @type start_document_text_detection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_document_text_detection_response() :: %{
        "JobId" => String.t() | atom()
      }
      
  """
  @type start_document_text_detection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_expense_analysis_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobTag") => String.t() | atom(),
        optional("KMSKeyId") => String.t() | atom(),
        optional("NotificationChannel") => notification_channel(),
        optional("OutputConfig") => output_config(),
        required("DocumentLocation") => document_location()
      }
      
  """
  @type start_expense_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_expense_analysis_response() :: %{
        "JobId" => String.t() | atom()
      }
      
  """
  @type start_expense_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_lending_analysis_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("JobTag") => String.t() | atom(),
        optional("KMSKeyId") => String.t() | atom(),
        optional("NotificationChannel") => notification_channel(),
        optional("OutputConfig") => output_config(),
        required("DocumentLocation") => document_location()
      }
      
  """
  @type start_lending_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_lending_analysis_response() :: %{
        "JobId" => String.t() | atom()
      }
      
  """
  @type start_lending_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      summarization_configuration() :: %{
        "State" => list(any())
      }
      
  """
  @type summarization_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      undetected_signature() :: %{
        "Page" => integer()
      }
      
  """
  @type undetected_signature() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_document_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type unsupported_document_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_adapter_request() :: %{
        optional("AdapterName") => String.t() | atom(),
        optional("AutoUpdate") => list(any()),
        optional("Description") => String.t() | atom(),
        required("AdapterId") => String.t() | atom()
      }
      
  """
  @type update_adapter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_adapter_response() :: %{
        "AdapterId" => String.t() | atom(),
        "AdapterName" => String.t() | atom(),
        "AutoUpdate" => list(any()),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "FeatureTypes" => list(list(any())())
      }
      
  """
  @type update_adapter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_blueprint_request() :: %{
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("Schema") => String.t() | atom(),
        required("BlueprintArn") => String.t() | atom()
      }
      
  """
  @type update_blueprint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_blueprint_response() :: %{
        "BlueprintArn" => String.t() | atom()
      }
      
  """
  @type update_blueprint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_project_request() :: %{
        optional("CustomConfiguration") => custom_configuration(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("ExtractionConfiguration") => extraction_configuration(),
        optional("GenerativeConfiguration") => generative_configuration(),
        optional("ProjectDescription") => String.t() | atom(),
        optional("SensitiveDataConfiguration") => sensitive_data_configuration(),
        optional("SplitterConfiguration") => splitter_configuration(),
        required("ProjectArn") => String.t() | atom()
      }
      
  """
  @type update_project_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_project_response() :: %{
        "ProjectArn" => String.t() | atom(),
        "Status" => list(any())
      }
      
  """
  @type update_project_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      warning() :: %{
        "ErrorCode" => String.t() | atom(),
        "Pages" => list(integer())
      }
      
  """
  @type warning() :: %{(String.t() | atom()) => any()}

  @type analyze_document_errors() ::
          unsupported_document_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | human_loop_quota_exceeded_exception()
          | document_too_large_exception()
          | bad_document_exception()
          | access_denied_exception()

  @type analyze_expense_errors() ::
          unsupported_document_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | document_too_large_exception()
          | bad_document_exception()
          | access_denied_exception()

  @type analyze_id_errors() ::
          unsupported_document_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | document_too_large_exception()
          | bad_document_exception()
          | access_denied_exception()

  @type create_adapter_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_adapter_version_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_blueprint_errors() ::
          validation_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  @type create_blueprint_version_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  @type create_project_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  @type delete_adapter_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  @type delete_adapter_version_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  @type delete_blueprint_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  @type delete_project_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type detect_document_text_errors() ::
          unsupported_document_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | document_too_large_exception()
          | bad_document_exception()
          | access_denied_exception()

  @type get_adapter_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_adapter_version_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_blueprint_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_document_analysis_errors() ::
          throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_document_insights_errors() ::
          validation_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_job_id_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_document_text_detection_errors() ::
          throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_expense_analysis_errors() ::
          throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_lending_analysis_errors() ::
          throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_lending_analysis_summary_errors() ::
          throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | invalid_job_id_exception()
          | internal_server_error()
          | access_denied_exception()

  @type get_project_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type list_adapter_versions_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type list_adapters_errors() ::
          validation_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type list_blueprints_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type list_projects_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type start_document_analysis_errors() ::
          unsupported_document_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | document_too_large_exception()
          | bad_document_exception()
          | access_denied_exception()

  @type start_document_insights_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type start_document_text_detection_errors() ::
          unsupported_document_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | document_too_large_exception()
          | bad_document_exception()
          | access_denied_exception()

  @type start_expense_analysis_errors() ::
          unsupported_document_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | document_too_large_exception()
          | bad_document_exception()
          | access_denied_exception()

  @type start_lending_analysis_errors() ::
          unsupported_document_exception()
          | throttling_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_s3_object_exception()
          | invalid_parameter_exception()
          | invalid_kms_key_exception()
          | internal_server_error()
          | idempotent_parameter_mismatch_exception()
          | document_too_large_exception()
          | bad_document_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | access_denied_exception()

  @type update_adapter_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  @type update_blueprint_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  @type update_project_errors() ::
          validation_exception()
          | resource_not_found_exception()
          | provisioned_throughput_exceeded_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | internal_server_error()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2018-06-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "textract",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Textract",
      signature_version: "v4",
      signing_name: "textract",
      target_prefix: "Textract"
    }
  end

  @doc """
  Analyzes an input document for relationships between detected items.

  The types of information returned are as follows:

    *
  Form data (key-value pairs). The related information is returned in two `Block`
  objects, each of type `KEY_VALUE_SET`: a KEY
  `Block` object and a VALUE `Block` object. For example,
  *Name: Ana Silva Carolina* contains a key and value.
  *Name:* is the key. *Ana Silva Carolina* is
  the value.

    *
  Table and table cell data. A TABLE `Block` object contains information
  about a detected table. A CELL `Block` object is returned for each cell in
  a table.

    *
  Lines and words of text. A LINE `Block` object contains one or more
  WORD `Block` objects. All lines and words that are detected in the
  document are returned (including text that doesn't have a relationship with the
  value
  of `FeatureTypes`).

    *
  Signatures. A SIGNATURE `Block` object contains the location information
  of a signature in a document. If used in conjunction with forms or tables, a
  signature
  can be given a Key-Value pairing or be detected in the cell of a table.

    *
  Query. A QUERY Block object contains the query text, alias and link to the
  associated Query results block object.

    *
  Query Result. A QUERY_RESULT Block object contains the answer to the query and
  an
  ID that connects it to the query asked. This Block also contains a confidence
  score.

  Selection elements such as check boxes and option buttons (radio buttons) can be
  detected in form data and in tables. A SELECTION_ELEMENT `Block` object contains
  information about a selection element, including the selection status.

  You can choose which type of analysis to perform by specifying the
  `FeatureTypes` list.

  The output is returned in a list of `Block` objects.

  `AnalyzeDocument` is a synchronous operation. To analyze documents
  asynchronously, use `StartDocumentAnalysis`.

  For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
  """
  @spec analyze_document(map(), analyze_document_request(), list()) ::
          {:ok, analyze_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, analyze_document_errors()}
  def analyze_document(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AnalyzeDocument", input, options)
  end

  @doc """

  `AnalyzeExpense` synchronously analyzes an input document for financially
  related relationships between text.

  Information is returned as `ExpenseDocuments` and seperated as
  follows:

    *

  `LineItemGroups`- A data set containing `LineItems` which
  store information about the lines of text, such as an item purchased and its
  price on
  a receipt.

    *

  `SummaryFields`- Contains all other information a receipt, such as
  header information or the vendors name.
  """
  @spec analyze_expense(map(), analyze_expense_request(), list()) ::
          {:ok, analyze_expense_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, analyze_expense_errors()}
  def analyze_expense(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AnalyzeExpense", input, options)
  end

  @doc """
  Analyzes identity documents for relevant information.

  This information is extracted and
  returned as `IdentityDocumentFields`, which records both the normalized field
  and value of the extracted text. Unlike other Amazon Textract operations,
  `AnalyzeID` doesn't return any Geometry data.
  """
  @spec analyze_id(map(), analyze_id_request(), list()) ::
          {:ok, analyze_id_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, analyze_id_errors()}
  def analyze_id(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AnalyzeID", input, options)
  end

  @doc """
  Creates an adapter, which can be fine-tuned for enhanced performance on user
  provided
  documents.

  Takes an AdapterName and FeatureType. Currently the only supported feature type
  is `QUERIES`. You can also provide a Description, Tags, and a
  ClientRequestToken. You can choose whether or not the adapter should be
  AutoUpdated with
  the AutoUpdate argument. By default, AutoUpdate is set to DISABLED.
  """
  @spec create_adapter(map(), create_adapter_request(), list()) ::
          {:ok, create_adapter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_adapter_errors()}
  def create_adapter(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAdapter", input, options)
  end

  @doc """
  Creates a new version of an adapter.

  Operates on a provided AdapterId and a specified
  dataset provided via the DatasetConfig argument. Requires that you
  specify an Amazon S3 bucket with the OutputConfig argument. You can provide an
  optional KMSKeyId,
  an optional ClientRequestToken, and optional tags.
  """
  @spec create_adapter_version(map(), create_adapter_version_request(), list()) ::
          {:ok, create_adapter_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_adapter_version_errors()}
  def create_adapter_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAdapterVersion", input, options)
  end

  @doc """
  Creates a blueprint that defines the schema Amazon Textract uses to extract
  structured
  data from a document during a document insights job.

  A blueprint describes the fields
  to extract and how to normalize them.
  """
  @spec create_blueprint(map(), create_blueprint_request(), list()) ::
          {:ok, create_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_blueprint_errors()}
  def create_blueprint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBlueprint", input, options)
  end

  @doc """
  Creates a new, immutable version of an existing blueprint so that projects can
  pin to a
  specific version.
  """
  @spec create_blueprint_version(map(), create_blueprint_version_request(), list()) ::
          {:ok, create_blueprint_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_blueprint_version_errors()}
  def create_blueprint_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBlueprintVersion", input, options)
  end

  @doc """
  Creates a project that groups the configuration used to run document insights
  jobs.
  """
  @spec create_project(map(), create_project_request(), list()) ::
          {:ok, create_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateProject", input, options)
  end

  @doc """
  Deletes an Amazon Textract adapter.

  Takes an AdapterId and deletes the adapter specified by the ID.
  """
  @spec delete_adapter(map(), delete_adapter_request(), list()) ::
          {:ok, delete_adapter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_adapter_errors()}
  def delete_adapter(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAdapter", input, options)
  end

  @doc """
  Deletes an Amazon Textract adapter version.

  Requires that you specify both an AdapterId and a
  AdapterVersion. Deletes the adapter version specified by the AdapterId and the
  AdapterVersion.
  """
  @spec delete_adapter_version(map(), delete_adapter_version_request(), list()) ::
          {:ok, delete_adapter_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_adapter_version_errors()}
  def delete_adapter_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAdapterVersion", input, options)
  end

  @doc """
  Deletes a blueprint, or a specific version of a blueprint.
  """
  @spec delete_blueprint(map(), delete_blueprint_request(), list()) ::
          {:ok, delete_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_blueprint_errors()}
  def delete_blueprint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBlueprint", input, options)
  end

  @doc """
  Deletes a project.
  """
  @spec delete_project(map(), delete_project_request(), list()) ::
          {:ok, delete_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteProject", input, options)
  end

  @doc """
  Detects text in the input document.

  Amazon Textract can detect lines of text and the
  words that make up a line of text. The input document must be in one of the
  following image
  formats: JPEG, PNG, PDF, or TIFF. `DetectDocumentText` returns the detected
  text in an array of `Block` objects.

  Each document page has as an associated `Block` of type PAGE. Each PAGE `Block`
  object
  is the parent of LINE `Block` objects that represent the lines of detected text
  on a page. A LINE `Block` object is
  a parent for each word that makes up the line. Words are represented by `Block`
  objects of type WORD.

  `DetectDocumentText` is a synchronous operation. To analyze documents
  asynchronously, use `StartDocumentTextDetection`.

  For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
  """
  @spec detect_document_text(map(), detect_document_text_request(), list()) ::
          {:ok, detect_document_text_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_document_text_errors()}
  def detect_document_text(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DetectDocumentText", input, options)
  end

  @doc """
  Gets configuration information for an adapter specified by an AdapterId,
  returning information on AdapterName, Description,
  CreationTime, AutoUpdate status, and FeatureTypes.
  """
  @spec get_adapter(map(), get_adapter_request(), list()) ::
          {:ok, get_adapter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_adapter_errors()}
  def get_adapter(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAdapter", input, options)
  end

  @doc """
  Gets configuration information for the specified adapter version, including:
  AdapterId, AdapterVersion, FeatureTypes, Status, StatusMessage, DatasetConfig,
  KMSKeyId, OutputConfig, Tags and EvaluationMetrics.
  """
  @spec get_adapter_version(map(), get_adapter_version_request(), list()) ::
          {:ok, get_adapter_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_adapter_version_errors()}
  def get_adapter_version(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAdapterVersion", input, options)
  end

  @doc """
  Gets the details of a blueprint, including its schema, encryption settings, and
  timestamps.
  """
  @spec get_blueprint(map(), get_blueprint_request(), list()) ::
          {:ok, get_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_blueprint_errors()}
  def get_blueprint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBlueprint", input, options)
  end

  @doc """
  Gets the results for an Amazon Textract asynchronous operation that analyzes
  text in a
  document.

  You start asynchronous text analysis by calling `StartDocumentAnalysis`,
  which returns a job identifier (`JobId`). When the text analysis operation
  finishes, Amazon Textract publishes a completion status to the Amazon Simple
  Notification Service (Amazon SNS) topic
  that's registered in the initial call to `StartDocumentAnalysis`. To get the
  results of the text-detection operation, first check that the status value
  published to the
  Amazon SNS topic is `SUCCEEDED`. If so, call `GetDocumentAnalysis`, and
  pass the job identifier (`JobId`) from the initial call to
  `StartDocumentAnalysis`.

  `GetDocumentAnalysis` returns an array of `Block` objects.
  The following types of information are returned:

    *
  Form data (key-value pairs). The related information is returned in two `Block`
  objects, each of type `KEY_VALUE_SET`: a KEY
  `Block` object and a VALUE `Block` object. For example,
  *Name: Ana Silva Carolina* contains a key and value.
  *Name:* is the key. *Ana Silva Carolina* is
  the value.

    *
  Table and table cell data. A TABLE `Block` object contains information
  about a detected table. A CELL `Block` object is returned for each cell in
  a table.

    *
  Lines and words of text. A LINE `Block` object contains one or more
  WORD `Block` objects. All lines and words that are detected in the
  document are returned (including text that doesn't have a relationship with the
  value
  of the `StartDocumentAnalysis`
  `FeatureTypes` input parameter).

    *
  Query. A QUERY Block object contains the query text, alias and link to the
  associated Query results block object.

    *
  Query Results. A QUERY_RESULT Block object contains the answer to the query and
  an
  ID that connects it to the query asked. This Block also contains a confidence
  score.

  While processing a document with queries, look out for
  `INVALID_REQUEST_PARAMETERS` output. This indicates that either the per
  page query limit has been exceeded or that the operation is trying to query a
  page in
  the document which doesn’t exist.

  Selection elements such as check boxes and option buttons (radio buttons) can be
  detected in form data and in tables. A SELECTION_ELEMENT `Block` object contains
  information about a selection element, including the selection status.

  Use the `MaxResults` parameter to limit the number of blocks that are
  returned. If there are more results than specified in `MaxResults`, the value of
  `NextToken` in the operation response contains a pagination token for getting
  the next set of results. To get the next page of results, call
  `GetDocumentAnalysis`, and populate the `NextToken` request
  parameter with the token value that's returned from the previous call to
  `GetDocumentAnalysis`.

  For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
  """
  @spec get_document_analysis(map(), get_document_analysis_request(), list()) ::
          {:ok, get_document_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_document_analysis_errors()}
  def get_document_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDocumentAnalysis", input, options)
  end

  @doc """
  Gets the status and results of a document insights job that was started by
  `StartDocumentInsights`.
  """
  @spec get_document_insights(map(), get_document_insights_request(), list()) ::
          {:ok, get_document_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_document_insights_errors()}
  def get_document_insights(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDocumentInsights", input, options)
  end

  @doc """
  Gets the results for an Amazon Textract asynchronous operation that detects text
  in a document.

  Amazon Textract can detect lines of text and the words that make up a line of
  text.

  You start asynchronous text detection by calling `StartDocumentTextDetection`,
  which returns a job identifier
  (`JobId`). When the text detection operation finishes, Amazon Textract publishes
  a
  completion status to the Amazon Simple Notification Service (Amazon SNS) topic
  that's registered in the initial call to
  `StartDocumentTextDetection`. To get the results of the text-detection
  operation, first check that the status value published to the Amazon SNS topic
  is
  `SUCCEEDED`. If so, call `GetDocumentTextDetection`, and pass the
  job identifier (`JobId`) from the initial call to
  `StartDocumentTextDetection`.

  `GetDocumentTextDetection` returns an array of `Block`
  objects.

  Each document page has as an associated `Block` of type PAGE. Each PAGE `Block`
  object
  is the parent of LINE `Block` objects that represent the lines of detected text
  on a page. A LINE `Block` object is
  a parent for each word that makes up the line. Words are represented by `Block`
  objects of type WORD.

  Use the MaxResults parameter to limit the number of blocks that are returned. If
  there
  are more results than specified in `MaxResults`, the value of
  `NextToken` in the operation response contains a pagination token for getting
  the next set of results. To get the next page of results, call
  `GetDocumentTextDetection`, and populate the `NextToken` request
  parameter with the token value that's returned from the previous call to
  `GetDocumentTextDetection`.

  For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
  """
  @spec get_document_text_detection(map(), get_document_text_detection_request(), list()) ::
          {:ok, get_document_text_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_document_text_detection_errors()}
  def get_document_text_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDocumentTextDetection", input, options)
  end

  @doc """
  Gets the results for an Amazon Textract asynchronous operation that analyzes
  invoices and
  receipts.

  Amazon Textract finds contact information, items purchased, and vendor name,
  from input
  invoices and receipts.

  You start asynchronous invoice/receipt analysis by calling
  `StartExpenseAnalysis`, which returns a job identifier (`JobId`). Upon
  completion of the invoice/receipt analysis, Amazon Textract publishes the
  completion status to the
  Amazon Simple Notification Service (Amazon SNS) topic. This topic must be
  registered in the initial call to
  `StartExpenseAnalysis`. To get the results of the invoice/receipt analysis
  operation,
  first ensure that the status value published to the Amazon SNS topic is
  `SUCCEEDED`. If so,
  call `GetExpenseAnalysis`, and pass the job identifier (`JobId`) from the
  initial call to `StartExpenseAnalysis`.

  Use the MaxResults parameter to limit the number of blocks that are returned. If
  there are
  more results than specified in `MaxResults`, the value of `NextToken` in
  the operation response contains a pagination token for getting the next set of
  results. To get
  the next page of results, call `GetExpenseAnalysis`, and populate the
  `NextToken` request parameter with the token value that's returned from the
  previous
  call to `GetExpenseAnalysis`.

  For more information, see [Analyzing Invoices and Receipts](https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html).
  """
  @spec get_expense_analysis(map(), get_expense_analysis_request(), list()) ::
          {:ok, get_expense_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_expense_analysis_errors()}
  def get_expense_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetExpenseAnalysis", input, options)
  end

  @doc """
  Gets the results for an Amazon Textract asynchronous operation that analyzes
  text in a
  lending document.

  You start asynchronous text analysis by calling `StartLendingAnalysis`,
  which returns a job identifier (`JobId`). When the text analysis operation
  finishes, Amazon Textract publishes a completion status to the Amazon Simple
  Notification Service (Amazon SNS) topic that's registered in the initial call to
  `StartLendingAnalysis`.

  To get the results of the text analysis operation, first check that the status
  value
  published to the Amazon SNS topic is SUCCEEDED. If so, call GetLendingAnalysis,
  and pass
  the job identifier (`JobId`) from the initial call to
  `StartLendingAnalysis`.
  """
  @spec get_lending_analysis(map(), get_lending_analysis_request(), list()) ::
          {:ok, get_lending_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lending_analysis_errors()}
  def get_lending_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLendingAnalysis", input, options)
  end

  @doc """
  Gets summarized results for the `StartLendingAnalysis` operation, which analyzes
  text in a lending document.

  The returned summary consists of information about documents grouped
  together by a common document type. Information like detected signatures, page
  numbers, and split
  documents is returned with respect to the type of grouped document.

  You start asynchronous text analysis by calling `StartLendingAnalysis`, which
  returns a job identifier (`JobId`). When the text analysis operation finishes,
  Amazon
  Textract publishes a completion status to the Amazon Simple Notification Service
  (Amazon SNS)
  topic that's registered in the initial call to `StartLendingAnalysis`.

  To get the results of the text analysis operation, first check that the status
  value
  published to the Amazon SNS topic is SUCCEEDED. If so, call
  `GetLendingAnalysisSummary`, and pass the job identifier (`JobId`) from
  the initial call to `StartLendingAnalysis`.
  """
  @spec get_lending_analysis_summary(map(), get_lending_analysis_summary_request(), list()) ::
          {:ok, get_lending_analysis_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lending_analysis_summary_errors()}
  def get_lending_analysis_summary(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLendingAnalysisSummary", input, options)
  end

  @doc """
  Gets the details of a project, including its configuration, status, and
  timestamps.
  """
  @spec get_project(map(), get_project_request(), list()) ::
          {:ok, get_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_project_errors()}
  def get_project(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetProject", input, options)
  end

  @doc """
  List all version of an adapter that meet the specified filtration criteria.
  """
  @spec list_adapter_versions(map(), list_adapter_versions_request(), list()) ::
          {:ok, list_adapter_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_adapter_versions_errors()}
  def list_adapter_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAdapterVersions", input, options)
  end

  @doc """
  Lists all adapters that match the specified filtration criteria.
  """
  @spec list_adapters(map(), list_adapters_request(), list()) ::
          {:ok, list_adapters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_adapters_errors()}
  def list_adapters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAdapters", input, options)
  end

  @doc """
  Lists the blueprints that are available to the caller, with optional filtering
  by
  project and resource owner.

  The results are paginated. If the response includes a
  `NextToken` value, pass it in a subsequent call to retrieve the next page of
  results.
  """
  @spec list_blueprints(map(), list_blueprints_request(), list()) ::
          {:ok, list_blueprints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_blueprints_errors()}
  def list_blueprints(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBlueprints", input, options)
  end

  @doc """
  Lists the projects that are available to the caller, with optional filtering by
  blueprint.

  The results are paginated. If the response includes a `NextToken`
  value, pass it in a subsequent call to retrieve the next page of results.
  """
  @spec list_projects(map(), list_projects_request(), list()) ::
          {:ok, list_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProjects", input, options)
  end

  @doc """
  Lists all tags for an Amazon Textract resource.
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
  Starts the asynchronous analysis of an input document for relationships between
  detected
  items such as key-value pairs, tables, and selection elements.

  `StartDocumentAnalysis` can analyze text in documents that are in JPEG, PNG,
  TIFF, and PDF format. The
  documents are stored in an Amazon S3 bucket. Use `DocumentLocation` to specify
  the bucket name and file name
  of the document.

  `StartDocumentAnalysis` returns a job identifier
  (`JobId`) that you use to get the results of the operation. When text
  analysis is finished, Amazon Textract publishes a completion status to the
  Amazon Simple Notification Service (Amazon SNS)
  topic that you specify in `NotificationChannel`. To get the results of the text
  analysis operation, first check that the status value published to the Amazon
  SNS topic is
  `SUCCEEDED`. If so, call `GetDocumentAnalysis`, and pass
  the job identifier (`JobId`) from the initial call to
  `StartDocumentAnalysis`.

  For more information, see [Document Text Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).
  """
  @spec start_document_analysis(map(), start_document_analysis_request(), list()) ::
          {:ok, start_document_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_document_analysis_errors()}
  def start_document_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDocumentAnalysis", input, options)
  end

  @doc """
  Starts an asynchronous job that analyzes a document using the configuration
  defined by a
  project or a set of blueprints.

  Use `GetDocumentInsights` to
  retrieve the results of the job.
  """
  @spec start_document_insights(map(), start_document_insights_request(), list()) ::
          {:ok, start_document_insights_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_document_insights_errors()}
  def start_document_insights(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDocumentInsights", input, options)
  end

  @doc """
  Starts the asynchronous detection of text in a document.

  Amazon Textract can detect lines of
  text and the words that make up a line of text.

  `StartDocumentTextDetection` can analyze text in documents that are in JPEG,
  PNG, TIFF, and PDF format. The
  documents are stored in an Amazon S3 bucket. Use `DocumentLocation` to specify
  the bucket name and file name
  of the document.

  `StartDocumentTextDetection` returns a job identifier
  (`JobId`) that you use to get the results of the operation. When text
  detection is finished, Amazon Textract publishes a completion status to the
  Amazon Simple Notification Service (Amazon SNS)
  topic that you specify in `NotificationChannel`. To get the results of the text
  detection operation, first check that the status value published to the Amazon
  SNS topic is
  `SUCCEEDED`. If so, call `GetDocumentTextDetection`, and
  pass the job identifier (`JobId`) from the initial call to
  `StartDocumentTextDetection`.

  For more information, see [Document Text Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).
  """
  @spec start_document_text_detection(map(), start_document_text_detection_request(), list()) ::
          {:ok, start_document_text_detection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_document_text_detection_errors()}
  def start_document_text_detection(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartDocumentTextDetection", input, options)
  end

  @doc """
  Starts the asynchronous analysis of invoices or receipts for data like contact
  information,
  items purchased, and vendor names.

  `StartExpenseAnalysis` can analyze text in documents that are in JPEG, PNG, and
  PDF format. The documents must be stored in an Amazon S3 bucket. Use the
  `DocumentLocation` parameter to specify the name of your S3 bucket and the name
  of the
  document in that bucket.

  `StartExpenseAnalysis` returns a job identifier (`JobId`) that you
  will provide to `GetExpenseAnalysis` to retrieve the results of the operation.
  When
  the analysis of the input invoices/receipts is finished, Amazon Textract
  publishes a completion
  status to the Amazon Simple Notification Service (Amazon SNS) topic that you
  provide to the `NotificationChannel`.
  To obtain the results of the invoice and receipt analysis operation, ensure that
  the status value
  published to the Amazon SNS topic is `SUCCEEDED`. If so, call
  `GetExpenseAnalysis`, and pass the job identifier (`JobId`) that was
  returned by your call to `StartExpenseAnalysis`.

  For more information, see [Analyzing Invoices and Receipts](https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html).
  """
  @spec start_expense_analysis(map(), start_expense_analysis_request(), list()) ::
          {:ok, start_expense_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_expense_analysis_errors()}
  def start_expense_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartExpenseAnalysis", input, options)
  end

  @doc """
  Starts the classification and analysis of an input document.

  `StartLendingAnalysis` initiates the classification and analysis of a packet of
  lending documents. `StartLendingAnalysis` operates on a document file located in
  an
  Amazon S3 bucket.

  `StartLendingAnalysis` can analyze text in documents that are in one of the
  following formats: JPEG, PNG, TIFF, PDF. Use `DocumentLocation` to specify the
  bucket
  name and the file name of the document.

  `StartLendingAnalysis` returns a job identifier (`JobId`) that you use
  to get the results of the operation. When the text analysis is finished, Amazon
  Textract
  publishes a completion status to the Amazon Simple Notification Service (Amazon
  SNS) topic that
  you specify in `NotificationChannel`. To get the results of the text analysis
  operation, first check that the status value published to the Amazon SNS topic
  is SUCCEEDED. If
  the status is SUCCEEDED you can call either `GetLendingAnalysis` or
  `GetLendingAnalysisSummary` and provide the `JobId` to obtain the results
  of the analysis.

  If using `OutputConfig` to specify an Amazon S3 bucket, the output will be
  contained
  within the specified prefix in a directory labeled with the job-id. In the
  directory there are 3
  sub-directories:

    *
  detailedResponse (contains the GetLendingAnalysis response)

    *
  summaryResponse (for the GetLendingAnalysisSummary response)

    *
  splitDocuments (documents split across logical boundaries)
  """
  @spec start_lending_analysis(map(), start_lending_analysis_request(), list()) ::
          {:ok, start_lending_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_lending_analysis_errors()}
  def start_lending_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartLendingAnalysis", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes any tags with the specified keys from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Update the configuration for an adapter.

  FeatureTypes configurations cannot be updated.
  At least one new parameter must be specified as an argument.
  """
  @spec update_adapter(map(), update_adapter_request(), list()) ::
          {:ok, update_adapter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_adapter_errors()}
  def update_adapter(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAdapter", input, options)
  end

  @doc """
  Updates an existing blueprint, replacing its schema and, optionally, its
  encryption
  configuration.
  """
  @spec update_blueprint(map(), update_blueprint_request(), list()) ::
          {:ok, update_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_blueprint_errors()}
  def update_blueprint(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBlueprint", input, options)
  end

  @doc """
  Updates the configuration of an existing project.

  If you omit a configuration, UpdateProject leaves it unchanged.
  A configuration that you supply replaces the stored one, so include every
  setting that you want to keep.
  """
  @spec update_project(map(), update_project_request(), list()) ::
          {:ok, update_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProject", input, options)
  end
end
