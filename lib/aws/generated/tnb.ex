# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Tnb do
  @moduledoc """

  Amazon Web Services Telco Network Builder (TNB) is a network automation service
  that helps
  you deploy and manage telecom networks.

  AWS TNB helps you with the lifecycle management of
  your telecommunication network functions throughout planning, deployment, and
  post-deployment activities.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_sol_network_package_output() :: %{
        "nsdOperationalState" => list(any())
      }

  """
  @type update_sol_network_package_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_vnf_info() :: %{
        "vnfState" => list(any()),
        "vnfcResourceInfo" => list(get_sol_vnfc_resource_info())
      }

  """
  @type get_sol_vnf_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_sol_function_package_input() :: %{}

  """
  @type delete_sol_function_package_input() :: %{}

  @typedoc """

  ## Example:

      delete_sol_network_instance_input() :: %{}

  """
  @type delete_sol_network_instance_input() :: %{}

  @typedoc """

  ## Example:

      create_sol_network_package_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "nsdOnboardingState" => list(any()),
        "nsdOperationalState" => list(any()),
        "nsdUsageState" => list(any()),
        "tags" => map()
      }

  """
  @type create_sol_network_package_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_function_package_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => get_sol_function_package_metadata(),
        "onboardingState" => list(any()),
        "operationalState" => list(any()),
        "tags" => map(),
        "usageState" => list(any()),
        "vnfProductName" => [String.t() | atom()],
        "vnfProvider" => [String.t() | atom()],
        "vnfdId" => [String.t() | atom()],
        "vnfdVersion" => [String.t() | atom()]
      }

  """
  @type get_sol_function_package_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_function_instance_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_function_instance_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_function_instances_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sol_function_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_operations_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("nsInstanceId") => String.t() | atom()
      }

  """
  @type list_sol_network_operations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_sol_network_package_content_metadata() :: %{
        "nsd" => network_artifact_meta()
      }

  """
  @type validate_sol_network_package_content_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_packages_output() :: %{
        "networkPackages" => list(list_sol_network_package_info()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_sol_network_packages_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_function_instance_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type get_sol_function_instance_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sol_network_package_input() :: %{
        optional("tags") => map()
      }

  """
  @type create_sol_network_package_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sol_function_package_content_metadata() :: %{
        "vnfd" => function_artifact_meta()
      }

  """
  @type put_sol_function_package_content_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_descriptor_input() :: %{}

  """
  @type get_sol_network_package_descriptor_input() :: %{}

  @typedoc """

  ## Example:

      get_sol_function_package_descriptor_input() :: %{
        required("accept") => list(any())
      }

  """
  @type get_sol_function_package_descriptor_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_function_instance_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "instantiatedVnfInfo" => get_sol_vnf_info(),
        "instantiationState" => list(any()),
        "metadata" => get_sol_function_instance_metadata(),
        "nsInstanceId" => String.t() | atom(),
        "tags" => map(),
        "vnfPkgId" => String.t() | atom(),
        "vnfProductName" => [String.t() | atom()],
        "vnfProvider" => [String.t() | atom()],
        "vnfdId" => String.t() | atom(),
        "vnfdVersion" => [String.t() | atom()]
      }

  """
  @type get_sol_function_instance_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => get_sol_network_package_metadata(),
        "nsdId" => String.t() | atom(),
        "nsdName" => [String.t() | atom()],
        "nsdOnboardingState" => list(any()),
        "nsdOperationalState" => list(any()),
        "nsdUsageState" => list(any()),
        "nsdVersion" => [String.t() | atom()],
        "tags" => map(),
        "vnfPkgIds" => list(String.t() | atom())
      }

  """
  @type get_sol_network_package_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_info() :: %{
        "cause" => String.t() | atom(),
        "details" => String.t() | atom()
      }

  """
  @type error_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sol_function_package_content_output() :: %{
        "id" => String.t() | atom(),
        "metadata" => put_sol_function_package_content_metadata(),
        "vnfProductName" => [String.t() | atom()],
        "vnfProvider" => [String.t() | atom()],
        "vnfdId" => String.t() | atom(),
        "vnfdVersion" => [String.t() | atom()]
      }

  """
  @type put_sol_function_package_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_input() :: %{}

  """
  @type get_sol_network_package_input() :: %{}

  @typedoc """

  ## Example:

      list_sol_network_packages_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sol_network_packages_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_sol_network_package_content_input() :: %{
        optional("contentType") => list(any()),
        required("file") => binary()
      }

  """
  @type validate_sol_network_package_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sol_network_package_content_input() :: %{
        optional("contentType") => list(any()),
        required("file") => binary()
      }

  """
  @type put_sol_network_package_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_operations_info() :: %{
        "arn" => String.t() | atom(),
        "error" => problem_details(),
        "id" => String.t() | atom(),
        "lcmOperationType" => list(any()),
        "metadata" => list_sol_network_operations_metadata(),
        "nsInstanceId" => String.t() | atom(),
        "operationState" => list(any()),
        "updateType" => list(any())
      }

  """
  @type list_sol_network_operations_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_sol_network_instance_input() :: %{
        optional("tags") => map()
      }

  """
  @type terminate_sol_network_instance_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_instantiated_vnf_info() :: %{
        "vnfState" => list(any())
      }

  """
  @type get_sol_instantiated_vnf_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_vnfc_resource_info() :: %{
        "metadata" => get_sol_vnfc_resource_info_metadata()
      }

  """
  @type get_sol_vnfc_resource_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_package_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_network_package_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_ns_metadata() :: %{
        "additionalParamsForNs" => [any()],
        "nsdInfoId" => String.t() | atom()
      }

  """
  @type update_ns_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sol_network_package_content_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => put_sol_network_package_content_metadata(),
        "nsdId" => String.t() | atom(),
        "nsdName" => [String.t() | atom()],
        "nsdVersion" => [String.t() | atom()],
        "vnfPkgIds" => list(String.t() | atom())
      }

  """
  @type put_sol_network_package_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_instances_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sol_network_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sol_network_package_content_metadata() :: %{
        "nsd" => network_artifact_meta()
      }

  """
  @type put_sol_network_package_content_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_operations_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()],
        "nsdInfoId" => String.t() | atom(),
        "vnfInstanceId" => String.t() | atom()
      }

  """
  @type list_sol_network_operations_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_content_output() :: %{
        "contentType" => list(any()),
        "nsdContent" => [binary()]
      }

  """
  @type get_sol_network_package_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sol_network_instance_output() :: %{
        "nsLcmOpOccId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type update_sol_network_instance_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      problem_details() :: %{
        "detail" => [String.t() | atom()],
        "title" => [String.t() | atom()]
      }

  """
  @type problem_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sol_network_instance_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "nsInstanceName" => [String.t() | atom()],
        "nsdInfoId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type create_sol_network_instance_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_sol_network_instance_output() :: %{
        "nsLcmOpOccId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type terminate_sol_network_instance_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sol_function_package_content_input() :: %{
        optional("contentType") => list(any()),
        required("file") => binary()
      }

  """
  @type put_sol_function_package_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instantiate_sol_network_instance_input() :: %{
        optional("additionalParamsForNs") => [any()],
        optional("dryRun") => [boolean()],
        optional("tags") => map()
      }

  """
  @type instantiate_sol_network_instance_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_function_packages_output() :: %{
        "functionPackages" => list(list_sol_function_package_info()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_sol_function_packages_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sol_function_package_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "onboardingState" => list(any()),
        "operationalState" => list(any()),
        "tags" => map(),
        "usageState" => list(any())
      }

  """
  @type create_sol_function_package_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_sol_network_operation_input() :: %{}

  """
  @type cancel_sol_network_operation_input() :: %{}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sol_network_modify() :: %{
        "vnfConfigurableProperties" => [any()],
        "vnfInstanceId" => String.t() | atom()
      }

  """
  @type update_sol_network_modify() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sol_network_service_data() :: %{
        "additionalParamsForNs" => [any()],
        "nsdInfoId" => String.t() | atom()
      }

  """
  @type update_sol_network_service_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_instance_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_network_instance_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_instance_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lcmOpInfo" => lcm_operation_info(),
        "metadata" => get_sol_network_instance_metadata(),
        "nsInstanceDescription" => [String.t() | atom()],
        "nsInstanceName" => [String.t() | atom()],
        "nsState" => list(any()),
        "nsdId" => String.t() | atom(),
        "nsdInfoId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type get_sol_network_instance_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      modify_vnf_info_metadata() :: %{
        "vnfConfigurableProperties" => [any()],
        "vnfInstanceId" => String.t() | atom()
      }

  """
  @type modify_vnf_info_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_function_package_descriptor_output() :: %{
        "contentType" => list(any()),
        "vnfd" => [binary()]
      }

  """
  @type get_sol_function_package_descriptor_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_instance_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type get_sol_network_instance_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()],
        "nsd" => network_artifact_meta()
      }

  """
  @type get_sol_network_package_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_operation_input() :: %{}

  """
  @type get_sol_network_operation_input() :: %{}

  @typedoc """

  ## Example:

      update_sol_network_package_input() :: %{
        required("nsdOperationalState") => list(any())
      }

  """
  @type update_sol_network_package_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sol_function_package_input() :: %{
        optional("tags") => map()
      }

  """
  @type create_sol_function_package_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sol_function_package_output() :: %{
        "operationalState" => list(any())
      }

  """
  @type update_sol_function_package_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_operation_task_details() :: %{
        "taskContext" => map(),
        "taskEndTime" => [non_neg_integer()],
        "taskErrorDetails" => error_info(),
        "taskName" => [String.t() | atom()],
        "taskStartTime" => [non_neg_integer()],
        "taskStatus" => list(any())
      }

  """
  @type get_sol_network_operation_task_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_content_input() :: %{
        required("accept") => list(any())
      }

  """
  @type get_sol_network_package_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_sol_network_package_input() :: %{}

  """
  @type delete_sol_network_package_input() :: %{}

  @typedoc """

  ## Example:

      get_sol_function_package_input() :: %{}

  """
  @type get_sol_function_package_input() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      validate_sol_network_package_content_output() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => validate_sol_network_package_content_metadata(),
        "nsdId" => String.t() | atom(),
        "nsdName" => [String.t() | atom()],
        "nsdVersion" => [String.t() | atom()],
        "vnfPkgIds" => list(String.t() | atom())
      }

  """
  @type validate_sol_network_package_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      get_sol_function_package_content_input() :: %{
        required("accept") => list(any())
      }

  """
  @type get_sol_function_package_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_function_package_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()],
        "vnfd" => function_artifact_meta()
      }

  """
  @type get_sol_function_package_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sol_network_instance_input() :: %{
        optional("modifyVnfInfoData") => update_sol_network_modify(),
        optional("tags") => map(),
        optional("updateNs") => update_sol_network_service_data(),
        required("updateType") => list(any())
      }

  """
  @type update_sol_network_instance_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instantiate_sol_network_instance_output() :: %{
        "nsLcmOpOccId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type instantiate_sol_network_instance_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tosca_override() :: %{
        "defaultValue" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type tosca_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_operation_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "instantiateMetadata" => instantiate_metadata(),
        "lastModified" => [non_neg_integer()],
        "modifyVnfInfoMetadata" => modify_vnf_info_metadata(),
        "updateNsMetadata" => update_ns_metadata()
      }

  """
  @type get_sol_network_operation_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_operations_output() :: %{
        "networkOperations" => list(list_sol_network_operations_info()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_sol_network_operations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_function_package_metadata() :: %{
        "createdAt" => [non_neg_integer()],
        "lastModified" => [non_neg_integer()]
      }

  """
  @type list_sol_function_package_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_function_instance_input() :: %{}

  """
  @type get_sol_function_instance_input() :: %{}

  @typedoc """

  ## Example:

      get_sol_vnfc_resource_info_metadata() :: %{
        "cluster" => [String.t() | atom()],
        "helmChart" => [String.t() | atom()],
        "nodeGroup" => [String.t() | atom()]
      }

  """
  @type get_sol_vnfc_resource_info_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_instance_input() :: %{}

  """
  @type get_sol_network_instance_input() :: %{}

  @typedoc """

  ## Example:

      instantiate_metadata() :: %{
        "additionalParamsForNs" => [any()],
        "nsdInfoId" => String.t() | atom()
      }

  """
  @type instantiate_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_instances_output() :: %{
        "networkInstances" => list(list_sol_network_instance_info()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_sol_network_instances_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sol_network_instance_input() :: %{
        optional("nsDescription") => [String.t() | atom()],
        optional("tags") => map(),
        required("nsName") => [String.t() | atom()],
        required("nsdInfoId") => String.t() | atom()
      }

  """
  @type create_sol_network_instance_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_instance_info() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => list_sol_network_instance_metadata(),
        "nsInstanceDescription" => [String.t() | atom()],
        "nsInstanceName" => [String.t() | atom()],
        "nsState" => list(any()),
        "nsdId" => String.t() | atom(),
        "nsdInfoId" => String.t() | atom()
      }

  """
  @type list_sol_network_instance_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_function_package_info() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => list_sol_function_package_metadata(),
        "onboardingState" => list(any()),
        "operationalState" => list(any()),
        "usageState" => list(any()),
        "vnfProductName" => [String.t() | atom()],
        "vnfProvider" => [String.t() | atom()],
        "vnfdId" => [String.t() | atom()],
        "vnfdVersion" => [String.t() | atom()]
      }

  """
  @type list_sol_function_package_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_artifact_meta() :: %{
        "overrides" => list(tosca_override())
      }

  """
  @type function_artifact_meta() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_sol_function_package_content_input() :: %{
        optional("contentType") => list(any()),
        required("file") => binary()
      }

  """
  @type validate_sol_function_package_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_sol_function_package_content_output() :: %{
        "id" => String.t() | atom(),
        "metadata" => validate_sol_function_package_content_metadata(),
        "vnfProductName" => [String.t() | atom()],
        "vnfProvider" => [String.t() | atom()],
        "vnfdId" => String.t() | atom(),
        "vnfdVersion" => [String.t() | atom()]
      }

  """
  @type validate_sol_function_package_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_package_descriptor_output() :: %{
        "contentType" => list(any()),
        "nsd" => [binary()]
      }

  """
  @type get_sol_network_package_descriptor_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_sol_function_package_content_metadata() :: %{
        "vnfd" => function_artifact_meta()
      }

  """
  @type validate_sol_function_package_content_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_function_package_content_output() :: %{
        "contentType" => list(any()),
        "packageContent" => [binary()]
      }

  """
  @type get_sol_function_package_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sol_network_operation_output() :: %{
        "arn" => String.t() | atom(),
        "error" => problem_details(),
        "id" => String.t() | atom(),
        "lcmOperationType" => list(any()),
        "metadata" => get_sol_network_operation_metadata(),
        "nsInstanceId" => String.t() | atom(),
        "operationState" => list(any()),
        "tags" => map(),
        "tasks" => list(get_sol_network_operation_task_details()),
        "updateType" => list(any())
      }

  """
  @type get_sol_network_operation_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_function_instance_info() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "instantiatedVnfInfo" => get_sol_instantiated_vnf_info(),
        "instantiationState" => list(any()),
        "metadata" => list_sol_function_instance_metadata(),
        "nsInstanceId" => String.t() | atom(),
        "vnfPkgId" => String.t() | atom(),
        "vnfPkgName" => [String.t() | atom()]
      }

  """
  @type list_sol_function_instance_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lcm_operation_info() :: %{
        "nsLcmOpOccId" => String.t() | atom()
      }

  """
  @type lcm_operation_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sol_function_package_input() :: %{
        required("operationalState") => list(any())
      }

  """
  @type update_sol_function_package_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_function_instances_output() :: %{
        "functionInstances" => list(list_sol_function_instance_info()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_sol_function_instances_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_network_package_info() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => list_sol_network_package_metadata(),
        "nsdDesigner" => [String.t() | atom()],
        "nsdId" => [String.t() | atom()],
        "nsdInvariantId" => [String.t() | atom()],
        "nsdName" => [String.t() | atom()],
        "nsdOnboardingState" => list(any()),
        "nsdOperationalState" => list(any()),
        "nsdUsageState" => list(any()),
        "nsdVersion" => [String.t() | atom()],
        "vnfPkgIds" => list(String.t() | atom())
      }

  """
  @type list_sol_network_package_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sol_function_packages_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sol_function_packages_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_artifact_meta() :: %{
        "overrides" => list(tosca_override())
      }

  """
  @type network_artifact_meta() :: %{(String.t() | atom()) => any()}

  @type cancel_sol_network_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_sol_function_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type create_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_sol_network_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type delete_sol_function_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_sol_network_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_function_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_function_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_function_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_function_package_descriptor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_operation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_sol_network_package_descriptor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type instantiate_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_sol_function_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sol_function_packages_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sol_network_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sol_network_operations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_sol_network_packages_errors() ::
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

  @type put_sol_function_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_sol_network_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type terminate_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_sol_function_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_sol_network_instance_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_sol_network_package_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type validate_sol_function_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type validate_sol_network_package_content_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2008-10-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "tnb",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "tnb",
      signature_version: "v4",
      signing_name: "tnb",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a network operation.

  A network operation is any operation that is done to your network, such as
  network instance instantiation or termination.
  """
  @spec cancel_sol_network_operation(
          map(),
          String.t() | atom(),
          cancel_sol_network_operation_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_sol_network_operation_errors()}
  def cancel_sol_network_operation(%Client{} = client, ns_lcm_op_occ_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs/#{AWS.Util.encode_uri(ns_lcm_op_occ_id)}/cancel"
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
      202
    )
  end

  @doc """
  Creates a function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network. For more information, see
  [Function packages](https://docs.aws.amazon.com/tnb/latest/ug/function-packages.html) in
  the
  *Amazon Web Services Telco Network Builder User Guide*.

  Creating a function package is the first step for creating a network in AWS TNB.
  This
  request creates an empty container with an ID. The next step is to upload the
  actual CSAR
  zip file into that empty container. To upload function package content, see
  [PutSolFunctionPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html).
  """
  @spec create_sol_function_package(map(), create_sol_function_package_input(), list()) ::
          {:ok, create_sol_function_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sol_function_package_errors()}
  def create_sol_function_package(%Client{} = client, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages"
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
      201
    )
  end

  @doc """
  Creates a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed. Creating a network instance is the third step after
  creating a network
  package. For more information about network instances, [Network instances](https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html) in
  the
  *Amazon Web Services Telco Network Builder User Guide*.

  Once you create a network instance, you can instantiate it. To instantiate a
  network,
  see
  [InstantiateSolNetworkInstance](https://docs.aws.amazon.com/tnb/latest/APIReference/API_InstantiateSolNetworkInstance.html).
  """
  @spec create_sol_network_instance(map(), create_sol_network_instance_input(), list()) ::
          {:ok, create_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sol_network_instance_errors()}
  def create_sol_network_instance(%Client{} = client, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances"
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
      201
    )
  end

  @doc """
  Creates a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on. For more information, see [Network instances](https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html) in
  the
  *Amazon Web Services Telco Network Builder User Guide*.

  A network package consists of a network service descriptor (NSD) file (required)
  and any
  additional files (optional), such as scripts specific to your needs. For
  example, if you
  have multiple function packages in your network package, you can use the NSD to
  define
  which network functions should run in certain VPCs, subnets, or EKS clusters.

  This request creates an empty network package container with an ID. Once you
  create a
  network package, you can upload the network package content using
  [PutSolNetworkPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html).
  """
  @spec create_sol_network_package(map(), create_sol_network_package_input(), list()) ::
          {:ok, create_sol_network_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sol_network_package_errors()}
  def create_sol_network_package(%Client{} = client, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors"
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
      201
    )
  end

  @doc """
  Deletes a function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.

  To delete a function package, the package must be in a disabled state. To
  disable a
  function package, see
  [UpdateSolFunctionPackage](https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolFunctionPackage.html).
  """
  @spec delete_sol_function_package(
          map(),
          String.t() | atom(),
          delete_sol_function_package_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sol_function_package_errors()}
  def delete_sol_function_package(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"
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
  Deletes a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.

  To delete a network instance, the instance must be in a stopped or terminated
  state. To
  terminate a network instance, see
  [TerminateSolNetworkInstance](https://docs.aws.amazon.com/tnb/latest/APIReference/API_TerminateSolNetworkInstance.html).
  """
  @spec delete_sol_network_instance(
          map(),
          String.t() | atom(),
          delete_sol_network_instance_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sol_network_instance_errors()}
  def delete_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}"
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
  Deletes network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.

  To delete a network package, the package must be in a disable state. To disable
  a
  network package, see
  [UpdateSolNetworkPackage](https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolNetworkPackage.html).
  """
  @spec delete_sol_network_package(
          map(),
          String.t() | atom(),
          delete_sol_network_package_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sol_network_package_errors()}
  def delete_sol_network_package(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"
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
  Gets the details of a network function instance, including the instantiation
  state and
  metadata from the function package descriptor in the network function package.

  A network function instance is a function in a function package .
  """
  @spec get_sol_function_instance(map(), String.t() | atom(), list()) ::
          {:ok, get_sol_function_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_function_instance_errors()}
  def get_sol_function_instance(%Client{} = client, vnf_instance_id, options \\ []) do
    url_path = "/sol/vnflcm/v1/vnf_instances/#{AWS.Util.encode_uri(vnf_instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of an individual function package, such as the operational
  state and
  whether the package is in use.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network..
  """
  @spec get_sol_function_package(map(), String.t() | atom(), list()) ::
          {:ok, get_sol_function_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_function_package_errors()}
  def get_sol_function_package(%Client{} = client, vnf_pkg_id, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the contents of a function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  @spec get_sol_function_package_content(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_sol_function_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_function_package_content_errors()}
  def get_sol_function_package_content(%Client{} = client, vnf_pkg_id, accept, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content"
    headers = []

    headers =
      if !is_nil(accept) do
        [{"Accept", accept} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a function package descriptor in a function package.

  A function package descriptor is a .yaml file in a function package that uses
  the TOSCA standard to describe how the network function in the function package
  should run on your network.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  @spec get_sol_function_package_descriptor(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_sol_function_package_descriptor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_function_package_descriptor_errors()}
  def get_sol_function_package_descriptor(%Client{} = client, vnf_pkg_id, accept, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/vnfd"
    headers = []

    headers =
      if !is_nil(accept) do
        [{"Accept", accept} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of the network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.
  """
  @spec get_sol_network_instance(map(), String.t() | atom(), list()) ::
          {:ok, get_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_network_instance_errors()}
  def get_sol_network_instance(%Client{} = client, ns_instance_id, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of a network operation, including the tasks involved in the
  network
  operation and the status of the tasks.

  A network operation is any operation that is done to your network, such as
  network instance instantiation or termination.
  """
  @spec get_sol_network_operation(map(), String.t() | atom(), list()) ::
          {:ok, get_sol_network_operation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_network_operation_errors()}
  def get_sol_network_operation(%Client{} = client, ns_lcm_op_occ_id, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs/#{AWS.Util.encode_uri(ns_lcm_op_occ_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the details of a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  @spec get_sol_network_package(map(), String.t() | atom(), list()) ::
          {:ok, get_sol_network_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_network_package_errors()}
  def get_sol_network_package(%Client{} = client, nsd_info_id, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the contents of a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  @spec get_sol_network_package_content(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_sol_network_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_network_package_content_errors()}
  def get_sol_network_package_content(%Client{} = client, nsd_info_id, accept, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content"
    headers = []

    headers =
      if !is_nil(accept) do
        [{"Accept", accept} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the content of the network service descriptor.

  A network service descriptor is a .yaml file in a network package that uses the
  TOSCA standard to describe the network functions you want to deploy and the
  Amazon Web Services infrastructure you want to deploy the network functions on.
  """
  @spec get_sol_network_package_descriptor(map(), String.t() | atom(), list()) ::
          {:ok, get_sol_network_package_descriptor_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sol_network_package_descriptor_errors()}
  def get_sol_network_package_descriptor(%Client{} = client, nsd_info_id, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Instantiates a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.

  Before you can instantiate a network instance, you have to create a network
  instance.
  For more information, see
  [CreateSolNetworkInstance](https://docs.aws.amazon.com/tnb/latest/APIReference/API_CreateSolNetworkInstance.html).
  """
  @spec instantiate_sol_network_instance(
          map(),
          String.t() | atom(),
          instantiate_sol_network_instance_input(),
          list()
        ) ::
          {:ok, instantiate_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, instantiate_sol_network_instance_errors()}
  def instantiate_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/instantiate"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"dryRun", "dry_run"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Lists network function instances.

  A network function instance is a function in a function package .
  """
  @spec list_sol_function_instances(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sol_function_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sol_function_instances_errors()}
  def list_sol_function_instances(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/vnflcm/v1/vnf_instances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists information about function packages.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  @spec list_sol_function_packages(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sol_function_packages_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sol_function_packages_errors()}
  def list_sol_function_packages(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists your network instances.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.
  """
  @spec list_sol_network_instances(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sol_network_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sol_network_instances_errors()}
  def list_sol_network_instances(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/nslcm/v1/ns_instances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists details for a network operation, including when the operation started and
  the
  status of the operation.

  A network operation is any operation that is done to your network, such as
  network instance instantiation or termination.
  """
  @spec list_sol_network_operations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sol_network_operations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sol_network_operations_errors()}
  def list_sol_network_operations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        ns_instance_id \\ nil,
        options \\ []
      ) do
    url_path = "/sol/nslcm/v1/ns_lcm_op_occs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(ns_instance_id) do
        [{"nsInstanceId", ns_instance_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists network packages.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  @spec list_sol_network_packages(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sol_network_packages_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sol_network_packages_errors()}
  def list_sol_network_packages(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sol/nsd/v1/ns_descriptors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextpage_opaque_marker", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max_results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for AWS TNB resources.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
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
  Uploads the contents of a function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  @spec put_sol_function_package_content(
          map(),
          String.t() | atom(),
          put_sol_function_package_content_input(),
          list()
        ) ::
          {:ok, put_sol_function_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_sol_function_package_content_errors()}
  def put_sol_function_package_content(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Uploads the contents of a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  @spec put_sol_network_package_content(
          map(),
          String.t() | atom(),
          put_sol_network_package_content_input(),
          list()
        ) ::
          {:ok, put_sol_network_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_sol_network_package_content_errors()}
  def put_sol_network_package_content(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

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
  Tags an AWS TNB resource.

  A tag is a label that you assign to an Amazon Web Services resource. Each tag
  consists of a key and an optional value. You can use tags to search and filter
  your resources or track your Amazon Web Services costs.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_input(), list()) ::
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
  Terminates a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.

  You must terminate a network instance before you can delete it.
  """
  @spec terminate_sol_network_instance(
          map(),
          String.t() | atom(),
          terminate_sol_network_instance_input(),
          list()
        ) ::
          {:ok, terminate_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_sol_network_instance_errors()}
  def terminate_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/terminate"
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
      201
    )
  end

  @doc """
  Untags an AWS TNB resource.

  A tag is a label that you assign to an Amazon Web Services resource. Each tag
  consists of a key and an optional value. You can use tags to search and filter
  your resources or track your Amazon Web Services costs.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_input(), list()) ::
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
  Updates the operational state of function package.

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  @spec update_sol_function_package(
          map(),
          String.t() | atom(),
          update_sol_function_package_input(),
          list()
        ) ::
          {:ok, update_sol_function_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_sol_function_package_errors()}
  def update_sol_function_package(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path = "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}"
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
  Update a network instance.

  A network instance is a single network created in Amazon Web Services TNB that
  can be deployed and on which life-cycle operations (like terminate, update, and
  delete) can be performed.

  Choose the *updateType* parameter to target the necessary update of the network
  instance.
  """
  @spec update_sol_network_instance(
          map(),
          String.t() | atom(),
          update_sol_network_instance_input(),
          list()
        ) ::
          {:ok, update_sol_network_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_sol_network_instance_errors()}
  def update_sol_network_instance(%Client{} = client, ns_instance_id, input, options \\ []) do
    url_path = "/sol/nslcm/v1/ns_instances/#{AWS.Util.encode_uri(ns_instance_id)}/update"
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
      201
    )
  end

  @doc """
  Updates the operational state of a network package.

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.

  A network service descriptor is a .yaml file in a network package that uses the
  TOSCA standard to describe the network functions you want to deploy and the
  Amazon Web Services infrastructure you want to deploy the network functions on.
  """
  @spec update_sol_network_package(
          map(),
          String.t() | atom(),
          update_sol_network_package_input(),
          list()
        ) ::
          {:ok, update_sol_network_package_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_sol_network_package_errors()}
  def update_sol_network_package(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path = "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}"
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
  Validates function package content.

  This can be used as a dry run before uploading
  function package content with
  [PutSolFunctionPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html).

  A function package is a .zip file in CSAR (Cloud Service Archive) format that
  contains a network function (an ETSI standard telecommunication application) and
  function package descriptor that uses the TOSCA standard to describe how the
  network functions should run on your network.
  """
  @spec validate_sol_function_package_content(
          map(),
          String.t() | atom(),
          validate_sol_function_package_content_input(),
          list()
        ) ::
          {:ok, validate_sol_function_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_sol_function_package_content_errors()}
  def validate_sol_function_package_content(%Client{} = client, vnf_pkg_id, input, options \\ []) do
    url_path =
      "/sol/vnfpkgm/v1/vnf_packages/#{AWS.Util.encode_uri(vnf_pkg_id)}/package_content/validate"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Validates network package content.

  This can be used as a dry run before uploading
  network package content with
  [PutSolNetworkPackageContent](https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html).

  A network package is a .zip file in CSAR (Cloud Service Archive) format defines
  the function packages you want to deploy and the Amazon Web Services
  infrastructure you want to deploy them on.
  """
  @spec validate_sol_network_package_content(
          map(),
          String.t() | atom(),
          validate_sol_network_package_content_input(),
          list()
        ) ::
          {:ok, validate_sol_network_package_content_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_sol_network_package_content_errors()}
  def validate_sol_network_package_content(%Client{} = client, nsd_info_id, input, options \\ []) do
    url_path =
      "/sol/nsd/v1/ns_descriptors/#{AWS.Util.encode_uri(nsd_info_id)}/nsd_content/validate"

    {headers, input} =
      [
        {"contentType", "Content-Type"}
      ]
      |> Request.build_params(input)

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
end
