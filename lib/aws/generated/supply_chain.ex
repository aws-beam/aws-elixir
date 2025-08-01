# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SupplyChain do
  @moduledoc """

  AWS Supply Chain is a cloud-based application that works with your enterprise
  resource planning (ERP) and supply chain management systems.

  Using AWS Supply Chain, you can connect and extract your inventory, supply, and
  demand related data from existing ERP or supply chain systems into a single data
  model.

  The AWS Supply Chain API supports configuration data import for Supply Planning.

  All AWS Supply chain API operations are Amazon-authenticated and
  certificate-signed. They not only require the use of the AWS SDK, but also allow
  for the exclusive use of AWS Identity and Access Management users and roles to
  help facilitate access, trust, and permission policies.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      data_integration_flow_source() :: %{
        "datasetSource" => data_integration_flow_dataset_source_configuration(),
        "s3Source" => data_integration_flow_s3_source_configuration(),
        "sourceName" => String.t() | atom(),
        "sourceType" => list(any())
      }

  """
  @type data_integration_flow_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_lake_dataset_request() :: %{}

  """
  @type delete_data_lake_dataset_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_lake_namespace_response() :: %{
        "instanceId" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type delete_data_lake_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_integration_flow_execution_request() :: %{}

  """
  @type get_data_integration_flow_execution_request() :: %{}

  @typedoc """

  ## Example:

      list_data_lake_namespaces_response() :: %{
        "namespaces" => list(data_lake_namespace()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_lake_namespaces_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_lake_namespace_request() :: %{}

  """
  @type delete_data_lake_namespace_request() :: %{}

  @typedoc """

  ## Example:

      data_integration_event_dataset_target_configuration() :: %{
        "datasetIdentifier" => String.t() | atom(),
        "operationType" => list(any())
      }

  """
  @type data_integration_event_dataset_target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      data_integration_flow_s3_target_configuration() :: %{
        "bucketName" => String.t() | atom(),
        "options" => data_integration_flow_s3_options(),
        "prefix" => String.t() | atom()
      }

  """
  @type data_integration_flow_s3_target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_execution_source_info() :: %{
        "datasetSource" => data_integration_flow_dataset_source(),
        "s3Source" => data_integration_flow_s3_source(),
        "sourceType" => list(any())
      }

  """
  @type data_integration_flow_execution_source_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_s3_options() :: %{
        "fileType" => list(any())
      }

  """
  @type data_integration_flow_s3_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_integration_flow_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_data_integration_flow_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_lake_dataset_response() :: %{
        "dataset" => data_lake_dataset()
      }

  """
  @type get_data_lake_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_lake_datasets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_data_lake_datasets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_dataset_partition_field() :: %{
        "name" => String.t() | atom(),
        "transform" => data_lake_dataset_partition_field_transform()
      }

  """
  @type data_lake_dataset_partition_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_integration_flow_request() :: %{}

  """
  @type delete_data_integration_flow_request() :: %{}

  @typedoc """

  ## Example:

      update_data_lake_dataset_request() :: %{
        optional("description") => String.t() | atom()
      }

  """
  @type update_data_lake_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_lake_dataset_request() :: %{
        optional("description") => String.t() | atom(),
        optional("partitionSpec") => data_lake_dataset_partition_spec(),
        optional("schema") => data_lake_dataset_schema(),
        optional("tags") => map()
      }

  """
  @type create_data_lake_dataset_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_instance_response() :: %{
        "instance" => instance()
      }

  """
  @type create_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_integration_flow_response() :: %{
        "instanceId" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type delete_data_integration_flow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_dedupe_strategy() :: %{
        "fieldPriority" => data_integration_flow_field_priority_dedupe_strategy_configuration(),
        "type" => list(any())
      }

  """
  @type data_integration_flow_dedupe_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_dataset_primary_key_field() :: %{
        "name" => String.t() | atom()
      }

  """
  @type data_lake_dataset_primary_key_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_integration_flow_request() :: %{
        optional("tags") => map(),
        required("sources") => list(data_integration_flow_source()),
        required("target") => data_integration_flow_target(),
        required("transformation") => data_integration_flow_transformation()
      }

  """
  @type create_data_integration_flow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_lake_namespace_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_data_lake_namespace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_field_priority_dedupe_field() :: %{
        "name" => String.t() | atom(),
        "sortOrder" => list(any())
      }

  """
  @type data_integration_flow_field_priority_dedupe_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow() :: %{
        "createdTime" => [non_neg_integer()],
        "instanceId" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "sources" => list(data_integration_flow_source()),
        "target" => data_integration_flow_target(),
        "transformation" => data_integration_flow_transformation()
      }

  """
  @type data_integration_flow() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_integration_flow_response() :: %{
        "flow" => data_integration_flow()
      }

  """
  @type update_data_integration_flow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_instance_request() :: %{}

  """
  @type get_instance_request() :: %{}

  @typedoc """

  ## Example:

      create_bill_of_materials_import_job_response() :: %{
        "jobId" => String.t() | atom()
      }

  """
  @type create_bill_of_materials_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_lake_namespace_request() :: %{
        optional("description") => String.t() | atom()
      }

  """
  @type update_data_lake_namespace_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_dataset_schema_field() :: %{
        "isRequired" => [boolean()],
        "name" => String.t() | atom(),
        "type" => list(any())
      }

  """
  @type data_lake_dataset_schema_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bill_of_materials_import_job_response() :: %{
        "job" => bill_of_materials_import_job()
      }

  """
  @type get_bill_of_materials_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_s_q_l_transformation_configuration() :: %{
        "query" => String.t() | atom()
      }

  """
  @type data_integration_flow_s_q_l_transformation_configuration() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_data_integration_flow_response() :: %{
        "instanceId" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type create_data_integration_flow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_lake_datasets_response() :: %{
        "datasets" => list(data_lake_dataset()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_lake_datasets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_lake_namespace_response() :: %{
        "namespace" => data_lake_namespace()
      }

  """
  @type update_data_lake_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bill_of_materials_import_job_request() :: %{}

  """
  @type get_bill_of_materials_import_job_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_dataset_options() :: %{
        "dedupeRecords" => [boolean()],
        "dedupeStrategy" => data_integration_flow_dedupe_strategy(),
        "loadType" => list(any())
      }

  """
  @type data_integration_flow_dataset_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_integration_flow_request() :: %{}

  """
  @type get_data_integration_flow_request() :: %{}

  @typedoc """

  ## Example:

      data_integration_event_dataset_load_execution_details() :: %{
        "message" => [String.t() | atom()],
        "status" => list(any())
      }

  """
  @type data_integration_event_dataset_load_execution_details() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_instance_request() :: %{
        optional("instanceDescription") => String.t() | atom(),
        optional("instanceName") => String.t() | atom()
      }

  """
  @type update_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_integration_flow_executions_response() :: %{
        "flowExecutions" => list(data_integration_flow_execution()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_integration_flow_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_event_dataset_target_details() :: %{
        "datasetIdentifier" => String.t() | atom(),
        "datasetLoadExecution" => data_integration_event_dataset_load_execution_details(),
        "operationType" => list(any())
      }

  """
  @type data_integration_event_dataset_target_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_instance_response() :: %{
        "instance" => instance()
      }

  """
  @type get_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_dataset_schema() :: %{
        "fields" => list(data_lake_dataset_schema_field()),
        "name" => String.t() | atom(),
        "primaryKeys" => list(data_lake_dataset_primary_key_field())
      }

  """
  @type data_lake_dataset_schema() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_integration_events_request() :: %{
        optional("eventType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_data_integration_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_dataset_partition_field_transform() :: %{
        "type" => list(any())
      }

  """
  @type data_lake_dataset_partition_field_transform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_dataset_target_configuration() :: %{
        "datasetIdentifier" => String.t() | atom(),
        "options" => data_integration_flow_dataset_options()
      }

  """
  @type data_integration_flow_dataset_target_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_bill_of_materials_import_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("s3uri") => String.t() | atom()
      }

  """
  @type create_bill_of_materials_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_instances_request() :: %{
        optional("instanceNameFilter") => list(String.t() | atom()),
        optional("instanceStateFilter") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_lake_dataset_response() :: %{
        "dataset" => data_lake_dataset()
      }

  """
  @type create_data_lake_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_instances_response() :: %{
        "instances" => list(instance()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_transformation() :: %{
        "sqlTransformation" => data_integration_flow_s_q_l_transformation_configuration(),
        "transformationType" => list(any())
      }

  """
  @type data_integration_flow_transformation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_integration_flow_execution_response() :: %{
        "flowExecution" => data_integration_flow_execution()
      }

  """
  @type get_data_integration_flow_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_dataset_source() :: %{
        "datasetIdentifier" => String.t() | atom()
      }

  """
  @type data_integration_flow_dataset_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_execution_output_metadata() :: %{
        "diagnosticReportsRootS3URI" => String.t() | atom()
      }

  """
  @type data_integration_flow_execution_output_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_integration_event_response() :: %{
        "event" => data_integration_event()
      }

  """
  @type get_data_integration_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_integration_flow_response() :: %{
        "flow" => data_integration_flow()
      }

  """
  @type get_data_integration_flow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_instance_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("instanceDescription") => String.t() | atom(),
        optional("instanceName") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        optional("webAppDnsDomain") => String.t() | atom()
      }

  """
  @type create_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance() :: %{
        "awsAccountId" => String.t() | atom(),
        "createdTime" => [non_neg_integer()],
        "errorMessage" => [String.t() | atom()],
        "instanceDescription" => String.t() | atom(),
        "instanceId" => String.t() | atom(),
        "instanceName" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "state" => list(any()),
        "versionNumber" => [float()],
        "webAppDnsDomain" => String.t() | atom()
      }

  """
  @type instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_lake_namespace_request() :: %{}

  """
  @type get_data_lake_namespace_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_data_integration_events_response() :: %{
        "events" => list(data_integration_event()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_integration_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_lake_namespace_response() :: %{
        "namespace" => data_lake_namespace()
      }

  """
  @type get_data_lake_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_instance_response() :: %{
        "instance" => instance()
      }

  """
  @type delete_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_data_integration_event_response() :: %{
        "eventId" => String.t() | atom()
      }

  """
  @type send_data_integration_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
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

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_instance_request() :: %{}

  """
  @type delete_instance_request() :: %{}

  @typedoc """

  ## Example:

      get_data_integration_event_request() :: %{}

  """
  @type get_data_integration_event_request() :: %{}

  @typedoc """

  ## Example:

      list_data_integration_flows_response() :: %{
        "flows" => list(data_integration_flow()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_data_integration_flows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_lake_namespaces_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_data_lake_namespaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_field_priority_dedupe_strategy_configuration() :: %{
        "fields" => list(data_integration_flow_field_priority_dedupe_field())
      }

  """
  @type data_integration_flow_field_priority_dedupe_strategy_configuration() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      data_integration_flow_s3_source() :: %{
        "bucketName" => String.t() | atom(),
        "key" => String.t() | atom()
      }

  """
  @type data_integration_flow_s3_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_data_integration_event_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("datasetTarget") => data_integration_event_dataset_target_configuration(),
        optional("eventTimestamp") => [non_neg_integer()],
        required("data") => String.t() | atom(),
        required("eventGroupId") => String.t() | atom(),
        required("eventType") => list(any())
      }

  """
  @type send_data_integration_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_execution() :: %{
        "endTime" => [non_neg_integer()],
        "executionId" => String.t() | atom(),
        "flowName" => String.t() | atom(),
        "instanceId" => String.t() | atom(),
        "message" => [String.t() | atom()],
        "outputMetadata" => data_integration_flow_execution_output_metadata(),
        "sourceInfo" => data_integration_flow_execution_source_info(),
        "startTime" => [non_neg_integer()],
        "status" => list(any())
      }

  """
  @type data_integration_flow_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_s3_source_configuration() :: %{
        "bucketName" => String.t() | atom(),
        "options" => data_integration_flow_s3_options(),
        "prefix" => String.t() | atom()
      }

  """
  @type data_integration_flow_s3_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_lake_dataset_request() :: %{}

  """
  @type get_data_lake_dataset_request() :: %{}

  @typedoc """

  ## Example:

      data_integration_flow_target() :: %{
        "datasetTarget" => data_integration_flow_dataset_target_configuration(),
        "s3Target" => data_integration_flow_s3_target_configuration(),
        "targetType" => list(any())
      }

  """
  @type data_integration_flow_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_dataset_partition_spec() :: %{
        "fields" => list(data_lake_dataset_partition_field())
      }

  """
  @type data_lake_dataset_partition_spec() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_namespace() :: %{
        "arn" => String.t() | atom(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "instanceId" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom()
      }

  """
  @type data_lake_namespace() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_integration_flows_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_data_integration_flows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_event() :: %{
        "datasetTargetDetails" => data_integration_event_dataset_target_details(),
        "eventGroupId" => String.t() | atom(),
        "eventId" => String.t() | atom(),
        "eventTimestamp" => [non_neg_integer()],
        "eventType" => list(any()),
        "instanceId" => String.t() | atom()
      }

  """
  @type data_integration_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_instance_response() :: %{
        "instance" => instance()
      }

  """
  @type update_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_integration_flow_request() :: %{
        optional("sources") => list(data_integration_flow_source()),
        optional("target") => data_integration_flow_target(),
        optional("transformation") => data_integration_flow_transformation()
      }

  """
  @type update_data_integration_flow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_integration_flow_dataset_source_configuration() :: %{
        "datasetIdentifier" => String.t() | atom(),
        "options" => data_integration_flow_dataset_options()
      }

  """
  @type data_integration_flow_dataset_source_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bill_of_materials_import_job() :: %{
        "instanceId" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "message" => [String.t() | atom()],
        "s3uri" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type bill_of_materials_import_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_lake_namespace_response() :: %{
        "namespace" => data_lake_namespace()
      }

  """
  @type create_data_lake_namespace_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_dataset() :: %{
        "arn" => String.t() | atom(),
        "createdTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "instanceId" => String.t() | atom(),
        "lastModifiedTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "namespace" => String.t() | atom(),
        "partitionSpec" => data_lake_dataset_partition_spec(),
        "schema" => data_lake_dataset_schema()
      }

  """
  @type data_lake_dataset() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_lake_dataset_response() :: %{
        "instanceId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "namespace" => String.t() | atom()
      }

  """
  @type delete_data_lake_dataset_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_lake_dataset_response() :: %{
        "dataset" => data_lake_dataset()
      }

  """
  @type update_data_lake_dataset_response() :: %{(String.t() | atom()) => any()}

  @type create_bill_of_materials_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_data_integration_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_data_lake_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_lake_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_data_integration_flow_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_data_lake_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_data_lake_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_bill_of_materials_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_integration_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_integration_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_integration_flow_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_lake_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_lake_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_integration_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_data_integration_flow_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_integration_flows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_data_lake_datasets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_lake_namespaces_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type send_data_integration_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_data_integration_flow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_data_lake_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_data_lake_namespace_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2024-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "scn",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "SupplyChain",
      signature_version: "v4",
      signing_name: "scn",
      target_prefix: nil
    }
  end

  @doc """
  CreateBillOfMaterialsImportJob creates an import job for the Product Bill Of
  Materials (BOM) entity.

  For information on the product_bom entity, see the AWS Supply Chain User Guide.

  The CSV file must be located in an Amazon S3 location accessible to AWS Supply
  Chain. It is recommended to use the same Amazon S3 bucket created during your
  AWS Supply Chain instance creation.
  """
  @spec create_bill_of_materials_import_job(
          map(),
          String.t() | atom(),
          create_bill_of_materials_import_job_request(),
          list()
        ) ::
          {:ok, create_bill_of_materials_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bill_of_materials_import_job_errors()}
  def create_bill_of_materials_import_job(%Client{} = client, instance_id, input, options \\ []) do
    url_path =
      "/api/configuration/instances/#{AWS.Util.encode_uri(instance_id)}/bill-of-materials-import-jobs"

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
  Enables you to programmatically create a data pipeline to ingest data from
  source systems such as Amazon S3 buckets, to a predefined Amazon Web Services
  Supply Chain dataset (product, inbound_order) or a temporary dataset along with
  the data transformation query provided with the API.
  """
  @spec create_data_integration_flow(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_data_integration_flow_request(),
          list()
        ) ::
          {:ok, create_data_integration_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_integration_flow_errors()}
  def create_data_integration_flow(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables you to programmatically create an Amazon Web Services Supply Chain data
  lake dataset.

  Developers can create the datasets using their pre-defined or custom schema for
  a given instance ID, namespace, and dataset name.
  """
  @spec create_data_lake_dataset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          create_data_lake_dataset_request(),
          list()
        ) ::
          {:ok, create_data_lake_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_lake_dataset_errors()}
  def create_data_lake_dataset(
        %Client{} = client,
        instance_id,
        name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets/#{AWS.Util.encode_uri(name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables you to programmatically create an Amazon Web Services Supply Chain data
  lake namespace.

  Developers can create the namespaces for a given instance ID.
  """
  @spec create_data_lake_namespace(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_data_lake_namespace_request(),
          list()
        ) ::
          {:ok, create_data_lake_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_lake_namespace_errors()}
  def create_data_lake_namespace(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables you to programmatically create an Amazon Web Services Supply Chain
  instance by applying KMS keys and relevant information associated with the API
  without using the Amazon Web Services console.

  This is an asynchronous operation. Upon receiving a CreateInstance request,
  Amazon Web Services Supply Chain immediately returns the instance resource,
  instance ID, and the initializing state while simultaneously creating all
  required Amazon Web Services resources for an instance creation. You can use
  GetInstance to check the status of the instance. If the instance results in an
  unhealthy state, you need to check the error message, delete the current
  instance, and recreate a new one based on the mitigation from the error message.
  """
  @spec create_instance(map(), create_instance_request(), list()) ::
          {:ok, create_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instance_errors()}
  def create_instance(%Client{} = client, input, options \\ []) do
    url_path = "/api/instance"
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
  Enable you to programmatically delete an existing data pipeline for the provided
  Amazon Web Services Supply Chain instance and DataIntegrationFlow name.
  """
  @spec delete_data_integration_flow(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_data_integration_flow_request(),
          list()
        ) ::
          {:ok, delete_data_integration_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_integration_flow_errors()}
  def delete_data_integration_flow(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(name)}"

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
  Enables you to programmatically delete an Amazon Web Services Supply Chain data
  lake dataset.

  Developers can delete the existing datasets for a given instance ID, namespace,
  and instance name.
  """
  @spec delete_data_lake_dataset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_data_lake_dataset_request(),
          list()
        ) ::
          {:ok, delete_data_lake_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_lake_dataset_errors()}
  def delete_data_lake_dataset(
        %Client{} = client,
        instance_id,
        name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets/#{AWS.Util.encode_uri(name)}"

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
  Enables you to programmatically delete an Amazon Web Services Supply Chain data
  lake namespace and its underling datasets.

  Developers can delete the existing namespaces for a given instance ID and
  namespace name.
  """
  @spec delete_data_lake_namespace(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_data_lake_namespace_request(),
          list()
        ) ::
          {:ok, delete_data_lake_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_lake_namespace_errors()}
  def delete_data_lake_namespace(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(name)}"

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
  Enables you to programmatically delete an Amazon Web Services Supply Chain
  instance by deleting the KMS keys and relevant information associated with the
  API without using the Amazon Web Services console.

  This is an asynchronous operation. Upon receiving a DeleteInstance request,
  Amazon Web Services Supply Chain immediately returns a response with the
  instance resource, delete state while cleaning up all Amazon Web Services
  resources created during the instance creation process. You can use the
  GetInstance action to check the instance status.
  """
  @spec delete_instance(map(), String.t() | atom(), delete_instance_request(), list()) ::
          {:ok, delete_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_errors()}
  def delete_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/api/instance/#{AWS.Util.encode_uri(instance_id)}"
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
  Get status and details of a BillOfMaterialsImportJob.
  """
  @spec get_bill_of_materials_import_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_bill_of_materials_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bill_of_materials_import_job_errors()}
  def get_bill_of_materials_import_job(%Client{} = client, instance_id, job_id, options \\ []) do
    url_path =
      "/api/configuration/instances/#{AWS.Util.encode_uri(instance_id)}/bill-of-materials-import-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically view an Amazon Web Services Supply Chain Data
  Integration Event.

  Developers can view the eventType, eventGroupId, eventTimestamp, datasetTarget,
  datasetLoadExecution.
  """
  @spec get_data_integration_event(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_data_integration_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_integration_event_errors()}
  def get_data_integration_event(%Client{} = client, event_id, instance_id, options \\ []) do
    url_path =
      "/api-data/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-events/#{AWS.Util.encode_uri(event_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically view a specific data pipeline for the provided
  Amazon Web Services Supply Chain instance and DataIntegrationFlow name.
  """
  @spec get_data_integration_flow(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_data_integration_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_integration_flow_errors()}
  def get_data_integration_flow(%Client{} = client, instance_id, name, options \\ []) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the flow execution.
  """
  @spec get_data_integration_flow_execution(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_data_integration_flow_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_integration_flow_execution_errors()}
  def get_data_integration_flow_execution(
        %Client{} = client,
        execution_id,
        flow_name,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/api-data/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(flow_name)}/executions/#{AWS.Util.encode_uri(execution_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically view an Amazon Web Services Supply Chain data
  lake dataset.

  Developers can view the data lake dataset information such as namespace, schema,
  and so on for a given instance ID, namespace, and dataset name.
  """
  @spec get_data_lake_dataset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_data_lake_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_lake_dataset_errors()}
  def get_data_lake_dataset(%Client{} = client, instance_id, name, namespace, options \\ []) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically view an Amazon Web Services Supply Chain data
  lake namespace.

  Developers can view the data lake namespace information such as description for
  a given instance ID and namespace name.
  """
  @spec get_data_lake_namespace(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_data_lake_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_lake_namespace_errors()}
  def get_data_lake_namespace(%Client{} = client, instance_id, name, options \\ []) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically retrieve the information related to an Amazon
  Web Services Supply Chain instance ID.
  """
  @spec get_instance(map(), String.t() | atom(), list()) ::
          {:ok, get_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_errors()}
  def get_instance(%Client{} = client, instance_id, options \\ []) do
    url_path = "/api/instance/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Enables you to programmatically list all data integration events for the
  provided Amazon Web Services Supply Chain instance.
  """
  @spec list_data_integration_events(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_integration_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_integration_events_errors()}
  def list_data_integration_events(
        %Client{} = client,
        instance_id,
        event_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/api-data/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-events"

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

    query_params =
      if !is_nil(event_type) do
        [{"eventType", event_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List flow executions.
  """
  @spec list_data_integration_flow_executions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_integration_flow_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_integration_flow_executions_errors()}
  def list_data_integration_flow_executions(
        %Client{} = client,
        flow_name,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/api-data/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(flow_name)}/executions"

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
  Enables you to programmatically list all data pipelines for the provided Amazon
  Web Services Supply Chain instance.
  """
  @spec list_data_integration_flows(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_integration_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_integration_flows_errors()}
  def list_data_integration_flows(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows"

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
  Enables you to programmatically view the list of Amazon Web Services Supply
  Chain data lake datasets.

  Developers can view the datasets and the corresponding information such as
  namespace, schema, and so on for a given instance ID and namespace.
  """
  @spec list_data_lake_datasets(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_lake_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_lake_datasets_errors()}
  def list_data_lake_datasets(
        %Client{} = client,
        instance_id,
        namespace,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets"

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
  Enables you to programmatically view the list of Amazon Web Services Supply
  Chain data lake namespaces.

  Developers can view the namespaces and the corresponding information such as
  description for a given instance ID. Note that this API only return custom
  namespaces, instance pre-defined namespaces are not included.
  """
  @spec list_data_lake_namespaces(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_data_lake_namespaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_lake_namespaces_errors()}
  def list_data_lake_namespaces(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces"
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
  List all Amazon Web Services Supply Chain instances for a specific account.

  Enables you to programmatically list all Amazon Web Services Supply Chain
  instances based on their account ID, instance name, and state of the instance
  (active or delete).
  """
  @spec list_instances(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instances_errors()}
  def list_instances(
        %Client{} = client,
        instance_name_filter \\ nil,
        instance_state_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/api/instance"
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

    query_params =
      if !is_nil(instance_state_filter) do
        [{"instanceStateFilter", instance_state_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(instance_name_filter) do
        [{"instanceNameFilter", instance_name_filter} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all the tags for an Amazon Web ServicesSupply Chain resource.

  You can list all the tags added to a resource. By listing the tags, developers
  can view the tag level information on a resource and perform actions such as,
  deleting a resource associated with a particular tag.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/api/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Send the data payload for the event with real-time data for analysis or
  monitoring.

  The real-time data events are stored in an Amazon Web Services service before
  being processed and stored in data lake.
  """
  @spec send_data_integration_event(
          map(),
          String.t() | atom(),
          send_data_integration_event_request(),
          list()
        ) ::
          {:ok, send_data_integration_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_data_integration_event_errors()}
  def send_data_integration_event(%Client{} = client, instance_id, input, options \\ []) do
    url_path =
      "/api-data/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-events"

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
  You can create tags during or after creating a resource such as instance, data
  flow, or dataset in AWS Supply chain.

  During the data ingestion process, you can add tags such as dev, test, or prod
  to data flows created during the data ingestion process in the AWS Supply Chain
  datasets. You can use these tags to identify a group of resources or a single
  resource used by the developer.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/api/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  You can delete tags for an Amazon Web Services Supply chain resource such as
  instance, data flow, or dataset in AWS Supply Chain.

  During the data ingestion process, you can delete tags such as dev, test, or
  prod to data flows created during the data ingestion process in the AWS Supply
  Chain datasets.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/api/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Enables you to programmatically update an existing data pipeline to ingest data
  from the source systems such as, Amazon S3 buckets, to a predefined Amazon Web
  Services Supply Chain dataset (product, inbound_order) or a temporary dataset
  along with the data transformation query provided with the API.
  """
  @spec update_data_integration_flow(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_data_integration_flow_request(),
          list()
        ) ::
          {:ok, update_data_integration_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_integration_flow_errors()}
  def update_data_integration_flow(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/data-integration/instance/#{AWS.Util.encode_uri(instance_id)}/data-integration-flows/#{AWS.Util.encode_uri(name)}"

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
  Enables you to programmatically update an Amazon Web Services Supply Chain data
  lake dataset.

  Developers can update the description of a data lake dataset for a given
  instance ID, namespace, and dataset name.
  """
  @spec update_data_lake_dataset(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_data_lake_dataset_request(),
          list()
        ) ::
          {:ok, update_data_lake_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_lake_dataset_errors()}
  def update_data_lake_dataset(
        %Client{} = client,
        instance_id,
        name,
        namespace,
        input,
        options \\ []
      ) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(namespace)}/datasets/#{AWS.Util.encode_uri(name)}"

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
  Enables you to programmatically update an Amazon Web Services Supply Chain data
  lake namespace.

  Developers can update the description of a data lake namespace for a given
  instance ID and namespace name.
  """
  @spec update_data_lake_namespace(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_data_lake_namespace_request(),
          list()
        ) ::
          {:ok, update_data_lake_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_lake_namespace_errors()}
  def update_data_lake_namespace(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/api/datalake/instance/#{AWS.Util.encode_uri(instance_id)}/namespaces/#{AWS.Util.encode_uri(name)}"

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
  Enables you to programmatically update an Amazon Web Services Supply Chain
  instance description by providing all the relevant information such as account
  ID, instance ID and so on without using the AWS console.
  """
  @spec update_instance(map(), String.t() | atom(), update_instance_request(), list()) ::
          {:ok, update_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_errors()}
  def update_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/api/instance/#{AWS.Util.encode_uri(instance_id)}"
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
