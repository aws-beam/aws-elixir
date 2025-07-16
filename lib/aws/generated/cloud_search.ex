# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudSearch do
  @moduledoc """
  Amazon CloudSearch Configuration Service

  You use the Amazon CloudSearch configuration service to create, configure, and
  manage search domains.

  Configuration service requests are submitted using the AWS Query protocol. AWS
  Query requests
  are HTTP or HTTPS requests submitted via HTTP GET or POST with a query parameter
  named Action.

  The endpoint for configuration service requests is region-specific:
  cloudsearch.*region*.amazonaws.com.
  For example, cloudsearch.us-east-1.amazonaws.com. For a current list of
  supported regions and endpoints,
  see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_service_access_policies_request() :: %{
        required("AccessPolicies") => String.t(),
        required("DomainName") => String.t()
      }
      
  """
  @type update_service_access_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_response() :: %{
        "DomainStatus" => domain_status()
      }
      
  """
  @type delete_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domain_endpoint_options_request() :: %{
        optional("Deployed") => boolean(),
        required("DomainName") => String.t()
      }
      
  """
  @type describe_domain_endpoint_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_analysis_schemes_response() :: %{
        "AnalysisSchemes" => list(analysis_scheme_status())
      }
      
  """
  @type describe_analysis_schemes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      define_analysis_scheme_response() :: %{
        "AnalysisScheme" => analysis_scheme_status()
      }
      
  """
  @type define_analysis_scheme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_array_options() :: %{
        "AnalysisScheme" => String.t(),
        "DefaultValue" => String.t(),
        "HighlightEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SourceFields" => String.t()
      }
      
  """
  @type text_array_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_expression_request() :: %{
        required("DomainName") => String.t(),
        required("ExpressionName") => String.t()
      }
      
  """
  @type delete_expression_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expression_status() :: %{
        "Options" => expression(),
        "Status" => option_status()
      }
      
  """
  @type expression_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      date_array_options() :: %{
        "DefaultValue" => String.t(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SourceFields" => String.t()
      }
      
  """
  @type date_array_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      document_suggester_options() :: %{
        "FuzzyMatching" => list(any()),
        "SortExpression" => String.t(),
        "SourceField" => String.t()
      }
      
  """
  @type document_suggester_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      literal_array_options() :: %{
        "DefaultValue" => String.t(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SourceFields" => String.t()
      }
      
  """
  @type literal_array_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_options() :: %{
        "AlgorithmicStemming" => list(any()),
        "JapaneseTokenizationDictionary" => String.t(),
        "StemmingDictionary" => String.t(),
        "Stopwords" => String.t(),
        "Synonyms" => String.t()
      }
      
  """
  @type analysis_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_index_field_request() :: %{
        required("DomainName") => String.t(),
        required("IndexFieldName") => String.t()
      }
      
  """
  @type delete_index_field_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_endpoint() :: %{
        "Endpoint" => String.t()
      }
      
  """
  @type service_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domain_endpoint_options_response() :: %{
        "DomainEndpointOptions" => domain_endpoint_options_status()
      }
      
  """
  @type describe_domain_endpoint_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_availability_options_response() :: %{
        "AvailabilityOptions" => availability_options_status()
      }
      
  """
  @type update_availability_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domains_request() :: %{
        optional("DomainNames") => list(String.t())
      }
      
  """
  @type describe_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      int_options() :: %{
        "DefaultValue" => float(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SortEnabled" => boolean(),
        "SourceField" => String.t()
      }
      
  """
  @type int_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_index_field_response() :: %{
        "IndexField" => index_field_status()
      }
      
  """
  @type delete_index_field_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      define_suggester_response() :: %{
        "Suggester" => suggester_status()
      }
      
  """
  @type define_suggester_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disabled_operation_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type disabled_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_parameters() :: %{
        "DesiredInstanceType" => list(any()),
        "DesiredPartitionCount" => integer(),
        "DesiredReplicationCount" => integer()
      }
      
  """
  @type scaling_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      define_index_field_response() :: %{
        "IndexField" => index_field_status()
      }
      
  """
  @type define_index_field_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scaling_parameters_status() :: %{
        "Options" => scaling_parameters(),
        "Status" => option_status()
      }
      
  """
  @type scaling_parameters_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_options() :: %{
        "AnalysisScheme" => String.t(),
        "DefaultValue" => String.t(),
        "HighlightEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SortEnabled" => boolean(),
        "SourceField" => String.t()
      }
      
  """
  @type text_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_suggesters_response() :: %{
        "Suggesters" => list(suggester_status())
      }
      
  """
  @type describe_suggesters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_scheme() :: %{
        "AnalysisOptions" => analysis_options(),
        "AnalysisSchemeLanguage" => list(any()),
        "AnalysisSchemeName" => String.t()
      }
      
  """
  @type analysis_scheme() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_endpoint_options_request() :: %{
        required("DomainEndpointOptions") => domain_endpoint_options(),
        required("DomainName") => String.t()
      }
      
  """
  @type update_domain_endpoint_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_access_policies_request() :: %{
        optional("Deployed") => boolean(),
        required("DomainName") => String.t()
      }
      
  """
  @type describe_service_access_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type delete_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      define_analysis_scheme_request() :: %{
        required("AnalysisScheme") => analysis_scheme(),
        required("DomainName") => String.t()
      }
      
  """
  @type define_analysis_scheme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggester_status() :: %{
        "Options" => suggester(),
        "Status" => option_status()
      }
      
  """
  @type suggester_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suggester() :: %{
        "DocumentSuggesterOptions" => document_suggester_options(),
        "SuggesterName" => String.t()
      }
      
  """
  @type suggester() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      availability_options_status() :: %{
        "Options" => boolean(),
        "Status" => option_status()
      }
      
  """
  @type availability_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type create_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      option_status() :: %{
        "CreationDate" => non_neg_integer(),
        "PendingDeletion" => boolean(),
        "State" => list(any()),
        "UpdateDate" => non_neg_integer(),
        "UpdateVersion" => integer()
      }
      
  """
  @type option_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      double_options() :: %{
        "DefaultValue" => float(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SortEnabled" => boolean(),
        "SourceField" => String.t()
      }
      
  """
  @type double_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_endpoint_options_response() :: %{
        "DomainEndpointOptions" => domain_endpoint_options_status()
      }
      
  """
  @type update_domain_endpoint_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      define_index_field_request() :: %{
        required("DomainName") => String.t(),
        required("IndexField") => index_field()
      }
      
  """
  @type define_index_field_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_documents_response() :: %{
        "FieldNames" => list(String.t())
      }
      
  """
  @type index_documents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_scaling_parameters_response() :: %{
        "ScalingParameters" => scaling_parameters_status()
      }
      
  """
  @type update_scaling_parameters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_index_fields_request() :: %{
        optional("Deployed") => boolean(),
        optional("FieldNames") => list(String.t()),
        required("DomainName") => String.t()
      }
      
  """
  @type describe_index_fields_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      define_suggester_request() :: %{
        required("DomainName") => String.t(),
        required("Suggester") => suggester()
      }
      
  """
  @type define_suggester_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lat_lon_options() :: %{
        "DefaultValue" => String.t(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SortEnabled" => boolean(),
        "SourceField" => String.t()
      }
      
  """
  @type lat_lon_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      int_array_options() :: %{
        "DefaultValue" => float(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SourceFields" => String.t()
      }
      
  """
  @type int_array_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_suggesters_request() :: %{
        optional("Deployed") => boolean(),
        optional("SuggesterNames") => list(String.t()),
        required("DomainName") => String.t()
      }
      
  """
  @type describe_suggesters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_documents_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type index_documents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_domain_names_response() :: %{
        "DomainNames" => map()
      }
      
  """
  @type list_domain_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_field() :: %{
        "DateArrayOptions" => date_array_options(),
        "DateOptions" => date_options(),
        "DoubleArrayOptions" => double_array_options(),
        "DoubleOptions" => double_options(),
        "IndexFieldName" => String.t(),
        "IndexFieldType" => list(any()),
        "IntArrayOptions" => int_array_options(),
        "IntOptions" => int_options(),
        "LatLonOptions" => lat_lon_options(),
        "LiteralArrayOptions" => literal_array_options(),
        "LiteralOptions" => literal_options(),
        "TextArrayOptions" => text_array_options(),
        "TextOptions" => text_options()
      }
      
  """
  @type index_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_analysis_scheme_response() :: %{
        "AnalysisScheme" => analysis_scheme_status()
      }
      
  """
  @type delete_analysis_scheme_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_expression_response() :: %{
        "Expression" => expression_status()
      }
      
  """
  @type delete_expression_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_analysis_schemes_request() :: %{
        optional("AnalysisSchemeNames") => list(String.t()),
        optional("Deployed") => boolean(),
        required("DomainName") => String.t()
      }
      
  """
  @type describe_analysis_schemes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_parameters_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type describe_scaling_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_status() :: %{
        "ARN" => String.t(),
        "Created" => boolean(),
        "Deleted" => boolean(),
        "DocService" => service_endpoint(),
        "DomainId" => String.t(),
        "DomainName" => String.t(),
        "Limits" => limits(),
        "Processing" => boolean(),
        "RequiresIndexDocuments" => boolean(),
        "SearchInstanceCount" => integer(),
        "SearchInstanceType" => String.t(),
        "SearchPartitionCount" => integer(),
        "SearchService" => service_endpoint()
      }
      
  """
  @type domain_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      double_array_options() :: %{
        "DefaultValue" => float(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SourceFields" => String.t()
      }
      
  """
  @type double_array_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_expressions_request() :: %{
        optional("Deployed") => boolean(),
        optional("ExpressionNames") => list(String.t()),
        required("DomainName") => String.t()
      }
      
  """
  @type describe_expressions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_type_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type invalid_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      date_options() :: %{
        "DefaultValue" => String.t(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SortEnabled" => boolean(),
        "SourceField" => String.t()
      }
      
  """
  @type date_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_access_policies_response() :: %{
        "AccessPolicies" => access_policies_status()
      }
      
  """
  @type describe_service_access_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type internal_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      define_expression_response() :: %{
        "Expression" => expression_status()
      }
      
  """
  @type define_expression_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      build_suggesters_response() :: %{
        "FieldNames" => list(String.t())
      }
      
  """
  @type build_suggesters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      index_field_status() :: %{
        "Options" => index_field(),
        "Status" => option_status()
      }
      
  """
  @type index_field_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_scaling_parameters_request() :: %{
        required("DomainName") => String.t(),
        required("ScalingParameters") => scaling_parameters()
      }
      
  """
  @type update_scaling_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_response() :: %{
        "DomainStatus" => domain_status()
      }
      
  """
  @type create_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      base_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type base_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "ExpressionName" => String.t(),
        "ExpressionValue" => String.t()
      }
      
  """
  @type expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limits() :: %{
        required("MaximumPartitionCount") => integer(),
        required("MaximumReplicationCount") => integer()
      }
      
  """
  @type limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      build_suggesters_request() :: %{
        required("DomainName") => String.t()
      }
      
  """
  @type build_suggesters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      literal_options() :: %{
        "DefaultValue" => String.t(),
        "FacetEnabled" => boolean(),
        "ReturnEnabled" => boolean(),
        "SearchEnabled" => boolean(),
        "SortEnabled" => boolean(),
        "SourceField" => String.t()
      }
      
  """
  @type literal_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_index_fields_response() :: %{
        "IndexFields" => list(index_field_status())
      }
      
  """
  @type describe_index_fields_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domains_response() :: %{
        "DomainStatusList" => list(domain_status())
      }
      
  """
  @type describe_domains_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_availability_options_request() :: %{
        optional("Deployed") => boolean(),
        required("DomainName") => String.t()
      }
      
  """
  @type describe_availability_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_expressions_response() :: %{
        "Expressions" => list(expression_status())
      }
      
  """
  @type describe_expressions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_availability_options_request() :: %{
        required("DomainName") => String.t(),
        required("MultiAZ") => boolean()
      }
      
  """
  @type update_availability_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_endpoint_options_status() :: %{
        "Options" => domain_endpoint_options(),
        "Status" => option_status()
      }
      
  """
  @type domain_endpoint_options_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_suggester_request() :: %{
        required("DomainName") => String.t(),
        required("SuggesterName") => String.t()
      }
      
  """
  @type delete_suggester_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_policies_status() :: %{
        "Options" => String.t(),
        "Status" => option_status()
      }
      
  """
  @type access_policies_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Code" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_availability_options_response() :: %{
        "AvailabilityOptions" => availability_options_status()
      }
      
  """
  @type describe_availability_options_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_access_policies_response() :: %{
        "AccessPolicies" => access_policies_status()
      }
      
  """
  @type update_service_access_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_analysis_scheme_request() :: %{
        required("AnalysisSchemeName") => String.t(),
        required("DomainName") => String.t()
      }
      
  """
  @type delete_analysis_scheme_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_suggester_response() :: %{
        "Suggester" => suggester_status()
      }
      
  """
  @type delete_suggester_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      define_expression_request() :: %{
        required("DomainName") => String.t(),
        required("Expression") => expression()
      }
      
  """
  @type define_expression_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_scaling_parameters_response() :: %{
        "ScalingParameters" => scaling_parameters_status()
      }
      
  """
  @type describe_scaling_parameters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_endpoint_options() :: %{
        "EnforceHTTPS" => boolean(),
        "TLSSecurityPolicy" => list(any())
      }
      
  """
  @type domain_endpoint_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_scheme_status() :: %{
        "Options" => analysis_scheme(),
        "Status" => option_status()
      }
      
  """
  @type analysis_scheme_status() :: %{String.t() => any()}

  @type build_suggesters_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type create_domain_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()

  @type define_analysis_scheme_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type define_expression_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type define_index_field_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type define_suggester_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type delete_analysis_scheme_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type delete_domain_errors() :: base_exception() | internal_exception()

  @type delete_expression_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type delete_index_field_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type delete_suggester_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type describe_analysis_schemes_errors() ::
          base_exception() | internal_exception() | resource_not_found_exception()

  @type describe_availability_options_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_domain_endpoint_options_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | internal_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type describe_domains_errors() :: base_exception() | internal_exception()

  @type describe_expressions_errors() ::
          base_exception() | internal_exception() | resource_not_found_exception()

  @type describe_index_fields_errors() ::
          base_exception() | internal_exception() | resource_not_found_exception()

  @type describe_scaling_parameters_errors() ::
          base_exception() | internal_exception() | resource_not_found_exception()

  @type describe_service_access_policies_errors() ::
          base_exception() | internal_exception() | resource_not_found_exception()

  @type describe_suggesters_errors() ::
          base_exception() | internal_exception() | resource_not_found_exception()

  @type index_documents_errors() ::
          base_exception()
          | validation_exception()
          | internal_exception()
          | resource_not_found_exception()

  @type list_domain_names_errors() :: base_exception()

  @type update_availability_options_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type update_domain_endpoint_options_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()
          | disabled_operation_exception()

  @type update_scaling_parameters_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  @type update_service_access_policies_errors() ::
          limit_exceeded_exception()
          | base_exception()
          | validation_exception()
          | internal_exception()
          | invalid_type_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2013-01-01",
      content_type: "application/x-www-form-urlencoded",
      credential_scope: nil,
      endpoint_prefix: "cloudsearch",
      global?: false,
      hostname: nil,
      protocol: "query",
      service_id: "CloudSearch",
      signature_version: "v4",
      signing_name: "cloudsearch",
      target_prefix: "A9SearchCloudConfigService2013"
    }
  end

  @doc """
  Indexes the search suggestions.

  For more information, see [Configuring Suggesters](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec build_suggesters(map(), build_suggesters_request(), list()) ::
          {:ok, build_suggesters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, build_suggesters_errors()}
  def build_suggesters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BuildSuggesters", input, options)
  end

  @doc """
  Creates a new search domain.

  For more information,
  see [Creating a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec create_domain(map(), create_domain_request(), list()) ::
          {:ok, create_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDomain", input, options)
  end

  @doc """
  Configures an analysis scheme that can be applied to a `text` or `text-array`
  field to define language-specific text processing options.

  For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec define_analysis_scheme(map(), define_analysis_scheme_request(), list()) ::
          {:ok, define_analysis_scheme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, define_analysis_scheme_errors()}
  def define_analysis_scheme(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DefineAnalysisScheme", input, options)
  end

  @doc """
  Configures an ``Expression`` for the search domain.

  Used to create new expressions and modify existing ones. If the expression
  exists, the new configuration replaces the old one. For more information, see
  [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec define_expression(map(), define_expression_request(), list()) ::
          {:ok, define_expression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, define_expression_errors()}
  def define_expression(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DefineExpression", input, options)
  end

  @doc """
  Configures an ``IndexField`` for the search domain.

  Used to create new fields and modify existing ones. You must specify the name of
  the domain you are configuring and an index field configuration. The index field
  configuration specifies a unique name, the index field type, and the options you
  want to configure for the field. The options you can specify depend on the
  ``IndexFieldType``. If the field exists, the new configuration replaces the old
  one. For more information, see [Configuring Index Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec define_index_field(map(), define_index_field_request(), list()) ::
          {:ok, define_index_field_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, define_index_field_errors()}
  def define_index_field(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DefineIndexField", input, options)
  end

  @doc """
  Configures a suggester for a domain.

  A suggester enables you to display possible matches before users finish typing
  their queries. When you configure a suggester, you must specify the name of the
  text field you want to search for possible matches and a unique name for the
  suggester. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec define_suggester(map(), define_suggester_request(), list()) ::
          {:ok, define_suggester_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, define_suggester_errors()}
  def define_suggester(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DefineSuggester", input, options)
  end

  @doc """
  Deletes an analysis scheme.

  For more information, see [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec delete_analysis_scheme(map(), delete_analysis_scheme_request(), list()) ::
          {:ok, delete_analysis_scheme_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_analysis_scheme_errors()}
  def delete_analysis_scheme(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAnalysisScheme", input, options)
  end

  @doc """
  Permanently deletes a search domain and all of its data.

  Once a domain has been deleted, it cannot be recovered. For more information,
  see [Deleting a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec delete_domain(map(), delete_domain_request(), list()) ::
          {:ok, delete_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDomain", input, options)
  end

  @doc """
  Removes an ``Expression`` from the search domain.

  For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec delete_expression(map(), delete_expression_request(), list()) ::
          {:ok, delete_expression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_expression_errors()}
  def delete_expression(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteExpression", input, options)
  end

  @doc """
  Removes an ``IndexField`` from the search domain.

  For more information, see [Configuring Index Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec delete_index_field(map(), delete_index_field_request(), list()) ::
          {:ok, delete_index_field_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_index_field_errors()}
  def delete_index_field(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIndexField", input, options)
  end

  @doc """
  Deletes a suggester.

  For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec delete_suggester(map(), delete_suggester_request(), list()) ::
          {:ok, delete_suggester_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_suggester_errors()}
  def delete_suggester(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSuggester", input, options)
  end

  @doc """
  Gets the analysis schemes configured for a domain.

  An analysis scheme defines language-specific text processing options for a
  `text` field. Can be limited to specific analysis schemes by name. By default,
  shows all analysis schemes and includes any pending changes to the
  configuration. Set the `Deployed` option to `true` to show the active
  configuration and exclude pending changes. For more information, see
  [Configuring Analysis Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_analysis_schemes(map(), describe_analysis_schemes_request(), list()) ::
          {:ok, describe_analysis_schemes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_analysis_schemes_errors()}
  def describe_analysis_schemes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAnalysisSchemes", input, options)
  end

  @doc """
  Gets the availability options configured for a domain.

  By default, shows the configuration with any pending changes. Set the `Deployed`
  option to `true` to show the active configuration and exclude pending changes.
  For more information, see [Configuring Availability Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_availability_options(map(), describe_availability_options_request(), list()) ::
          {:ok, describe_availability_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_availability_options_errors()}
  def describe_availability_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAvailabilityOptions", input, options)
  end

  @doc """
  Returns the domain's endpoint options, specifically whether all requests to the
  domain must arrive over HTTPS.

  For more information, see [Configuring Domain Endpoint Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_domain_endpoint_options(
          map(),
          describe_domain_endpoint_options_request(),
          list()
        ) ::
          {:ok, describe_domain_endpoint_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_domain_endpoint_options_errors()}
  def describe_domain_endpoint_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDomainEndpointOptions", input, options)
  end

  @doc """
  Gets information about the search domains owned by this account.

  Can be limited to specific domains. Shows
  all domains by default. To get the number of searchable documents in a domain,
  use the console or submit a `matchall` request to your domain's search endpoint:
  `q=matchall&q.parser=structured&size=0`. For more information,
  see [Getting Information about a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_domains(map(), describe_domains_request(), list()) ::
          {:ok, describe_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_domains_errors()}
  def describe_domains(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDomains", input, options)
  end

  @doc """
  Gets the expressions configured for the search domain.

  Can be limited to specific expressions by name. By default, shows all
  expressions and includes any pending changes to the configuration. Set the
  `Deployed` option to `true` to show the active configuration and exclude pending
  changes. For more information, see [Configuring Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_expressions(map(), describe_expressions_request(), list()) ::
          {:ok, describe_expressions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_expressions_errors()}
  def describe_expressions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExpressions", input, options)
  end

  @doc """
  Gets information about the index fields configured for the search domain.

  Can be limited to specific fields by name. By default, shows all fields and
  includes any pending changes to the configuration. Set the `Deployed` option to
  `true` to show the active configuration and exclude pending changes. For more
  information,
  see [Getting Domain Information](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_index_fields(map(), describe_index_fields_request(), list()) ::
          {:ok, describe_index_fields_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_index_fields_errors()}
  def describe_index_fields(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIndexFields", input, options)
  end

  @doc """
  Gets the scaling parameters configured for a domain.

  A domain's scaling parameters specify the desired search instance type and
  replication count. For more information, see [Configuring Scaling Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_scaling_parameters(map(), describe_scaling_parameters_request(), list()) ::
          {:ok, describe_scaling_parameters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_scaling_parameters_errors()}
  def describe_scaling_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeScalingParameters", input, options)
  end

  @doc """
  Gets information about the access policies that control access to the domain's
  document and search endpoints.

  By default, shows the configuration with any pending changes. Set the `Deployed`
  option to `true` to show the active configuration and exclude pending changes.
  For more information,
  see [Configuring Access for a Search Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_service_access_policies(
          map(),
          describe_service_access_policies_request(),
          list()
        ) ::
          {:ok, describe_service_access_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_access_policies_errors()}
  def describe_service_access_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServiceAccessPolicies", input, options)
  end

  @doc """
  Gets the suggesters configured for a domain.

  A suggester enables you to display possible matches before users finish typing
  their queries. Can be limited to specific suggesters by name. By default, shows
  all suggesters and includes any pending changes to the configuration. Set the
  `Deployed` option to `true` to show the active configuration and exclude pending
  changes. For more information, see [Getting Search Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec describe_suggesters(map(), describe_suggesters_request(), list()) ::
          {:ok, describe_suggesters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_suggesters_errors()}
  def describe_suggesters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSuggesters", input, options)
  end

  @doc """
  Tells the search domain to start indexing its documents using the latest
  indexing options.

  This operation must be invoked to activate options whose `OptionStatus` is
  `RequiresIndexDocuments`.
  """
  @spec index_documents(map(), index_documents_request(), list()) ::
          {:ok, index_documents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, index_documents_errors()}
  def index_documents(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "IndexDocuments", input, options)
  end

  @doc """
  Lists all search domains owned by an account.
  """
  @spec list_domain_names(map(), %{}, list()) ::
          {:ok, list_domain_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domain_names_errors()}
  def list_domain_names(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDomainNames", input, options)
  end

  @doc """
  Configures the availability options for a domain.

  Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an
  additional Availability Zone in the same Region to increase fault tolerance in
  the event of a service disruption. Changes to the Multi-AZ option can take about
  half an hour to become active. For more information, see [Configuring Availability
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec update_availability_options(map(), update_availability_options_request(), list()) ::
          {:ok, update_availability_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_availability_options_errors()}
  def update_availability_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAvailabilityOptions", input, options)
  end

  @doc """
  Updates the domain's endpoint options, specifically whether all requests to the
  domain must arrive over HTTPS.

  For more information, see [Configuring Domain Endpoint Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec update_domain_endpoint_options(map(), update_domain_endpoint_options_request(), list()) ::
          {:ok, update_domain_endpoint_options_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_endpoint_options_errors()}
  def update_domain_endpoint_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDomainEndpointOptions", input, options)
  end

  @doc """
  Configures scaling parameters for a domain.

  A domain's scaling parameters specify the desired search instance type and
  replication count. Amazon CloudSearch will still automatically scale your domain
  based on the volume of data and traffic, but not below the desired instance type
  and replication count. If the Multi-AZ option is enabled, these values control
  the resources used per Availability Zone. For more information, see [Configuring Scaling
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html)
  in the *Amazon CloudSearch Developer Guide*.
  """
  @spec update_scaling_parameters(map(), update_scaling_parameters_request(), list()) ::
          {:ok, update_scaling_parameters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scaling_parameters_errors()}
  def update_scaling_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateScalingParameters", input, options)
  end

  @doc """
  Configures the access rules that control access to the domain's document and
  search endpoints.

  For more information, see [
  Configuring Access for an Amazon CloudSearch
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html).
  """
  @spec update_service_access_policies(map(), update_service_access_policies_request(), list()) ::
          {:ok, update_service_access_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_access_policies_errors()}
  def update_service_access_policies(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceAccessPolicies", input, options)
  end
end
