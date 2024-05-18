# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EMRcontainers do
  @moduledoc """
  Amazon EMR on EKS provides a deployment option for Amazon EMR that allows
  you to run open-source big data frameworks on Amazon Elastic Kubernetes Service
  (Amazon EKS).

  With this deployment option, you can focus on running analytics workloads while
  Amazon EMR on EKS builds, configures, and manages containers for open-source
  applications.
  For more information about Amazon EMR on EKS concepts and tasks, see [What is Amazon EMR on
  EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html).

  *Amazon EMR containers* is the API name for Amazon EMR on EKS. The
  `emr-containers` prefix is used in the following
  scenarios:

    *
  It is the prefix in the CLI commands for Amazon EMR on EKS. For example,
  `aws emr-containers start-job-run`.

    *
  It is the prefix before IAM policy actions for Amazon EMR on EKS. For
  example, `"Action": [ "emr-containers:StartJobRun"]`. For more information, see [Policy actions for Amazon EMR on
  EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).

    *
  It is the prefix used in Amazon EMR on EKS service endpoints. For example,
  `emr-containers.us-east-2.amazonaws.com`. For more information, see
  [Amazon EMR on EKSService Endpoints](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      encryption_configuration() :: %{
        "inTransitEncryptionConfiguration" => in_transit_encryption_configuration()
      }

  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_template_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type create_job_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_monitoring_configuration() :: %{
        "logUri" => String.t()
      }

  """
  @type s3_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_job_template_response() :: %{
        "id" => String.t()
      }

  """
  @type delete_job_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_security_configurations_request() :: %{
        optional("createdAfter") => non_neg_integer(),
        optional("createdBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_security_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_run() :: %{
        "arn" => String.t(),
        "clientToken" => String.t(),
        "configurationOverrides" => configuration_overrides(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "executionRoleArn" => String.t(),
        "failureReason" => list(any()),
        "finishedAt" => non_neg_integer(),
        "id" => String.t(),
        "jobDriver" => job_driver(),
        "name" => String.t(),
        "releaseLabel" => String.t(),
        "retryPolicyConfiguration" => retry_policy_configuration(),
        "retryPolicyExecution" => retry_policy_execution(),
        "state" => list(any()),
        "stateDetails" => String.t(),
        "tags" => map(),
        "virtualClusterId" => String.t()
      }

  """
  @type job_run() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      describe_job_run_response() :: %{
        "jobRun" => job_run()
      }

  """
  @type describe_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_monitoring_configuration() :: %{
        "logGroupName" => String.t(),
        "logStreamNamePrefix" => String.t()
      }

  """
  @type cloud_watch_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_runs_request() :: %{
        optional("createdAfter") => non_neg_integer(),
        optional("createdBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => String.t(),
        optional("states") => list(list(any())())
      }

  """
  @type list_job_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_security_configuration_request() :: %{
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("name") => String.t(),
        required("securityConfigurationData") => security_configuration_data()
      }

  """
  @type create_security_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_template() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "decryptionError" => String.t(),
        "id" => String.t(),
        "jobTemplateData" => job_template_data(),
        "kmsKeyArn" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type job_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration() :: %{
        "classification" => String.t(),
        "configurations" => list(configuration()()),
        "properties" => map()
      }

  """
  @type configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parametric_cloud_watch_monitoring_configuration() :: %{
        "logGroupName" => String.t(),
        "logStreamNamePrefix" => String.t()
      }

  """
  @type parametric_cloud_watch_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_managed_endpoint_response() :: %{
        "endpoint" => endpoint()
      }

  """
  @type describe_managed_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitoring_configuration() :: %{
        "cloudWatchMonitoringConfiguration" => cloud_watch_monitoring_configuration(),
        "containerLogRotationConfiguration" => container_log_rotation_configuration(),
        "persistentAppUI" => list(any()),
        "s3MonitoringConfiguration" => s3_monitoring_configuration()
      }

  """
  @type monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_managed_endpoint_response() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "virtualClusterId" => String.t()
      }

  """
  @type create_managed_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      secure_namespace_info() :: %{
        "clusterId" => String.t(),
        "namespace" => String.t()
      }

  """
  @type secure_namespace_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_cluster() :: %{
        "arn" => String.t(),
        "containerProvider" => container_provider(),
        "createdAt" => non_neg_integer(),
        "id" => String.t(),
        "name" => String.t(),
        "securityConfigurationId" => String.t(),
        "state" => list(any()),
        "tags" => map()
      }

  """
  @type virtual_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_job_template_request() :: %{}

  """
  @type delete_job_template_request() :: %{}

  @typedoc """

  ## Example:

      parametric_s3_monitoring_configuration() :: %{
        "logUri" => String.t()
      }

  """
  @type parametric_s3_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eks_info() :: %{
        "namespace" => String.t()
      }

  """
  @type eks_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_run_request() :: %{}

  """
  @type describe_job_run_request() :: %{}

  @typedoc """

  ## Example:

      describe_virtual_cluster_request() :: %{}

  """
  @type describe_virtual_cluster_request() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_job_run_response() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "virtualClusterId" => String.t()
      }

  """
  @type start_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_job_run_response() :: %{
        "id" => String.t(),
        "virtualClusterId" => String.t()
      }

  """
  @type cancel_job_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_managed_endpoint_session_credentials_response() :: %{
        "credentials" => list(),
        "expiresAt" => non_neg_integer(),
        "id" => String.t()
      }

  """
  @type get_managed_endpoint_session_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_parameter_configuration() :: %{
        "defaultValue" => String.t(),
        "type" => list(any())
      }

  """
  @type template_parameter_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_template_request() :: %{}

  """
  @type describe_job_template_request() :: %{}

  @typedoc """

  ## Example:

      create_managed_endpoint_request() :: %{
        optional("certificateArn") => String.t(),
        optional("configurationOverrides") => configuration_overrides(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("executionRoleArn") => String.t(),
        required("name") => String.t(),
        required("releaseLabel") => String.t(),
        required("type") => String.t()
      }

  """
  @type create_managed_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_runs_response() :: %{
        "jobRuns" => list(job_run()()),
        "nextToken" => String.t()
      }

  """
  @type list_job_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_managed_endpoint_response() :: %{
        "id" => String.t(),
        "virtualClusterId" => String.t()
      }

  """
  @type delete_managed_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_template_response() :: %{
        "jobTemplate" => job_template()
      }

  """
  @type describe_job_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_log_rotation_configuration() :: %{
        "maxFilesToKeep" => integer(),
        "rotationSize" => String.t()
      }

  """
  @type container_log_rotation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_security_configuration_response() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type create_security_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      container_provider() :: %{
        "id" => String.t(),
        "info" => list(),
        "type" => list(any())
      }

  """
  @type container_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      e_k_s_request_throttled_exception() :: %{
        "message" => String.t()
      }

  """
  @type e_k_s_request_throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint() :: %{
        "arn" => String.t(),
        "certificateArn" => String.t(),
        "certificateAuthority" => certificate(),
        "configurationOverrides" => configuration_overrides(),
        "createdAt" => non_neg_integer(),
        "executionRoleArn" => String.t(),
        "failureReason" => list(any()),
        "id" => String.t(),
        "name" => String.t(),
        "releaseLabel" => String.t(),
        "securityGroup" => String.t(),
        "serverUrl" => String.t(),
        "state" => list(any()),
        "stateDetails" => String.t(),
        "subnetIds" => list(String.t()()),
        "tags" => map(),
        "type" => String.t(),
        "virtualClusterId" => String.t()
      }

  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parametric_configuration_overrides() :: %{
        "applicationConfiguration" => list(configuration()()),
        "monitoringConfiguration" => parametric_monitoring_configuration()
      }

  """
  @type parametric_configuration_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_cluster_response() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "name" => String.t()
      }

  """
  @type create_virtual_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      certificate() :: %{
        "certificateArn" => String.t(),
        "certificateData" => String.t()
      }

  """
  @type certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_job_run_request() :: %{
        optional("configurationOverrides") => configuration_overrides(),
        optional("executionRoleArn") => String.t(),
        optional("jobDriver") => job_driver(),
        optional("jobTemplateId") => String.t(),
        optional("jobTemplateParameters") => map(),
        optional("name") => String.t(),
        optional("releaseLabel") => String.t(),
        optional("retryPolicyConfiguration") => retry_policy_configuration(),
        optional("tags") => map(),
        required("clientToken") => String.t()
      }

  """
  @type start_job_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_cluster_request() :: %{
        optional("securityConfigurationId") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("containerProvider") => container_provider(),
        required("name") => String.t()
      }

  """
  @type create_virtual_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_job_templates_request() :: %{
        optional("createdAfter") => non_neg_integer(),
        optional("createdBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_job_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parametric_monitoring_configuration() :: %{
        "cloudWatchMonitoringConfiguration" => parametric_cloud_watch_monitoring_configuration(),
        "persistentAppUI" => String.t(),
        "s3MonitoringConfiguration" => parametric_s3_monitoring_configuration()
      }

  """
  @type parametric_monitoring_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retry_policy_execution() :: %{
        "currentAttemptCount" => integer()
      }

  """
  @type retry_policy_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_transit_encryption_configuration() :: %{
        "tlsCertificateConfiguration" => t_l_s_certificate_configuration()
      }

  """
  @type in_transit_encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      t_l_s_certificate_configuration() :: %{
        "certificateProviderType" => list(any()),
        "privateCertificateSecretArn" => String.t(),
        "publicCertificateSecretArn" => String.t()
      }

  """
  @type t_l_s_certificate_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_job_template_request() :: %{
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t(),
        required("jobTemplateData") => job_template_data(),
        required("name") => String.t()
      }

  """
  @type create_job_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_managed_endpoint_request() :: %{}

  """
  @type describe_managed_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      security_configuration() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdBy" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "securityConfigurationData" => security_configuration_data(),
        "tags" => map()
      }

  """
  @type security_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_security_configuration_response() :: %{
        "securityConfiguration" => security_configuration()
      }

  """
  @type describe_security_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_template_data() :: %{
        "configurationOverrides" => parametric_configuration_overrides(),
        "executionRoleArn" => String.t(),
        "jobDriver" => job_driver(),
        "jobTags" => map(),
        "parameterConfiguration" => map(),
        "releaseLabel" => String.t()
      }

  """
  @type job_template_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_managed_endpoints_response() :: %{
        "endpoints" => list(endpoint()()),
        "nextToken" => String.t()
      }

  """
  @type list_managed_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_throttled_exception() :: %{
        "message" => String.t()
      }

  """
  @type request_throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_managed_endpoint_request() :: %{}

  """
  @type delete_managed_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      list_managed_endpoints_request() :: %{
        optional("createdAfter") => non_neg_integer(),
        optional("createdBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("states") => list(list(any())()),
        optional("types") => list(String.t()())
      }

  """
  @type list_managed_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_configuration_data() :: %{
        "authorizationConfiguration" => authorization_configuration()
      }

  """
  @type security_configuration_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_cluster_response() :: %{
        "id" => String.t()
      }

  """
  @type delete_virtual_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      configuration_overrides() :: %{
        "applicationConfiguration" => list(configuration()()),
        "monitoringConfiguration" => monitoring_configuration()
      }

  """
  @type configuration_overrides() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_managed_endpoint_session_credentials_request() :: %{
        optional("clientToken") => String.t(),
        optional("durationInSeconds") => integer(),
        optional("logContext") => String.t(),
        required("credentialType") => String.t(),
        required("executionRoleArn") => String.t()
      }

  """
  @type get_managed_endpoint_session_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_sql_job_driver() :: %{
        "entryPoint" => String.t(),
        "sparkSqlParameters" => String.t()
      }

  """
  @type spark_sql_job_driver() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_security_configurations_response() :: %{
        "nextToken" => String.t(),
        "securityConfigurations" => list(security_configuration()())
      }

  """
  @type list_security_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_cluster_response() :: %{
        "virtualCluster" => virtual_cluster()
      }

  """
  @type describe_virtual_cluster_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_driver() :: %{
        "sparkSqlJobDriver" => spark_sql_job_driver(),
        "sparkSubmitJobDriver" => spark_submit_job_driver()
      }

  """
  @type job_driver() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_job_run_request() :: %{}

  """
  @type cancel_job_run_request() :: %{}

  @typedoc """

  ## Example:

      describe_security_configuration_request() :: %{}

  """
  @type describe_security_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_job_templates_response() :: %{
        "nextToken" => String.t(),
        "templates" => list(job_template()())
      }

  """
  @type list_job_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retry_policy_configuration() :: %{
        "maxAttempts" => integer()
      }

  """
  @type retry_policy_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorization_configuration() :: %{
        "encryptionConfiguration" => encryption_configuration(),
        "lakeFormationConfiguration" => lake_formation_configuration()
      }

  """
  @type authorization_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_clusters_response() :: %{
        "nextToken" => String.t(),
        "virtualClusters" => list(virtual_cluster()())
      }

  """
  @type list_virtual_clusters_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_cluster_request() :: %{}

  """
  @type delete_virtual_cluster_request() :: %{}

  @typedoc """

  ## Example:

      lake_formation_configuration() :: %{
        "authorizedSessionTagValue" => String.t(),
        "queryEngineRoleArn" => String.t(),
        "secureNamespaceInfo" => secure_namespace_info()
      }

  """
  @type lake_formation_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spark_submit_job_driver() :: %{
        "entryPoint" => String.t(),
        "entryPointArguments" => list(String.t()()),
        "sparkSubmitParameters" => String.t()
      }

  """
  @type spark_submit_job_driver() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_clusters_request() :: %{
        optional("containerProviderId") => String.t(),
        optional("containerProviderType") => list(any()),
        optional("createdAfter") => non_neg_integer(),
        optional("createdBefore") => non_neg_integer(),
        optional("eksAccessEntryIntegrated") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("states") => list(list(any())())
      }

  """
  @type list_virtual_clusters_request() :: %{String.t() => any()}

  @type cancel_job_run_errors() :: validation_exception() | internal_server_exception()

  @type create_job_template_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type create_managed_endpoint_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type create_security_configuration_errors() ::
          validation_exception() | internal_server_exception()

  @type create_virtual_cluster_errors() ::
          validation_exception()
          | internal_server_exception()
          | e_k_s_request_throttled_exception()
          | resource_not_found_exception()

  @type delete_job_template_errors() :: validation_exception() | internal_server_exception()

  @type delete_managed_endpoint_errors() :: validation_exception() | internal_server_exception()

  @type delete_virtual_cluster_errors() :: validation_exception() | internal_server_exception()

  @type describe_job_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_job_template_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_managed_endpoint_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_security_configuration_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_virtual_cluster_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_managed_endpoint_session_credentials_errors() ::
          validation_exception()
          | request_throttled_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_job_runs_errors() :: validation_exception() | internal_server_exception()

  @type list_job_templates_errors() :: validation_exception() | internal_server_exception()

  @type list_managed_endpoints_errors() :: validation_exception() | internal_server_exception()

  @type list_security_configurations_errors() ::
          validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_virtual_clusters_errors() :: validation_exception() | internal_server_exception()

  @type start_job_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-10-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "emr-containers",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EMR containers",
      signature_version: "v4",
      signing_name: "emr-containers",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a job run.

  A job run is a unit of work, such as a Spark jar, PySpark script, or
  SparkSQL query, that you submit to Amazon EMR on EKS.
  """
  @spec cancel_job_run(map(), String.t(), String.t(), cancel_job_run_request(), list()) ::
          {:ok, cancel_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_job_run_errors()}
  def cancel_job_run(%Client{} = client, id, virtual_cluster_id, input, options \\ []) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/jobruns/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a job template.

  Job template stores values of StartJobRun API request in a
  template and can be used to start a job run. Job template allows two use cases:
  avoid
  repeating recurring StartJobRun API request values, enforcing certain values in
  StartJobRun
  API request.
  """
  @spec create_job_template(map(), create_job_template_request(), list()) ::
          {:ok, create_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_job_template_errors()}
  def create_job_template(%Client{} = client, input, options \\ []) do
    url_path = "/jobtemplates"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a managed endpoint.

  A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on
  EKS so that Amazon EMR Studio can
  communicate with your virtual cluster.
  """
  @spec create_managed_endpoint(map(), String.t(), create_managed_endpoint_request(), list()) ::
          {:ok, create_managed_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_managed_endpoint_errors()}
  def create_managed_endpoint(%Client{} = client, virtual_cluster_id, input, options \\ []) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/endpoints"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a security configuration.

  Security configurations in Amazon EMR on EKS are
  templates for different security setups. You can use security configurations to
  configure
  the Lake Formation integration setup. You can also create a security
  configuration
  to re-use a security setup each time you create a virtual cluster.
  """
  @spec create_security_configuration(map(), create_security_configuration_request(), list()) ::
          {:ok, create_security_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_security_configuration_errors()}
  def create_security_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/securityconfigurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a virtual cluster.

  Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
  describe, list and delete virtual clusters. They do not consume any
  additional resource in your system. A single virtual cluster maps to a single
  Kubernetes
  namespace. Given this relationship, you can model virtual clusters the same way
  you model
  Kubernetes namespaces to meet your requirements.
  """
  @spec create_virtual_cluster(map(), create_virtual_cluster_request(), list()) ::
          {:ok, create_virtual_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_virtual_cluster_errors()}
  def create_virtual_cluster(%Client{} = client, input, options \\ []) do
    url_path = "/virtualclusters"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a job template.

  Job template stores values of StartJobRun API request in a
  template and can be used to start a job run. Job template allows two use cases:
  avoid
  repeating recurring StartJobRun API request values, enforcing certain values in
  StartJobRun
  API request.
  """
  @spec delete_job_template(map(), String.t(), delete_job_template_request(), list()) ::
          {:ok, delete_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_job_template_errors()}
  def delete_job_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/jobtemplates/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a managed endpoint.

  A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on
  EKS so that Amazon EMR Studio can
  communicate with your virtual cluster.
  """
  @spec delete_managed_endpoint(
          map(),
          String.t(),
          String.t(),
          delete_managed_endpoint_request(),
          list()
        ) ::
          {:ok, delete_managed_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_managed_endpoint_errors()}
  def delete_managed_endpoint(%Client{} = client, id, virtual_cluster_id, input, options \\ []) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/endpoints/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a virtual cluster.

  Virtual cluster is a managed entity on Amazon EMR on EKS. You can create,
  describe, list and delete virtual clusters. They do not consume any
  additional resource in your system. A single virtual cluster maps to a single
  Kubernetes
  namespace. Given this relationship, you can model virtual clusters the same way
  you model
  Kubernetes namespaces to meet your requirements.
  """
  @spec delete_virtual_cluster(map(), String.t(), delete_virtual_cluster_request(), list()) ::
          {:ok, delete_virtual_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_virtual_cluster_errors()}
  def delete_virtual_cluster(%Client{} = client, id, input, options \\ []) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Displays detailed information about a job run.

  A job run is a unit of work, such as a
  Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on
  EKS.
  """
  @spec describe_job_run(map(), String.t(), String.t(), list()) ::
          {:ok, describe_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_job_run_errors()}
  def describe_job_run(%Client{} = client, id, virtual_cluster_id, options \\ []) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/jobruns/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays detailed information about a specified job template.

  Job template stores values
  of StartJobRun API request in a template and can be used to start a job run. Job
  template
  allows two use cases: avoid repeating recurring StartJobRun API request values,
  enforcing
  certain values in StartJobRun API request.
  """
  @spec describe_job_template(map(), String.t(), list()) ::
          {:ok, describe_job_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_job_template_errors()}
  def describe_job_template(%Client{} = client, id, options \\ []) do
    url_path = "/jobtemplates/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays detailed information about a managed endpoint.

  A managed endpoint is a gateway
  that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio
  can communicate with your virtual cluster.
  """
  @spec describe_managed_endpoint(map(), String.t(), String.t(), list()) ::
          {:ok, describe_managed_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_managed_endpoint_errors()}
  def describe_managed_endpoint(%Client{} = client, id, virtual_cluster_id, options \\ []) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/endpoints/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays detailed information about a specified security configuration.

  Security
  configurations in Amazon EMR on EKS are templates for different security setups.
  You
  can use security configurations to configure the Lake Formation integration
  setup.
  You can also create a security configuration to re-use a security setup each
  time you
  create a virtual cluster.
  """
  @spec describe_security_configuration(map(), String.t(), list()) ::
          {:ok, describe_security_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_security_configuration_errors()}
  def describe_security_configuration(%Client{} = client, id, options \\ []) do
    url_path = "/securityconfigurations/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Displays detailed information about a specified virtual cluster.

  Virtual cluster is a
  managed entity on Amazon EMR on EKS. You can create, describe, list and delete
  virtual
  clusters. They do not consume any additional resource in your system. A single
  virtual
  cluster maps to a single Kubernetes namespace. Given this relationship, you can
  model
  virtual clusters the same way you model Kubernetes namespaces to meet your
  requirements.
  """
  @spec describe_virtual_cluster(map(), String.t(), list()) ::
          {:ok, describe_virtual_cluster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_virtual_cluster_errors()}
  def describe_virtual_cluster(%Client{} = client, id, options \\ []) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generate a session token to connect to a managed endpoint.
  """
  @spec get_managed_endpoint_session_credentials(
          map(),
          String.t(),
          String.t(),
          get_managed_endpoint_session_credentials_request(),
          list()
        ) ::
          {:ok, get_managed_endpoint_session_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_managed_endpoint_session_credentials_errors()}
  def get_managed_endpoint_session_credentials(
        %Client{} = client,
        endpoint_identifier,
        virtual_cluster_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_identifier)}/endpoints/#{AWS.Util.encode_uri(endpoint_identifier)}/credentials"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists job runs based on a set of parameters.

  A job run is a unit of work, such as a
  Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on
  EKS.
  """
  @spec list_job_runs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_job_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_job_runs_errors()}
  def list_job_runs(
        %Client{} = client,
        virtual_cluster_id,
        created_after \\ nil,
        created_before \\ nil,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/jobruns"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
      if !is_nil(created_before) do
        [{"createdBefore", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"createdAfter", created_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists job templates based on a set of parameters.

  Job template stores values of
  StartJobRun API request in a template and can be used to start a job run. Job
  template
  allows two use cases: avoid repeating recurring StartJobRun API request values,
  enforcing
  certain values in StartJobRun API request.
  """
  @spec list_job_templates(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_job_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_job_templates_errors()}
  def list_job_templates(
        %Client{} = client,
        created_after \\ nil,
        created_before \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/jobtemplates"
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
      if !is_nil(created_before) do
        [{"createdBefore", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"createdAfter", created_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists managed endpoints based on a set of parameters.

  A managed endpoint is a gateway
  that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio
  can communicate with your virtual cluster.
  """
  @spec list_managed_endpoints(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_managed_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_managed_endpoints_errors()}
  def list_managed_endpoints(
        %Client{} = client,
        virtual_cluster_id,
        created_after \\ nil,
        created_before \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        states \\ nil,
        types \\ nil,
        options \\ []
      ) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/endpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(types) do
        [{"types", types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
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

    query_params =
      if !is_nil(created_before) do
        [{"createdBefore", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"createdAfter", created_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists security configurations based on a set of parameters.

  Security configurations in
  Amazon EMR on EKS are templates for different security setups. You can use
  security
  configurations to configure the Lake Formation integration setup. You can also
  create a security configuration to re-use a security setup each time you create
  a virtual
  cluster.
  """
  @spec list_security_configurations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_security_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_security_configurations_errors()}
  def list_security_configurations(
        %Client{} = client,
        created_after \\ nil,
        created_before \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/securityconfigurations"
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
      if !is_nil(created_before) do
        [{"createdBefore", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"createdAfter", created_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags assigned to the resources.
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
  Lists information about the specified virtual cluster.

  Virtual cluster is a managed
  entity on Amazon EMR on EKS. You can create, describe, list and delete virtual
  clusters. They do not consume any additional resource in your system. A single
  virtual
  cluster maps to a single Kubernetes namespace. Given this relationship, you can
  model
  virtual clusters the same way you model Kubernetes namespaces to meet your
  requirements.
  """
  @spec list_virtual_clusters(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_virtual_clusters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_virtual_clusters_errors()}
  def list_virtual_clusters(
        %Client{} = client,
        container_provider_id \\ nil,
        container_provider_type \\ nil,
        created_after \\ nil,
        created_before \\ nil,
        eks_access_entry_integrated \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/virtualclusters"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
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

    query_params =
      if !is_nil(eks_access_entry_integrated) do
        [{"eksAccessEntryIntegrated", eks_access_entry_integrated} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_before) do
        [{"createdBefore", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"createdAfter", created_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(container_provider_type) do
        [{"containerProviderType", container_provider_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(container_provider_id) do
        [{"containerProviderId", container_provider_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a job run.

  A job run is a unit of work, such as a Spark jar, PySpark script, or
  SparkSQL query, that you submit to Amazon EMR on EKS.
  """
  @spec start_job_run(map(), String.t(), start_job_run_request(), list()) ::
          {:ok, start_job_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_job_run_errors()}
  def start_job_run(%Client{} = client, virtual_cluster_id, input, options \\ []) do
    url_path = "/virtualclusters/#{AWS.Util.encode_uri(virtual_cluster_id)}/jobruns"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Assigns tags to resources.

  A tag is a label that you assign to an Amazon Web Services
  resource. Each tag consists of a key and an optional value, both of which you
  define. Tags
  enable you to categorize your Amazon Web Services resources by attributes such
  as purpose,
  owner, or environment. When you have many resources of the same type, you can
  quickly
  identify a specific resource based on the tags you've assigned to it. For
  example, you can
  define a set of tags for your Amazon EMR on EKS clusters to help you track each
  cluster's owner and stack level. We recommend that you devise a consistent set
  of tag keys
  for each resource type. You can then search and filter the resources based on
  the tags that
  you add.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from resources.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end
end
