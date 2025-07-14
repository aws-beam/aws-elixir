# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CleanRooms do
  @moduledoc """
  Welcome to the *Clean Rooms API Reference*.

  Clean Rooms is an Amazon Web Services service that helps multiple parties to
  join their data together in a secure collaboration workspace. In the
  collaboration, members who can run queries and jobs and receive results can get
  insights into the collective datasets without either party getting access to the
  other party's raw data.

  To learn more about Clean Rooms concepts, procedures, and best practices, see
  the [Clean Rooms User Guide](https://docs.aws.amazon.com/clean-rooms/latest/userguide/what-is.html).

  To learn more about SQL commands, functions, and conditions supported in Clean
  Rooms, see the [Clean Rooms SQL Reference](https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      protected_query_distribute_output_configuration() :: %{
        "locations" => list(list())
      }

  """
  @type protected_query_distribute_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_summary() :: %{
        "analysisMethod" => list(any()),
        "analysisRuleTypes" => list(list(any())()),
        "arn" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "name" => String.t(),
        "selectedAnalysisMethods" => list(list(any())()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schemas_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("schemaType") => list(any())
      }

  """
  @type list_schemas_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_association_input() :: %{}

  """
  @type get_configured_table_association_input() :: %{}

  @typedoc """

  ## Example:

      list_configured_audience_model_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_audience_model_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_protected_jobs_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any())
      }

  """
  @type list_protected_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_audience_model_association_output() :: %{}

  """
  @type delete_configured_audience_model_association_output() :: %{}

  @typedoc """

  ## Example:

      list_analysis_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_analysis_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_analysis_templates_output() :: %{
        optional("nextToken") => String.t(),
        required("collaborationAnalysisTemplateSummaries") => list(collaboration_analysis_template_summary())
      }

  """
  @type list_collaboration_analysis_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_output() :: %{
        required("configuredTable") => configured_table()
      }

  """
  @type create_configured_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_privacy_budget_template_output() :: %{
        "privacyBudgetTemplate" => privacy_budget_template()
      }

  """
  @type create_privacy_budget_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_preview_parameters_input() :: %{
        "epsilon" => integer(),
        "usersNoisePerQuery" => integer()
      }

  """
  @type differential_privacy_preview_parameters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_input() :: %{}

  """
  @type delete_configured_table_input() :: %{}

  @typedoc """

  ## Example:

      list_id_mapping_tables_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_id_mapping_tables_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_output() :: %{
        optional("nextToken") => String.t(),
        required("memberSummaries") => list(member_summary())
      }

  """
  @type list_members_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_id_namespace_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_id_namespace_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_membership_input() :: %{
        optional("defaultJobResultConfiguration") => membership_protected_job_result_configuration(),
        optional("defaultResultConfiguration") => membership_protected_query_result_configuration(),
        optional("jobLogStatus") => list(any()),
        optional("paymentConfiguration") => membership_payment_configuration(),
        optional("tags") => map(),
        required("collaborationIdentifier") => String.t(),
        required("queryLogStatus") => list(any())
      }

  """
  @type create_membership_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_collaboration_analysis_template_input() :: %{
        required("analysisTemplateArns") => list(String.t())
      }

  """
  @type batch_get_collaboration_analysis_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_analysis_rule_output() :: %{
        required("analysisRule") => configured_table_analysis_rule()
      }

  """
  @type get_configured_table_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_association_analysis_rule_input() :: %{
        required("analysisRulePolicy") => list(),
        required("analysisRuleType") => list(any())
      }

  """
  @type create_configured_table_association_analysis_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_input() :: %{
        optional("description") => String.t(),
        optional("selectedAnalysisMethods") => list(list(any())()),
        optional("tags") => map(),
        required("allowedColumns") => list(String.t()),
        required("analysisMethod") => list(any()),
        required("name") => String.t(),
        required("tableReference") => list()
      }

  """
  @type create_configured_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_rule() :: %{
        "collaborationId" => String.t(),
        "collaborationPolicy" => list(),
        "consolidatedPolicy" => list(),
        "createTime" => [non_neg_integer()],
        "name" => String.t(),
        "policy" => list(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type analysis_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_protected_query_output() :: %{
        required("protectedQuery") => protected_query()
      }

  """
  @type get_protected_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_artifacts() :: %{
        "additionalArtifacts" => list(analysis_template_artifact()),
        "entryPoint" => analysis_template_artifact(),
        "roleArn" => String.t()
      }

  """
  @type analysis_template_artifacts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_table_associations_output() :: %{
        optional("nextToken") => String.t(),
        required("configuredTableAssociationSummaries") => list(configured_table_association_summary())
      }

  """
  @type list_configured_table_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_analysis_template() :: %{
        "analysisParameters" => list(analysis_parameter()),
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "format" => list(any()),
        "id" => String.t(),
        "name" => String.t(),
        "schema" => analysis_schema(),
        "source" => list(),
        "sourceMetadata" => list(),
        "updateTime" => [non_neg_integer()],
        "validations" => list(analysis_template_validation_status_detail())
      }

  """
  @type collaboration_analysis_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_analysis_template_input() :: %{}

  """
  @type get_analysis_template_input() :: %{}

  @typedoc """

  ## Example:

      protected_query_member_output_configuration() :: %{
        "accountId" => String.t()
      }

  """
  @type protected_query_member_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job() :: %{
        "createTime" => [non_neg_integer()],
        "error" => protected_job_error(),
        "id" => String.t(),
        "jobParameters" => protected_job_parameters(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "result" => protected_job_result(),
        "resultConfiguration" => protected_job_result_configuration_output(),
        "statistics" => protected_job_statistics(),
        "status" => list(any())
      }

  """
  @type protected_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analysis_templates_output() :: %{
        optional("nextToken") => String.t(),
        required("analysisTemplateSummaries") => list(analysis_template_summary())
      }

  """
  @type list_analysis_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_id_namespace_association_output() :: %{}

  """
  @type delete_id_namespace_association_output() :: %{}

  @typedoc """

  ## Example:

      collaboration_id_namespace_association_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "inputReferenceConfig" => id_namespace_association_input_reference_config(),
        "inputReferenceProperties" => id_namespace_association_input_reference_properties_summary(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_id_namespace_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_summary() :: %{
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "receiverConfigurations" => list(receiver_configuration()),
        "status" => String.t()
      }

  """
  @type protected_query_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_analysis_template_input() :: %{}

  """
  @type get_collaboration_analysis_template_input() :: %{}

  @typedoc """

  ## Example:

      list_configured_table_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_table_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_privacy_budget_template_input() :: %{}

  """
  @type delete_privacy_budget_template_input() :: %{}

  @typedoc """

  ## Example:

      delete_id_mapping_table_input() :: %{}

  """
  @type delete_id_mapping_table_input() :: %{}

  @typedoc """

  ## Example:

      delete_membership_output() :: %{}

  """
  @type delete_membership_output() :: %{}

  @typedoc """

  ## Example:

      receiver_configuration() :: %{
        "analysisType" => list(any()),
        "configurationDetails" => list()
      }

  """
  @type receiver_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_analysis_template_input() :: %{
        optional("description") => String.t()
      }

  """
  @type update_analysis_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column() :: %{
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_namespace_association_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "inputReferenceConfig" => id_namespace_association_input_reference_config(),
        "inputReferenceProperties" => id_namespace_association_input_reference_properties_summary(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type id_namespace_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_s3_output() :: %{
        "location" => [String.t()]
      }

  """
  @type protected_job_s3_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_id_namespace_association_input() :: %{}

  """
  @type get_collaboration_id_namespace_association_input() :: %{}

  @typedoc """

  ## Example:

      list_configured_tables_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_configured_tables_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_collaboration_output() :: %{
        required("collaboration") => collaboration()
      }

  """
  @type create_collaboration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_namespace_association_input_reference_config() :: %{
        "inputReferenceArn" => String.t(),
        "manageResourcePolicies" => [boolean()]
      }

  """
  @type id_namespace_association_input_reference_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_memberships_output() :: %{
        optional("nextToken") => String.t(),
        required("membershipSummaries") => list(membership_summary())
      }

  """
  @type list_memberships_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type protected_job_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_audience_model_association_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_audience_model_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_analysis_rule_output() :: %{
        required("analysisRule") => configured_table_analysis_rule()
      }

  """
  @type update_configured_table_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_validation_status_detail() :: %{
        "reasons" => list(analysis_template_validation_status_reason()),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type analysis_template_validation_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_protected_queries_output() :: %{
        optional("nextToken") => String.t(),
        required("protectedQueries") => list(protected_query_summary())
      }

  """
  @type list_protected_queries_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_distribute_output() :: %{
        "memberList" => list(protected_query_single_member_output()),
        "s3" => protected_query_s3_output()
      }

  """
  @type protected_query_distribute_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_protected_queries_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }

  """
  @type list_protected_queries_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_analysis_rule_input() :: %{
        required("analysisRulePolicy") => list()
      }

  """
  @type update_configured_table_analysis_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_parameters() :: %{
        "sensitivityParameters" => list(differential_privacy_sensitivity_parameters())
      }

  """
  @type differential_privacy_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_privacy_budget_template_input() :: %{}

  """
  @type get_collaboration_privacy_budget_template_input() :: %{}

  @typedoc """

  ## Example:

      delete_configured_audience_model_association_input() :: %{}

  """
  @type delete_configured_audience_model_association_input() :: %{}

  @typedoc """

  ## Example:

      update_configured_table_output() :: %{
        required("configuredTable") => configured_table()
      }

  """
  @type update_configured_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_association() :: %{
        "analysisRuleTypes" => list(list(any())()),
        "arn" => String.t(),
        "configuredTableArn" => String.t(),
        "configuredTableId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "roleArn" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_membership_output() :: %{
        required("membership") => membership()
      }

  """
  @type get_membership_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_association_analysis_rule_output() :: %{}

  """
  @type delete_configured_table_association_analysis_rule_output() :: %{}

  @typedoc """

  ## Example:

      differential_privacy_privacy_budget_aggregation() :: %{
        "maxCount" => [integer()],
        "remainingCount" => [integer()],
        "type" => list(any())
      }

  """
  @type differential_privacy_privacy_budget_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration() :: %{
        "analyticsEngine" => list(any()),
        "arn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "creatorDisplayName" => String.t(),
        "dataEncryptionMetadata" => data_encryption_metadata(),
        "description" => String.t(),
        "id" => String.t(),
        "jobLogStatus" => list(any()),
        "memberStatus" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "queryLogStatus" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_rule_aggregation() :: %{
        "additionalAnalyses" => list(any()),
        "aggregateColumns" => list(aggregate_column()),
        "allowedJoinOperators" => list(String.t()),
        "dimensionColumns" => list(String.t()),
        "joinColumns" => list(String.t()),
        "joinRequired" => String.t(),
        "outputConstraints" => list(aggregation_constraint()),
        "scalarFunctions" => list(String.t())
      }

  """
  @type analysis_rule_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_privacy_budget() :: %{
        "aggregations" => list(differential_privacy_privacy_budget_aggregation()),
        "epsilon" => integer()
      }

  """
  @type differential_privacy_privacy_budget() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_privacy_budget_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_privacy_budget_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_analysis_template_output() :: %{
        required("analysisTemplate") => analysis_template()
      }

  """
  @type update_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_schema() :: %{
        "referencedTables" => list(String.t())
      }

  """
  @type analysis_schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_receiver_configuration() :: %{
        "analysisType" => list(any()),
        "configurationDetails" => list()
      }

  """
  @type protected_job_receiver_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_id_mapping_table_input() :: %{
        optional("description") => String.t(),
        optional("kmsKeyArn") => String.t()
      }

  """
  @type update_id_mapping_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_id_namespace_association_input() :: %{
        optional("description") => String.t(),
        optional("idMappingConfig") => id_mapping_config(),
        optional("name") => String.t()
      }

  """
  @type update_id_namespace_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_collaboration_output() :: %{
        required("collaboration") => collaboration()
      }

  """
  @type update_collaboration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_id_mapping_table_output() :: %{
        "idMappingTable" => id_mapping_table()
      }

  """
  @type create_id_mapping_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_privacy_budgets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("privacyBudgetType") => list(any())
      }

  """
  @type list_collaboration_privacy_budgets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_status_detail() :: %{
        "analysisRuleType" => list(any()),
        "analysisType" => list(any()),
        "configurations" => list(list(any())()),
        "reasons" => list(schema_status_reason()),
        "status" => list(any())
      }

  """
  @type schema_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_association_input() :: %{
        optional("description") => String.t(),
        optional("roleArn") => String.t()
      }

  """
  @type update_configured_table_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_preview_aggregation() :: %{
        "maxCount" => [integer()],
        "type" => list(any())
      }

  """
  @type differential_privacy_preview_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      model_inference_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type model_inference_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_result_configuration_output() :: %{
        "outputConfiguration" => list()
      }

  """
  @type protected_job_result_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ml_member_abilities() :: %{
        "customMLMemberAbilities" => list(list(any())())
      }

  """
  @type ml_member_abilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_compute_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type job_compute_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_collaboration_input() :: %{
        optional("analyticsEngine") => list(any()),
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_collaboration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      preview_privacy_impact_input() :: %{
        required("parameters") => list()
      }

  """
  @type preview_privacy_impact_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_table_schema_type_properties() :: %{
        "idMappingTableInputSource" => list(id_mapping_table_input_source())
      }

  """
  @type id_mapping_table_schema_type_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_memberships_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => String.t()
      }

  """
  @type list_memberships_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_id_namespace_association_output() :: %{
        "idNamespaceAssociation" => id_namespace_association()
      }

  """
  @type get_id_namespace_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_schemas_output() :: %{
        optional("nextToken") => String.t(),
        required("schemaSummaries") => list(schema_summary())
      }

  """
  @type list_schemas_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_analysis_template_input() :: %{}

  """
  @type delete_analysis_template_input() :: %{}

  @typedoc """

  ## Example:

      consolidated_policy_list() :: %{
        "additionalAnalyses" => list(any()),
        "allowedAdditionalAnalyses" => list(String.t()),
        "allowedJoinOperators" => list(String.t()),
        "allowedResultReceivers" => list(String.t()),
        "joinColumns" => list(String.t()),
        "listColumns" => list(String.t())
      }

  """
  @type consolidated_policy_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_privacy_budget_template_output() :: %{
        "collaborationPrivacyBudgetTemplate" => collaboration_privacy_budget_template()
      }

  """
  @type get_collaboration_privacy_budget_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_analysis_rule_output() :: %{}

  """
  @type delete_configured_table_analysis_rule_output() :: %{}

  @typedoc """

  ## Example:

      update_privacy_budget_template_input() :: %{
        optional("parameters") => list(),
        required("privacyBudgetType") => list(any())
      }

  """
  @type update_privacy_budget_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_rule_custom() :: %{
        "additionalAnalyses" => list(any()),
        "allowedAnalyses" => list(String.t()),
        "allowedAnalysisProviders" => list(String.t()),
        "differentialPrivacy" => differential_privacy_configuration(),
        "disallowedOutputColumns" => list(String.t())
      }

  """
  @type analysis_rule_custom() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_member_output() :: %{}

  """
  @type delete_member_output() :: %{}

  @typedoc """

  ## Example:

      schema_analysis_rule_request() :: %{
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type schema_analysis_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_association_output() :: %{}

  """
  @type delete_configured_table_association_output() :: %{}

  @typedoc """

  ## Example:

      athena_table_reference() :: %{
        "databaseName" => String.t(),
        "outputLocation" => String.t(),
        "tableName" => String.t(),
        "workGroup" => String.t()
      }

  """
  @type athena_table_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_analysis_template_output() :: %{
        required("analysisTemplate") => analysis_template()
      }

  """
  @type create_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_input() :: %{}

  """
  @type get_collaboration_input() :: %{}

  @typedoc """

  ## Example:

      get_protected_query_input() :: %{}

  """
  @type get_protected_query_input() :: %{}

  @typedoc """

  ## Example:

      membership_model_inference_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type membership_model_inference_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      billed_job_resource_utilization() :: %{
        "units" => [float()]
      }

  """
  @type billed_job_resource_utilization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      privacy_budget_template_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "privacyBudgetType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type privacy_budget_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_association_analysis_rule_output() :: %{
        "analysisRule" => configured_table_association_analysis_rule()
      }

  """
  @type create_configured_table_association_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_collaboration_input() :: %{}

  """
  @type delete_collaboration_input() :: %{}

  @typedoc """

  ## Example:

      update_protected_query_input() :: %{
        required("targetStatus") => String.t()
      }

  """
  @type update_protected_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_association_analysis_rule_custom() :: %{
        "allowedAdditionalAnalyses" => list(String.t()),
        "allowedResultReceivers" => list(String.t())
      }

  """
  @type configured_table_association_analysis_rule_custom() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_protected_query_result_configuration() :: %{
        "outputConfiguration" => list(),
        "roleArn" => String.t()
      }

  """
  @type membership_protected_query_result_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_member_input() :: %{}

  """
  @type delete_member_input() :: %{}

  @typedoc """

  ## Example:

      get_configured_audience_model_association_output() :: %{
        "configuredAudienceModelAssociation" => configured_audience_model_association()
      }

  """
  @type get_configured_audience_model_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_audience_model_associations_output() :: %{
        "configuredAudienceModelAssociationSummaries" => list(configured_audience_model_association_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_configured_audience_model_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      consolidated_policy_custom() :: %{
        "additionalAnalyses" => list(any()),
        "allowedAdditionalAnalyses" => list(String.t()),
        "allowedAnalyses" => list(String.t()),
        "allowedAnalysisProviders" => list(String.t()),
        "allowedResultReceivers" => list(String.t()),
        "differentialPrivacy" => differential_privacy_configuration(),
        "disallowedOutputColumns" => list(String.t())
      }

  """
  @type consolidated_policy_custom() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_privacy_budget_templates_output() :: %{
        "collaborationPrivacyBudgetTemplateSummaries" => list(collaboration_privacy_budget_template_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_privacy_budget_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "reason" => String.t(),
        "resourceId" => [String.t()],
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_id_mapping_table_input() :: %{
        optional("description") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        required("inputReferenceConfig") => id_mapping_table_input_reference_config(),
        required("name") => String.t()
      }

  """
  @type create_id_mapping_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_analysis_rule_input() :: %{
        required("analysisRulePolicy") => list(),
        required("analysisRuleType") => list(any())
      }

  """
  @type create_configured_table_analysis_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_id_namespace_association_output() :: %{
        "idNamespaceAssociation" => id_namespace_association()
      }

  """
  @type update_id_namespace_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_constraint_require_overlap() :: %{
        "columns" => list(String.t())
      }

  """
  @type query_constraint_require_overlap() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query() :: %{
        "computeConfiguration" => list(),
        "createTime" => [non_neg_integer()],
        "differentialPrivacy" => differential_privacy_parameters(),
        "error" => protected_query_error(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "result" => protected_query_result(),
        "resultConfiguration" => protected_query_result_configuration(),
        "sqlParameters" => protected_query_s_q_l_parameters(),
        "statistics" => protected_query_statistics(),
        "status" => String.t()
      }

  """
  @type protected_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_result_configuration_input() :: %{
        "outputConfiguration" => list()
      }

  """
  @type protected_job_result_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_namespace_association_input_reference_properties() :: %{
        "idMappingWorkflowsSupported" => list([any()]()),
        "idNamespaceType" => list(any())
      }

  """
  @type id_namespace_association_input_reference_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_result_configuration() :: %{
        "outputConfiguration" => list()
      }

  """
  @type protected_query_result_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_association_output() :: %{
        required("configuredTableAssociation") => configured_table_association()
      }

  """
  @type update_configured_table_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_result() :: %{
        "output" => list()
      }

  """
  @type protected_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_association_analysis_rule_input() :: %{
        required("analysisRulePolicy") => list()
      }

  """
  @type update_configured_table_association_analysis_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_statistics() :: %{
        "billedResourceUtilization" => billed_job_resource_utilization(),
        "totalDurationInMillis" => [float()]
      }

  """
  @type protected_job_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_analysis_rule_output() :: %{
        "analysisRules" => list(analysis_rule()),
        "errors" => list(batch_get_schema_analysis_rule_error())
      }

  """
  @type batch_get_schema_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_s3_output_configuration_input() :: %{
        "bucket" => [String.t()],
        "keyPrefix" => String.t()
      }

  """
  @type protected_job_s3_output_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_summary() :: %{
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "receiverConfigurations" => list(protected_job_receiver_configuration()),
        "status" => list(any())
      }

  """
  @type protected_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaName" => [String.t()],
        "quotaValue" => [float()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_configured_audience_model_association() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_configured_audience_model_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_audience_model_association_input() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("configuredAudienceModelArn") => String.t(),
        required("configuredAudienceModelAssociationName") => String.t(),
        required("manageResourcePolicies") => [boolean()]
      }

  """
  @type create_configured_audience_model_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_template_parameters_input() :: %{
        "epsilon" => integer(),
        "usersNoisePerQuery" => integer()
      }

  """
  @type differential_privacy_template_parameters_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_query_compute_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type membership_query_compute_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_result() :: %{
        "output" => list()
      }

  """
  @type protected_query_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_summary() :: %{
        "analysisMethod" => list(any()),
        "analysisRuleTypes" => list(list(any())()),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "name" => String.t(),
        "selectedAnalysisMethods" => list(list(any())()),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type schema_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_protected_job_input() :: %{
        optional("resultConfiguration") => protected_job_result_configuration_input(),
        required("jobParameters") => protected_job_parameters(),
        required("type") => list(any())
      }

  """
  @type start_protected_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_analysis_rule_input() :: %{}

  """
  @type delete_configured_table_analysis_rule_input() :: %{}

  @typedoc """

  ## Example:

      populate_id_mapping_table_output() :: %{
        "idMappingJobId" => String.t()
      }

  """
  @type populate_id_mapping_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      privacy_budget_template() :: %{
        "arn" => String.t(),
        "autoRefresh" => list(any()),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "parameters" => list(),
        "privacyBudgetType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type privacy_budget_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_association_analysis_rule_aggregation() :: %{
        "allowedAdditionalAnalyses" => list(String.t()),
        "allowedResultReceivers" => list(String.t())
      }

  """
  @type configured_table_association_analysis_rule_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      privacy_budget_summary() :: %{
        "budget" => list(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "privacyBudgetTemplateArn" => String.t(),
        "privacyBudgetTemplateId" => String.t(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type privacy_budget_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_output() :: %{
        required("schema") => schema()
      }

  """
  @type get_schema_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hash() :: %{
        "sha256" => [String.t()]
      }

  """
  @type hash() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_single_member_output() :: %{
        "accountId" => String.t()
      }

  """
  @type protected_job_single_member_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_configured_audience_model_association_output() :: %{
        "collaborationConfiguredAudienceModelAssociation" => collaboration_configured_audience_model_association()
      }

  """
  @type get_collaboration_configured_audience_model_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_output() :: %{
        required("errors") => list(batch_get_schema_error()),
        required("schemas") => list(schema())
      }

  """
  @type batch_get_schema_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_summary() :: %{
        "analyticsEngine" => list(any()),
        "arn" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "creatorDisplayName" => String.t(),
        "id" => String.t(),
        "memberStatus" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema() :: %{
        "analysisMethod" => list(any()),
        "analysisRuleTypes" => list(list(any())()),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "columns" => list(column()),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "name" => String.t(),
        "partitionKeys" => list(column()),
        "schemaStatusDetails" => list(schema_status_detail()),
        "schemaTypeProperties" => list(),
        "selectedAnalysisMethods" => list(list(any())()),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type schema() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_association_analysis_rule_input() :: %{}

  """
  @type get_configured_table_association_analysis_rule_input() :: %{}

  @typedoc """

  ## Example:

      differential_privacy_column() :: %{
        "name" => [String.t()]
      }

  """
  @type differential_privacy_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_protected_job_result_configuration() :: %{
        "outputConfiguration" => list(),
        "roleArn" => String.t()
      }

  """
  @type membership_protected_job_result_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_privacy_budget_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_privacy_budget_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_association_analysis_rule_output() :: %{
        "analysisRule" => configured_table_association_analysis_rule()
      }

  """
  @type get_configured_table_association_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_privacy_budgets_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("privacyBudgetType") => list(any())
      }

  """
  @type list_privacy_budgets_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_configured_audience_model_associations_output() :: %{
        "collaborationConfiguredAudienceModelAssociationSummaries" => list(collaboration_configured_audience_model_association_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_configured_audience_model_associations_output() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      delete_configured_table_association_input() :: %{}

  """
  @type delete_configured_table_association_input() :: %{}

  @typedoc """

  ## Example:

      list_privacy_budget_templates_output() :: %{
        "nextToken" => String.t(),
        "privacyBudgetTemplateSummaries" => list(privacy_budget_template_summary())
      }

  """
  @type list_privacy_budget_templates_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_config() :: %{
        "allowUseAsDimensionColumn" => [boolean()]
      }

  """
  @type id_mapping_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_rule_list() :: %{
        "additionalAnalyses" => list(any()),
        "allowedJoinOperators" => list(String.t()),
        "joinColumns" => list(String.t()),
        "listColumns" => list(String.t())
      }

  """
  @type analysis_rule_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_protected_job_output() :: %{
        "protectedJob" => protected_job()
      }

  """
  @type update_protected_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationCreatorAccountId" => String.t(),
        "collaborationCreatorDisplayName" => String.t(),
        "collaborationId" => String.t(),
        "collaborationName" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "memberAbilities" => list(list(any())()),
        "mlMemberAbilities" => ml_member_abilities(),
        "paymentConfiguration" => membership_payment_configuration(),
        "status" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type membership_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_id_namespace_association_input() :: %{
        optional("description") => String.t(),
        optional("idMappingConfig") => id_mapping_config(),
        optional("tags") => map(),
        required("inputReferenceConfig") => id_namespace_association_input_reference_config(),
        required("name") => String.t()
      }

  """
  @type create_id_namespace_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_analysis_rule_input() :: %{}

  """
  @type get_configured_table_analysis_rule_input() :: %{}

  @typedoc """

  ## Example:

      analysis_rule_id_mapping_table() :: %{
        "dimensionColumns" => list(String.t()),
        "joinColumns" => list(String.t()),
        "queryConstraints" => list(list())
      }

  """
  @type analysis_rule_id_mapping_table() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_direct_analysis_configuration_details() :: %{
        "receiverAccountIds" => list(String.t())
      }

  """
  @type protected_job_direct_analysis_configuration_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => [String.t()],
        "key" => [String.t()]
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_analysis_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_analysis_templates_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_s3_output() :: %{
        "location" => [String.t()]
      }

  """
  @type protected_query_s3_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_privacy_budget_summary() :: %{
        "budget" => list(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "id" => String.t(),
        "privacyBudgetTemplateArn" => String.t(),
        "privacyBudgetTemplateId" => String.t(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_privacy_budget_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_audience_model_association_input() :: %{
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_configured_audience_model_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_configured_audience_model_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaboration_configured_audience_model_associations_input() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_privacy_budget_template_input() :: %{
        optional("tags") => map(),
        required("autoRefresh") => list(any()),
        required("parameters") => list(),
        required("privacyBudgetType") => list(any())
      }

  """
  @type create_privacy_budget_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_privacy_budget_template_output() :: %{
        "privacyBudgetTemplate" => privacy_budget_template()
      }

  """
  @type get_privacy_budget_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_protected_query_output() :: %{
        required("protectedQuery") => protected_query()
      }

  """
  @type update_protected_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_association_output() :: %{
        required("configuredTableAssociation") => configured_table_association()
      }

  """
  @type create_configured_table_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_privacy_impact() :: %{
        "aggregations" => list(differential_privacy_preview_aggregation())
      }

  """
  @type differential_privacy_privacy_impact() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_parameter() :: %{
        "defaultValue" => String.t(),
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type analysis_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_table() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "inputReferenceConfig" => id_mapping_table_input_reference_config(),
        "inputReferenceProperties" => id_mapping_table_input_reference_properties(),
        "kmsKeyArn" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type id_mapping_table() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_id_mapping_table_output() :: %{}

  """
  @type delete_id_mapping_table_output() :: %{}

  @typedoc """

  ## Example:

      create_collaboration_input() :: %{
        optional("analyticsEngine") => list(any()),
        optional("creatorMLMemberAbilities") => ml_member_abilities(),
        optional("creatorPaymentConfiguration") => payment_configuration(),
        optional("dataEncryptionMetadata") => data_encryption_metadata(),
        optional("jobLogStatus") => list(any()),
        optional("tags") => map(),
        required("creatorDisplayName") => String.t(),
        required("creatorMemberAbilities") => list(list(any())()),
        required("description") => String.t(),
        required("members") => list(member_specification()),
        required("name") => String.t(),
        required("queryLogStatus") => list(any())
      }

  """
  @type create_collaboration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_analysis_rule() :: %{
        "configuredTableArn" => String.t(),
        "configuredTableId" => String.t(),
        "createTime" => [non_neg_integer()],
        "policy" => list(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_analysis_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_id_mapping_table_output() :: %{
        "idMappingTable" => id_mapping_table()
      }

  """
  @type update_id_mapping_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_compute_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type query_compute_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_members_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_members_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_template_update_parameters() :: %{
        "epsilon" => integer(),
        "usersNoisePerQuery" => integer()
      }

  """
  @type differential_privacy_template_update_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      get_id_mapping_table_output() :: %{
        "idMappingTable" => id_mapping_table()
      }

  """
  @type get_id_mapping_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregation_constraint() :: %{
        "columnName" => String.t(),
        "minimum" => [integer()],
        "type" => String.t()
      }

  """
  @type aggregation_constraint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_id_namespace_association_output() :: %{
        "collaborationIdNamespaceAssociation" => collaboration_id_namespace_association()
      }

  """
  @type get_collaboration_id_namespace_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_privacy_budgets_output() :: %{
        "collaborationPrivacyBudgetSummaries" => list(collaboration_privacy_budget_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_privacy_budgets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_privacy_budget_template() :: %{
        "arn" => String.t(),
        "autoRefresh" => list(any()),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "id" => String.t(),
        "parameters" => list(),
        "privacyBudgetType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_privacy_budget_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_artifact_metadata() :: %{
        "additionalArtifactHashes" => list(hash()),
        "entryPointHash" => hash()
      }

  """
  @type analysis_template_artifact_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_id_namespace_associations_output() :: %{
        "idNamespaceAssociationSummaries" => list(id_namespace_association_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_id_namespace_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_job_compute_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type membership_job_compute_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      billed_resource_utilization() :: %{
        "units" => [float()]
      }

  """
  @type billed_resource_utilization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_analysis_rule_input() :: %{}

  """
  @type get_schema_analysis_rule_input() :: %{}

  @typedoc """

  ## Example:

      protected_job_member_output_configuration_output() :: %{
        "accountId" => String.t()
      }

  """
  @type protected_job_member_output_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_audience_model_association() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "configuredAudienceModelArn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "manageResourcePolicies" => [boolean()],
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_audience_model_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_privacy_budget_template_output() :: %{
        "privacyBudgetTemplate" => privacy_budget_template()
      }

  """
  @type update_privacy_budget_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_status_reason() :: %{
        "code" => list(any()),
        "message" => [String.t()]
      }

  """
  @type schema_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_single_member_output() :: %{
        "accountId" => String.t()
      }

  """
  @type protected_query_single_member_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_id_namespace_association_output() :: %{
        "idNamespaceAssociation" => id_namespace_association()
      }

  """
  @type create_id_namespace_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()],
        "reason" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_configuration() :: %{
        "columns" => list(differential_privacy_column())
      }

  """
  @type differential_privacy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      direct_analysis_configuration_details() :: %{
        "receiverAccountIds" => list(String.t())
      }

  """
  @type direct_analysis_configuration_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_analysis_rule_input() :: %{
        required("schemaAnalysisRuleRequests") => list(schema_analysis_rule_request())
      }

  """
  @type batch_get_schema_analysis_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_protected_query_output() :: %{
        required("protectedQuery") => protected_query()
      }

  """
  @type start_protected_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_configured_table_analysis_rule_output() :: %{
        required("analysisRule") => configured_table_analysis_rule()
      }

  """
  @type create_configured_table_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template() :: %{
        "analysisParameters" => list(analysis_parameter()),
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "format" => list(any()),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "schema" => analysis_schema(),
        "source" => list(),
        "sourceMetadata" => list(),
        "updateTime" => [non_neg_integer()],
        "validations" => list(analysis_template_validation_status_detail())
      }

  """
  @type analysis_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      worker_compute_configuration() :: %{
        "number" => [integer()],
        "type" => list(any())
      }

  """
  @type worker_compute_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_analysis_template_output() :: %{
        required("analysisTemplate") => analysis_template()
      }

  """
  @type get_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_analysis_rule_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()],
        "name" => String.t(),
        "type" => list(any())
      }

  """
  @type batch_get_schema_analysis_rule_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_input() :: %{
        optional("analysisMethod") => list(any()),
        optional("description") => String.t(),
        optional("name") => String.t(),
        optional("selectedAnalysisMethods") => list(list(any())())
      }

  """
  @type update_configured_table_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_association_analysis_rule_list() :: %{
        "allowedAdditionalAnalyses" => list(String.t()),
        "allowedResultReceivers" => list(String.t())
      }

  """
  @type configured_table_association_analysis_rule_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table_association_analysis_rule() :: %{
        "configuredTableAssociationArn" => String.t(),
        "configuredTableAssociationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "membershipIdentifier" => String.t(),
        "policy" => list(),
        "type" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_association_analysis_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_input() :: %{}

  """
  @type get_schema_input() :: %{}

  @typedoc """

  ## Example:

      batch_get_collaboration_analysis_template_error() :: %{
        "arn" => String.t(),
        "code" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type batch_get_collaboration_analysis_template_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_protected_job_input() :: %{}

  """
  @type get_protected_job_input() :: %{}

  @typedoc """

  ## Example:

      list_collaborations_output() :: %{
        optional("nextToken") => String.t(),
        required("collaborationList") => list(collaboration_summary())
      }

  """
  @type list_collaborations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_id_namespace_association_input() :: %{}

  """
  @type delete_id_namespace_association_input() :: %{}

  @typedoc """

  ## Example:

      configured_table_association_summary() :: %{
        "analysisRuleTypes" => list(list(any())()),
        "arn" => String.t(),
        "configuredTableId" => String.t(),
        "createTime" => [non_neg_integer()],
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_configured_audience_model_association_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_configured_audience_model_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t()],
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      collaboration_id_namespace_association() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "idMappingConfig" => id_mapping_config(),
        "inputReferenceConfig" => id_namespace_association_input_reference_config(),
        "inputReferenceProperties" => id_namespace_association_input_reference_properties(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_id_namespace_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_template_parameters_output() :: %{
        "epsilon" => integer(),
        "usersNoisePerQuery" => integer()
      }

  """
  @type differential_privacy_template_parameters_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      delete_collaboration_output() :: %{}

  """
  @type delete_collaboration_output() :: %{}

  @typedoc """

  ## Example:

      snowflake_table_reference() :: %{
        "accountIdentifier" => String.t(),
        "databaseName" => String.t(),
        "schemaName" => String.t(),
        "secretArn" => String.t(),
        "tableName" => String.t(),
        "tableSchema" => list()
      }

  """
  @type snowflake_table_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_protected_jobs_output() :: %{
        "nextToken" => String.t(),
        "protectedJobs" => list(protected_job_summary())
      }

  """
  @type list_protected_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_protected_job_output() :: %{
        "protectedJob" => protected_job()
      }

  """
  @type get_protected_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_analysis_rule_output() :: %{
        required("analysisRule") => analysis_rule()
      }

  """
  @type get_schema_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_analysis_template_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_analysis_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_s_q_l_parameters() :: %{
        "analysisTemplateArn" => String.t(),
        "parameters" => map(),
        "queryString" => [String.t()]
      }

  """
  @type protected_query_s_q_l_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_id_namespace_association_input() :: %{}

  """
  @type get_id_namespace_association_input() :: %{}

  @typedoc """

  ## Example:

      update_protected_job_input() :: %{
        required("targetStatus") => list(any())
      }

  """
  @type update_protected_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_member_output_configuration_input() :: %{
        "accountId" => String.t()
      }

  """
  @type protected_job_member_output_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_output() :: %{
        required("collaboration") => collaboration()
      }

  """
  @type get_collaboration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_id_mapping_table_input() :: %{}

  """
  @type get_id_mapping_table_input() :: %{}

  @typedoc """

  ## Example:

      delete_configured_table_association_analysis_rule_input() :: %{}

  """
  @type delete_configured_table_association_analysis_rule_input() :: %{}

  @typedoc """

  ## Example:

      protected_query_statistics() :: %{
        "billedResourceUtilization" => billed_resource_utilization(),
        "totalDurationInMillis" => [float()]
      }

  """
  @type protected_query_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type analysis_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_audience_model_association_output() :: %{
        "configuredAudienceModelAssociation" => configured_audience_model_association()
      }

  """
  @type update_configured_audience_model_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_membership_output() :: %{
        required("membership") => membership()
      }

  """
  @type update_membership_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_membership_input() :: %{
        optional("defaultJobResultConfiguration") => membership_protected_job_result_configuration(),
        optional("defaultResultConfiguration") => membership_protected_query_result_configuration(),
        optional("jobLogStatus") => list(any()),
        optional("queryLogStatus") => list(any())
      }

  """
  @type update_membership_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_summary() :: %{
        "abilities" => list(list(any())()),
        "accountId" => String.t(),
        "createTime" => [non_neg_integer()],
        "displayName" => String.t(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "mlAbilities" => ml_member_abilities(),
        "paymentConfiguration" => payment_configuration(),
        "status" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type member_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_collaboration_analysis_template_output() :: %{
        required("collaborationAnalysisTemplates") => list(collaboration_analysis_template()),
        required("errors") => list(batch_get_collaboration_analysis_template_error())
      }

  """
  @type batch_get_collaboration_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_input() :: %{
        required("names") => list(String.t())
      }

  """
  @type batch_get_schema_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glue_table_reference() :: %{
        "databaseName" => String.t(),
        "tableName" => String.t()
      }

  """
  @type glue_table_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()]
      }

  """
  @type protected_query_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_analysis_template_output() :: %{}

  """
  @type delete_analysis_template_output() :: %{}

  @typedoc """

  ## Example:

      get_configured_table_association_output() :: %{
        required("configuredTableAssociation") => configured_table_association()
      }

  """
  @type get_configured_table_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_membership_output() :: %{
        required("membership") => membership()
      }

  """
  @type create_membership_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_payment_configuration() :: %{
        "jobCompute" => membership_job_compute_payment_config(),
        "machineLearning" => membership_ml_payment_config(),
        "queryCompute" => membership_query_compute_payment_config()
      }

  """
  @type membership_payment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_membership_input() :: %{}

  """
  @type get_membership_input() :: %{}

  @typedoc """

  ## Example:

      consolidated_policy_aggregation() :: %{
        "additionalAnalyses" => list(any()),
        "aggregateColumns" => list(aggregate_column()),
        "allowedAdditionalAnalyses" => list(String.t()),
        "allowedJoinOperators" => list(String.t()),
        "allowedResultReceivers" => list(String.t()),
        "dimensionColumns" => list(String.t()),
        "joinColumns" => list(String.t()),
        "joinRequired" => String.t(),
        "outputConstraints" => list(aggregation_constraint()),
        "scalarFunctions" => list(String.t())
      }

  """
  @type consolidated_policy_aggregation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_ml_payment_config() :: %{
        "modelInference" => membership_model_inference_payment_config(),
        "modelTraining" => membership_model_training_payment_config()
      }

  """
  @type membership_ml_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_audience_model_association_input() :: %{}

  """
  @type get_configured_audience_model_association_input() :: %{}

  @typedoc """

  ## Example:

      create_configured_audience_model_association_output() :: %{
        "configuredAudienceModelAssociation" => configured_audience_model_association()
      }

  """
  @type create_configured_audience_model_association_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_table_input_source() :: %{
        "idNamespaceAssociationId" => [String.t()],
        "type" => list(any())
      }

  """
  @type id_mapping_table_input_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_protected_query_input() :: %{
        optional("computeConfiguration") => list(),
        optional("resultConfiguration") => protected_query_result_configuration(),
        required("sqlParameters") => protected_query_s_q_l_parameters(),
        required("type") => String.t()
      }

  """
  @type start_protected_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      collaboration_privacy_budget_template_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "creatorAccountId" => String.t(),
        "id" => String.t(),
        "privacyBudgetType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type collaboration_privacy_budget_template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      payment_configuration() :: %{
        "jobCompute" => job_compute_payment_config(),
        "machineLearning" => ml_payment_config(),
        "queryCompute" => query_compute_payment_config()
      }

  """
  @type payment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configured_table() :: %{
        "allowedColumns" => list(String.t()),
        "analysisMethod" => list(any()),
        "analysisRuleTypes" => list(list(any())()),
        "arn" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "selectedAnalysisMethods" => list(list(any())()),
        "tableReference" => list(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type configured_table() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_analysis_template_output() :: %{
        required("collaborationAnalysisTemplate") => collaboration_analysis_template()
      }

  """
  @type get_collaboration_analysis_template_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ml_payment_config() :: %{
        "modelInference" => model_inference_payment_config(),
        "modelTraining" => model_training_payment_config()
      }

  """
  @type ml_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_s3_output_configuration_output() :: %{
        "bucket" => [String.t()],
        "keyPrefix" => String.t()
      }

  """
  @type protected_job_s3_output_configuration_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_validation_status_reason() :: %{
        "message" => [String.t()]
      }

  """
  @type analysis_template_validation_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snowflake_table_schema_v1() :: %{
        "columnName" => String.t(),
        "columnType" => String.t()
      }

  """
  @type snowflake_table_schema_v1() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_input() :: %{}

  """
  @type get_configured_table_input() :: %{}

  @typedoc """

  ## Example:

      model_training_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type model_training_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregate_column() :: %{
        "columnNames" => list(String.t()),
        "function" => String.t()
      }

  """
  @type aggregate_column() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_privacy_budget_template_input() :: %{}

  """
  @type get_privacy_budget_template_input() :: %{}

  @typedoc """

  ## Example:

      create_analysis_template_input() :: %{
        optional("analysisParameters") => list(analysis_parameter()),
        optional("description") => String.t(),
        optional("schema") => analysis_schema(),
        optional("tags") => map(),
        required("format") => list(any()),
        required("name") => String.t(),
        required("source") => list()
      }

  """
  @type create_analysis_template_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_id_namespace_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_id_namespace_associations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_configured_tables_output() :: %{
        optional("nextToken") => String.t(),
        required("configuredTableSummaries") => list(configured_table_summary())
      }

  """
  @type list_configured_tables_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_namespace_association() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "idMappingConfig" => id_mapping_config(),
        "inputReferenceConfig" => id_namespace_association_input_reference_config(),
        "inputReferenceProperties" => id_namespace_association_input_reference_properties(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type id_namespace_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_job_parameters() :: %{
        "analysisTemplateArn" => String.t()
      }

  """
  @type protected_job_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_collaboration_configured_audience_model_association_input() :: %{}

  """
  @type get_collaboration_configured_audience_model_association_input() :: %{}

  @typedoc """

  ## Example:

      list_collaborations_input() :: %{
        optional("maxResults") => integer(),
        optional("memberStatus") => String.t(),
        optional("nextToken") => String.t()
      }

  """
  @type list_collaborations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      protected_query_s3_output_configuration() :: %{
        "bucket" => [String.t()],
        "keyPrefix" => String.t(),
        "resultFormat" => String.t(),
        "singleFileOutput" => [boolean()]
      }

  """
  @type protected_query_s3_output_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_encryption_metadata() :: %{
        "allowCleartext" => [boolean()],
        "allowDuplicates" => [boolean()],
        "allowJoinsOnColumnsWithDifferentNames" => [boolean()],
        "preserveNulls" => [boolean()]
      }

  """
  @type data_encryption_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_model_training_payment_config() :: %{
        "isResponsible" => [boolean()]
      }

  """
  @type membership_model_training_payment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_protected_job_output() :: %{
        "protectedJob" => protected_job()
      }

  """
  @type start_protected_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_namespace_association_input_reference_properties_summary() :: %{
        "idNamespaceType" => list(any())
      }

  """
  @type id_namespace_association_input_reference_properties_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_schema_error() :: %{
        "code" => [String.t()],
        "message" => [String.t()],
        "name" => String.t()
      }

  """
  @type batch_get_schema_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      preview_privacy_impact_output() :: %{
        "privacyImpact" => list()
      }

  """
  @type preview_privacy_impact_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_specification() :: %{
        "accountId" => String.t(),
        "displayName" => String.t(),
        "memberAbilities" => list(list(any())()),
        "mlMemberAbilities" => ml_member_abilities(),
        "paymentConfiguration" => payment_configuration()
      }

  """
  @type member_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_membership_input() :: %{}

  """
  @type delete_membership_input() :: %{}

  @typedoc """

  ## Example:

      id_mapping_table_input_reference_properties() :: %{
        "idMappingTableInputSource" => list(id_mapping_table_input_source())
      }

  """
  @type id_mapping_table_input_reference_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationCreatorAccountId" => String.t(),
        "collaborationCreatorDisplayName" => String.t(),
        "collaborationId" => String.t(),
        "collaborationName" => String.t(),
        "createTime" => [non_neg_integer()],
        "defaultJobResultConfiguration" => membership_protected_job_result_configuration(),
        "defaultResultConfiguration" => membership_protected_query_result_configuration(),
        "id" => String.t(),
        "jobLogStatus" => list(any()),
        "memberAbilities" => list(list(any())()),
        "mlMemberAbilities" => ml_member_abilities(),
        "paymentConfiguration" => membership_payment_configuration(),
        "queryLogStatus" => list(any()),
        "status" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_configured_table_association_analysis_rule_output() :: %{
        "analysisRule" => configured_table_association_analysis_rule()
      }

  """
  @type update_configured_table_association_analysis_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_configured_table_output() :: %{}

  """
  @type delete_configured_table_output() :: %{}

  @typedoc """

  ## Example:

      id_mapping_table_summary() :: %{
        "arn" => String.t(),
        "collaborationArn" => String.t(),
        "collaborationId" => String.t(),
        "createTime" => [non_neg_integer()],
        "description" => String.t(),
        "id" => String.t(),
        "inputReferenceConfig" => id_mapping_table_input_reference_config(),
        "membershipArn" => String.t(),
        "membershipId" => String.t(),
        "name" => String.t(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type id_mapping_table_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      populate_id_mapping_table_input() :: %{}

  """
  @type populate_id_mapping_table_input() :: %{}

  @typedoc """

  ## Example:

      create_configured_table_association_input() :: %{
        optional("description") => String.t(),
        optional("tags") => map(),
        required("configuredTableIdentifier") => String.t(),
        required("name") => String.t(),
        required("roleArn") => String.t()
      }

  """
  @type create_configured_table_association_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      id_mapping_table_input_reference_config() :: %{
        "inputReferenceArn" => String.t(),
        "manageResourcePolicies" => [boolean()]
      }

  """
  @type id_mapping_table_input_reference_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analysis_template_artifact() :: %{
        "location" => s3_location()
      }

  """
  @type analysis_template_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      differential_privacy_sensitivity_parameters() :: %{
        "aggregationExpression" => String.t(),
        "aggregationType" => list(any()),
        "maxColumnValue" => [float()],
        "minColumnValue" => [float()],
        "userContributionLimit" => [integer()]
      }

  """
  @type differential_privacy_sensitivity_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_id_mapping_tables_output() :: %{
        "idMappingTableSummaries" => list(id_mapping_table_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_id_mapping_tables_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_configured_table_output() :: %{
        required("configuredTable") => configured_table()
      }

  """
  @type get_configured_table_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_collaboration_id_namespace_associations_output() :: %{
        "collaborationIdNamespaceAssociationSummaries" => list(collaboration_id_namespace_association_summary()),
        "nextToken" => String.t()
      }

  """
  @type list_collaboration_id_namespace_associations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_privacy_budgets_output() :: %{
        "nextToken" => String.t(),
        "privacyBudgetSummaries" => list(privacy_budget_summary())
      }

  """
  @type list_privacy_budgets_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_privacy_budget_template_output() :: %{}

  """
  @type delete_privacy_budget_template_output() :: %{}

  @type batch_get_collaboration_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_schema_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_schema_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_collaboration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_table_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_table_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_configured_table_association_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_id_mapping_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_id_namespace_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_collaboration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_configured_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configured_table_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configured_table_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_configured_table_association_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_id_mapping_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_id_namespace_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_member_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_collaboration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_collaboration_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_collaboration_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_collaboration_id_namespace_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_collaboration_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_table_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_table_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_configured_table_association_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_id_mapping_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_id_namespace_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_protected_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_protected_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_schema_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_schema_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_analysis_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_analysis_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_configured_audience_model_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_id_namespace_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_privacy_budget_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaboration_privacy_budgets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_collaborations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_configured_audience_model_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_configured_table_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_configured_tables_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_id_mapping_tables_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_id_namespace_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_members_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_memberships_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_privacy_budget_templates_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_privacy_budgets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_protected_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_protected_queries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_schemas_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type populate_id_mapping_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type preview_privacy_impact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_protected_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_protected_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_analysis_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_collaboration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_configured_audience_model_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_configured_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configured_table_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configured_table_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_configured_table_association_analysis_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_id_mapping_table_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_id_namespace_association_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_membership_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_privacy_budget_template_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_protected_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_protected_query_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-02-17",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cleanrooms",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CleanRooms",
      signature_version: "v4",
      signing_name: "cleanrooms",
      target_prefix: nil
    }
  end

  @doc """
  Retrieves multiple analysis templates within a collaboration by their Amazon
  Resource Names (ARNs).
  """
  @spec batch_get_collaboration_analysis_template(
          map(),
          String.t(),
          batch_get_collaboration_analysis_template_input(),
          list()
        ) ::
          {:ok, batch_get_collaboration_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_collaboration_analysis_template_errors()}
  def batch_get_collaboration_analysis_template(
        %Client{} = client,
        collaboration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/batch-analysistemplates"

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
  Retrieves multiple schemas by their identifiers.
  """
  @spec batch_get_schema(map(), String.t(), batch_get_schema_input(), list()) ::
          {:ok, batch_get_schema_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_schema_errors()}
  def batch_get_schema(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/batch-schema"
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
  Retrieves multiple analysis rule schemas.
  """
  @spec batch_get_schema_analysis_rule(
          map(),
          String.t(),
          batch_get_schema_analysis_rule_input(),
          list()
        ) ::
          {:ok, batch_get_schema_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_schema_analysis_rule_errors()}
  def batch_get_schema_analysis_rule(
        %Client{} = client,
        collaboration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/batch-schema-analysis-rule"

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
  Creates a new analysis template.
  """
  @spec create_analysis_template(map(), String.t(), create_analysis_template_input(), list()) ::
          {:ok, create_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_analysis_template_errors()}
  def create_analysis_template(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates"
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
  Creates a new collaboration.
  """
  @spec create_collaboration(map(), create_collaboration_input(), list()) ::
          {:ok, create_collaboration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_collaboration_errors()}
  def create_collaboration(%Client{} = client, input, options \\ []) do
    url_path = "/collaborations"
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
  Provides the details necessary to create a configured audience model
  association.
  """
  @spec create_configured_audience_model_association(
          map(),
          String.t(),
          create_configured_audience_model_association_input(),
          list()
        ) ::
          {:ok, create_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configured_audience_model_association_errors()}
  def create_configured_audience_model_association(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations"

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
  Creates a new configured table resource.
  """
  @spec create_configured_table(map(), create_configured_table_input(), list()) ::
          {:ok, create_configured_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configured_table_errors()}
  def create_configured_table(%Client{} = client, input, options \\ []) do
    url_path = "/configuredTables"
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
  Creates a new analysis rule for a configured table.

  Currently, only one analysis rule can be created for a given configured table.
  """
  @spec create_configured_table_analysis_rule(
          map(),
          String.t(),
          create_configured_table_analysis_rule_input(),
          list()
        ) ::
          {:ok, create_configured_table_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configured_table_analysis_rule_errors()}
  def create_configured_table_analysis_rule(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule"

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
  Creates a configured table association.

  A configured table association links a configured table with a collaboration.
  """
  @spec create_configured_table_association(
          map(),
          String.t(),
          create_configured_table_association_input(),
          list()
        ) ::
          {:ok, create_configured_table_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configured_table_association_errors()}
  def create_configured_table_association(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations"

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
  Creates a new analysis rule for an associated configured table.
  """
  @spec create_configured_table_association_analysis_rule(
          map(),
          String.t(),
          String.t(),
          create_configured_table_association_analysis_rule_input(),
          list()
        ) ::
          {:ok, create_configured_table_association_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_configured_table_association_analysis_rule_errors()}
  def create_configured_table_association_analysis_rule(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}/analysisRule"

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
  Creates an ID mapping table.
  """
  @spec create_id_mapping_table(map(), String.t(), create_id_mapping_table_input(), list()) ::
          {:ok, create_id_mapping_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_id_mapping_table_errors()}
  def create_id_mapping_table(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idmappingtables"
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
  Creates an ID namespace association.
  """
  @spec create_id_namespace_association(
          map(),
          String.t(),
          create_id_namespace_association_input(),
          list()
        ) ::
          {:ok, create_id_namespace_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_id_namespace_association_errors()}
  def create_id_namespace_association(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idnamespaceassociations"

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
  Creates a membership for a specific collaboration identifier and joins the
  collaboration.
  """
  @spec create_membership(map(), create_membership_input(), list()) ::
          {:ok, create_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_membership_errors()}
  def create_membership(%Client{} = client, input, options \\ []) do
    url_path = "/memberships"
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
  Creates a privacy budget template for a specified membership.

  Each membership can have only one privacy budget template, but it can be deleted
  and recreated. If you need to change the privacy budget template for a
  membership, use the `UpdatePrivacyBudgetTemplate` operation.
  """
  @spec create_privacy_budget_template(
          map(),
          String.t(),
          create_privacy_budget_template_input(),
          list()
        ) ::
          {:ok, create_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_privacy_budget_template_errors()}
  def create_privacy_budget_template(
        %Client{} = client,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates"
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
  Deletes an analysis template.
  """
  @spec delete_analysis_template(
          map(),
          String.t(),
          String.t(),
          delete_analysis_template_input(),
          list()
        ) ::
          {:ok, delete_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_analysis_template_errors()}
  def delete_analysis_template(
        %Client{} = client,
        analysis_template_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates/#{AWS.Util.encode_uri(analysis_template_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes a collaboration.

  It can only be called by the collaboration owner.
  """
  @spec delete_collaboration(map(), String.t(), delete_collaboration_input(), list()) ::
          {:ok, delete_collaboration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_collaboration_errors()}
  def delete_collaboration(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"
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
      204
    )
  end

  @doc """
  Provides the information necessary to delete a configured audience model
  association.
  """
  @spec delete_configured_audience_model_association(
          map(),
          String.t(),
          String.t(),
          delete_configured_audience_model_association_input(),
          list()
        ) ::
          {:ok, delete_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configured_audience_model_association_errors()}
  def delete_configured_audience_model_association(
        %Client{} = client,
        configured_audience_model_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations/#{AWS.Util.encode_uri(configured_audience_model_association_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes a configured table.
  """
  @spec delete_configured_table(map(), String.t(), delete_configured_table_input(), list()) ::
          {:ok, delete_configured_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configured_table_errors()}
  def delete_configured_table(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"
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
      204
    )
  end

  @doc """
  Deletes a configured table analysis rule.
  """
  @spec delete_configured_table_analysis_rule(
          map(),
          String.t(),
          String.t(),
          delete_configured_table_analysis_rule_input(),
          list()
        ) ::
          {:ok, delete_configured_table_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configured_table_analysis_rule_errors()}
  def delete_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

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
      204
    )
  end

  @doc """
  Deletes a configured table association.
  """
  @spec delete_configured_table_association(
          map(),
          String.t(),
          String.t(),
          delete_configured_table_association_input(),
          list()
        ) ::
          {:ok, delete_configured_table_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configured_table_association_errors()}
  def delete_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes an analysis rule for a configured table association.
  """
  @spec delete_configured_table_association_analysis_rule(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_configured_table_association_analysis_rule_input(),
          list()
        ) ::
          {:ok, delete_configured_table_association_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_configured_table_association_analysis_rule_errors()}
  def delete_configured_table_association_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

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
      204
    )
  end

  @doc """
  Deletes an ID mapping table.
  """
  @spec delete_id_mapping_table(
          map(),
          String.t(),
          String.t(),
          delete_id_mapping_table_input(),
          list()
        ) ::
          {:ok, delete_id_mapping_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_id_mapping_table_errors()}
  def delete_id_mapping_table(
        %Client{} = client,
        id_mapping_table_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idmappingtables/#{AWS.Util.encode_uri(id_mapping_table_identifier)}"

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
      204
    )
  end

  @doc """
  Deletes an ID namespace association.
  """
  @spec delete_id_namespace_association(
          map(),
          String.t(),
          String.t(),
          delete_id_namespace_association_input(),
          list()
        ) ::
          {:ok, delete_id_namespace_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_id_namespace_association_errors()}
  def delete_id_namespace_association(
        %Client{} = client,
        id_namespace_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idnamespaceassociations/#{AWS.Util.encode_uri(id_namespace_association_identifier)}"

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
      204
    )
  end

  @doc """
  Removes the specified member from a collaboration.

  The removed member is placed in the Removed status and can't interact with the
  collaboration. The removed member's data is inaccessible to active members of
  the collaboration.
  """
  @spec delete_member(map(), String.t(), String.t(), delete_member_input(), list()) ::
          {:ok, delete_member_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_member_errors()}
  def delete_member(
        %Client{} = client,
        account_id,
        collaboration_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/member/#{AWS.Util.encode_uri(account_id)}"

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
      204
    )
  end

  @doc """
  Deletes a specified membership.

  All resources under a membership must be deleted.
  """
  @spec delete_membership(map(), String.t(), delete_membership_input(), list()) ::
          {:ok, delete_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_membership_errors()}
  def delete_membership(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"
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
      204
    )
  end

  @doc """
  Deletes a privacy budget template for a specified membership.
  """
  @spec delete_privacy_budget_template(
          map(),
          String.t(),
          String.t(),
          delete_privacy_budget_template_input(),
          list()
        ) ::
          {:ok, delete_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_privacy_budget_template_errors()}
  def delete_privacy_budget_template(
        %Client{} = client,
        membership_identifier,
        privacy_budget_template_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates/#{AWS.Util.encode_uri(privacy_budget_template_identifier)}"

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
      204
    )
  end

  @doc """
  Retrieves an analysis template.
  """
  @spec get_analysis_template(map(), String.t(), String.t(), list()) ::
          {:ok, get_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_analysis_template_errors()}
  def get_analysis_template(
        %Client{} = client,
        analysis_template_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates/#{AWS.Util.encode_uri(analysis_template_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata about a collaboration.
  """
  @spec get_collaboration(map(), String.t(), list()) ::
          {:ok, get_collaboration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_collaboration_errors()}
  def get_collaboration(%Client{} = client, collaboration_identifier, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves an analysis template within a collaboration.
  """
  @spec get_collaboration_analysis_template(map(), String.t(), String.t(), list()) ::
          {:ok, get_collaboration_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_collaboration_analysis_template_errors()}
  def get_collaboration_analysis_template(
        %Client{} = client,
        analysis_template_arn,
        collaboration_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/analysistemplates/#{AWS.Util.encode_uri(analysis_template_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a configured audience model association within a collaboration.
  """
  @spec get_collaboration_configured_audience_model_association(
          map(),
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, get_collaboration_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_collaboration_configured_audience_model_association_errors()}
  def get_collaboration_configured_audience_model_association(
        %Client{} = client,
        collaboration_identifier,
        configured_audience_model_association_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/configuredaudiencemodelassociations/#{AWS.Util.encode_uri(configured_audience_model_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves an ID namespace association from a specific collaboration.
  """
  @spec get_collaboration_id_namespace_association(map(), String.t(), String.t(), list()) ::
          {:ok, get_collaboration_id_namespace_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_collaboration_id_namespace_association_errors()}
  def get_collaboration_id_namespace_association(
        %Client{} = client,
        collaboration_identifier,
        id_namespace_association_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/idnamespaceassociations/#{AWS.Util.encode_uri(id_namespace_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a specified privacy budget template.
  """
  @spec get_collaboration_privacy_budget_template(map(), String.t(), String.t(), list()) ::
          {:ok, get_collaboration_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_collaboration_privacy_budget_template_errors()}
  def get_collaboration_privacy_budget_template(
        %Client{} = client,
        collaboration_identifier,
        privacy_budget_template_identifier,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/privacybudgettemplates/#{AWS.Util.encode_uri(privacy_budget_template_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a configured audience model association.
  """
  @spec get_configured_audience_model_association(map(), String.t(), String.t(), list()) ::
          {:ok, get_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configured_audience_model_association_errors()}
  def get_configured_audience_model_association(
        %Client{} = client,
        configured_audience_model_association_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations/#{AWS.Util.encode_uri(configured_audience_model_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a configured table.
  """
  @spec get_configured_table(map(), String.t(), list()) ::
          {:ok, get_configured_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configured_table_errors()}
  def get_configured_table(%Client{} = client, configured_table_identifier, options \\ []) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a configured table analysis rule.
  """
  @spec get_configured_table_analysis_rule(map(), String.t(), String.t(), list()) ::
          {:ok, get_configured_table_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configured_table_analysis_rule_errors()}
  def get_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a configured table association.
  """
  @spec get_configured_table_association(map(), String.t(), String.t(), list()) ::
          {:ok, get_configured_table_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configured_table_association_errors()}
  def get_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the analysis rule for a configured table association.
  """
  @spec get_configured_table_association_analysis_rule(
          map(),
          String.t(),
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, get_configured_table_association_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_configured_table_association_analysis_rule_errors()}
  def get_configured_table_association_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_association_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves an ID mapping table.
  """
  @spec get_id_mapping_table(map(), String.t(), String.t(), list()) ::
          {:ok, get_id_mapping_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_id_mapping_table_errors()}
  def get_id_mapping_table(
        %Client{} = client,
        id_mapping_table_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idmappingtables/#{AWS.Util.encode_uri(id_mapping_table_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves an ID namespace association.
  """
  @spec get_id_namespace_association(map(), String.t(), String.t(), list()) ::
          {:ok, get_id_namespace_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_id_namespace_association_errors()}
  def get_id_namespace_association(
        %Client{} = client,
        id_namespace_association_identifier,
        membership_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idnamespaceassociations/#{AWS.Util.encode_uri(id_namespace_association_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a specified membership for an identifier.
  """
  @spec get_membership(map(), String.t(), list()) ::
          {:ok, get_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_membership_errors()}
  def get_membership(%Client{} = client, membership_identifier, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details for a specified privacy budget template.
  """
  @spec get_privacy_budget_template(map(), String.t(), String.t(), list()) ::
          {:ok, get_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_privacy_budget_template_errors()}
  def get_privacy_budget_template(
        %Client{} = client,
        membership_identifier,
        privacy_budget_template_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates/#{AWS.Util.encode_uri(privacy_budget_template_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns job processing metadata.
  """
  @spec get_protected_job(map(), String.t(), String.t(), list()) ::
          {:ok, get_protected_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_protected_job_errors()}
  def get_protected_job(
        %Client{} = client,
        membership_identifier,
        protected_job_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedJobs/#{AWS.Util.encode_uri(protected_job_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns query processing metadata.
  """
  @spec get_protected_query(map(), String.t(), String.t(), list()) ::
          {:ok, get_protected_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_protected_query_errors()}
  def get_protected_query(
        %Client{} = client,
        membership_identifier,
        protected_query_identifier,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries/#{AWS.Util.encode_uri(protected_query_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the schema for a relation within a collaboration.
  """
  @spec get_schema(map(), String.t(), String.t(), list()) ::
          {:ok, get_schema_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schema_errors()}
  def get_schema(%Client{} = client, collaboration_identifier, name, options \\ []) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a schema analysis rule.
  """
  @spec get_schema_analysis_rule(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_schema_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schema_analysis_rule_errors()}
  def get_schema_analysis_rule(
        %Client{} = client,
        collaboration_identifier,
        name,
        type,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas/#{AWS.Util.encode_uri(name)}/analysisRule/#{AWS.Util.encode_uri(type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists analysis templates that the caller owns.
  """
  @spec list_analysis_templates(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_analysis_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_analysis_templates_errors()}
  def list_analysis_templates(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists analysis templates within a collaboration.
  """
  @spec list_collaboration_analysis_templates(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_analysis_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collaboration_analysis_templates_errors()}
  def list_collaboration_analysis_templates(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/analysistemplates"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists configured audience model associations within a collaboration.
  """
  @spec list_collaboration_configured_audience_model_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_configured_audience_model_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collaboration_configured_audience_model_associations_errors()}
  def list_collaboration_configured_audience_model_associations(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/configuredaudiencemodelassociations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the ID namespace associations in a collaboration.
  """
  @spec list_collaboration_id_namespace_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_id_namespace_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collaboration_id_namespace_associations_errors()}
  def list_collaboration_id_namespace_associations(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/idnamespaceassociations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an array that summarizes each privacy budget template in a specified
  collaboration.
  """
  @spec list_collaboration_privacy_budget_templates(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_collaboration_privacy_budget_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collaboration_privacy_budget_templates_errors()}
  def list_collaboration_privacy_budget_templates(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/privacybudgettemplates"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an array that summarizes each privacy budget in a specified
  collaboration.

  The summary includes the collaboration ARN, creation time, creating account, and
  privacy budget details.
  """
  @spec list_collaboration_privacy_budgets(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_collaboration_privacy_budgets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collaboration_privacy_budgets_errors()}
  def list_collaboration_privacy_budgets(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        privacy_budget_type,
        options \\ []
      ) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/privacybudgets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(privacy_budget_type) do
        [{"privacyBudgetType", privacy_budget_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists collaborations the caller owns, is active in, or has been invited to.
  """
  @spec list_collaborations(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_collaborations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_collaborations_errors()}
  def list_collaborations(
        %Client{} = client,
        max_results \\ nil,
        member_status \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/collaborations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(member_status) do
        [{"memberStatus", member_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists information about requested configured audience model associations.
  """
  @spec list_configured_audience_model_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_configured_audience_model_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configured_audience_model_associations_errors()}
  def list_configured_audience_model_associations(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists configured table associations for a membership.
  """
  @spec list_configured_table_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_configured_table_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configured_table_associations_errors()}
  def list_configured_table_associations(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists configured tables.
  """
  @spec list_configured_tables(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_configured_tables_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configured_tables_errors()}
  def list_configured_tables(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/configuredTables"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of ID mapping tables.
  """
  @spec list_id_mapping_tables(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_id_mapping_tables_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_id_mapping_tables_errors()}
  def list_id_mapping_tables(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idmappingtables"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of ID namespace associations.
  """
  @spec list_id_namespace_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_id_namespace_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_id_namespace_associations_errors()}
  def list_id_namespace_associations(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idnamespaceassociations"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all members within a collaboration.
  """
  @spec list_members(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_members_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_members_errors()}
  def list_members(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/members"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all memberships resources within the caller's account.
  """
  @spec list_memberships(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_memberships_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_memberships_errors()}
  def list_memberships(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/memberships"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about the privacy budget templates in a specified
  membership.
  """
  @spec list_privacy_budget_templates(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_privacy_budget_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_privacy_budget_templates_errors()}
  def list_privacy_budget_templates(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed information about the privacy budgets in a specified
  membership.
  """
  @spec list_privacy_budgets(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_privacy_budgets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_privacy_budgets_errors()}
  def list_privacy_budgets(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        privacy_budget_type,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(privacy_budget_type) do
        [{"privacyBudgetType", privacy_budget_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists protected jobs, sorted by most recent job.
  """
  @spec list_protected_jobs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_protected_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_protected_jobs_errors()}
  def list_protected_jobs(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedJobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists protected queries, sorted by the most recent query.
  """
  @spec list_protected_queries(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_protected_queries_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_protected_queries_errors()}
  def list_protected_queries(
        %Client{} = client,
        membership_identifier,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the schemas for relations within a collaboration.
  """
  @spec list_schemas(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_schemas_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schemas_errors()}
  def list_schemas(
        %Client{} = client,
        collaboration_identifier,
        max_results \\ nil,
        next_token \\ nil,
        schema_type \\ nil,
        options \\ []
      ) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}/schemas"
    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_type) do
        [{"schemaType", schema_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the tags that have been added to a resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Defines the information that's necessary to populate an ID mapping table.
  """
  @spec populate_id_mapping_table(
          map(),
          String.t(),
          String.t(),
          populate_id_mapping_table_input(),
          list()
        ) ::
          {:ok, populate_id_mapping_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, populate_id_mapping_table_errors()}
  def populate_id_mapping_table(
        %Client{} = client,
        id_mapping_table_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idmappingtables/#{AWS.Util.encode_uri(id_mapping_table_identifier)}/populate"

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
  An estimate of the number of aggregation functions that the member who can query
  can run given epsilon and noise parameters.
  """
  @spec preview_privacy_impact(map(), String.t(), preview_privacy_impact_input(), list()) ::
          {:ok, preview_privacy_impact_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, preview_privacy_impact_errors()}
  def preview_privacy_impact(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/previewprivacyimpact"
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
  Creates a protected job that is started by Clean Rooms.
  """
  @spec start_protected_job(map(), String.t(), start_protected_job_input(), list()) ::
          {:ok, start_protected_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_protected_job_errors()}
  def start_protected_job(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedJobs"
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
  Creates a protected query that is started by Clean Rooms.
  """
  @spec start_protected_query(map(), String.t(), start_protected_query_input(), list()) ::
          {:ok, start_protected_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_protected_query_errors()}
  def start_protected_query(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries"
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
  Tags a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Removes a tag or list of tags from a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the analysis template metadata.
  """
  @spec update_analysis_template(
          map(),
          String.t(),
          String.t(),
          update_analysis_template_input(),
          list()
        ) ::
          {:ok, update_analysis_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_analysis_template_errors()}
  def update_analysis_template(
        %Client{} = client,
        analysis_template_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/analysistemplates/#{AWS.Util.encode_uri(analysis_template_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates collaboration metadata and can only be called by the collaboration
  owner.
  """
  @spec update_collaboration(map(), String.t(), update_collaboration_input(), list()) ::
          {:ok, update_collaboration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_collaboration_errors()}
  def update_collaboration(%Client{} = client, collaboration_identifier, input, options \\ []) do
    url_path = "/collaborations/#{AWS.Util.encode_uri(collaboration_identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides the details necessary to update a configured audience model
  association.
  """
  @spec update_configured_audience_model_association(
          map(),
          String.t(),
          String.t(),
          update_configured_audience_model_association_input(),
          list()
        ) ::
          {:ok, update_configured_audience_model_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configured_audience_model_association_errors()}
  def update_configured_audience_model_association(
        %Client{} = client,
        configured_audience_model_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredaudiencemodelassociations/#{AWS.Util.encode_uri(configured_audience_model_association_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table.
  """
  @spec update_configured_table(map(), String.t(), update_configured_table_input(), list()) ::
          {:ok, update_configured_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configured_table_errors()}
  def update_configured_table(
        %Client{} = client,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path = "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table analysis rule.
  """
  @spec update_configured_table_analysis_rule(
          map(),
          String.t(),
          String.t(),
          update_configured_table_analysis_rule_input(),
          list()
        ) ::
          {:ok, update_configured_table_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configured_table_analysis_rule_errors()}
  def update_configured_table_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/configuredTables/#{AWS.Util.encode_uri(configured_table_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a configured table association.
  """
  @spec update_configured_table_association(
          map(),
          String.t(),
          String.t(),
          update_configured_table_association_input(),
          list()
        ) ::
          {:ok, update_configured_table_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configured_table_association_errors()}
  def update_configured_table_association(
        %Client{} = client,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the analysis rule for a configured table association.
  """
  @spec update_configured_table_association_analysis_rule(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_configured_table_association_analysis_rule_input(),
          list()
        ) ::
          {:ok, update_configured_table_association_analysis_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_configured_table_association_analysis_rule_errors()}
  def update_configured_table_association_analysis_rule(
        %Client{} = client,
        analysis_rule_type,
        configured_table_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/configuredTableAssociations/#{AWS.Util.encode_uri(configured_table_association_identifier)}/analysisRule/#{AWS.Util.encode_uri(analysis_rule_type)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides the details that are necessary to update an ID mapping table.
  """
  @spec update_id_mapping_table(
          map(),
          String.t(),
          String.t(),
          update_id_mapping_table_input(),
          list()
        ) ::
          {:ok, update_id_mapping_table_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_id_mapping_table_errors()}
  def update_id_mapping_table(
        %Client{} = client,
        id_mapping_table_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idmappingtables/#{AWS.Util.encode_uri(id_mapping_table_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Provides the details that are necessary to update an ID namespace association.
  """
  @spec update_id_namespace_association(
          map(),
          String.t(),
          String.t(),
          update_id_namespace_association_input(),
          list()
        ) ::
          {:ok, update_id_namespace_association_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_id_namespace_association_errors()}
  def update_id_namespace_association(
        %Client{} = client,
        id_namespace_association_identifier,
        membership_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/idnamespaceassociations/#{AWS.Util.encode_uri(id_namespace_association_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a membership.
  """
  @spec update_membership(map(), String.t(), update_membership_input(), list()) ::
          {:ok, update_membership_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_membership_errors()}
  def update_membership(%Client{} = client, membership_identifier, input, options \\ []) do
    url_path = "/memberships/#{AWS.Util.encode_uri(membership_identifier)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the privacy budget template for the specified membership.
  """
  @spec update_privacy_budget_template(
          map(),
          String.t(),
          String.t(),
          update_privacy_budget_template_input(),
          list()
        ) ::
          {:ok, update_privacy_budget_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_privacy_budget_template_errors()}
  def update_privacy_budget_template(
        %Client{} = client,
        membership_identifier,
        privacy_budget_template_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/privacybudgettemplates/#{AWS.Util.encode_uri(privacy_budget_template_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the processing of a currently running job.
  """
  @spec update_protected_job(map(), String.t(), String.t(), update_protected_job_input(), list()) ::
          {:ok, update_protected_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_protected_job_errors()}
  def update_protected_job(
        %Client{} = client,
        membership_identifier,
        protected_job_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedJobs/#{AWS.Util.encode_uri(protected_job_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the processing of a currently running query.
  """
  @spec update_protected_query(
          map(),
          String.t(),
          String.t(),
          update_protected_query_input(),
          list()
        ) ::
          {:ok, update_protected_query_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_protected_query_errors()}
  def update_protected_query(
        %Client{} = client,
        membership_identifier,
        protected_query_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/memberships/#{AWS.Util.encode_uri(membership_identifier)}/protectedQueries/#{AWS.Util.encode_uri(protected_query_identifier)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
