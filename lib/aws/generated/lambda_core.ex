# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LambdaCore do
  @moduledoc """
  Lambda

  ## Overview

  Lambda Core is a set of APIs for managing shared infrastructure resources used
  by Lambda.

  The Lambda Core API provides operations for:

    1. Creating and managing network connectors that enable Lambda
  MicroVMs and Lambda Web Functions to access resources in your Amazon Virtual
  Private Cloud (Amazon VPC).

    2. Creating customer-managed runtimes which can be used with Lambda
  Event Functions.

  Network connectors provision elastic network interfaces (ENIs) in your VPC
  subnets, providing a managed network path from Lambda compute environments to
  private resources such as Amazon RDS databases, Amazon ElastiCache clusters, and
  internal APIs. You create a network connector once and attach it to one or more
  Lambda MicroVMs or Lambda Web Functions at run time.

  A customer-managed runtime is a Lambda runtime that you create and manage as a
  standalone resource. Lambda Event Functions can use your customer-managed
  runtime instead of using one of the built-in Lambda-managed runtimes.
  Customer-managed runtimes enable you to create customized runtimes for your
  workloads, and give you control over runtime updates and the deprecation
  lifecycle.

  The *Lambda Core API Reference* provides information about each of the API
  methods, including details about the parameters in each API request and
  response.

  You can use Software Development Kits (SDKs), Integrated Development Environment
  (IDE) Toolkits, and command line tools to access the API. For installation
  instructions, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).  For a list of Region-specific endpoints that Lambda supports, see [Lambda
  endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/lambda-service.html) in
  the *Amazon Web Services General Reference.*

  When making the API calls, you will need to authenticate your request by
  providing a signature. Lambda supports signature version 4. For more
  information, see [Signature Version 4 signing process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  in the *Amazon Web Services General Reference.*
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      compatibility() :: %{
        "Architectures" => list(list(any())()),
        "IntegrationModels" => list(list(any())()),
        "ManagedInstances" => list(any())
      }

  """
  @type compatibility() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_network_connector_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("OperatorRole") => String.t() | atom(),
        optional("Tags") => map(),
        required("Configuration") => list(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_network_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_network_connector_response() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => list(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatorRole" => String.t() | atom(),
        "State" => list(any()),
        "Version" => float(),
        "VersionArn" => String.t() | atom()
      }

  """
  @type create_network_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_runtime_alias_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ReleaseLifecycle") => runtime_release_lifecycle(),
        required("Name") => String.t() | atom(),
        required("RuntimeVersion") => String.t() | atom()
      }

  """
  @type create_runtime_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_runtime_alias_response() :: %{
        "Arn" => String.t() | atom(),
        "Created" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ReleaseLifecycle" => runtime_release_lifecycle(),
        "RuntimeVersion" => String.t() | atom(),
        "RuntimeVersionArn" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type create_runtime_alias_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_runtime_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("LicenseInfo") => String.t() | atom(),
        optional("ReleaseLifecycle") => runtime_release_lifecycle(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_runtime_response() :: %{
        "Arn" => String.t() | atom(),
        "Created" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "LicenseInfo" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ReleaseLifecycle" => runtime_release_lifecycle()
      }

  """
  @type create_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_runtime_version_request() :: %{
        optional("DryRun") => [boolean()],
        optional("ReleaseNotes") => [String.t() | atom()],
        required("ImageUri") => [String.t() | atom()],
        required("Name") => String.t() | atom()
      }

  """
  @type create_runtime_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_runtime_version_response() :: %{
        "Arn" => String.t() | atom(),
        "Compatibility" => compatibility(),
        "Created" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Platforms" => list(platform()),
        "ReleaseNotes" => [String.t() | atom()],
        "ResolvedUri" => [String.t() | atom()],
        "State" => list(any())
      }

  """
  @type create_runtime_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_network_connector_request() :: %{}

  """
  @type delete_network_connector_request() :: %{}

  @typedoc """

  ## Example:

      delete_network_connector_response() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => list(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatorRole" => String.t() | atom(),
        "State" => list(any()),
        "Version" => float(),
        "VersionArn" => String.t() | atom()
      }

  """
  @type delete_network_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_runtime_alias_request() :: %{
        optional("RecoveryWindowInDays") => [integer()]
      }

  """
  @type delete_runtime_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_runtime_alias_response() :: %{}

  """
  @type delete_runtime_alias_response() :: %{}

  @typedoc """

  ## Example:

      delete_runtime_request() :: %{
        optional("RecoveryWindowInDays") => [integer()]
      }

  """
  @type delete_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_runtime_response() :: %{}

  """
  @type delete_runtime_response() :: %{}

  @typedoc """

  ## Example:

      delete_runtime_version_request() :: %{
        optional("RecoveryWindowInDays") => [integer()]
      }

  """
  @type delete_runtime_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_runtime_version_response() :: %{}

  """
  @type delete_runtime_version_response() :: %{}

  @typedoc """

  ## Example:

      get_network_connector_request() :: %{}

  """
  @type get_network_connector_request() :: %{}

  @typedoc """

  ## Example:

      get_network_connector_response() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => list(),
        "Id" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "LastUpdateStatus" => list(any()),
        "LastUpdateStatusReason" => String.t() | atom(),
        "LastUpdateStatusReasonCode" => list(any()),
        "LatestVersion" => float(),
        "LatestVersionArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatorRole" => String.t() | atom(),
        "State" => list(any()),
        "StateReason" => String.t() | atom(),
        "StateReasonCode" => list(any()),
        "Version" => float(),
        "VersionArn" => String.t() | atom()
      }

  """
  @type get_network_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_runtime_alias_request() :: %{}

  """
  @type get_runtime_alias_request() :: %{}

  @typedoc """

  ## Example:

      get_runtime_alias_response() :: %{
        "Arn" => String.t() | atom(),
        "Compatibility" => compatibility(),
        "Created" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PendingDeletionAt" => String.t() | atom(),
        "ReleaseLifecycle" => runtime_release_lifecycle(),
        "RuntimeVersion" => String.t() | atom(),
        "RuntimeVersionArn" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type get_runtime_alias_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_runtime_request() :: %{}

  """
  @type get_runtime_request() :: %{}

  @typedoc """

  ## Example:

      get_runtime_response() :: %{
        "Arn" => String.t() | atom(),
        "Created" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => [String.t() | atom()],
        "LastModified" => String.t() | atom(),
        "LicenseInfo" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PendingDeletionAt" => String.t() | atom(),
        "ReleaseLifecycle" => runtime_release_lifecycle(),
        "State" => list(any())
      }

  """
  @type get_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_runtime_version_request() :: %{}

  """
  @type get_runtime_version_request() :: %{}

  @typedoc """

  ## Example:

      get_runtime_version_response() :: %{
        "Arn" => String.t() | atom(),
        "Compatibility" => compatibility(),
        "Created" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PendingDeletionAt" => String.t() | atom(),
        "Platforms" => list(platform()),
        "ReleaseNotes" => [String.t() | atom()],
        "ResolvedUri" => [String.t() | atom()],
        "State" => list(any())
      }

  """
  @type get_runtime_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type invalid_parameter_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_network_connector_versions_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer(),
        optional("State") => list(any())
      }

  """
  @type list_network_connector_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_network_connector_versions_response() :: %{
        "NetworkConnectorVersions" => list(network_connector_version_summary()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_network_connector_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_network_connectors_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer(),
        optional("State") => list(any())
      }

  """
  @type list_network_connectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_network_connectors_response() :: %{
        "NetworkConnectors" => list(network_connector_summary()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_network_connectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_runtime_aliases_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()]
      }

  """
  @type list_runtime_aliases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_runtime_aliases_response() :: %{
        "Items" => list(runtime_alias_info()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_runtime_aliases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_runtime_versions_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()]
      }

  """
  @type list_runtime_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_runtime_versions_response() :: %{
        "Items" => list(runtime_version_info()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_runtime_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_runtimes_request() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()]
      }

  """
  @type list_runtimes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_runtimes_response() :: %{
        "Items" => list(runtime_info()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_runtimes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connector_limit_exceeded_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type network_connector_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connector_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "LatestVersion" => float(),
        "LatestVersionArn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "State" => list(any()),
        "Type" => list(any())
      }

  """
  @type network_connector_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connector_version_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "State" => list(any()),
        "StateReason" => String.t() | atom(),
        "StateReasonCode" => list(any()),
        "Version" => float(),
        "VersionArn" => String.t() | atom()
      }

  """
  @type network_connector_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_connector_vpc_egress_configuration() :: %{
        "AssociatedComputeResourceTypes" => list(list(any())()),
        "NetworkProtocol" => list(any()),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }

  """
  @type network_connector_vpc_egress_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      platform() :: %{
        "Architecture" => [String.t() | atom()],
        "Digest" => [String.t() | atom()],
        "Os" => [String.t() | atom()]
      }

  """
  @type platform() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type resource_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      restore_runtime_request() :: %{
        optional("RuntimeAlias") => String.t() | atom(),
        optional("RuntimeVersion") => String.t() | atom()
      }

  """
  @type restore_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      restore_runtime_response() :: %{
        "Arn" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "RuntimeAlias" => String.t() | atom(),
        "RuntimeName" => String.t() | atom(),
        "RuntimeVersion" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type restore_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_alias_info() :: %{
        "Arn" => String.t() | atom(),
        "Compatibility" => compatibility(),
        "Created" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PendingDeletionAt" => String.t() | atom(),
        "ReleaseLifecycle" => runtime_release_lifecycle(),
        "RuntimeVersion" => String.t() | atom(),
        "RuntimeVersionArn" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type runtime_alias_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_info() :: %{
        "Arn" => String.t() | atom(),
        "Created" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "LicenseInfo" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PendingDeletionAt" => String.t() | atom(),
        "ReleaseLifecycle" => runtime_release_lifecycle(),
        "State" => list(any())
      }

  """
  @type runtime_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_release_lifecycle() :: %{
        "DeprecationDate" => String.t() | atom(),
        "FunctionCreateBlockDate" => String.t() | atom(),
        "FunctionUpdateBlockDate" => String.t() | atom(),
        "ReleaseState" => list(any())
      }

  """
  @type runtime_release_lifecycle() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_version_info() :: %{
        "Arn" => String.t() | atom(),
        "Compatibility" => compatibility(),
        "Created" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PendingDeletionAt" => String.t() | atom(),
        "ReleaseNotes" => [String.t() | atom()],
        "ResolvedUri" => [String.t() | atom()],
        "State" => list(any())
      }

  """
  @type runtime_version_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Reason" => list(any()),
        "Type" => String.t() | atom(),
        "message" => String.t() | atom(),
        "retryAfterSeconds" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_network_connector_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Configuration") => list(),
        optional("OperatorRole") => String.t() | atom()
      }

  """
  @type update_network_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_network_connector_response() :: %{
        "Arn" => String.t() | atom(),
        "Configuration" => list(),
        "Id" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "LastUpdateStatus" => list(any()),
        "LastUpdateStatusReason" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OperatorRole" => String.t() | atom(),
        "State" => list(any()),
        "Version" => float(),
        "VersionArn" => String.t() | atom()
      }

  """
  @type update_network_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_runtime_alias_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ReleaseLifecycle") => runtime_release_lifecycle(),
        required("RuntimeVersion") => String.t() | atom()
      }

  """
  @type update_runtime_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_runtime_alias_response() :: %{
        "Arn" => String.t() | atom(),
        "Compatibility" => compatibility(),
        "Created" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ReleaseLifecycle" => runtime_release_lifecycle(),
        "RuntimeName" => String.t() | atom(),
        "RuntimeVersion" => String.t() | atom(),
        "RuntimeVersionArn" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type update_runtime_alias_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_runtime_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("LicenseInfo") => String.t() | atom(),
        optional("ReleaseLifecycle") => runtime_release_lifecycle()
      }

  """
  @type update_runtime_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_runtime_response() :: %{
        "Arn" => String.t() | atom(),
        "Created" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "LicenseInfo" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ReleaseLifecycle" => runtime_release_lifecycle()
      }

  """
  @type update_runtime_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_runtime_version_request() :: %{
        required("ReleaseNotes") => [String.t() | atom()]
      }

  """
  @type update_runtime_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_runtime_version_response() :: %{
        "Arn" => String.t() | atom(),
        "Compatibility" => compatibility(),
        "Created" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Platforms" => list(platform()),
        "ReleaseNotes" => [String.t() | atom()],
        "ResolvedUri" => [String.t() | atom()],
        "State" => list(any())
      }

  """
  @type update_runtime_version_response() :: %{(String.t() | atom()) => any()}

  @type create_network_connector_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_conflict_exception()
          | network_connector_limit_exceeded_exception()
          | invalid_parameter_value_exception()

  @type create_runtime_errors() ::
          too_many_requests_exception()
          | service_quota_exceeded_exception()
          | service_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type create_runtime_alias_errors() ::
          too_many_requests_exception()
          | service_quota_exceeded_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type create_runtime_version_errors() ::
          too_many_requests_exception()
          | service_quota_exceeded_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type delete_network_connector_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type delete_runtime_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type delete_runtime_alias_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type delete_runtime_version_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type get_network_connector_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()

  @type get_runtime_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()

  @type get_runtime_alias_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()

  @type get_runtime_version_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()

  @type list_network_connector_versions_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()

  @type list_network_connectors_errors() ::
          too_many_requests_exception()
          | service_exception()
          | invalid_parameter_value_exception()

  @type list_runtime_aliases_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()

  @type list_runtime_versions_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()

  @type list_runtimes_errors() ::
          too_many_requests_exception()
          | service_exception()
          | invalid_parameter_value_exception()

  @type restore_runtime_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type update_network_connector_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | network_connector_limit_exceeded_exception()
          | invalid_parameter_value_exception()

  @type update_runtime_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type update_runtime_alias_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  @type update_runtime_version_errors() ::
          too_many_requests_exception()
          | service_exception()
          | resource_not_found_exception()
          | resource_conflict_exception()
          | invalid_parameter_value_exception()

  def metadata do
    %{
      api_version: "2026-04-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lambda",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lambda Core",
      signature_version: "v4",
      signing_name: "lambda",
      target_prefix: nil
    }
  end

  @doc """
  Creates a network connector that enables Lambda compute resources to route
  outbound traffic through your Amazon VPC.

  The network connector provisions elastic network interfaces (ENIs) in the
  subnets you specify, providing a managed network path to private resources such
  as databases, caches, and internal APIs.

  This operation is asynchronous. The network connector starts in `PENDING` state
  while ENIs are provisioned in your VPC (provisioning typically takes up to 10
  minutes). Use `GetNetworkConnector` to poll the connector state until it reaches
  `ACTIVE`. Once active, you can attach the connector to supported Lambda compute
  resources — such as MicroVMs and WebFunctions — at run time. For how to attach a
  connector, see the documentation for the specific compute type.

  This operation is idempotent when you provide a `ClientToken` — if you retry a
  request that completed successfully using the same client token, the operation
  returns the existing connector without creating a duplicate.
  """
  @spec create_network_connector(map(), create_network_connector_request(), list()) ::
          {:ok, create_network_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_network_connector_errors()}
  def create_network_connector(%Client{} = client, input, options \\ []) do
    url_path = "/2026-04-04/network-connectors"
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
  Creates a customer-managed runtime, a resource providing a centrally managed
  execution environment for your Lambda functions.

  The runtime resource is the parent of the runtime version and runtime alias
  child resources.
  """
  @spec create_runtime(map(), create_runtime_request(), list()) ::
          {:ok, create_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_runtime_errors()}
  def create_runtime(%Client{} = client, input, options \\ []) do
    url_path = "/2026-10-01/runtimes"
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
  Creates a new customer-managed runtime alias.

  The alias is a named pointer to a runtime version. Functions consume the
  customer-managed runtime through the runtime alias.
  """
  @spec create_runtime_alias(map(), String.t() | atom(), create_runtime_alias_request(), list()) ::
          {:ok, create_runtime_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_runtime_alias_errors()}
  def create_runtime_alias(%Client{} = client, runtime_name, input, options \\ []) do
    url_path = "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/aliases"
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
  Creates a new runtime version.

  A runtime version defines the function execution environment by referencing a
  container image. Runtime versions are immutable. To update the runtime, create a
  new runtime version and migrate functions by updating the runtime aliases to
  point to the new runtime version.
  """
  @spec create_runtime_version(
          map(),
          String.t() | atom(),
          create_runtime_version_request(),
          list()
        ) ::
          {:ok, create_runtime_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_runtime_version_errors()}
  def create_runtime_version(%Client{} = client, runtime_name, input, options \\ []) do
    url_path = "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/versions"
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
  Initiates deletion of a network connector.

  The connector transitions to `DELETING` state while elastic network interfaces
  are cleaned up asynchronously. After deletion completes, subsequent calls to
  `GetNetworkConnector` return `ResourceNotFoundException`.

  This operation is idempotent — calling delete on a connector that is already
  deleting or has been deleted succeeds without error. You can delete connectors
  in `ACTIVE` or `FAILED` states. Before deleting a connector, ensure that no
  Lambda compute resources are using it, as they will lose VPC egress connectivity
  immediately.

  Deleting with an unqualified identifier removes the connector and all of its
  versions. To remove a single historical version, supply its version-qualified
  ARN; the connector and its remaining versions are unaffected. You can't delete
  the latest version on its own — delete the connector to remove it.
  """
  @spec delete_network_connector(
          map(),
          String.t() | atom(),
          delete_network_connector_request(),
          list()
        ) ::
          {:ok, delete_network_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_network_connector_errors()}
  def delete_network_connector(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/2026-04-04/network-connectors/#{AWS.Util.encode_uri(identifier)}"
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
      202
    )
  end

  @doc """
  Schedules a customer-managed runtime to be deleted.

  Runtimes scheduled for deletion enter the PENDING_DELETION state and can be
  restored during the scheduled deletion window. Runtime versions and aliases must
  be deleted or scheduled for deletion before deleting the runtime. Function
  invokes fail for functions using runtime versions or aliases that are deleted or
  pending deletion.
  """
  @spec delete_runtime(map(), String.t() | atom(), delete_runtime_request(), list()) ::
          {:ok, delete_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_runtime_errors()}
  def delete_runtime(%Client{} = client, runtime_name, input, options \\ []) do
    url_path = "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}"

    {headers, input} =
      [
        {"RecoveryWindowInDays", "x-amzn-runtime-recovery-window-in-days"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Schedules a runtime alias to be deleted.

  Runtime aliases scheduled for deletion enter the PENDING_DELETION state and can
  be restored during the scheduled deletion window. Function invokes fail for
  functions using runtime aliases that are deleted or pending deletion.
  """
  @spec delete_runtime_alias(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_runtime_alias_request(),
          list()
        ) ::
          {:ok, delete_runtime_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_runtime_alias_errors()}
  def delete_runtime_alias(%Client{} = client, name, runtime_name, input, options \\ []) do
    url_path =
      "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"RecoveryWindowInDays", "x-amzn-runtime-recovery-window-in-days"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Schedules a runtime version to be deleted.

  Runtime versions scheduled for deletion enter the PENDING_DELETION state and can
  be restored during the scheduled deletion window. Function invokes fail for
  functions using a runtime version that is deleted or pending deletion.
  """
  @spec delete_runtime_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_runtime_version_request(),
          list()
        ) ::
          {:ok, delete_runtime_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_runtime_version_errors()}
  def delete_runtime_version(%Client{} = client, name, runtime_name, input, options \\ []) do
    url_path =
      "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/versions/#{AWS.Util.encode_uri(name)}"

    {headers, input} =
      [
        {"RecoveryWindowInDays", "x-amzn-runtime-recovery-window-in-days"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Retrieves the current configuration, state, and metadata of a network connector.

  The `Identifier` parameter accepts the connector ID, name, or full ARN. Use this
  operation to poll connector state after creation or update, or to inspect the
  current VPC configuration and any failure reasons.

  The response includes the full connector configuration, current state, and — if
  the connector has been updated — the `LastUpdateStatus` and
  `LastUpdateStatusReasonCode` fields that indicate whether the most recent update
  succeeded or failed.
  """
  @spec get_network_connector(map(), String.t() | atom(), list()) ::
          {:ok, get_network_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_network_connector_errors()}
  def get_network_connector(%Client{} = client, identifier, options \\ []) do
    url_path = "/2026-04-04/network-connectors/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration and metadata of a runtime.
  """
  @spec get_runtime(map(), String.t() | atom(), list()) ::
          {:ok, get_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_runtime_errors()}
  def get_runtime(%Client{} = client, runtime_name, options \\ []) do
    url_path = "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration, state, and metadata of a runtime alias.
  """
  @spec get_runtime_alias(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_runtime_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_runtime_alias_errors()}
  def get_runtime_alias(%Client{} = client, name, runtime_name, options \\ []) do
    url_path =
      "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration, state, and metadata of a runtime version.
  """
  @spec get_runtime_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_runtime_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_runtime_version_errors()}
  def get_runtime_version(%Client{} = client, name, runtime_name, options \\ []) do
    url_path =
      "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/versions/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of the versions of a network connector.

  Each configuration update creates a new immutable version; this operation lists
  those versions for the connector you specify. You can optionally filter results
  by version state. Use the `Marker` parameter from a previous response to
  retrieve the next page of results.

  Each item in the response includes the version-qualified ARN, version number,
  current state, and last modified timestamp for that version. To retrieve the
  current (latest) configuration of the connector, use `GetNetworkConnector`; to
  inspect a specific version, call `GetNetworkConnector` with a version-qualified
  identifier.
  """
  @spec list_network_connector_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_network_connector_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_network_connector_versions_errors()}
  def list_network_connector_versions(
        %Client{} = client,
        identifier,
        marker \\ nil,
        max_items \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/2026-04-04/network-connectors/#{AWS.Util.encode_uri(identifier)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(state) do
        [{"State", state} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of network connectors in your account for the current
  Region.

  You can optionally filter results by connector state. Use the `Marker` parameter
  from a previous response to retrieve the next page of results.

  Each item in the response includes the connector ARN, name, ID, type, current
  state, and last modified timestamp. To retrieve full configuration details for a
  specific connector, use `GetNetworkConnector`.
  """
  @spec list_network_connectors(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_network_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_network_connectors_errors()}
  def list_network_connectors(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/2026-04-04/network-connectors"
    headers = []
    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(state) do
        [{"State", state} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of aliases for the specified runtime.
  """
  @spec list_runtime_aliases(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_runtime_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_runtime_aliases_errors()}
  def list_runtime_aliases(
        %Client{} = client,
        runtime_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/aliases"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of versions for the specified runtime.
  """
  @spec list_runtime_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_runtime_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_runtime_versions_errors()}
  def list_runtime_versions(
        %Client{} = client,
        runtime_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of runtimes in your account for the current Region.
  """
  @spec list_runtimes(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_runtimes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_runtimes_errors()}
  def list_runtimes(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2026-10-01/runtimes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Cancels a pending scheduled deletion, returning the resource to the ACTIVE
  state.

  Scope is
  determined by the RuntimeName path parameter plus an optional, mutually
  exclusive RuntimeVersion
  or RuntimeAlias query parameter: with neither, the runtime itself is restored;
  with RuntimeVersion,
  the named runtime version; with RuntimeAlias, the named runtime alias. Restoring
  a resource that is
  already ACTIVE is a no-op success. Restore only works while the target is
  PENDING_DELETION; once the
  scheduled deletion has begun executing (DELETING) or has completed, the call
  fails.
  """
  @spec restore_runtime(map(), String.t() | atom(), restore_runtime_request(), list()) ::
          {:ok, restore_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_runtime_errors()}
  def restore_runtime(%Client{} = client, runtime_name, input, options \\ []) do
    url_path = "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/restore"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"RuntimeAlias", "RuntimeAlias"},
        {"RuntimeVersion", "RuntimeVersion"}
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
      200
    )
  end

  @doc """
  Updates the VPC configuration or operator role of an existing network connector.

  You can modify the subnet IDs, security group IDs, network protocol, or operator
  role. The connector must be in `ACTIVE` state to accept updates.

  This operation is asynchronous. The connector remains in `ACTIVE` state during
  the update — existing workloads that reference this connector are not disrupted.
  Use `GetNetworkConnector` to monitor the `LastUpdateStatus` field, which
  transitions through `InProgress` to `Successful` or `Failed`. If the update
  fails, the `LastUpdateStatusReasonCode` field provides a specific error code for
  troubleshooting. This operation is idempotent when you provide a `ClientToken`.

  Each successful configuration change creates a new immutable version. A
  connector can have a limited number of versions; once that limit is reached,
  further updates fail with `NetworkConnectorLimitExceededException` until you
  delete older versions.
  """
  @spec update_network_connector(
          map(),
          String.t() | atom(),
          update_network_connector_request(),
          list()
        ) ::
          {:ok, update_network_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_network_connector_errors()}
  def update_network_connector(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/2026-04-04/network-connectors/#{AWS.Util.encode_uri(identifier)}"
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
      202
    )
  end

  @doc """
  Updates the properties of an existing customer-managed runtime, such as its
  description, license information, or lifecycle information.
  """
  @spec update_runtime(map(), String.t() | atom(), update_runtime_request(), list()) ::
          {:ok, update_runtime_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_runtime_errors()}
  def update_runtime(%Client{} = client, runtime_name, input, options \\ []) do
    url_path = "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}"
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
  Updates an existing runtime alias to point to a different runtime version or to
  change its description or lifecycle information.
  """
  @spec update_runtime_alias(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_runtime_alias_request(),
          list()
        ) ::
          {:ok, update_runtime_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_runtime_alias_errors()}
  def update_runtime_alias(%Client{} = client, name, runtime_name, input, options \\ []) do
    url_path =
      "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/aliases/#{AWS.Util.encode_uri(name)}"

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
  Updates the runtime version release notes.

  The runtime version must be in the ACTIVE state. The runtime version image is
  immutable. To change the runtime contents, create a new runtime version.
  """
  @spec update_runtime_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_runtime_version_request(),
          list()
        ) ::
          {:ok, update_runtime_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_runtime_version_errors()}
  def update_runtime_version(%Client{} = client, name, runtime_name, input, options \\ []) do
    url_path =
      "/2026-10-01/runtimes/#{AWS.Util.encode_uri(runtime_name)}/versions/#{AWS.Util.encode_uri(name)}"

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
