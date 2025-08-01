# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Athena do
  @moduledoc """
  Amazon Athena is an interactive query service that lets you use standard SQL
  to analyze data directly in Amazon S3.

  You can point Athena at your
  data in Amazon S3 and run ad-hoc queries and get results in seconds. Athena is
  serverless, so there is no infrastructure to set up or manage. You pay
  only for the queries you run. Athena scales automatically—executing queries
  in parallel—so results are fast, even with large datasets and complex queries.
  For more
  information, see [What is Amazon Athena](http://docs.aws.amazon.com/athena/latest/ug/what-is.html) in the *Amazon
  Athena User
  Guide*.

  If you connect to Athena using the JDBC driver, use version 1.1.0 of the
  driver or later with the Amazon Athena API. Earlier version drivers do not
  support the API. For more information and to download the driver, see [Accessing Amazon Athena with
  JDBC](https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_notebook_metadata_input() :: %{
        required("NotebookId") => String.t() | Atom.t()
      }
      
  """
  @type get_notebook_metadata_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_stage_plan_node() :: %{
        "Children" => list(query_stage_plan_node()),
        "Identifier" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "RemoteSources" => list(String.t() | Atom.t())
      }
      
  """
  @type query_stage_plan_node() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      named_query() :: %{
        "Database" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "NamedQueryId" => String.t() | Atom.t(),
        "QueryString" => String.t() | Atom.t(),
        "WorkGroup" => String.t() | Atom.t()
      }
      
  """
  @type named_query() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      data_catalog_summary() :: %{
        "CatalogName" => String.t() | Atom.t(),
        "ConnectionType" => list(any()),
        "Error" => String.t() | Atom.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type data_catalog_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      managed_query_results_configuration() :: %{
        "Enabled" => boolean(),
        "EncryptionConfiguration" => managed_query_results_encryption_configuration()
      }
      
  """
  @type managed_query_results_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_catalog_input() :: %{
        optional("DeleteCatalogOnly") => boolean(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type delete_data_catalog_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_query_execution_output() :: %{}
      
  """
  @type stop_query_execution_output() :: %{}

  @typedoc """

  ## Example:
      
      update_prepared_statement_input() :: %{
        optional("Description") => String.t() | Atom.t(),
        required("QueryStatement") => String.t() | Atom.t(),
        required("StatementName") => String.t() | Atom.t(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type update_prepared_statement_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      metadata_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type metadata_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_notebook_metadata_input() :: %{
        optional("ClientRequestToken") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t(),
        required("NotebookId") => String.t() | Atom.t()
      }
      
  """
  @type update_notebook_metadata_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "EncryptionOption" => list(any()),
        "KmsKey" => String.t() | Atom.t()
      }
      
  """
  @type encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_catalog_output() :: %{
        "DataCatalog" => data_catalog()
      }
      
  """
  @type get_data_catalog_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_reservation() :: %{
        "AllocatedDpus" => integer(),
        "CreationTime" => non_neg_integer(),
        "LastAllocation" => capacity_allocation(),
        "LastSuccessfulAllocationTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "Status" => list(any()),
        "TargetDpus" => integer()
      }
      
  """
  @type capacity_reservation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      result_set_metadata() :: %{
        "ColumnInfo" => list(column_info())
      }
      
  """
  @type result_set_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_prepared_statement_input() :: %{
        required("StatementName") => String.t() | Atom.t(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type get_prepared_statement_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      database() :: %{
        "Description" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Parameters" => map()
      }
      
  """
  @type database() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      session_summary() :: %{
        "Description" => String.t() | Atom.t(),
        "EngineVersion" => engine_version(),
        "NotebookVersion" => String.t() | Atom.t(),
        "SessionId" => String.t() | Atom.t(),
        "Status" => session_status()
      }
      
  """
  @type session_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_calculation_execution_status_request() :: %{
        required("CalculationExecutionId") => String.t() | Atom.t()
      }
      
  """
  @type get_calculation_execution_status_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_session_response() :: %{
        "Description" => String.t() | Atom.t(),
        "EngineConfiguration" => engine_configuration(),
        "EngineVersion" => String.t() | Atom.t(),
        "NotebookVersion" => String.t() | Atom.t(),
        "SessionConfiguration" => session_configuration(),
        "SessionId" => String.t() | Atom.t(),
        "Statistics" => session_statistics(),
        "Status" => session_status(),
        "WorkGroup" => String.t() | Atom.t()
      }
      
  """
  @type get_session_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_results_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "ResultSet" => result_set(),
        "UpdateCount" => float()
      }
      
  """
  @type get_query_results_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_notebook_metadata_output() :: %{
        "NotebookMetadata" => notebook_metadata()
      }
      
  """
  @type get_notebook_metadata_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_sessions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("NotebookId") => String.t() | Atom.t()
      }
      
  """
  @type list_notebook_sessions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_metadata_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "NotebookMetadataList" => list(notebook_metadata())
      }
      
  """
  @type list_notebook_metadata_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_work_group_output() :: %{}
      
  """
  @type create_work_group_output() :: %{}

  @typedoc """

  ## Example:
      
      start_session_request() :: %{
        optional("ClientRequestToken") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("NotebookVersion") => String.t() | Atom.t(),
        optional("SessionIdleTimeoutInMinutes") => integer(),
        required("EngineConfiguration") => engine_configuration(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type start_session_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_prepared_statement_output() :: %{}
      
  """
  @type delete_prepared_statement_output() :: %{}

  @typedoc """

  ## Example:
      
      get_capacity_reservation_input() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type get_capacity_reservation_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_notebook_output() :: %{}
      
  """
  @type update_notebook_output() :: %{}

  @typedoc """

  ## Example:
      
      result_configuration_updates() :: %{
        "AclConfiguration" => acl_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ExpectedBucketOwner" => String.t() | Atom.t(),
        "OutputLocation" => String.t() | Atom.t(),
        "RemoveAclConfiguration" => boolean(),
        "RemoveEncryptionConfiguration" => boolean(),
        "RemoveExpectedBucketOwner" => boolean(),
        "RemoveOutputLocation" => boolean()
      }
      
  """
  @type result_configuration_updates() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      engine_version() :: %{
        "EffectiveEngineVersion" => String.t() | Atom.t(),
        "SelectedEngineVersion" => String.t() | Atom.t()
      }
      
  """
  @type engine_version() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      engine_configuration() :: %{
        "AdditionalConfigs" => map(),
        "CoordinatorDpuSize" => integer(),
        "DefaultExecutorDpuSize" => integer(),
        "MaxConcurrentDpus" => integer(),
        "SparkProperties" => map()
      }
      
  """
  @type engine_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_capacity_assignment_configuration_input() :: %{
        required("CapacityReservationName") => String.t() | Atom.t()
      }
      
  """
  @type get_capacity_assignment_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_prepared_statement_input() :: %{
        optional("Description") => String.t() | Atom.t(),
        required("QueryStatement") => String.t() | Atom.t(),
        required("StatementName") => String.t() | Atom.t(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type create_prepared_statement_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_execution_input() :: %{
        required("QueryExecutionId") => String.t() | Atom.t()
      }
      
  """
  @type get_query_execution_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      result_reuse_information() :: %{
        "ReusedPreviousResult" => boolean()
      }
      
  """
  @type result_reuse_information() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_calculation_execution_response() :: %{
        "State" => list(any())
      }
      
  """
  @type stop_calculation_execution_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_runtime_statistics() :: %{
        "OutputStage" => query_stage(),
        "Rows" => query_runtime_statistics_rows(),
        "Timeline" => query_runtime_statistics_timeline()
      }
      
  """
  @type query_runtime_statistics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      column() :: %{
        "Comment" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }
      
  """
  @type column() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      athena_error() :: %{
        "ErrorCategory" => integer(),
        "ErrorMessage" => String.t() | Atom.t(),
        "ErrorType" => integer(),
        "Retryable" => boolean()
      }
      
  """
  @type athena_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_table_metadata_input() :: %{
        optional("Expression") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("WorkGroup") => String.t() | Atom.t(),
        required("CatalogName") => String.t() | Atom.t(),
        required("DatabaseName") => String.t() | Atom.t()
      }
      
  """
  @type list_table_metadata_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_d_p_u_sizes_output() :: %{
        "ApplicationDPUSizes" => list(application_d_p_u_sizes()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_application_d_p_u_sizes_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_notebook_metadata_output() :: %{}
      
  """
  @type update_notebook_metadata_output() :: %{}

  @typedoc """

  ## Example:
      
      work_group() :: %{
        "Configuration" => work_group_configuration(),
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "IdentityCenterApplicationArn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "State" => list(any())
      }
      
  """
  @type work_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_work_group_output() :: %{}
      
  """
  @type update_work_group_output() :: %{}

  @typedoc """

  ## Example:
      
      datum() :: %{
        "VarCharValue" => String.t() | Atom.t()
      }
      
  """
  @type datum() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_named_query_output() :: %{}
      
  """
  @type update_named_query_output() :: %{}

  @typedoc """

  ## Example:
      
      put_capacity_assignment_configuration_input() :: %{
        required("CapacityAssignments") => list(capacity_assignment()),
        required("CapacityReservationName") => String.t() | Atom.t()
      }
      
  """
  @type put_capacity_assignment_configuration_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_notebook_input() :: %{
        optional("ClientRequestToken") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type create_notebook_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_query_execution_input() :: %{
        required("QueryExecutionId") => String.t() | Atom.t()
      }
      
  """
  @type stop_query_execution_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      export_notebook_output() :: %{
        "NotebookMetadata" => notebook_metadata(),
        "Payload" => String.t() | Atom.t()
      }
      
  """
  @type export_notebook_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_calculation_execution_status_response() :: %{
        "Statistics" => calculation_statistics(),
        "Status" => calculation_status()
      }
      
  """
  @type get_calculation_execution_status_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_capacity_reservations_output() :: %{
        "CapacityReservations" => list(capacity_reservation()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_capacity_reservations_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_execution_output() :: %{
        "QueryExecution" => query_execution()
      }
      
  """
  @type get_query_execution_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_named_query_input() :: %{
        required("NamedQueryId") => String.t() | Atom.t()
      }
      
  """
  @type get_named_query_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_session_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "SessionId" => String.t() | Atom.t()
      }
      
  """
  @type notebook_session_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_assignment_configuration() :: %{
        "CapacityAssignments" => list(capacity_assignment()),
        "CapacityReservationName" => String.t() | Atom.t()
      }
      
  """
  @type capacity_assignment_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_named_query_input() :: %{
        required("NamedQueryIds") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_named_query_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "Reason" => list(any())
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      calculation_statistics() :: %{
        "DpuExecutionInMillis" => float(),
        "Progress" => String.t() | Atom.t()
      }
      
  """
  @type calculation_statistics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      prepared_statement_summary() :: %{
        "LastModifiedTime" => non_neg_integer(),
        "StatementName" => String.t() | Atom.t()
      }
      
  """
  @type prepared_statement_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_session_request() :: %{
        required("SessionId") => String.t() | Atom.t()
      }
      
  """
  @type get_session_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notebook_output() :: %{}
      
  """
  @type delete_notebook_output() :: %{}

  @typedoc """

  ## Example:
      
      list_prepared_statements_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type list_prepared_statements_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      session_configuration() :: %{
        "EncryptionConfiguration" => encryption_configuration(),
        "ExecutionRole" => String.t() | Atom.t(),
        "IdleTimeoutSeconds" => float(),
        "WorkingDirectory" => String.t() | Atom.t()
      }
      
  """
  @type session_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_capacity_reservation_input() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type cancel_capacity_reservation_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      data_catalog() :: %{
        "ConnectionType" => list(any()),
        "Description" => String.t() | Atom.t(),
        "Error" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Parameters" => map(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type data_catalog() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_prepared_statement_output() :: %{}
      
  """
  @type create_prepared_statement_output() :: %{}

  @typedoc """

  ## Example:
      
      result_reuse_configuration() :: %{
        "ResultReuseByAgeConfiguration" => result_reuse_by_age_configuration()
      }
      
  """
  @type result_reuse_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_calculation_execution_response() :: %{
        "CalculationExecutionId" => String.t() | Atom.t(),
        "State" => list(any())
      }
      
  """
  @type start_calculation_execution_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_prepared_statement_input() :: %{
        required("PreparedStatementNames") => list(String.t() | Atom.t()),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type batch_get_prepared_statement_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      export_notebook_input() :: %{
        required("NotebookId") => String.t() | Atom.t()
      }
      
  """
  @type export_notebook_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_calculation_executions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("StateFilter") => list(any()),
        required("SessionId") => String.t() | Atom.t()
      }
      
  """
  @type list_calculation_executions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_session_request() :: %{
        required("SessionId") => String.t() | Atom.t()
      }
      
  """
  @type terminate_session_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_catalog_input() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("Parameters") => map(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | Atom.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_data_catalog_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_databases_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("WorkGroup") => String.t() | Atom.t(),
        required("CatalogName") => String.t() | Atom.t()
      }
      
  """
  @type list_databases_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_capacity_assignment_configuration_output() :: %{
        "CapacityAssignmentConfiguration" => capacity_assignment_configuration()
      }
      
  """
  @type get_capacity_assignment_configuration_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_capacity_reservation_input() :: %{
        required("Name") => String.t() | Atom.t(),
        required("TargetDpus") => integer()
      }
      
  """
  @type update_capacity_reservation_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessed_query_execution_id() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "QueryExecutionId" => String.t() | Atom.t()
      }
      
  """
  @type unprocessed_query_execution_id() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      terminate_session_response() :: %{
        "State" => list(any())
      }
      
  """
  @type terminate_session_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_named_queries_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type list_named_queries_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_named_query_input() :: %{
        optional("ClientRequestToken") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("WorkGroup") => String.t() | Atom.t(),
        required("Database") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t(),
        required("QueryString") => String.t() | Atom.t()
      }
      
  """
  @type create_named_query_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      table_metadata() :: %{
        "Columns" => list(column()),
        "CreateTime" => non_neg_integer(),
        "LastAccessTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "Parameters" => map(),
        "PartitionKeys" => list(column()),
        "TableType" => String.t() | Atom.t()
      }
      
  """
  @type table_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_sessions_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Sessions" => list(session_summary())
      }
      
  """
  @type list_sessions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      managed_query_results_configuration_updates() :: %{
        "Enabled" => boolean(),
        "EncryptionConfiguration" => managed_query_results_encryption_configuration(),
        "RemoveEncryptionConfiguration" => boolean()
      }
      
  """
  @type managed_query_results_configuration_updates() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_database_output() :: %{
        "Database" => database()
      }
      
  """
  @type get_database_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_named_query_input() :: %{
        optional("Description") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t(),
        required("NamedQueryId") => String.t() | Atom.t(),
        required("QueryString") => String.t() | Atom.t()
      }
      
  """
  @type update_named_query_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      calculation_configuration() :: %{
        "CodeBlock" => String.t() | Atom.t()
      }
      
  """
  @type calculation_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_table_metadata_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "TableMetadataList" => list(table_metadata())
      }
      
  """
  @type list_table_metadata_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      application_d_p_u_sizes() :: %{
        "ApplicationRuntimeId" => String.t() | Atom.t(),
        "SupportedDPUSizes" => list(integer())
      }
      
  """
  @type application_d_p_u_sizes() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_execution_context() :: %{
        "Catalog" => String.t() | Atom.t(),
        "Database" => String.t() | Atom.t()
      }
      
  """
  @type query_execution_context() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "AthenaErrorCode" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_assignment() :: %{
        "WorkGroupNames" => list(String.t() | Atom.t())
      }
      
  """
  @type capacity_assignment() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      calculation_result() :: %{
        "ResultS3Uri" => String.t() | Atom.t(),
        "ResultType" => String.t() | Atom.t(),
        "StdErrorS3Uri" => String.t() | Atom.t(),
        "StdOutS3Uri" => String.t() | Atom.t()
      }
      
  """
  @type calculation_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      row() :: %{
        "Data" => list(datum())
      }
      
  """
  @type row() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_capacity_reservation_output() :: %{}
      
  """
  @type update_capacity_reservation_output() :: %{}

  @typedoc """

  ## Example:
      
      list_databases_output() :: %{
        "DatabaseList" => list(database()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_databases_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_data_catalog_input() :: %{
        optional("WorkGroup") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type get_data_catalog_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_notebook_sessions_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "NotebookSessionsList" => list(notebook_session_summary())
      }
      
  """
  @type list_notebook_sessions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_stage() :: %{
        "ExecutionTime" => float(),
        "InputBytes" => float(),
        "InputRows" => float(),
        "OutputBytes" => float(),
        "OutputRows" => float(),
        "QueryStagePlan" => query_stage_plan_node(),
        "StageId" => float(),
        "State" => String.t() | Atom.t(),
        "SubStages" => list(query_stage())
      }
      
  """
  @type query_stage() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_executors_response() :: %{
        "ExecutorsSummary" => list(executors_summary()),
        "NextToken" => String.t() | Atom.t(),
        "SessionId" => String.t() | Atom.t()
      }
      
  """
  @type list_executors_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_capacity_reservation_input() :: %{
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type delete_capacity_reservation_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_notebook_output() :: %{
        "NotebookId" => String.t() | Atom.t()
      }
      
  """
  @type create_notebook_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_capacity_reservations_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_capacity_reservations_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_execution() :: %{
        "EngineVersion" => engine_version(),
        "ExecutionParameters" => list(String.t() | Atom.t()),
        "ManagedQueryResultsConfiguration" => managed_query_results_configuration(),
        "Query" => String.t() | Atom.t(),
        "QueryExecutionContext" => query_execution_context(),
        "QueryExecutionId" => String.t() | Atom.t(),
        "QueryResultsS3AccessGrantsConfiguration" => query_results_s3_access_grants_configuration(),
        "ResultConfiguration" => result_configuration(),
        "ResultReuseConfiguration" => result_reuse_configuration(),
        "StatementType" => list(any()),
        "Statistics" => query_execution_statistics(),
        "Status" => query_execution_status(),
        "SubstatementType" => String.t() | Atom.t(),
        "WorkGroup" => String.t() | Atom.t()
      }
      
  """
  @type query_execution() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_metadata_output() :: %{
        "TableMetadata" => table_metadata()
      }
      
  """
  @type get_table_metadata_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_capacity_reservation_input() :: %{
        optional("Tags") => list(tag()),
        required("Name") => String.t() | Atom.t(),
        required("TargetDpus") => integer()
      }
      
  """
  @type create_capacity_reservation_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_data_catalog_output() :: %{
        "DataCatalog" => data_catalog()
      }
      
  """
  @type delete_data_catalog_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_notebook_input() :: %{
        optional("ClientRequestToken") => String.t() | Atom.t(),
        optional("SessionId") => String.t() | Atom.t(),
        required("NotebookId") => String.t() | Atom.t(),
        required("Payload") => String.t() | Atom.t(),
        required("Type") => list(any())
      }
      
  """
  @type update_notebook_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_named_query_output() :: %{
        "NamedQueries" => list(named_query()),
        "UnprocessedNamedQueryIds" => list(unprocessed_named_query_id())
      }
      
  """
  @type batch_get_named_query_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_database_input() :: %{
        optional("WorkGroup") => String.t() | Atom.t(),
        required("CatalogName") => String.t() | Atom.t(),
        required("DatabaseName") => String.t() | Atom.t()
      }
      
  """
  @type get_database_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_sessions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("StateFilter") => list(any()),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type list_sessions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_calculation_execution_response() :: %{
        "CalculationExecutionId" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "Result" => calculation_result(),
        "SessionId" => String.t() | Atom.t(),
        "Statistics" => calculation_statistics(),
        "Status" => calculation_status(),
        "WorkingDirectory" => String.t() | Atom.t()
      }
      
  """
  @type get_calculation_execution_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      prepared_statement() :: %{
        "Description" => String.t() | Atom.t(),
        "LastModifiedTime" => non_neg_integer(),
        "QueryStatement" => String.t() | Atom.t(),
        "StatementName" => String.t() | Atom.t(),
        "WorkGroupName" => String.t() | Atom.t()
      }
      
  """
  @type prepared_statement() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_work_group_output() :: %{
        "WorkGroup" => work_group()
      }
      
  """
  @type get_work_group_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_work_group_output() :: %{}
      
  """
  @type delete_work_group_output() :: %{}

  @typedoc """

  ## Example:
      
      create_work_group_input() :: %{
        optional("Configuration") => work_group_configuration(),
        optional("Description") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type create_work_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("ResourceARN") => String.t() | Atom.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_query_execution_input() :: %{
        required("QueryExecutionIds") => list(String.t() | Atom.t())
      }
      
  """
  @type batch_get_query_execution_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_application_d_p_u_sizes_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_application_d_p_u_sizes_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_data_catalog_output() :: %{
        "DataCatalog" => data_catalog()
      }
      
  """
  @type create_data_catalog_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_runtime_statistics_input() :: %{
        required("QueryExecutionId") => String.t() | Atom.t()
      }
      
  """
  @type get_query_runtime_statistics_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessed_prepared_statement_name() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "StatementName" => String.t() | Atom.t()
      }
      
  """
  @type unprocessed_prepared_statement_name() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      capacity_allocation() :: %{
        "RequestCompletionTime" => non_neg_integer(),
        "RequestTime" => non_neg_integer(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | Atom.t()
      }
      
  """
  @type capacity_allocation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_execution_status() :: %{
        "AthenaError" => athena_error(),
        "CompletionDateTime" => non_neg_integer(),
        "State" => list(any()),
        "StateChangeReason" => String.t() | Atom.t(),
        "SubmissionDateTime" => non_neg_integer()
      }
      
  """
  @type query_execution_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      executors_summary() :: %{
        "ExecutorId" => String.t() | Atom.t(),
        "ExecutorSize" => float(),
        "ExecutorState" => list(any()),
        "ExecutorType" => list(any()),
        "StartDateTime" => float(),
        "TerminationDateTime" => float()
      }
      
  """
  @type executors_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      update_work_group_input() :: %{
        optional("ConfigurationUpdates") => work_group_configuration_updates(),
        optional("Description") => String.t() | Atom.t(),
        optional("State") => list(any()),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type update_work_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      put_capacity_assignment_configuration_output() :: %{}
      
  """
  @type put_capacity_assignment_configuration_output() :: %{}

  @typedoc """

  ## Example:
      
      update_data_catalog_input() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("Parameters") => map(),
        required("Name") => String.t() | Atom.t(),
        required("Type") => list(any())
      }
      
  """
  @type update_data_catalog_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_calculation_execution_code_response() :: %{
        "CodeBlock" => String.t() | Atom.t()
      }
      
  """
  @type get_calculation_execution_code_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      work_group_configuration() :: %{
        "AdditionalConfiguration" => String.t() | Atom.t(),
        "BytesScannedCutoffPerQuery" => float(),
        "CustomerContentEncryptionConfiguration" => customer_content_encryption_configuration(),
        "EnableMinimumEncryptionConfiguration" => boolean(),
        "EnforceWorkGroupConfiguration" => boolean(),
        "EngineVersion" => engine_version(),
        "ExecutionRole" => String.t() | Atom.t(),
        "IdentityCenterConfiguration" => identity_center_configuration(),
        "ManagedQueryResultsConfiguration" => managed_query_results_configuration(),
        "PublishCloudWatchMetricsEnabled" => boolean(),
        "QueryResultsS3AccessGrantsConfiguration" => query_results_s3_access_grants_configuration(),
        "RequesterPaysEnabled" => boolean(),
        "ResultConfiguration" => result_configuration()
      }
      
  """
  @type work_group_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_calculation_execution_request() :: %{
        required("CalculationExecutionId") => String.t() | Atom.t()
      }
      
  """
  @type get_calculation_execution_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      work_group_configuration_updates() :: %{
        "AdditionalConfiguration" => String.t() | Atom.t(),
        "BytesScannedCutoffPerQuery" => float(),
        "CustomerContentEncryptionConfiguration" => customer_content_encryption_configuration(),
        "EnableMinimumEncryptionConfiguration" => boolean(),
        "EnforceWorkGroupConfiguration" => boolean(),
        "EngineVersion" => engine_version(),
        "ExecutionRole" => String.t() | Atom.t(),
        "ManagedQueryResultsConfigurationUpdates" => managed_query_results_configuration_updates(),
        "PublishCloudWatchMetricsEnabled" => boolean(),
        "QueryResultsS3AccessGrantsConfiguration" => query_results_s3_access_grants_configuration(),
        "RemoveBytesScannedCutoffPerQuery" => boolean(),
        "RemoveCustomerContentEncryptionConfiguration" => boolean(),
        "RequesterPaysEnabled" => boolean(),
        "ResultConfigurationUpdates" => result_configuration_updates()
      }
      
  """
  @type work_group_configuration_updates() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_work_group_input() :: %{
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type get_work_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_execution_input() :: %{
        optional("ClientRequestToken") => String.t() | Atom.t(),
        optional("ExecutionParameters") => list(String.t() | Atom.t()),
        optional("QueryExecutionContext") => query_execution_context(),
        optional("ResultConfiguration") => result_configuration(),
        optional("ResultReuseConfiguration") => result_reuse_configuration(),
        optional("WorkGroup") => String.t() | Atom.t(),
        required("QueryString") => String.t() | Atom.t()
      }
      
  """
  @type start_query_execution_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_query_executions_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type list_query_executions_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_prepared_statement_output() :: %{}
      
  """
  @type update_prepared_statement_output() :: %{}

  @typedoc """

  ## Example:
      
      start_session_response() :: %{
        "SessionId" => String.t() | Atom.t(),
        "State" => list(any())
      }
      
  """
  @type start_session_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_data_catalog_output() :: %{}
      
  """
  @type update_data_catalog_output() :: %{}

  @typedoc """

  ## Example:
      
      get_capacity_reservation_output() :: %{
        "CapacityReservation" => capacity_reservation()
      }
      
  """
  @type get_capacity_reservation_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      result_configuration() :: %{
        "AclConfiguration" => acl_configuration(),
        "EncryptionConfiguration" => encryption_configuration(),
        "ExpectedBucketOwner" => String.t() | Atom.t(),
        "OutputLocation" => String.t() | Atom.t()
      }
      
  """
  @type result_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_calculation_execution_code_request() :: %{
        required("CalculationExecutionId") => String.t() | Atom.t()
      }
      
  """
  @type get_calculation_execution_code_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_runtime_statistics_rows() :: %{
        "InputBytes" => float(),
        "InputRows" => float(),
        "OutputBytes" => float(),
        "OutputRows" => float()
      }
      
  """
  @type query_runtime_statistics_rows() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      import_notebook_input() :: %{
        optional("ClientRequestToken") => String.t() | Atom.t(),
        optional("NotebookS3LocationUri") => String.t() | Atom.t(),
        optional("Payload") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t(),
        required("Type") => list(any()),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type import_notebook_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("ResourceARN") => String.t() | Atom.t(),
        required("TagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      filter_definition() :: %{
        "Name" => String.t() | Atom.t()
      }
      
  """
  @type filter_definition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_presigned_notebook_url_response() :: %{
        "AuthToken" => String.t() | Atom.t(),
        "AuthTokenExpirationTime" => float(),
        "NotebookUrl" => String.t() | Atom.t()
      }
      
  """
  @type create_presigned_notebook_url_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_runtime_statistics_output() :: %{
        "QueryRuntimeStatistics" => query_runtime_statistics()
      }
      
  """
  @type get_query_runtime_statistics_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      import_notebook_output() :: %{
        "NotebookId" => String.t() | Atom.t()
      }
      
  """
  @type import_notebook_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      result_reuse_by_age_configuration() :: %{
        "Enabled" => boolean(),
        "MaxAgeInMinutes" => integer()
      }
      
  """
  @type result_reuse_by_age_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_prepared_statement_input() :: %{
        required("StatementName") => String.t() | Atom.t(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type delete_prepared_statement_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_calculation_executions_response() :: %{
        "Calculations" => list(calculation_summary()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_calculation_executions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      result_set() :: %{
        "ResultSetMetadata" => result_set_metadata(),
        "Rows" => list(row())
      }
      
  """
  @type result_set() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_results_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("QueryResultType") => list(any()),
        required("QueryExecutionId") => String.t() | Atom.t()
      }
      
  """
  @type get_query_results_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("ResourceARN") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      get_session_status_response() :: %{
        "SessionId" => String.t() | Atom.t(),
        "Status" => session_status()
      }
      
  """
  @type get_session_status_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      identity_center_configuration() :: %{
        "EnableIdentityCenter" => boolean(),
        "IdentityCenterInstanceArn" => String.t() | Atom.t()
      }
      
  """
  @type identity_center_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      stop_calculation_execution_request() :: %{
        required("CalculationExecutionId") => String.t() | Atom.t()
      }
      
  """
  @type stop_calculation_execution_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_results_s3_access_grants_configuration() :: %{
        "AuthenticationType" => list(any()),
        "CreateUserLevelPrefix" => boolean(),
        "EnableS3AccessGrants" => boolean()
      }
      
  """
  @type query_results_s3_access_grants_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_presigned_notebook_url_request() :: %{
        required("SessionId") => String.t() | Atom.t()
      }
      
  """
  @type create_presigned_notebook_url_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      calculation_summary() :: %{
        "CalculationExecutionId" => String.t() | Atom.t(),
        "Description" => String.t() | Atom.t(),
        "Status" => calculation_status()
      }
      
  """
  @type calculation_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_work_groups_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "WorkGroups" => list(work_group_summary())
      }
      
  """
  @type list_work_groups_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_prepared_statement_output() :: %{
        "PreparedStatements" => list(prepared_statement()),
        "UnprocessedPreparedStatementNames" => list(unprocessed_prepared_statement_name())
      }
      
  """
  @type batch_get_prepared_statement_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_runtime_statistics_timeline() :: %{
        "EngineExecutionTimeInMillis" => float(),
        "QueryPlanningTimeInMillis" => float(),
        "QueryQueueTimeInMillis" => float(),
        "ServicePreProcessingTimeInMillis" => float(),
        "ServiceProcessingTimeInMillis" => float(),
        "TotalExecutionTimeInMillis" => float()
      }
      
  """
  @type query_runtime_statistics_timeline() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_catalogs_output() :: %{
        "DataCatalogsSummary" => list(data_catalog_summary()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_data_catalogs_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_notebook_input() :: %{
        required("NotebookId") => String.t() | Atom.t()
      }
      
  """
  @type delete_notebook_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_execution_output() :: %{
        "QueryExecutionId" => String.t() | Atom.t()
      }
      
  """
  @type start_query_execution_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_executors_request() :: %{
        optional("ExecutorStateFilter") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("SessionId") => String.t() | Atom.t()
      }
      
  """
  @type list_executors_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_named_query_input() :: %{
        required("NamedQueryId") => String.t() | Atom.t()
      }
      
  """
  @type delete_named_query_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      unprocessed_named_query_id() :: %{
        "ErrorCode" => String.t() | Atom.t(),
        "ErrorMessage" => String.t() | Atom.t(),
        "NamedQueryId" => String.t() | Atom.t()
      }
      
  """
  @type unprocessed_named_query_id() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      work_group_summary() :: %{
        "CreationTime" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "EngineVersion" => engine_version(),
        "IdentityCenterApplicationArn" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "State" => list(any())
      }
      
  """
  @type work_group_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_work_groups_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_work_groups_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_session_status_request() :: %{
        required("SessionId") => String.t() | Atom.t()
      }
      
  """
  @type get_session_status_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_capacity_reservation_output() :: %{}
      
  """
  @type cancel_capacity_reservation_output() :: %{}

  @typedoc """

  ## Example:
      
      managed_query_results_encryption_configuration() :: %{
        "KmsKey" => String.t() | Atom.t()
      }
      
  """
  @type managed_query_results_encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_query_executions_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "QueryExecutionIds" => list(String.t() | Atom.t())
      }
      
  """
  @type list_query_executions_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      calculation_status() :: %{
        "CompletionDateTime" => non_neg_integer(),
        "State" => list(any()),
        "StateChangeReason" => String.t() | Atom.t(),
        "SubmissionDateTime" => non_neg_integer()
      }
      
  """
  @type calculation_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      column_info() :: %{
        "CaseSensitive" => boolean(),
        "CatalogName" => String.t() | Atom.t(),
        "Label" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Nullable" => list(any()),
        "Precision" => integer(),
        "Scale" => integer(),
        "SchemaName" => String.t() | Atom.t(),
        "TableName" => String.t() | Atom.t(),
        "Type" => String.t() | Atom.t()
      }
      
  """
  @type column_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_data_catalogs_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type list_data_catalogs_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      batch_get_query_execution_output() :: %{
        "QueryExecutions" => list(query_execution()),
        "UnprocessedQueryExecutionIds" => list(unprocessed_query_execution_id())
      }
      
  """
  @type batch_get_query_execution_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      session_status() :: %{
        "EndDateTime" => non_neg_integer(),
        "IdleSinceDateTime" => non_neg_integer(),
        "LastModifiedDateTime" => non_neg_integer(),
        "StartDateTime" => non_neg_integer(),
        "State" => list(any()),
        "StateChangeReason" => String.t() | Atom.t()
      }
      
  """
  @type session_status() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_calculation_execution_request() :: %{
        optional("CalculationConfiguration") => calculation_configuration(),
        optional("ClientRequestToken") => String.t() | Atom.t(),
        optional("CodeBlock") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        required("SessionId") => String.t() | Atom.t()
      }
      
  """
  @type start_calculation_execution_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_table_metadata_input() :: %{
        optional("WorkGroup") => String.t() | Atom.t(),
        required("CatalogName") => String.t() | Atom.t(),
        required("DatabaseName") => String.t() | Atom.t(),
        required("TableName") => String.t() | Atom.t()
      }
      
  """
  @type get_table_metadata_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_engine_versions_output() :: %{
        "EngineVersions" => list(engine_version()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_engine_versions_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      notebook_metadata() :: %{
        "CreationTime" => non_neg_integer(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "NotebookId" => String.t() | Atom.t(),
        "Type" => list(any()),
        "WorkGroup" => String.t() | Atom.t()
      }
      
  """
  @type notebook_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_capacity_reservation_output() :: %{}
      
  """
  @type create_capacity_reservation_output() :: %{}

  @typedoc """

  ## Example:
      
      get_named_query_output() :: %{
        "NamedQuery" => named_query()
      }
      
  """
  @type get_named_query_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      acl_configuration() :: %{
        "S3AclOption" => list(any())
      }
      
  """
  @type acl_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_named_queries_output() :: %{
        "NamedQueryIds" => list(String.t() | Atom.t()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_named_queries_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_named_query_output() :: %{}
      
  """
  @type delete_named_query_output() :: %{}

  @typedoc """

  ## Example:
      
      session_statistics() :: %{
        "DpuExecutionInMillis" => float()
      }
      
  """
  @type session_statistics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_engine_versions_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_engine_versions_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_named_query_output() :: %{
        "NamedQueryId" => String.t() | Atom.t()
      }
      
  """
  @type create_named_query_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_prepared_statements_output() :: %{
        "NextToken" => String.t() | Atom.t(),
        "PreparedStatements" => list(prepared_statement_summary())
      }
      
  """
  @type list_prepared_statements_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      session_already_exists_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type session_already_exists_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      customer_content_encryption_configuration() :: %{
        "KmsKey" => String.t() | Atom.t()
      }
      
  """
  @type customer_content_encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_capacity_reservation_output() :: %{}
      
  """
  @type delete_capacity_reservation_output() :: %{}

  @typedoc """

  ## Example:
      
      list_notebook_metadata_input() :: %{
        optional("Filters") => filter_definition(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type list_notebook_metadata_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_work_group_input() :: %{
        optional("RecursiveDeleteOption") => boolean(),
        required("WorkGroup") => String.t() | Atom.t()
      }
      
  """
  @type delete_work_group_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      query_execution_statistics() :: %{
        "DataManifestLocation" => String.t() | Atom.t(),
        "DataScannedInBytes" => float(),
        "EngineExecutionTimeInMillis" => float(),
        "QueryPlanningTimeInMillis" => float(),
        "QueryQueueTimeInMillis" => float(),
        "ResultReuseInformation" => result_reuse_information(),
        "ServicePreProcessingTimeInMillis" => float(),
        "ServiceProcessingTimeInMillis" => float(),
        "TotalExecutionTimeInMillis" => float()
      }
      
  """
  @type query_execution_statistics() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      get_prepared_statement_output() :: %{
        "PreparedStatement" => prepared_statement()
      }
      
  """
  @type get_prepared_statement_output() :: %{String.t() | Atom.t() => any()}

  @type batch_get_named_query_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type batch_get_prepared_statement_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type batch_get_query_execution_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type cancel_capacity_reservation_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type create_capacity_reservation_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type create_data_catalog_errors() :: internal_server_exception() | invalid_request_exception()

  @type create_named_query_errors() :: internal_server_exception() | invalid_request_exception()

  @type create_notebook_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type create_prepared_statement_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type create_presigned_notebook_url_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type create_work_group_errors() :: internal_server_exception() | invalid_request_exception()

  @type delete_capacity_reservation_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type delete_data_catalog_errors() :: internal_server_exception() | invalid_request_exception()

  @type delete_named_query_errors() :: internal_server_exception() | invalid_request_exception()

  @type delete_notebook_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type delete_prepared_statement_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type delete_work_group_errors() :: internal_server_exception() | invalid_request_exception()

  @type export_notebook_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type get_calculation_execution_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_calculation_execution_code_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_calculation_execution_status_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_capacity_assignment_configuration_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type get_capacity_reservation_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type get_data_catalog_errors() :: internal_server_exception() | invalid_request_exception()

  @type get_database_errors() ::
          internal_server_exception() | invalid_request_exception() | metadata_exception()

  @type get_named_query_errors() :: internal_server_exception() | invalid_request_exception()

  @type get_notebook_metadata_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type get_prepared_statement_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_query_execution_errors() :: internal_server_exception() | invalid_request_exception()

  @type get_query_results_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type get_query_runtime_statistics_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type get_session_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_session_status_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type get_table_metadata_errors() ::
          internal_server_exception() | invalid_request_exception() | metadata_exception()

  @type get_work_group_errors() :: internal_server_exception() | invalid_request_exception()

  @type import_notebook_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_application_d_p_u_sizes_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_calculation_executions_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_capacity_reservations_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type list_data_catalogs_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_databases_errors() ::
          internal_server_exception() | invalid_request_exception() | metadata_exception()

  @type list_engine_versions_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_executors_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_named_queries_errors() :: internal_server_exception() | invalid_request_exception()

  @type list_notebook_metadata_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_notebook_sessions_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_prepared_statements_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type list_query_executions_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type list_sessions_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_table_metadata_errors() ::
          internal_server_exception() | invalid_request_exception() | metadata_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type list_work_groups_errors() :: internal_server_exception() | invalid_request_exception()

  @type put_capacity_assignment_configuration_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type start_calculation_execution_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type start_query_execution_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type start_session_errors() ::
          session_already_exists_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type stop_calculation_execution_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type stop_query_execution_errors() :: internal_server_exception() | invalid_request_exception()

  @type tag_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type terminate_session_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_capacity_reservation_errors() ::
          internal_server_exception() | invalid_request_exception()

  @type update_data_catalog_errors() :: internal_server_exception() | invalid_request_exception()

  @type update_named_query_errors() :: internal_server_exception() | invalid_request_exception()

  @type update_notebook_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type update_notebook_metadata_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type update_prepared_statement_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type update_work_group_errors() :: internal_server_exception() | invalid_request_exception()

  def metadata do
    %{
      api_version: "2017-05-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "athena",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Athena",
      signature_version: "v4",
      signing_name: "athena",
      target_prefix: "AmazonAthena"
    }
  end

  @doc """
  Returns the details of a single named query or a list of up to 50 queries, which
  you
  provide as an array of query ID strings.

  Requires you to have access to the workgroup in
  which the queries were saved. Use `ListNamedQueriesInput` to get the
  list of named query IDs in the specified workgroup. If information could not be
  retrieved for a submitted query ID, information about the query ID submitted is
  listed
  under `UnprocessedNamedQueryId`. Named queries differ from executed
  queries. Use `BatchGetQueryExecutionInput` to get details about each
  unique query execution, and `ListQueryExecutionsInput` to get a list of
  query execution IDs.
  """
  @spec batch_get_named_query(map(), batch_get_named_query_input(), list()) ::
          {:ok, batch_get_named_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_named_query_errors()}
  def batch_get_named_query(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetNamedQuery", input, options)
  end

  @doc """
  Returns the details of a single prepared statement or a list of up to 256
  prepared
  statements for the array of prepared statement names that you provide.

  Requires you to
  have access to the workgroup to which the prepared statements belong. If a
  prepared
  statement cannot be retrieved for the name specified, the statement is listed in
  `UnprocessedPreparedStatementNames`.
  """
  @spec batch_get_prepared_statement(map(), batch_get_prepared_statement_input(), list()) ::
          {:ok, batch_get_prepared_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_prepared_statement_errors()}
  def batch_get_prepared_statement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetPreparedStatement", input, options)
  end

  @doc """
  Returns the details of a single query execution or a list of up to 50 query
  executions, which you provide as an array of query execution ID strings.

  Requires you to
  have access to the workgroup in which the queries ran. To get a list of query
  execution
  IDs, use `ListQueryExecutionsInput$WorkGroup`. Query executions differ
  from named (saved) queries. Use `BatchGetNamedQueryInput` to get details
  about named queries.
  """
  @spec batch_get_query_execution(map(), batch_get_query_execution_input(), list()) ::
          {:ok, batch_get_query_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_query_execution_errors()}
  def batch_get_query_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetQueryExecution", input, options)
  end

  @doc """
  Cancels the capacity reservation with the specified name.

  Cancelled reservations
  remain in your account and will be deleted 45 days after cancellation. During
  the 45
  days, you cannot re-purpose or reuse a reservation that has been cancelled, but
  you can
  refer to its tags and view it for historical reference.
  """
  @spec cancel_capacity_reservation(map(), cancel_capacity_reservation_input(), list()) ::
          {:ok, cancel_capacity_reservation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_capacity_reservation_errors()}
  def cancel_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelCapacityReservation", input, options)
  end

  @doc """
  Creates a capacity reservation with the specified name and number of requested
  data
  processing units.
  """
  @spec create_capacity_reservation(map(), create_capacity_reservation_input(), list()) ::
          {:ok, create_capacity_reservation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_capacity_reservation_errors()}
  def create_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCapacityReservation", input, options)
  end

  @doc """
  Creates (registers) a data catalog with the specified name and properties.

  Catalogs
  created are visible to all users of the same Amazon Web Services account.

  For a `FEDERATED` catalog, this API operation creates the following
  resources.

    *
  CFN Stack Name with a maximum length of 128 characters and prefix
  `athenafederatedcatalog-CATALOG_NAME_SANITIZED` with length 23
  characters.

    *
  Lambda Function Name with a maximum length of 64 characters and prefix
  `athenafederatedcatalog_CATALOG_NAME_SANITIZED` with length 23
  characters.

    *
  Glue Connection Name with a maximum length of 255 characters and a prefix
  `athenafederatedcatalog_CATALOG_NAME_SANITIZED` with length 23
  characters.
  """
  @spec create_data_catalog(map(), create_data_catalog_input(), list()) ::
          {:ok, create_data_catalog_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_catalog_errors()}
  def create_data_catalog(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDataCatalog", input, options)
  end

  @doc """
  Creates a named query in the specified workgroup.

  Requires that you have access to the
  workgroup.
  """
  @spec create_named_query(map(), create_named_query_input(), list()) ::
          {:ok, create_named_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_named_query_errors()}
  def create_named_query(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateNamedQuery", input, options)
  end

  @doc """
  Creates an empty `ipynb` file in the specified Apache Spark enabled
  workgroup.

  Throws an error if a file in the workgroup with the same name already
  exists.
  """
  @spec create_notebook(map(), create_notebook_input(), list()) ::
          {:ok, create_notebook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_notebook_errors()}
  def create_notebook(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateNotebook", input, options)
  end

  @doc """
  Creates a prepared statement for use with SQL queries in Athena.
  """
  @spec create_prepared_statement(map(), create_prepared_statement_input(), list()) ::
          {:ok, create_prepared_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_prepared_statement_errors()}
  def create_prepared_statement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePreparedStatement", input, options)
  end

  @doc """
  Gets an authentication token and the URL at which the notebook can be accessed.

  During
  programmatic access, `CreatePresignedNotebookUrl` must be called every 10
  minutes to refresh the authentication token. For information about granting
  programmatic
  access, see [Grant programmatic
  access](https://docs.aws.amazon.com/athena/latest/ug/setting-up.html#setting-up-grant-programmatic-access).
  """
  @spec create_presigned_notebook_url(map(), create_presigned_notebook_url_request(), list()) ::
          {:ok, create_presigned_notebook_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_presigned_notebook_url_errors()}
  def create_presigned_notebook_url(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePresignedNotebookUrl", input, options)
  end

  @doc """
  Creates a workgroup with the specified name.

  A workgroup can be an Apache Spark
  enabled workgroup or an Athena SQL workgroup.
  """
  @spec create_work_group(map(), create_work_group_input(), list()) ::
          {:ok, create_work_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_work_group_errors()}
  def create_work_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWorkGroup", input, options)
  end

  @doc """
  Deletes a cancelled capacity reservation.

  A reservation must be cancelled before it
  can be deleted. A deleted reservation is immediately removed from your account
  and can
  no longer be referenced, including by its ARN. A deleted reservation cannot be
  called by
  `GetCapacityReservation`, and deleted reservations do not appear in the
  output of `ListCapacityReservations`.
  """
  @spec delete_capacity_reservation(map(), delete_capacity_reservation_input(), list()) ::
          {:ok, delete_capacity_reservation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_capacity_reservation_errors()}
  def delete_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCapacityReservation", input, options)
  end

  @doc """
  Deletes a data catalog.
  """
  @spec delete_data_catalog(map(), delete_data_catalog_input(), list()) ::
          {:ok, delete_data_catalog_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_catalog_errors()}
  def delete_data_catalog(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDataCatalog", input, options)
  end

  @doc """
  Deletes the named query if you have access to the workgroup in which the query
  was
  saved.
  """
  @spec delete_named_query(map(), delete_named_query_input(), list()) ::
          {:ok, delete_named_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_named_query_errors()}
  def delete_named_query(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteNamedQuery", input, options)
  end

  @doc """
  Deletes the specified notebook.
  """
  @spec delete_notebook(map(), delete_notebook_input(), list()) ::
          {:ok, delete_notebook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_notebook_errors()}
  def delete_notebook(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteNotebook", input, options)
  end

  @doc """
  Deletes the prepared statement with the specified name from the specified
  workgroup.
  """
  @spec delete_prepared_statement(map(), delete_prepared_statement_input(), list()) ::
          {:ok, delete_prepared_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_prepared_statement_errors()}
  def delete_prepared_statement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePreparedStatement", input, options)
  end

  @doc """
  Deletes the workgroup with the specified name.

  The primary workgroup cannot be
  deleted.
  """
  @spec delete_work_group(map(), delete_work_group_input(), list()) ::
          {:ok, delete_work_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_work_group_errors()}
  def delete_work_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWorkGroup", input, options)
  end

  @doc """
  Exports the specified notebook and its metadata.
  """
  @spec export_notebook(map(), export_notebook_input(), list()) ::
          {:ok, export_notebook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_notebook_errors()}
  def export_notebook(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportNotebook", input, options)
  end

  @doc """
  Describes a previously submitted calculation execution.
  """
  @spec get_calculation_execution(map(), get_calculation_execution_request(), list()) ::
          {:ok, get_calculation_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_calculation_execution_errors()}
  def get_calculation_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCalculationExecution", input, options)
  end

  @doc """
  Retrieves the unencrypted code that was executed for the calculation.
  """
  @spec get_calculation_execution_code(map(), get_calculation_execution_code_request(), list()) ::
          {:ok, get_calculation_execution_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_calculation_execution_code_errors()}
  def get_calculation_execution_code(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCalculationExecutionCode", input, options)
  end

  @doc """
  Gets the status of a current calculation.
  """
  @spec get_calculation_execution_status(
          map(),
          get_calculation_execution_status_request(),
          list()
        ) ::
          {:ok, get_calculation_execution_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_calculation_execution_status_errors()}
  def get_calculation_execution_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCalculationExecutionStatus", input, options)
  end

  @doc """
  Gets the capacity assignment configuration for a capacity reservation, if one
  exists.
  """
  @spec get_capacity_assignment_configuration(
          map(),
          get_capacity_assignment_configuration_input(),
          list()
        ) ::
          {:ok, get_capacity_assignment_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_capacity_assignment_configuration_errors()}
  def get_capacity_assignment_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCapacityAssignmentConfiguration", input, options)
  end

  @doc """
  Returns information about the capacity reservation with the specified name.
  """
  @spec get_capacity_reservation(map(), get_capacity_reservation_input(), list()) ::
          {:ok, get_capacity_reservation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_capacity_reservation_errors()}
  def get_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCapacityReservation", input, options)
  end

  @doc """
  Returns the specified data catalog.
  """
  @spec get_data_catalog(map(), get_data_catalog_input(), list()) ::
          {:ok, get_data_catalog_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_catalog_errors()}
  def get_data_catalog(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDataCatalog", input, options)
  end

  @doc """
  Returns a database object for the specified database and data catalog.
  """
  @spec get_database(map(), get_database_input(), list()) ::
          {:ok, get_database_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_database_errors()}
  def get_database(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDatabase", input, options)
  end

  @doc """
  Returns information about a single query.

  Requires that you have access to the
  workgroup in which the query was saved.
  """
  @spec get_named_query(map(), get_named_query_input(), list()) ::
          {:ok, get_named_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_named_query_errors()}
  def get_named_query(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetNamedQuery", input, options)
  end

  @doc """
  Retrieves notebook metadata for the specified notebook ID.
  """
  @spec get_notebook_metadata(map(), get_notebook_metadata_input(), list()) ::
          {:ok, get_notebook_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_notebook_metadata_errors()}
  def get_notebook_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetNotebookMetadata", input, options)
  end

  @doc """
  Retrieves the prepared statement with the specified name from the specified
  workgroup.
  """
  @spec get_prepared_statement(map(), get_prepared_statement_input(), list()) ::
          {:ok, get_prepared_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_prepared_statement_errors()}
  def get_prepared_statement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPreparedStatement", input, options)
  end

  @doc """
  Returns information about a single execution of a query if you have access to
  the
  workgroup in which the query ran.

  Each time a query executes, information about the
  query execution is saved with a unique ID.
  """
  @spec get_query_execution(map(), get_query_execution_input(), list()) ::
          {:ok, get_query_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_execution_errors()}
  def get_query_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetQueryExecution", input, options)
  end

  @doc """
  Streams the results of a single query execution specified by
  `QueryExecutionId` from the Athena query results location in
  Amazon S3.

  For more information, see [Working with query results, recent queries, and output files](https://docs.aws.amazon.com/athena/latest/ug/querying.html) in the
  *Amazon Athena User Guide*.
  This request does not execute the query but returns results. Use
  `StartQueryExecution` to run a query.

  To stream query results successfully, the IAM principal with permission to call
  `GetQueryResults` also must have permissions to the Amazon S3
  `GetObject` action for the Athena query results location.

  IAM principals with permission to the Amazon S3
  `GetObject` action for the query results location are able to retrieve
  query results from Amazon S3 even if permission to the
  `GetQueryResults` action is denied. To restrict user or role access,
  ensure that Amazon S3 permissions to the Athena query location
  are denied.
  """
  @spec get_query_results(map(), get_query_results_input(), list()) ::
          {:ok, get_query_results_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_results_errors()}
  def get_query_results(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetQueryResults", input, options)
  end

  @doc """
  Returns query execution runtime statistics related to a single execution of a
  query if
  you have access to the workgroup in which the query ran.

  Statistics from the
  `Timeline` section of the response object are available as soon as
  `QueryExecutionStatus$State` is in a SUCCEEDED or FAILED state. The
  remaining non-timeline statistics in the response (like stage-level input and
  output row
  count and data size) are updated asynchronously and may not be available
  immediately
  after a query completes. The non-timeline statistics are also not included when
  a query
  has row-level filters defined in Lake Formation.
  """
  @spec get_query_runtime_statistics(map(), get_query_runtime_statistics_input(), list()) ::
          {:ok, get_query_runtime_statistics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_runtime_statistics_errors()}
  def get_query_runtime_statistics(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetQueryRuntimeStatistics", input, options)
  end

  @doc """
  Gets the full details of a previously created session, including the session
  status
  and configuration.
  """
  @spec get_session(map(), get_session_request(), list()) ::
          {:ok, get_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_errors()}
  def get_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSession", input, options)
  end

  @doc """
  Gets the current status of a session.
  """
  @spec get_session_status(map(), get_session_status_request(), list()) ::
          {:ok, get_session_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_session_status_errors()}
  def get_session_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSessionStatus", input, options)
  end

  @doc """
  Returns table metadata for the specified catalog, database, and table.
  """
  @spec get_table_metadata(map(), get_table_metadata_input(), list()) ::
          {:ok, get_table_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_metadata_errors()}
  def get_table_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTableMetadata", input, options)
  end

  @doc """
  Returns information about the workgroup with the specified name.
  """
  @spec get_work_group(map(), get_work_group_input(), list()) ::
          {:ok, get_work_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_work_group_errors()}
  def get_work_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetWorkGroup", input, options)
  end

  @doc """
  Imports a single `ipynb` file to a Spark enabled workgroup.

  To import the
  notebook, the request must specify a value for either `Payload` or
  `NoteBookS3LocationUri`. If neither is specified or both are specified,
  an `InvalidRequestException` occurs. The maximum file size that can be
  imported is 10 megabytes. If an `ipynb` file with the same name already
  exists in the workgroup, throws an error.
  """
  @spec import_notebook(map(), import_notebook_input(), list()) ::
          {:ok, import_notebook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_notebook_errors()}
  def import_notebook(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ImportNotebook", input, options)
  end

  @doc """
  Returns the supported DPU sizes for the supported application runtimes (for
  example,
  `Athena notebook version 1`).
  """
  @spec list_application_d_p_u_sizes(map(), list_application_d_p_u_sizes_input(), list()) ::
          {:ok, list_application_d_p_u_sizes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_d_p_u_sizes_errors()}
  def list_application_d_p_u_sizes(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationDPUSizes", input, options)
  end

  @doc """
  Lists the calculations that have been submitted to a session in descending
  order.

  Newer calculations are listed first; older calculations are listed later.
  """
  @spec list_calculation_executions(map(), list_calculation_executions_request(), list()) ::
          {:ok, list_calculation_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_calculation_executions_errors()}
  def list_calculation_executions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCalculationExecutions", input, options)
  end

  @doc """
  Lists the capacity reservations for the current account.
  """
  @spec list_capacity_reservations(map(), list_capacity_reservations_input(), list()) ::
          {:ok, list_capacity_reservations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_capacity_reservations_errors()}
  def list_capacity_reservations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCapacityReservations", input, options)
  end

  @doc """
  Lists the data catalogs in the current Amazon Web Services account.

  In the Athena console, data catalogs are listed as "data sources" on
  the **Data sources** page under the **Data source name** column.
  """
  @spec list_data_catalogs(map(), list_data_catalogs_input(), list()) ::
          {:ok, list_data_catalogs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_catalogs_errors()}
  def list_data_catalogs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDataCatalogs", input, options)
  end

  @doc """
  Lists the databases in the specified data catalog.
  """
  @spec list_databases(map(), list_databases_input(), list()) ::
          {:ok, list_databases_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_databases_errors()}
  def list_databases(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDatabases", input, options)
  end

  @doc """
  Returns a list of engine versions that are available to choose from, including
  the
  Auto option.
  """
  @spec list_engine_versions(map(), list_engine_versions_input(), list()) ::
          {:ok, list_engine_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engine_versions_errors()}
  def list_engine_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEngineVersions", input, options)
  end

  @doc """
  Lists, in descending order, the executors that joined a session.

  Newer executors are
  listed first; older executors are listed later. The result can be optionally
  filtered by
  state.
  """
  @spec list_executors(map(), list_executors_request(), list()) ::
          {:ok, list_executors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_executors_errors()}
  def list_executors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListExecutors", input, options)
  end

  @doc """
  Provides a list of available query IDs only for queries saved in the specified
  workgroup.

  Requires that you have access to the specified workgroup. If a workgroup is
  not specified, lists the saved queries for the primary workgroup.
  """
  @spec list_named_queries(map(), list_named_queries_input(), list()) ::
          {:ok, list_named_queries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_named_queries_errors()}
  def list_named_queries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListNamedQueries", input, options)
  end

  @doc """
  Displays the notebook files for the specified workgroup in paginated format.
  """
  @spec list_notebook_metadata(map(), list_notebook_metadata_input(), list()) ::
          {:ok, list_notebook_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_notebook_metadata_errors()}
  def list_notebook_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListNotebookMetadata", input, options)
  end

  @doc """
  Lists, in descending order, the sessions that have been created in a notebook
  that are
  in an active state like `CREATING`, `CREATED`, `IDLE`
  or `BUSY`.

  Newer sessions are listed first; older sessions are listed
  later.
  """
  @spec list_notebook_sessions(map(), list_notebook_sessions_request(), list()) ::
          {:ok, list_notebook_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_notebook_sessions_errors()}
  def list_notebook_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListNotebookSessions", input, options)
  end

  @doc """
  Lists the prepared statements in the specified workgroup.
  """
  @spec list_prepared_statements(map(), list_prepared_statements_input(), list()) ::
          {:ok, list_prepared_statements_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_prepared_statements_errors()}
  def list_prepared_statements(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPreparedStatements", input, options)
  end

  @doc """
  Provides a list of available query execution IDs for the queries in the
  specified
  workgroup.

  Athena keeps a query history for 45 days. If a workgroup is not
  specified, returns a list of query execution IDs for the primary workgroup.
  Requires you
  to have access to the workgroup in which the queries ran.
  """
  @spec list_query_executions(map(), list_query_executions_input(), list()) ::
          {:ok, list_query_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_query_executions_errors()}
  def list_query_executions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListQueryExecutions", input, options)
  end

  @doc """
  Lists the sessions in a workgroup that are in an active state like
  `CREATING`, `CREATED`, `IDLE`, or
  `BUSY`.

  Newer sessions are listed first; older sessions are listed
  later.
  """
  @spec list_sessions(map(), list_sessions_request(), list()) ::
          {:ok, list_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sessions_errors()}
  def list_sessions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSessions", input, options)
  end

  @doc """
  Lists the metadata for the tables in the specified data catalog database.
  """
  @spec list_table_metadata(map(), list_table_metadata_input(), list()) ::
          {:ok, list_table_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_table_metadata_errors()}
  def list_table_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTableMetadata", input, options)
  end

  @doc """
  Lists the tags associated with an Athena resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists available workgroups for the account.
  """
  @spec list_work_groups(map(), list_work_groups_input(), list()) ::
          {:ok, list_work_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_work_groups_errors()}
  def list_work_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWorkGroups", input, options)
  end

  @doc """
  Puts a new capacity assignment configuration for a specified capacity
  reservation.

  If
  a capacity assignment configuration already exists for the capacity reservation,
  replaces the existing capacity assignment configuration.
  """
  @spec put_capacity_assignment_configuration(
          map(),
          put_capacity_assignment_configuration_input(),
          list()
        ) ::
          {:ok, put_capacity_assignment_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_capacity_assignment_configuration_errors()}
  def put_capacity_assignment_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutCapacityAssignmentConfiguration", input, options)
  end

  @doc """
  Submits calculations for execution within a session.

  You can supply the code to run as
  an inline code block within the request.

  The request syntax requires the `StartCalculationExecutionRequest$CodeBlock`
  parameter or the `CalculationConfiguration$CodeBlock` parameter, but not both.
  Because
  `CalculationConfiguration$CodeBlock` is deprecated, use the
  `StartCalculationExecutionRequest$CodeBlock` parameter
  instead.
  """
  @spec start_calculation_execution(map(), start_calculation_execution_request(), list()) ::
          {:ok, start_calculation_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_calculation_execution_errors()}
  def start_calculation_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartCalculationExecution", input, options)
  end

  @doc """
  Runs the SQL query statements contained in the `Query`.

  Requires you to
  have access to the workgroup in which the query ran. Running queries against an
  external
  catalog requires `GetDataCatalog` permission to the catalog. For code
  samples using the Amazon Web Services SDK for Java, see [Examples and Code Samples](http://docs.aws.amazon.com/athena/latest/ug/code-samples.html) in
  the *Amazon Athena User
  Guide*.
  """
  @spec start_query_execution(map(), start_query_execution_input(), list()) ::
          {:ok, start_query_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_query_execution_errors()}
  def start_query_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartQueryExecution", input, options)
  end

  @doc """
  Creates a session for running calculations within a workgroup.

  The session is ready
  when it reaches an `IDLE` state.
  """
  @spec start_session(map(), start_session_request(), list()) ::
          {:ok, start_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_session_errors()}
  def start_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartSession", input, options)
  end

  @doc """
  Requests the cancellation of a calculation.

  A `StopCalculationExecution`
  call on a calculation that is already in a terminal state (for example,
  `STOPPED`, `FAILED`, or `COMPLETED`) succeeds but
  has no effect.

  Cancelling a calculation is done on a best effort basis. If a calculation cannot
  be cancelled, you can be charged for its completion. If you are concerned about
  being charged for a calculation that cannot be cancelled, consider terminating
  the
  session in which the calculation is running.
  """
  @spec stop_calculation_execution(map(), stop_calculation_execution_request(), list()) ::
          {:ok, stop_calculation_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_calculation_execution_errors()}
  def stop_calculation_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopCalculationExecution", input, options)
  end

  @doc """
  Stops a query execution.

  Requires you to have access to the workgroup in which the
  query ran.
  """
  @spec stop_query_execution(map(), stop_query_execution_input(), list()) ::
          {:ok, stop_query_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_query_execution_errors()}
  def stop_query_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopQueryExecution", input, options)
  end

  @doc """
  Adds one or more tags to an Athena resource.

  A tag is a label that you
  assign to a resource. Each tag consists of a key and an optional value, both of
  which
  you define. For example, you can use tags to categorize Athena workgroups,
  data catalogs, or capacity reservations by purpose, owner, or environment. Use a
  consistent set of tag keys to make it easier to search and filter the resources
  in your
  account. For best practices, see [Tagging Best
  Practices](https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/tagging-best-practices.html).
  Tag keys can be from 1 to 128 UTF-8 Unicode characters, and
  tag values can be from 0 to 256 UTF-8 Unicode characters. Tags can use letters
  and
  numbers representable in UTF-8, and the following characters: + - = . _ : / @.
  Tag keys
  and values are case-sensitive. Tag keys must be unique per resource. If you
  specify more
  than one tag, separate them by commas.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Terminates an active session.

  A `TerminateSession` call on a session that
  is already inactive (for example, in a `FAILED`, `TERMINATED` or
  `TERMINATING` state) succeeds but has no effect. Calculations running in
  the session when `TerminateSession` is called are forcefully stopped, but may
  display as `FAILED` instead of `STOPPED`.
  """
  @spec terminate_session(map(), terminate_session_request(), list()) ::
          {:ok, terminate_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_session_errors()}
  def terminate_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TerminateSession", input, options)
  end

  @doc """
  Removes one or more tags from an Athena resource.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the number of requested data processing units for the capacity
  reservation
  with the specified name.
  """
  @spec update_capacity_reservation(map(), update_capacity_reservation_input(), list()) ::
          {:ok, update_capacity_reservation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_capacity_reservation_errors()}
  def update_capacity_reservation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCapacityReservation", input, options)
  end

  @doc """
  Updates the data catalog that has the specified name.
  """
  @spec update_data_catalog(map(), update_data_catalog_input(), list()) ::
          {:ok, update_data_catalog_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_catalog_errors()}
  def update_data_catalog(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDataCatalog", input, options)
  end

  @doc """
  Updates a `NamedQuery` object.

  The database or workgroup cannot be
  updated.
  """
  @spec update_named_query(map(), update_named_query_input(), list()) ::
          {:ok, update_named_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_named_query_errors()}
  def update_named_query(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNamedQuery", input, options)
  end

  @doc """
  Updates the contents of a Spark notebook.
  """
  @spec update_notebook(map(), update_notebook_input(), list()) ::
          {:ok, update_notebook_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_notebook_errors()}
  def update_notebook(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNotebook", input, options)
  end

  @doc """
  Updates the metadata for a notebook.
  """
  @spec update_notebook_metadata(map(), update_notebook_metadata_input(), list()) ::
          {:ok, update_notebook_metadata_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_notebook_metadata_errors()}
  def update_notebook_metadata(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateNotebookMetadata", input, options)
  end

  @doc """
  Updates a prepared statement.
  """
  @spec update_prepared_statement(map(), update_prepared_statement_input(), list()) ::
          {:ok, update_prepared_statement_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_prepared_statement_errors()}
  def update_prepared_statement(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePreparedStatement", input, options)
  end

  @doc """
  Updates the workgroup with the specified name.

  The workgroup's name cannot be changed.
  Only `ConfigurationUpdates` can be specified.
  """
  @spec update_work_group(map(), update_work_group_input(), list()) ::
          {:ok, update_work_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_work_group_errors()}
  def update_work_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWorkGroup", input, options)
  end
end
