# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Neptunedata do
  @moduledoc """
  Neptune Data API

  The Amazon Neptune data API provides SDK support for more than 40 of Neptune's
  data operations, including data loading, query execution, data inquiry, and
  machine learning.

  It supports the Gremlin and openCypher query languages, and is available in all
  SDK languages. It automatically signs API requests and greatly simplifies
  integrating Neptune into your applications.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      parsing_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type parsing_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manage_sparql_statistics_input() :: %{
        optional("mode") => list(any())
      }

  """
  @type manage_sparql_statistics_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ml_model_training_job_input() :: %{
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type get_ml_model_training_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_ml_data_processing_job_input() :: %{
        optional("clean") => [boolean()],
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type cancel_ml_data_processing_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      read_only_violation_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type read_only_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_model_training_parameters() :: %{
        "sourceS3DirectoryPath" => [String.t()],
        "trainingEntryPointScript" => [String.t()],
        "transformEntryPointScript" => [String.t()]
      }

  """
  @type custom_model_training_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type s3_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_r_d_f_graph_summary_input() :: %{
        optional("mode") => list(any())
      }

  """
  @type get_r_d_f_graph_summary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_propertygraph_stream_output() :: %{
        "format" => [String.t()],
        "lastEventId" => map(),
        "lastTrxTimestampInMillis" => [float()],
        "records" => list(propertygraph_record()),
        "totalRecords" => [integer()]
      }

  """
  @type get_propertygraph_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      statistics_not_available_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type statistics_not_available_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_language_version() :: %{
        "version" => [String.t()]
      }

  """
  @type query_language_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_operation_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_propertygraph_statistics_output() :: %{
        "payload" => delete_statistics_value_map(),
        "status" => [String.t()],
        "statusCode" => [integer()]
      }

  """
  @type delete_propertygraph_statistics_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_propertygraph_statistics_output() :: %{
        "payload" => statistics(),
        "status" => [String.t()]
      }

  """
  @type get_propertygraph_statistics_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_gremlin_profile_query_input() :: %{
        optional("chop") => [integer()],
        optional("indexOps") => [boolean()],
        optional("results") => [boolean()],
        optional("serializer") => [String.t()],
        required("gremlinQuery") => [String.t()]
      }

  """
  @type execute_gremlin_profile_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ml_model_transform_jobs_input() :: %{
        optional("maxItems") => integer(),
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type list_ml_model_transform_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_ml_data_processing_job_output() :: %{
        "status" => [String.t()]
      }

  """
  @type cancel_ml_data_processing_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bulk_load_id_not_found_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type bulk_load_id_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_eval_stats() :: %{
        "cancelled" => [boolean()],
        "elapsed" => [integer()],
        "subqueries" => [any()],
        "waited" => [integer()]
      }

  """
  @type query_eval_stats() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manage_propertygraph_statistics_output() :: %{
        "payload" => refresh_statistics_id_map(),
        "status" => [String.t()]
      }

  """
  @type manage_propertygraph_statistics_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_open_cypher_query_output() :: %{
        "payload" => [boolean()],
        "status" => [String.t()]
      }

  """
  @type cancel_open_cypher_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_open_cypher_query_output() :: %{
        "results" => [any()]
      }

  """
  @type execute_open_cypher_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ml_model_transform_job_output() :: %{
        "baseProcessingJob" => ml_resource_definition(),
        "id" => [String.t()],
        "models" => list(ml_config_definition()),
        "remoteModelTransformJob" => ml_resource_definition(),
        "status" => [String.t()]
      }

  """
  @type get_ml_model_transform_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_ml_model_transform_job_output() :: %{
        "status" => [String.t()]
      }

  """
  @type cancel_ml_model_transform_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_gremlin_explain_query_input() :: %{
        required("gremlinQuery") => [String.t()]
      }

  """
  @type execute_gremlin_explain_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      method_not_allowed_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type method_not_allowed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_propertygraph_summary_input() :: %{
        optional("mode") => list(any())
      }

  """
  @type get_propertygraph_summary_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ml_config_definition() :: %{
        "arn" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type ml_config_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_gremlin_profile_query_output() :: %{
        "output" => binary()
      }

  """
  @type execute_gremlin_profile_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ml_model_training_jobs_input() :: %{
        optional("maxItems") => integer(),
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type list_ml_model_training_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_gremlin_query_output() :: %{
        "status" => [String.t()]
      }

  """
  @type cancel_gremlin_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      propertygraph_data() :: %{
        "from" => [String.t()],
        "id" => [String.t()],
        "key" => [String.t()],
        "to" => [String.t()],
        "type" => [String.t()],
        "value" => [any()]
      }

  """
  @type propertygraph_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_loader_job_input() :: %{}

  """
  @type cancel_loader_job_input() :: %{}

  @typedoc """

  ## Example:

      execute_open_cypher_explain_query_input() :: %{
        optional("parameters") => [String.t()],
        required("explainMode") => list(any()),
        required("openCypherQuery") => [String.t()]
      }

  """
  @type execute_open_cypher_explain_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failure_by_query_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type failure_by_query_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sparql_stream_output() :: %{
        "format" => [String.t()],
        "lastEventId" => map(),
        "lastTrxTimestampInMillis" => [float()],
        "records" => list(sparql_record()),
        "totalRecords" => [integer()]
      }

  """
  @type get_sparql_stream_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      illegal_argument_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type illegal_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_ml_model_training_job_output() :: %{
        "arn" => [String.t()],
        "creationTimeInMillis" => [float()],
        "id" => [String.t()]
      }

  """
  @type start_ml_model_training_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_loader_job_input() :: %{
        optional("dependencies") => list([String.t()]()),
        optional("failOnError") => [boolean()],
        optional("mode") => list(any()),
        optional("parallelism") => list(any()),
        optional("parserConfiguration") => map(),
        optional("queueRequest") => [boolean()],
        optional("updateSingleCardinalityProperties") => [boolean()],
        optional("userProvidedEdgeIds") => [boolean()],
        required("format") => list(any()),
        required("iamRoleArn") => [String.t()],
        required("s3BucketRegion") => list(any()),
        required("source") => [String.t()]
      }

  """
  @type start_loader_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_gremlin_query_status_input() :: %{}

  """
  @type get_gremlin_query_status_input() :: %{}

  @typedoc """

  ## Example:

      start_ml_data_processing_job_output() :: %{
        "arn" => [String.t()],
        "creationTimeInMillis" => [float()],
        "id" => [String.t()]
      }

  """
  @type start_ml_data_processing_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ml_model_transform_jobs_output() :: %{
        "ids" => list([String.t()]())
      }

  """
  @type list_ml_model_transform_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ml_data_processing_job_input() :: %{
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type get_ml_data_processing_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subject_structure() :: %{
        "count" => [float()],
        "predicates" => list([String.t()]())
      }

  """
  @type subject_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ml_resource_not_found_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type ml_resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ml_resource_definition() :: %{
        "arn" => [String.t()],
        "cloudwatchLogUrl" => [String.t()],
        "failureReason" => [String.t()],
        "name" => [String.t()],
        "outputLocation" => [String.t()],
        "status" => [String.t()]
      }

  """
  @type ml_resource_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_limit_exceeded_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type query_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ml_data_processing_jobs_output() :: %{
        "ids" => list([String.t()]())
      }

  """
  @type list_ml_data_processing_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      edge_structure() :: %{
        "count" => [float()],
        "edgeProperties" => list([String.t()]())
      }

  """
  @type edge_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sparql_stream_input() :: %{
        optional("commitNum") => [float()],
        optional("encoding") => list(any()),
        optional("iteratorType") => list(any()),
        optional("limit") => [float()],
        optional("opNum") => [float()]
      }

  """
  @type get_sparql_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_ml_model_training_job_output() :: %{
        "status" => [String.t()]
      }

  """
  @type cancel_ml_model_training_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_limit_exceeded_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type time_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_loader_job_status_output() :: %{
        "payload" => [any()],
        "status" => [String.t()]
      }

  """
  @type get_loader_job_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_ml_model_training_job_input() :: %{
        optional("baseProcessingInstanceType") => [String.t()],
        optional("customModelTrainingParameters") => custom_model_training_parameters(),
        optional("enableManagedSpotTraining") => [boolean()],
        optional("id") => [String.t()],
        optional("maxHPONumberOfTrainingJobs") => [integer()],
        optional("maxHPOParallelTrainingJobs") => [integer()],
        optional("neptuneIamRoleArn") => [String.t()],
        optional("previousModelTrainingJobId") => [String.t()],
        optional("s3OutputEncryptionKMSKey") => [String.t()],
        optional("sagemakerIamRoleArn") => [String.t()],
        optional("securityGroupIds") => list([String.t()]()),
        optional("subnets") => list([String.t()]()),
        optional("trainingInstanceType") => [String.t()],
        optional("trainingInstanceVolumeSizeInGB") => [integer()],
        optional("trainingTimeOutInSeconds") => [integer()],
        optional("volumeEncryptionKMSKey") => [String.t()],
        required("dataProcessingJobId") => [String.t()],
        required("trainModelS3Location") => [String.t()]
      }

  """
  @type start_ml_model_training_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      memory_limit_exceeded_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type memory_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_ml_data_processing_job_input() :: %{
        optional("configFileName") => [String.t()],
        optional("id") => [String.t()],
        optional("modelType") => [String.t()],
        optional("neptuneIamRoleArn") => [String.t()],
        optional("previousDataProcessingJobId") => [String.t()],
        optional("processingInstanceType") => [String.t()],
        optional("processingInstanceVolumeSizeInGB") => [integer()],
        optional("processingTimeOutInSeconds") => [integer()],
        optional("s3OutputEncryptionKMSKey") => [String.t()],
        optional("sagemakerIamRoleArn") => [String.t()],
        optional("securityGroupIds") => list([String.t()]()),
        optional("subnets") => list([String.t()]()),
        optional("volumeEncryptionKMSKey") => [String.t()],
        required("inputDataS3Location") => [String.t()],
        required("processedDataS3Location") => [String.t()]
      }

  """
  @type start_ml_data_processing_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      malformed_query_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type malformed_query_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_limit_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type query_limit_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sparql_record() :: %{
        "commitTimestampInMillis" => [float()],
        "data" => sparql_data(),
        "eventId" => map(),
        "isLastOp" => [boolean()],
        "op" => [String.t()]
      }

  """
  @type sparql_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gremlin_query_status() :: %{
        "queryEvalStats" => query_eval_stats(),
        "queryId" => [String.t()],
        "queryString" => [String.t()]
      }

  """
  @type gremlin_query_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_propertygraph_summary_output() :: %{
        "payload" => propertygraph_summary_value_map(),
        "statusCode" => [integer()]
      }

  """
  @type get_propertygraph_summary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ml_endpoints_output() :: %{
        "ids" => list([String.t()]())
      }

  """
  @type list_ml_endpoints_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      r_d_f_graph_summary_value_map() :: %{
        "graphSummary" => r_d_f_graph_summary(),
        "lastStatisticsComputationTime" => [non_neg_integer()],
        "version" => [String.t()]
      }

  """
  @type r_d_f_graph_summary_value_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_open_cypher_query_input() :: %{
        optional("parameters") => [String.t()],
        required("openCypherQuery") => [String.t()]
      }

  """
  @type execute_open_cypher_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_ml_model_transform_job_input() :: %{
        optional("clean") => [boolean()],
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type cancel_ml_model_transform_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_open_cypher_query_input() :: %{
        optional("silent") => [boolean()]
      }

  """
  @type cancel_open_cypher_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ml_model_training_jobs_output() :: %{
        "ids" => list([String.t()]())
      }

  """
  @type list_ml_model_training_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_loader_job_status_input() :: %{
        optional("details") => [boolean()],
        optional("errors") => [boolean()],
        optional("errorsPerPage") => integer(),
        optional("page") => integer()
      }

  """
  @type get_loader_job_status_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_open_cypher_query_status_output() :: %{
        "queryEvalStats" => query_eval_stats(),
        "queryId" => [String.t()],
        "queryString" => [String.t()]
      }

  """
  @type get_open_cypher_query_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_ml_model_transform_job_output() :: %{
        "arn" => [String.t()],
        "creationTimeInMillis" => [float()],
        "id" => [String.t()]
      }

  """
  @type start_ml_model_transform_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      propertygraph_summary() :: %{
        "edgeLabels" => list([String.t()]()),
        "edgeProperties" => list(map()),
        "edgeStructures" => list(edge_structure()),
        "nodeLabels" => list([String.t()]()),
        "nodeProperties" => list(map()),
        "nodeStructures" => list(node_structure()),
        "numEdgeLabels" => [float()],
        "numEdgeProperties" => [float()],
        "numEdges" => [float()],
        "numNodeLabels" => [float()],
        "numNodeProperties" => [float()],
        "numNodes" => [float()],
        "totalEdgePropertyValues" => [float()],
        "totalNodePropertyValues" => [float()]
      }

  """
  @type propertygraph_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fast_reset_token() :: %{
        "token" => [String.t()]
      }

  """
  @type fast_reset_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ml_endpoint_input() :: %{
        optional("id") => [String.t()],
        optional("instanceCount") => [integer()],
        optional("instanceType") => [String.t()],
        optional("mlModelTrainingJobId") => [String.t()],
        optional("mlModelTransformJobId") => [String.t()],
        optional("modelName") => [String.t()],
        optional("neptuneIamRoleArn") => [String.t()],
        optional("update") => [boolean()],
        optional("volumeEncryptionKMSKey") => [String.t()]
      }

  """
  @type create_ml_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ml_model_transform_job_input() :: %{
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type get_ml_model_transform_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ml_endpoint_output() :: %{
        "endpoint" => ml_resource_definition(),
        "endpointConfig" => ml_config_definition(),
        "id" => [String.t()],
        "status" => [String.t()]
      }

  """
  @type get_ml_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      r_d_f_graph_summary() :: %{
        "classes" => list([String.t()]()),
        "numClasses" => [float()],
        "numDistinctPredicates" => [float()],
        "numDistinctSubjects" => [float()],
        "numQuads" => [float()],
        "predicates" => list(map()),
        "subjectStructures" => list(subject_structure())
      }

  """
  @type r_d_f_graph_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      statistics_summary() :: %{
        "instanceCount" => [integer()],
        "predicateCount" => [integer()],
        "signatureCount" => [integer()]
      }

  """
  @type statistics_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      missing_parameter_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type missing_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      server_shutdown_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type server_shutdown_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_open_cypher_query_status_input() :: %{}

  """
  @type get_open_cypher_query_status_input() :: %{}

  @typedoc """

  ## Example:

      list_ml_data_processing_jobs_input() :: %{
        optional("maxItems") => integer(),
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type list_ml_data_processing_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_gremlin_query_status_output() :: %{
        "queryEvalStats" => query_eval_stats(),
        "queryId" => [String.t()],
        "queryString" => [String.t()]
      }

  """
  @type get_gremlin_query_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_ml_endpoints_input() :: %{
        optional("maxItems") => integer(),
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type list_ml_endpoints_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gremlin_queries_output() :: %{
        "acceptedQueryCount" => [integer()],
        "queries" => list(gremlin_query_status()),
        "runningQueryCount" => [integer()]
      }

  """
  @type list_gremlin_queries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_ml_model_training_job_input() :: %{
        optional("clean") => [boolean()],
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type cancel_ml_model_training_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancelled_by_user_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type cancelled_by_user_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ml_data_processing_job_output() :: %{
        "id" => [String.t()],
        "processingJob" => ml_resource_definition(),
        "status" => [String.t()]
      }

  """
  @type get_ml_data_processing_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sparql_statistics_output() :: %{
        "payload" => delete_statistics_value_map(),
        "status" => [String.t()],
        "statusCode" => [integer()]
      }

  """
  @type delete_sparql_statistics_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_propertygraph_stream_input() :: %{
        optional("commitNum") => [float()],
        optional("encoding") => list(any()),
        optional("iteratorType") => list(any()),
        optional("limit") => [float()],
        optional("opNum") => [float()]
      }

  """
  @type get_propertygraph_stream_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_gremlin_query_input() :: %{
        optional("serializer") => [String.t()],
        required("gremlinQuery") => [String.t()]
      }

  """
  @type execute_gremlin_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_engine_status_output() :: %{
        "dbEngineVersion" => [String.t()],
        "dfeQueryEngine" => [String.t()],
        "features" => map(),
        "gremlin" => query_language_version(),
        "labMode" => map(),
        "opencypher" => query_language_version(),
        "role" => [String.t()],
        "rollingBackTrxCount" => [integer()],
        "rollingBackTrxEarliestStartTime" => [String.t()],
        "settings" => map(),
        "sparql" => query_language_version(),
        "startTime" => [String.t()],
        "status" => [String.t()]
      }

  """
  @type get_engine_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_ml_endpoint_output() :: %{
        "arn" => [String.t()],
        "creationTimeInMillis" => [float()],
        "id" => [String.t()]
      }

  """
  @type create_ml_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      propertygraph_record() :: %{
        "commitTimestampInMillis" => [float()],
        "data" => propertygraph_data(),
        "eventId" => map(),
        "isLastOp" => [boolean()],
        "op" => [String.t()]
      }

  """
  @type propertygraph_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_loader_jobs_input() :: %{
        optional("includeQueuedLoads") => [boolean()],
        optional("limit") => integer()
      }

  """
  @type list_loader_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      refresh_statistics_id_map() :: %{
        "statisticsId" => [String.t()]
      }

  """
  @type refresh_statistics_id_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_fast_reset_output() :: %{
        "payload" => fast_reset_token(),
        "status" => [String.t()]
      }

  """
  @type execute_fast_reset_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      propertygraph_summary_value_map() :: %{
        "graphSummary" => propertygraph_summary(),
        "lastStatisticsComputationTime" => [non_neg_integer()],
        "version" => [String.t()]
      }

  """
  @type propertygraph_summary_value_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_argument_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_open_cypher_queries_input() :: %{
        optional("includeWaiting") => [boolean()]
      }

  """
  @type list_open_cypher_queries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      statistics() :: %{
        "active" => [boolean()],
        "autoCompute" => [boolean()],
        "date" => [non_neg_integer()],
        "note" => [String.t()],
        "signatureInfo" => statistics_summary(),
        "statisticsId" => [String.t()]
      }

  """
  @type statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manage_sparql_statistics_output() :: %{
        "payload" => refresh_statistics_id_map(),
        "status" => [String.t()]
      }

  """
  @type manage_sparql_statistics_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      node_structure() :: %{
        "count" => [float()],
        "distinctOutgoingEdgeLabels" => list([String.t()]()),
        "nodeProperties" => list([String.t()]())
      }

  """
  @type node_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      constraint_violation_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type constraint_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_too_large_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type query_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_loader_job_output() :: %{
        "status" => [String.t()]
      }

  """
  @type cancel_loader_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gremlin_queries_input() :: %{
        optional("includeWaiting") => [boolean()]
      }

  """
  @type list_gremlin_queries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_gremlin_query_output() :: %{
        "meta" => [any()],
        "requestId" => [String.t()],
        "result" => [any()],
        "status" => gremlin_query_status_attributes()
      }

  """
  @type execute_gremlin_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_records_not_found_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type stream_records_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_r_d_f_graph_summary_output() :: %{
        "payload" => r_d_f_graph_summary_value_map(),
        "statusCode" => [integer()]
      }

  """
  @type get_r_d_f_graph_summary_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      manage_propertygraph_statistics_input() :: %{
        optional("mode") => list(any())
      }

  """
  @type manage_propertygraph_statistics_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_numeric_data_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type invalid_numeric_data_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_gremlin_explain_query_output() :: %{
        "output" => binary()
      }

  """
  @type execute_gremlin_explain_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ml_endpoint_output() :: %{
        "status" => [String.t()]
      }

  """
  @type delete_ml_endpoint_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      load_url_access_denied_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type load_url_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_ml_endpoint_input() :: %{
        optional("clean") => [boolean()],
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type delete_ml_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      expired_stream_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type expired_stream_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gremlin_query_status_attributes() :: %{
        "attributes" => [any()],
        "code" => [integer()],
        "message" => [String.t()]
      }

  """
  @type gremlin_query_status_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_loader_job_output() :: %{
        "payload" => map(),
        "status" => [String.t()]
      }

  """
  @type start_loader_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_statistics_value_map() :: %{
        "active" => [boolean()],
        "statisticsId" => [String.t()]
      }

  """
  @type delete_statistics_value_map() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_open_cypher_explain_query_output() :: %{
        "results" => [binary()]
      }

  """
  @type execute_open_cypher_explain_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_open_cypher_queries_output() :: %{
        "acceptedQueryCount" => [integer()],
        "queries" => list(gremlin_query_status()),
        "runningQueryCount" => [integer()]
      }

  """
  @type list_open_cypher_queries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_ml_model_transform_job_input() :: %{
        optional("baseProcessingInstanceType") => [String.t()],
        optional("baseProcessingInstanceVolumeSizeInGB") => [integer()],
        optional("customModelTransformParameters") => custom_model_transform_parameters(),
        optional("dataProcessingJobId") => [String.t()],
        optional("id") => [String.t()],
        optional("mlModelTrainingJobId") => [String.t()],
        optional("neptuneIamRoleArn") => [String.t()],
        optional("s3OutputEncryptionKMSKey") => [String.t()],
        optional("sagemakerIamRoleArn") => [String.t()],
        optional("securityGroupIds") => list([String.t()]()),
        optional("subnets") => list([String.t()]()),
        optional("trainingJobName") => [String.t()],
        optional("volumeEncryptionKMSKey") => [String.t()],
        required("modelTransformOutputS3Location") => [String.t()]
      }

  """
  @type start_ml_model_transform_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_model_transform_parameters() :: %{
        "sourceS3DirectoryPath" => [String.t()],
        "transformEntryPointScript" => [String.t()]
      }

  """
  @type custom_model_transform_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      loader_id_result() :: %{
        "loadIds" => list([String.t()]())
      }

  """
  @type loader_id_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_ml_model_training_job_output() :: %{
        "hpoJob" => ml_resource_definition(),
        "id" => [String.t()],
        "mlModels" => list(ml_config_definition()),
        "modelTransformJob" => ml_resource_definition(),
        "processingJob" => ml_resource_definition(),
        "status" => [String.t()]
      }

  """
  @type get_ml_model_training_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      preconditions_failed_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type preconditions_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      client_timeout_exception() :: %{
        "code" => [String.t()],
        "detailedMessage" => [String.t()],
        "requestId" => [String.t()]
      }

  """
  @type client_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sparql_data() :: %{
        "stmt" => [String.t()]
      }

  """
  @type sparql_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_loader_jobs_output() :: %{
        "payload" => loader_id_result(),
        "status" => [String.t()]
      }

  """
  @type list_loader_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_gremlin_query_input() :: %{}

  """
  @type cancel_gremlin_query_input() :: %{}

  @typedoc """

  ## Example:

      get_ml_endpoint_input() :: %{
        optional("neptuneIamRoleArn") => [String.t()]
      }

  """
  @type get_ml_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sparql_statistics_output() :: %{
        "payload" => statistics(),
        "status" => [String.t()]
      }

  """
  @type get_sparql_statistics_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execute_fast_reset_input() :: %{
        optional("token") => [String.t()],
        required("action") => list(any())
      }

  """
  @type execute_fast_reset_input() :: %{String.t() => any()}

  @type cancel_gremlin_query_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | time_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | parsing_exception()

  @type cancel_loader_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | load_url_access_denied_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | bulk_load_id_not_found_exception()
          | unsupported_operation_exception()
          | internal_failure_exception()

  @type cancel_ml_data_processing_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type cancel_ml_model_training_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type cancel_ml_model_transform_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type cancel_open_cypher_query_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | invalid_numeric_data_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | time_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | parsing_exception()

  @type create_ml_endpoint_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type delete_ml_endpoint_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type delete_propertygraph_statistics_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | statistics_not_available_exception()
          | read_only_violation_exception()

  @type delete_sparql_statistics_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | statistics_not_available_exception()
          | read_only_violation_exception()

  @type execute_fast_reset_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | server_shutdown_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | method_not_allowed_exception()
          | unsupported_operation_exception()
          | read_only_violation_exception()

  @type execute_gremlin_explain_query_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | query_too_large_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | cancelled_by_user_exception()
          | missing_parameter_exception()
          | query_limit_exception()
          | malformed_query_exception()
          | memory_limit_exceeded_exception()
          | time_limit_exceeded_exception()
          | query_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | parsing_exception()

  @type execute_gremlin_profile_query_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | query_too_large_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | cancelled_by_user_exception()
          | missing_parameter_exception()
          | query_limit_exception()
          | malformed_query_exception()
          | memory_limit_exceeded_exception()
          | time_limit_exceeded_exception()
          | query_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | parsing_exception()

  @type execute_gremlin_query_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | query_too_large_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | cancelled_by_user_exception()
          | missing_parameter_exception()
          | query_limit_exception()
          | malformed_query_exception()
          | memory_limit_exceeded_exception()
          | time_limit_exceeded_exception()
          | query_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | parsing_exception()

  @type execute_open_cypher_explain_query_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | invalid_numeric_data_exception()
          | query_too_large_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | cancelled_by_user_exception()
          | missing_parameter_exception()
          | query_limit_exception()
          | malformed_query_exception()
          | memory_limit_exceeded_exception()
          | time_limit_exceeded_exception()
          | query_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | parsing_exception()

  @type execute_open_cypher_query_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | invalid_numeric_data_exception()
          | query_too_large_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | cancelled_by_user_exception()
          | missing_parameter_exception()
          | query_limit_exception()
          | malformed_query_exception()
          | memory_limit_exceeded_exception()
          | time_limit_exceeded_exception()
          | query_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | parsing_exception()

  @type get_engine_status_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | internal_failure_exception()

  @type get_gremlin_query_status_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | time_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | read_only_violation_exception()
          | parsing_exception()

  @type get_loader_job_status_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | load_url_access_denied_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | bulk_load_id_not_found_exception()
          | unsupported_operation_exception()
          | internal_failure_exception()

  @type get_ml_data_processing_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type get_ml_endpoint_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type get_ml_model_training_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type get_ml_model_transform_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type get_open_cypher_query_status_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | invalid_numeric_data_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | time_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | read_only_violation_exception()
          | parsing_exception()

  @type get_propertygraph_statistics_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | statistics_not_available_exception()
          | read_only_violation_exception()

  @type get_propertygraph_stream_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | expired_stream_exception()
          | stream_records_not_found_exception()
          | throttling_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | memory_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type get_propertygraph_summary_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | statistics_not_available_exception()
          | read_only_violation_exception()

  @type get_r_d_f_graph_summary_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | statistics_not_available_exception()
          | read_only_violation_exception()

  @type get_sparql_statistics_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | statistics_not_available_exception()
          | read_only_violation_exception()

  @type get_sparql_stream_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | expired_stream_exception()
          | stream_records_not_found_exception()
          | throttling_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | memory_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type list_gremlin_queries_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | time_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | read_only_violation_exception()
          | parsing_exception()

  @type list_loader_jobs_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | load_url_access_denied_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | bulk_load_id_not_found_exception()
          | unsupported_operation_exception()
          | internal_failure_exception()

  @type list_ml_data_processing_jobs_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type list_ml_endpoints_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type list_ml_model_training_jobs_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type list_ml_model_transform_jobs_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type list_open_cypher_queries_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | invalid_numeric_data_exception()
          | constraint_violation_exception()
          | concurrent_modification_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | time_limit_exceeded_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | failure_by_query_exception()
          | unsupported_operation_exception()
          | read_only_violation_exception()
          | parsing_exception()

  @type manage_propertygraph_statistics_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | statistics_not_available_exception()
          | read_only_violation_exception()

  @type manage_sparql_statistics_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()
          | statistics_not_available_exception()
          | read_only_violation_exception()

  @type start_loader_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | load_url_access_denied_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | bulk_load_id_not_found_exception()
          | unsupported_operation_exception()
          | s3_exception()
          | internal_failure_exception()

  @type start_ml_data_processing_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type start_ml_model_training_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  @type start_ml_model_transform_job_errors() ::
          client_timeout_exception()
          | preconditions_failed_exception()
          | bad_request_exception()
          | constraint_violation_exception()
          | invalid_argument_exception()
          | invalid_parameter_exception()
          | missing_parameter_exception()
          | ml_resource_not_found_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | unsupported_operation_exception()

  def metadata do
    %{
      api_version: "2023-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "neptune-db",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "neptunedata",
      signature_version: "v4",
      signing_name: "neptune-db",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a Gremlin query.

  See [Gremlin query cancellation](https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status-cancel.html)
  for more information.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:CancelQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery)
  IAM action in that cluster.
  """
  @spec cancel_gremlin_query(map(), String.t(), cancel_gremlin_query_input(), list()) ::
          {:ok, cancel_gremlin_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_gremlin_query_errors()}
  def cancel_gremlin_query(%Client{} = client, query_id, input, options \\ []) do
    url_path = "/gremlin/status/#{AWS.Util.encode_uri(query_id)}"
    headers = []
    custom_headers = []
    query_params = []

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
  Cancels a specified load job.

  This is an HTTP `DELETE` request. See [Neptune Loader Get-Status API](https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm)
  for more information.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:CancelLoaderJob](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelloaderjob)
  IAM action in that cluster..
  """
  @spec cancel_loader_job(map(), String.t(), cancel_loader_job_input(), list()) ::
          {:ok, cancel_loader_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_loader_job_errors()}
  def cancel_loader_job(%Client{} = client, load_id, input, options \\ []) do
    url_path = "/loader/#{AWS.Util.encode_uri(load_id)}"
    headers = []
    custom_headers = []
    query_params = []

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
  Cancels a Neptune ML data processing job.

  See [The `dataprocessing` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:CancelMLDataProcessingJob](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmldataprocessingjob)
  IAM action in that cluster.
  """
  @spec cancel_ml_data_processing_job(
          map(),
          String.t(),
          cancel_ml_data_processing_job_input(),
          list()
        ) ::
          {:ok, cancel_ml_data_processing_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_ml_data_processing_job_errors()}
  def cancel_ml_data_processing_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/ml/dataprocessing/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clean", "clean"},
        {"neptuneIamRoleArn", "neptuneIamRoleArn"}
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
  Cancels a Neptune ML model training job.

  See [Model training using the `modeltraining` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:CancelMLModelTrainingJob](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltrainingjob)
  IAM action in that cluster.
  """
  @spec cancel_ml_model_training_job(
          map(),
          String.t(),
          cancel_ml_model_training_job_input(),
          list()
        ) ::
          {:ok, cancel_ml_model_training_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_ml_model_training_job_errors()}
  def cancel_ml_model_training_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/ml/modeltraining/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clean", "clean"},
        {"neptuneIamRoleArn", "neptuneIamRoleArn"}
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
  Cancels a specified model transform job.

  See [Use a trained model to generate new model artifacts](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:CancelMLModelTransformJob](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltransformjob)
  IAM action in that cluster.
  """
  @spec cancel_ml_model_transform_job(
          map(),
          String.t(),
          cancel_ml_model_transform_job_input(),
          list()
        ) ::
          {:ok, cancel_ml_model_transform_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_ml_model_transform_job_errors()}
  def cancel_ml_model_transform_job(%Client{} = client, id, input, options \\ []) do
    url_path = "/ml/modeltransform/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clean", "clean"},
        {"neptuneIamRoleArn", "neptuneIamRoleArn"}
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
  Cancels a specified openCypher query.

  See [Neptune openCypher status endpoint](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html)
  for more information.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:CancelQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery)
  IAM action in that cluster.
  """
  @spec cancel_open_cypher_query(map(), String.t(), cancel_open_cypher_query_input(), list()) ::
          {:ok, cancel_open_cypher_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_open_cypher_query_errors()}
  def cancel_open_cypher_query(%Client{} = client, query_id, input, options \\ []) do
    url_path = "/opencypher/status/#{AWS.Util.encode_uri(query_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"silent", "silent"}
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
  Creates a new Neptune ML inference endpoint that lets you query one specific
  model that the model-training process constructed.

  See [Managing inference endpoints using the endpoints command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:CreateMLEndpoint](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#createmlendpoint)
  IAM action in that cluster.
  """
  @spec create_ml_endpoint(map(), create_ml_endpoint_input(), list()) ::
          {:ok, create_ml_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_ml_endpoint_errors()}
  def create_ml_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/ml/endpoints"
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
  Cancels the creation of a Neptune ML inference endpoint.

  See [Managing inference endpoints using the endpoints command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:DeleteMLEndpoint](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletemlendpoint)
  IAM action in that cluster.
  """
  @spec delete_ml_endpoint(map(), String.t(), delete_ml_endpoint_input(), list()) ::
          {:ok, delete_ml_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_ml_endpoint_errors()}
  def delete_ml_endpoint(%Client{} = client, id, input, options \\ []) do
    url_path = "/ml/endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clean", "clean"},
        {"neptuneIamRoleArn", "neptuneIamRoleArn"}
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
  Deletes statistics for Gremlin and openCypher (property graph) data.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:DeleteStatistics](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics)
  IAM action in that cluster.
  """
  @spec delete_propertygraph_statistics(map(), %{}, list()) ::
          {:ok, delete_propertygraph_statistics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_propertygraph_statistics_errors()}
  def delete_propertygraph_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/propertygraph/statistics"
    headers = []
    custom_headers = []
    query_params = []

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
  Deletes SPARQL statistics

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:DeleteStatistics](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics)
  IAM action in that cluster.
  """
  @spec delete_sparql_statistics(map(), %{}, list()) ::
          {:ok, delete_sparql_statistics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sparql_statistics_errors()}
  def delete_sparql_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/sparql/statistics"
    headers = []
    custom_headers = []
    query_params = []

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
  The fast reset REST API lets you reset a Neptune graph quicky and easily,
  removing all of its data.

  Neptune fast reset is a two-step process. First you call `ExecuteFastReset` with
  `action` set to `initiateDatabaseReset`. This returns a UUID token which you
  then include when calling `ExecuteFastReset` again with `action` set to
  `performDatabaseReset`. See [Empty an Amazon Neptune DB cluster using the fast reset
  API](https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-fast-reset.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ResetDatabase](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#resetdatabase)
  IAM action in that cluster.
  """
  @spec execute_fast_reset(map(), execute_fast_reset_input(), list()) ::
          {:ok, execute_fast_reset_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_fast_reset_errors()}
  def execute_fast_reset(%Client{} = client, input, options \\ []) do
    url_path = "/system"
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
  Executes a Gremlin Explain query.

  Amazon Neptune has added a Gremlin feature named `explain` that provides is a
  self-service tool for understanding the execution approach being taken by the
  Neptune engine for the query. You invoke it by adding an `explain` parameter to
  an HTTP call that submits a Gremlin query.

  The explain feature provides information about the logical structure of query
  execution plans. You can use this information to identify potential evaluation
  and execution bottlenecks and to tune your query, as explained in [Tuning Gremlin
  queries](https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html).
  You can also use query hints to improve query execution plans.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows one of the following IAM actions in that cluster, depending on the
  query:

    *
  [neptune-db:ReadDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery)     *
  [neptune-db:WriteDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery)

    *
  [neptune-db:DeleteDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery) 

  Note that the
  [neptune-db:QueryLanguage:Gremlin](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  Gremlin queries (see [Condition keys available in Neptune IAM data-access policy statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec execute_gremlin_explain_query(map(), execute_gremlin_explain_query_input(), list()) ::
          {:ok, execute_gremlin_explain_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_gremlin_explain_query_errors()}
  def execute_gremlin_explain_query(%Client{} = client, input, options \\ []) do
    url_path = "/gremlin/explain"
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
  Executes a Gremlin Profile query, which runs a specified traversal, collects
  various metrics about the run, and produces a profile report as output.

  See [Gremlin profile API in Neptune](https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html)
  for details.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ReadDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery) IAM action in that cluster.

  Note that the
  [neptune-db:QueryLanguage:Gremlin](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  Gremlin queries (see [Condition keys available in Neptune IAM data-access policy statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec execute_gremlin_profile_query(map(), execute_gremlin_profile_query_input(), list()) ::
          {:ok, execute_gremlin_profile_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_gremlin_profile_query_errors()}
  def execute_gremlin_profile_query(%Client{} = client, input, options \\ []) do
    url_path = "/gremlin/profile"
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
  This commands executes a Gremlin query.

  Amazon Neptune is compatible with Apache TinkerPop3 and Gremlin, so you can use
  the Gremlin traversal language to query the graph, as described under [The Graph](https://tinkerpop.apache.org/docs/current/reference/#graph) in the Apache
  TinkerPop3 documentation. More details can also be found in [Accessing a Neptune graph with
  Gremlin](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that enables one of the following IAM actions in that cluster, depending on the
  query:

    *
  [neptune-db:ReadDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery)     *
  [neptune-db:WriteDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery)

    *
  [neptune-db:DeleteDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery) 

  Note that the
  [neptune-db:QueryLanguage:Gremlin](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  Gremlin queries (see [Condition keys available in Neptune IAM data-access policy statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec execute_gremlin_query(map(), execute_gremlin_query_input(), list()) ::
          {:ok, execute_gremlin_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_gremlin_query_errors()}
  def execute_gremlin_query(%Client{} = client, input, options \\ []) do
    url_path = "/gremlin"

    {headers, input} =
      [
        {"serializer", "accept"}
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
  Executes an openCypher `explain` request.

  See [The openCypher explain feature](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-explain.html)
  for more information.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ReadDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery) IAM action in that cluster.

  Note that the
  [neptune-db:QueryLanguage:OpenCypher](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  openCypher queries (see [Condition keys available in Neptune IAM data-access policy
  statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec execute_open_cypher_explain_query(
          map(),
          execute_open_cypher_explain_query_input(),
          list()
        ) ::
          {:ok, execute_open_cypher_explain_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_open_cypher_explain_query_errors()}
  def execute_open_cypher_explain_query(%Client{} = client, input, options \\ []) do
    url_path = "/opencypher/explain"
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
  Executes an openCypher query.

  See [Accessing the Neptune Graph with openCypher](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher.html)
  for more information.

  Neptune supports building graph applications using openCypher, which is
  currently one of the most popular query languages among developers working with
  graph databases. Developers, business analysts, and data scientists like
  openCypher's declarative, SQL-inspired syntax because it provides a familiar
  structure in which to querying property graphs.

  The openCypher language was originally developed by Neo4j, then open-sourced in
  2015 and contributed to the [openCypher project](https://opencypher.org/) under an Apache 2 open-source license.

  Note that when invoking this operation in a Neptune cluster that has IAM
  authentication enabled, the IAM user or role making the request must have a
  policy attached that allows one of the following IAM actions in that cluster,
  depending on the query:

    *
  [neptune-db:ReadDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery)

    *
  [neptune-db:WriteDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery)     *
  [neptune-db:DeleteDataViaQuery](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery)

  Note also that the
  [neptune-db:QueryLanguage:OpenCypher](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys) IAM condition key can be used in the policy document to restrict the use of
  openCypher queries (see [Condition keys available in Neptune IAM data-access
  policy
  statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec execute_open_cypher_query(map(), execute_open_cypher_query_input(), list()) ::
          {:ok, execute_open_cypher_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, execute_open_cypher_query_errors()}
  def execute_open_cypher_query(%Client{} = client, input, options \\ []) do
    url_path = "/opencypher"
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
  Retrieves the status of the graph database on the host.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetEngineStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getenginestatus)
  IAM action in that cluster.
  """
  @spec get_engine_status(map(), list()) ::
          {:ok, get_engine_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_engine_status_errors()}
  def get_engine_status(%Client{} = client, options \\ []) do
    url_path = "/status"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the status of a specified Gremlin query.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetQueryStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus) IAM action in that cluster.

  Note that the
  [neptune-db:QueryLanguage:Gremlin](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  Gremlin queries (see [Condition keys available in Neptune IAM data-access policy statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec get_gremlin_query_status(map(), String.t(), list()) ::
          {:ok, get_gremlin_query_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_gremlin_query_status_errors()}
  def get_gremlin_query_status(%Client{} = client, query_id, options \\ []) do
    url_path = "/gremlin/status/#{AWS.Util.encode_uri(query_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets status information about a specified load job.

  Neptune keeps track of the most recent 1,024 bulk load jobs, and stores the last
  10,000 error details per job.

  See [Neptune Loader Get-Status API](https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm)
  for more information.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetLoaderJobStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getloaderjobstatus)
  IAM action in that cluster..
  """
  @spec get_loader_job_status(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_loader_job_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_loader_job_status_errors()}
  def get_loader_job_status(
        %Client{} = client,
        load_id,
        details \\ nil,
        errors \\ nil,
        errors_per_page \\ nil,
        page \\ nil,
        options \\ []
      ) do
    url_path = "/loader/#{AWS.Util.encode_uri(load_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(page) do
        [{"page", page} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(errors_per_page) do
        [{"errorsPerPage", errors_per_page} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(errors) do
        [{"errors", errors} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(details) do
        [{"details", details} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specified data processing job.

  See [The `dataprocessing` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:neptune-db:GetMLDataProcessingJobStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmldataprocessingjobstatus)
  IAM action in that cluster.
  """
  @spec get_ml_data_processing_job(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_ml_data_processing_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ml_data_processing_job_errors()}
  def get_ml_data_processing_job(
        %Client{} = client,
        id,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/dataprocessing/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about an inference endpoint.

  See [Managing inference endpoints using the endpoints command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetMLEndpointStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlendpointstatus)
  IAM action in that cluster.
  """
  @spec get_ml_endpoint(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_ml_endpoint_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ml_endpoint_errors()}
  def get_ml_endpoint(%Client{} = client, id, neptune_iam_role_arn \\ nil, options \\ []) do
    url_path = "/ml/endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a Neptune ML model training job.

  See [Model training using the `modeltraining` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetMLModelTrainingJobStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltrainingjobstatus)
  IAM action in that cluster.
  """
  @spec get_ml_model_training_job(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_ml_model_training_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ml_model_training_job_errors()}
  def get_ml_model_training_job(
        %Client{} = client,
        id,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/modeltraining/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specified model transform job.

  See [Use a trained model to generate new model artifacts](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetMLModelTransformJobStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltransformjobstatus)
  IAM action in that cluster.
  """
  @spec get_ml_model_transform_job(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_ml_model_transform_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ml_model_transform_job_errors()}
  def get_ml_model_transform_job(
        %Client{} = client,
        id,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/modeltransform/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the status of a specified openCypher query.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetQueryStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus) IAM action in that cluster.

  Note that the
  [neptune-db:QueryLanguage:OpenCypher](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  openCypher queries (see [Condition keys available in Neptune IAM data-access policy
  statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec get_open_cypher_query_status(map(), String.t(), list()) ::
          {:ok, get_open_cypher_query_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_open_cypher_query_status_errors()}
  def get_open_cypher_query_status(%Client{} = client, query_id, options \\ []) do
    url_path = "/opencypher/status/#{AWS.Util.encode_uri(query_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets property graph statistics (Gremlin and openCypher).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetStatisticsStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstatisticsstatus)
  IAM action in that cluster.
  """
  @spec get_propertygraph_statistics(map(), list()) ::
          {:ok, get_propertygraph_statistics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_propertygraph_statistics_errors()}
  def get_propertygraph_statistics(%Client{} = client, options \\ []) do
    url_path = "/propertygraph/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a stream for a property graph.

  With the Neptune Streams feature, you can generate a complete sequence of
  change-log entries that record every change made to your graph data as it
  happens. `GetPropertygraphStream` lets you collect these change-log entries for
  a property graph.

  The Neptune streams feature needs to be enabled on your Neptune DBcluster. To
  enable streams, set the
  [neptune_streams](https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams) DB cluster parameter to `1`.

  See [Capturing graph changes in real time using Neptune
  streams](https://docs.aws.amazon.com/neptune/latest/userguide/streams.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetStreamRecords](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords) IAM action in that cluster.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that enables one of the following IAM actions, depending on the query:

  Note that you can restrict property-graph queries using the following IAM
  context keys:

    *
  [neptune-db:QueryLanguage:Gremlin](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)

    *
  [neptune-db:QueryLanguage:OpenCypher](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys) 

  See [Condition keys available in Neptune IAM data-access policy
  statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec get_propertygraph_stream(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_propertygraph_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_propertygraph_stream_errors()}
  def get_propertygraph_stream(
        %Client{} = client,
        commit_num \\ nil,
        iterator_type \\ nil,
        limit \\ nil,
        op_num \\ nil,
        encoding \\ nil,
        options \\ []
      ) do
    url_path = "/propertygraph/stream"
    headers = []

    headers =
      if !is_nil(encoding) do
        [{"Accept-Encoding", encoding} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(op_num) do
        [{"opNum", op_num} | query_params]
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
      if !is_nil(iterator_type) do
        [{"iteratorType", iterator_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(commit_num) do
        [{"commitNum", commit_num} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a graph summary for a property graph.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetGraphSummary](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary)
  IAM action in that cluster.
  """
  @spec get_propertygraph_summary(map(), String.t() | nil, list()) ::
          {:ok, get_propertygraph_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_propertygraph_summary_errors()}
  def get_propertygraph_summary(%Client{} = client, mode \\ nil, options \\ []) do
    url_path = "/propertygraph/statistics/summary"
    headers = []
    query_params = []

    query_params =
      if !is_nil(mode) do
        [{"mode", mode} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a graph summary for an RDF graph.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetGraphSummary](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary)
  IAM action in that cluster.
  """
  @spec get_r_d_f_graph_summary(map(), String.t() | nil, list()) ::
          {:ok, get_r_d_f_graph_summary_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_r_d_f_graph_summary_errors()}
  def get_r_d_f_graph_summary(%Client{} = client, mode \\ nil, options \\ []) do
    url_path = "/rdf/statistics/summary"
    headers = []
    query_params = []

    query_params =
      if !is_nil(mode) do
        [{"mode", mode} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets RDF statistics (SPARQL).
  """
  @spec get_sparql_statistics(map(), list()) ::
          {:ok, get_sparql_statistics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sparql_statistics_errors()}
  def get_sparql_statistics(%Client{} = client, options \\ []) do
    url_path = "/sparql/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a stream for an RDF graph.

  With the Neptune Streams feature, you can generate a complete sequence of
  change-log entries that record every change made to your graph data as it
  happens. `GetSparqlStream` lets you collect these change-log entries for an RDF
  graph.

  The Neptune streams feature needs to be enabled on your Neptune DBcluster. To
  enable streams, set the
  [neptune_streams](https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams) DB cluster parameter to `1`.

  See [Capturing graph changes in real time using Neptune
  streams](https://docs.aws.amazon.com/neptune/latest/userguide/streams.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetStreamRecords](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords) IAM action in that cluster.

  Note that the
  [neptune-db:QueryLanguage:Sparql](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  SPARQL queries (see [Condition keys available in Neptune IAM data-access policy statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec get_sparql_stream(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_sparql_stream_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sparql_stream_errors()}
  def get_sparql_stream(
        %Client{} = client,
        commit_num \\ nil,
        iterator_type \\ nil,
        limit \\ nil,
        op_num \\ nil,
        encoding \\ nil,
        options \\ []
      ) do
    url_path = "/sparql/stream"
    headers = []

    headers =
      if !is_nil(encoding) do
        [{"Accept-Encoding", encoding} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(op_num) do
        [{"opNum", op_num} | query_params]
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
      if !is_nil(iterator_type) do
        [{"iteratorType", iterator_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(commit_num) do
        [{"commitNum", commit_num} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists active Gremlin queries.

  See [Gremlin query status API](https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status.html)
  for details about the output.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetQueryStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus) IAM action in that cluster.

  Note that the
  [neptune-db:QueryLanguage:Gremlin](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  Gremlin queries (see [Condition keys available in Neptune IAM data-access policy statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec list_gremlin_queries(map(), String.t() | nil, list()) ::
          {:ok, list_gremlin_queries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_gremlin_queries_errors()}
  def list_gremlin_queries(%Client{} = client, include_waiting \\ nil, options \\ []) do
    url_path = "/gremlin/status"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_waiting) do
        [{"includeWaiting", include_waiting} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of the `loadIds` for all active loader jobs.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ListLoaderJobs](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listloaderjobs)
  IAM action in that cluster..
  """
  @spec list_loader_jobs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_loader_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_loader_jobs_errors()}
  def list_loader_jobs(
        %Client{} = client,
        include_queued_loads \\ nil,
        limit \\ nil,
        options \\ []
      ) do
    url_path = "/loader"
    headers = []
    query_params = []

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_queued_loads) do
        [{"includeQueuedLoads", include_queued_loads} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Neptune ML data processing jobs.

  See [Listing active data-processing jobs using the Neptune ML dataprocessing command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html#machine-learning-api-dataprocessing-list-jobs).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ListMLDataProcessingJobs](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmldataprocessingjobs)
  IAM action in that cluster.
  """
  @spec list_ml_data_processing_jobs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ml_data_processing_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ml_data_processing_jobs_errors()}
  def list_ml_data_processing_jobs(
        %Client{} = client,
        max_items \\ nil,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/dataprocessing"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists existing inference endpoints.

  See [Managing inference endpoints using the endpoints command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ListMLEndpoints](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlendpoints)
  IAM action in that cluster.
  """
  @spec list_ml_endpoints(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ml_endpoints_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ml_endpoints_errors()}
  def list_ml_endpoints(
        %Client{} = client,
        max_items \\ nil,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/endpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Neptune ML model-training jobs.

  See [Model training using the `modeltraining` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:neptune-db:ListMLModelTrainingJobs](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#neptune-db:listmlmodeltrainingjobs)
  IAM action in that cluster.
  """
  @spec list_ml_model_training_jobs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ml_model_training_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ml_model_training_jobs_errors()}
  def list_ml_model_training_jobs(
        %Client{} = client,
        max_items \\ nil,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/modeltraining"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of model transform job IDs.

  See [Use a trained model to generate new model artifacts](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ListMLModelTransformJobs](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlmodeltransformjobs)
  IAM action in that cluster.
  """
  @spec list_ml_model_transform_jobs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_ml_model_transform_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_ml_model_transform_jobs_errors()}
  def list_ml_model_transform_jobs(
        %Client{} = client,
        max_items \\ nil,
        neptune_iam_role_arn \\ nil,
        options \\ []
      ) do
    url_path = "/ml/modeltransform"
    headers = []
    query_params = []

    query_params =
      if !is_nil(neptune_iam_role_arn) do
        [{"neptuneIamRoleArn", neptune_iam_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"maxItems", max_items} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists active openCypher queries.

  See [Neptune openCypher status endpoint](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html)
  for more information.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:GetQueryStatus](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus) IAM action in that cluster.

  Note that the
  [neptune-db:QueryLanguage:OpenCypher](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
  IAM condition key can be used in the policy document to restrict the use of
  openCypher queries (see [Condition keys available in Neptune IAM data-access policy
  statements](https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).
  """
  @spec list_open_cypher_queries(map(), String.t() | nil, list()) ::
          {:ok, list_open_cypher_queries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_open_cypher_queries_errors()}
  def list_open_cypher_queries(%Client{} = client, include_waiting \\ nil, options \\ []) do
    url_path = "/opencypher/status"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_waiting) do
        [{"includeWaiting", include_waiting} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Manages the generation and use of property graph statistics.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ManageStatistics](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics)
  IAM action in that cluster.
  """
  @spec manage_propertygraph_statistics(map(), manage_propertygraph_statistics_input(), list()) ::
          {:ok, manage_propertygraph_statistics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, manage_propertygraph_statistics_errors()}
  def manage_propertygraph_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/propertygraph/statistics"
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
  Manages the generation and use of RDF graph statistics.

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:ManageStatistics](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics)
  IAM action in that cluster.
  """
  @spec manage_sparql_statistics(map(), manage_sparql_statistics_input(), list()) ::
          {:ok, manage_sparql_statistics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, manage_sparql_statistics_errors()}
  def manage_sparql_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/sparql/statistics"
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
  Starts a Neptune bulk loader job to load data from an Amazon S3 bucket into a
  Neptune DB instance.

  See [Using the Amazon Neptune Bulk Loader to Ingest Data](https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:StartLoaderJob](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startloaderjob)
  IAM action in that cluster.
  """
  @spec start_loader_job(map(), start_loader_job_input(), list()) ::
          {:ok, start_loader_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_loader_job_errors()}
  def start_loader_job(%Client{} = client, input, options \\ []) do
    url_path = "/loader"
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
  Creates a new Neptune ML data processing job for processing the graph data
  exported from Neptune for training.

  See [The `dataprocessing` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:StartMLModelDataProcessingJob](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeldataprocessingjob)
  IAM action in that cluster.
  """
  @spec start_ml_data_processing_job(map(), start_ml_data_processing_job_input(), list()) ::
          {:ok, start_ml_data_processing_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_ml_data_processing_job_errors()}
  def start_ml_data_processing_job(%Client{} = client, input, options \\ []) do
    url_path = "/ml/dataprocessing"
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
  Creates a new Neptune ML model training job.

  See [Model training using the `modeltraining` command](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:StartMLModelTrainingJob](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltrainingjob)
  IAM action in that cluster.
  """
  @spec start_ml_model_training_job(map(), start_ml_model_training_job_input(), list()) ::
          {:ok, start_ml_model_training_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_ml_model_training_job_errors()}
  def start_ml_model_training_job(%Client{} = client, input, options \\ []) do
    url_path = "/ml/modeltraining"
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
  Creates a new model transform job.

  See [Use a trained model to generate new model artifacts](https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).

  When invoking this operation in a Neptune cluster that has IAM authentication
  enabled, the IAM user or role making the request must have a policy attached
  that allows the
  [neptune-db:StartMLModelTransformJob](https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltransformjob)
  IAM action in that cluster.
  """
  @spec start_ml_model_transform_job(map(), start_ml_model_transform_job_input(), list()) ::
          {:ok, start_ml_model_transform_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_ml_model_transform_job_errors()}
  def start_ml_model_transform_job(%Client{} = client, input, options \\ []) do
    url_path = "/ml/modeltransform"
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
