# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ObservabilityAdmin do
  @moduledoc """

  You can use Amazon CloudWatch Observability Admin to discover and understand the
  state of telemetry configuration in CloudWatch for your Amazon Web Services
  Organization or account.

  This simplifies the process of auditing your telemetry collection configurations
  across multiple resource types within your Amazon Web Services Organization or
  account. By providing a consolidated view, it allows you to easily review and
  manage telemetry settings, helping you ensure proper monitoring and data
  collection across your Amazon Web Services environment.
  For more information, see [Auditing CloudWatch telemetry conﬁgurations](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html)
  in the CloudWatch User Guide.

  For information on the permissions you need to use this API, see [Identity and access management for Amazon
  CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html)
  in the CloudWatch User Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_resource_telemetry_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceIdentifierPrefix") => String.t() | atom(),
        optional("ResourceTags") => map(),
        optional("ResourceTypes") => list(list(any())()),
        optional("TelemetryConfigurationState") => map()
      }

  """
  @type list_resource_telemetry_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_input() :: %{
        optional("Tags") => map(),
        required("Rule") => telemetry_rule(),
        required("RuleName") => String.t() | atom()
      }

  """
  @type create_telemetry_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_output() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "TelemetryRule" => telemetry_rule()
      }

  """
  @type get_telemetry_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_evaluation_status_for_organization_output() :: %{
        "FailureReason" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_evaluation_status_for_organization_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_centralization_rule_for_organization_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type update_centralization_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_centralization_rule_for_organization_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type create_centralization_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logs_encryption_configuration() :: %{
        "EncryptionConflictResolutionStrategy" => list(any()),
        "EncryptionStrategy" => list(any()),
        "KmsKeyArn" => String.t() | atom()
      }

  """
  @type logs_encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_evaluation_status_output() :: %{
        "FailureReason" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_evaluation_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_for_organization_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type create_telemetry_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type get_telemetry_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_destination_configuration() :: %{
        "DestinationPattern" => [String.t() | atom()],
        "DestinationType" => list(any()),
        "RetentionInDays" => integer(),
        "VPCFlowLogParameters" => vpc_flow_log_parameters()
      }

  """
  @type telemetry_destination_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_centralization_rule_for_organization_output() :: %{
        "CentralizationRule" => centralization_rule(),
        "CreatedRegion" => String.t() | atom(),
        "CreatedTimeStamp" => [float()],
        "CreatorAccountId" => [String.t() | atom()],
        "FailureReason" => list(any()),
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t() | atom(),
        "RuleHealth" => list(any()),
        "RuleName" => String.t() | atom()
      }

  """
  @type get_centralization_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_logs_configuration() :: %{
        "EncryptedLogGroupStrategy" => list(any()),
        "LogGroupSelectionCriteria" => String.t() | atom()
      }

  """
  @type source_logs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type get_telemetry_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_centralization_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type delete_centralization_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      centralization_rule_source() :: %{
        "Regions" => list(String.t() | atom()),
        "Scope" => String.t() | atom(),
        "SourceLogsConfiguration" => source_logs_configuration()
      }

  """
  @type centralization_rule_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_for_organization_output() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "TelemetryRule" => telemetry_rule()
      }

  """
  @type get_telemetry_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_configuration() :: %{
        "AccountIdentifier" => String.t() | atom(),
        "LastUpdateTimeStamp" => [float()],
        "ResourceIdentifier" => String.t() | atom(),
        "ResourceTags" => map(),
        "ResourceType" => list(any()),
        "TelemetryConfigurationState" => map()
      }

  """
  @type telemetry_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_output() :: %{
        "NextToken" => String.t() | atom(),
        "TelemetryConfigurations" => list(telemetry_configuration())
      }

  """
  @type list_resource_telemetry_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_for_organization_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type update_telemetry_rule_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_centralization_rule_for_organization_input() :: %{
        required("Rule") => centralization_rule(),
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type update_centralization_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()],
        "amznErrorType" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_logs_configuration() :: %{
        "BackupConfiguration" => logs_backup_configuration(),
        "LogsEncryptionConfiguration" => logs_encryption_configuration()
      }

  """
  @type destination_logs_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_for_organization_output() :: %{
        "NextToken" => String.t() | atom(),
        "TelemetryRuleSummaries" => list(telemetry_rule_summary())
      }

  """
  @type list_telemetry_rules_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_for_organization_output() :: %{
        "NextToken" => String.t() | atom(),
        "TelemetryConfigurations" => list(telemetry_configuration())
      }

  """
  @type list_resource_telemetry_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_centralization_rule_for_organization_input() :: %{
        optional("Tags") => map(),
        required("Rule") => centralization_rule(),
        required("RuleName") => String.t() | atom()
      }

  """
  @type create_centralization_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_for_organization_input() :: %{
        required("Rule") => telemetry_rule(),
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type update_telemetry_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_for_organization_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RuleNamePrefix") => [String.t() | atom()],
        optional("SourceAccountIds") => list(String.t() | atom()),
        optional("SourceOrganizationUnitIds") => list(String.t() | atom())
      }

  """
  @type list_telemetry_rules_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logs_backup_configuration() :: %{
        "KmsKeyArn" => String.t() | atom(),
        "Region" => String.t() | atom()
      }

  """
  @type logs_backup_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_for_organization_input() :: %{
        optional("AccountIdentifiers") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceIdentifierPrefix") => String.t() | atom(),
        optional("ResourceTags") => map(),
        optional("ResourceTypes") => list(list(any())()),
        optional("TelemetryConfigurationState") => map()
      }

  """
  @type list_resource_telemetry_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_centralization_rules_for_organization_output() :: %{
        "CentralizationRuleSummaries" => list(centralization_rule_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_centralization_rules_for_organization_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      centralization_rule_summary() :: %{
        "CreatedRegion" => String.t() | atom(),
        "CreatedTimeStamp" => [float()],
        "CreatorAccountId" => [String.t() | atom()],
        "DestinationAccountId" => [String.t() | atom()],
        "DestinationRegion" => String.t() | atom(),
        "FailureReason" => list(any()),
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t() | atom(),
        "RuleHealth" => list(any()),
        "RuleName" => String.t() | atom()
      }

  """
  @type centralization_rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type update_telemetry_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()],
        "amznErrorType" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()],
        "amznErrorType" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_flow_log_parameters() :: %{
        "LogFormat" => [String.t() | atom()],
        "MaxAggregationInterval" => [integer()],
        "TrafficType" => [String.t() | atom()]
      }

  """
  @type vpc_flow_log_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_centralization_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type get_centralization_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_input() :: %{
        required("Rule") => telemetry_rule(),
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type update_telemetry_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RuleNamePrefix") => [String.t() | atom()]
      }

  """
  @type list_telemetry_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_rule_summary() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "ResourceType" => list(any()),
        "RuleArn" => String.t() | atom(),
        "RuleName" => String.t() | atom(),
        "TelemetryType" => list(any())
      }

  """
  @type telemetry_rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{
        required("ResourceARN") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_for_organization_input() :: %{
        optional("Tags") => map(),
        required("Rule") => telemetry_rule(),
        required("RuleName") => String.t() | atom()
      }

  """
  @type create_telemetry_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      centralization_rule_destination() :: %{
        "Account" => String.t() | atom(),
        "DestinationLogsConfiguration" => destination_logs_configuration(),
        "Region" => String.t() | atom()
      }

  """
  @type centralization_rule_destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_rule() :: %{
        "DestinationConfiguration" => telemetry_destination_configuration(),
        "ResourceType" => list(any()),
        "Scope" => [String.t() | atom()],
        "SelectionCriteria" => [String.t() | atom()],
        "TelemetryType" => list(any())
      }

  """
  @type telemetry_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_telemetry_rule_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type delete_telemetry_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_telemetry_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t() | atom()
      }

  """
  @type delete_telemetry_rule_for_organization_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_output() :: %{
        "RuleArn" => String.t() | atom()
      }

  """
  @type create_telemetry_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_output() :: %{
        "NextToken" => String.t() | atom(),
        "TelemetryRuleSummaries" => list(telemetry_rule_summary())
      }

  """
  @type list_telemetry_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      centralization_rule() :: %{
        "Destination" => centralization_rule_destination(),
        "Source" => centralization_rule_source()
      }

  """
  @type centralization_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_centralization_rules_for_organization_input() :: %{
        optional("AllRegions") => [boolean()],
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RuleNamePrefix") => [String.t() | atom()]
      }

  """
  @type list_centralization_rules_for_organization_input() :: %{(String.t() | atom()) => any()}

  @type create_centralization_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_telemetry_rule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type create_telemetry_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | too_many_requests_exception()

  @type delete_centralization_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_telemetry_rule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_telemetry_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_centralization_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_telemetry_evaluation_status_errors() ::
          access_denied_exception() | internal_server_exception() | too_many_requests_exception()

  @type get_telemetry_evaluation_status_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type get_telemetry_rule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_telemetry_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_centralization_rules_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_resource_telemetry_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_resource_telemetry_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_telemetry_rules_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type list_telemetry_rules_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type start_telemetry_evaluation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type start_telemetry_evaluation_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type stop_telemetry_evaluation_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type stop_telemetry_evaluation_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_centralization_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_telemetry_rule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_telemetry_rule_for_organization_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "observabilityadmin",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ObservabilityAdmin",
      signature_version: "v4",
      signing_name: "observabilityadmin",
      target_prefix: nil
    }
  end

  @doc """
  Creates a centralization rule that applies across an Amazon Web Services
  Organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec create_centralization_rule_for_organization(
          map(),
          create_centralization_rule_for_organization_input(),
          list()
        ) ::
          {:ok, create_centralization_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_centralization_rule_for_organization_errors()}
  def create_centralization_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/CreateCentralizationRuleForOrganization"
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

  Creates a telemetry rule that defines how telemetry should be configured for
  Amazon Web Services resources in your account.

  The rule specifies which resources should have telemetry enabled and how that
  telemetry data should be collected based on resource type, telemetry type, and
  selection criteria.
  """
  @spec create_telemetry_rule(map(), create_telemetry_rule_input(), list()) ::
          {:ok, create_telemetry_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_telemetry_rule_errors()}
  def create_telemetry_rule(%Client{} = client, input, options \\ []) do
    url_path = "/CreateTelemetryRule"
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

  Creates a telemetry rule that applies across an Amazon Web Services
  Organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec create_telemetry_rule_for_organization(
          map(),
          create_telemetry_rule_for_organization_input(),
          list()
        ) ::
          {:ok, create_telemetry_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_telemetry_rule_for_organization_errors()}
  def create_telemetry_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/CreateTelemetryRuleForOrganization"
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
  Deletes an organization-wide centralization rule.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec delete_centralization_rule_for_organization(
          map(),
          delete_centralization_rule_for_organization_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_centralization_rule_for_organization_errors()}
  def delete_centralization_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteCentralizationRuleForOrganization"
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

  Deletes a telemetry rule from your account.

  Any telemetry configurations previously created by the rule will remain but no
  new resources will be configured by this rule.
  """
  @spec delete_telemetry_rule(map(), delete_telemetry_rule_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_telemetry_rule_errors()}
  def delete_telemetry_rule(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteTelemetryRule"
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

  Deletes an organization-wide telemetry rule.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec delete_telemetry_rule_for_organization(
          map(),
          delete_telemetry_rule_for_organization_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_telemetry_rule_for_organization_errors()}
  def delete_telemetry_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteTelemetryRuleForOrganization"
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
  Retrieves the details of a specific organization centralization rule.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec get_centralization_rule_for_organization(
          map(),
          get_centralization_rule_for_organization_input(),
          list()
        ) ::
          {:ok, get_centralization_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_centralization_rule_for_organization_errors()}
  def get_centralization_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/GetCentralizationRuleForOrganization"
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

  Returns the current onboarding status of the telemetry config feature, including
  the status of the feature and reason the feature failed to start or stop.
  """
  @spec get_telemetry_evaluation_status(map(), %{}, list()) ::
          {:ok, get_telemetry_evaluation_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_evaluation_status_errors()}
  def get_telemetry_evaluation_status(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryEvaluationStatus"
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

  This returns the onboarding status of the telemetry configuration feature for
  the organization.

  It can only be called by a Management Account of an Amazon Web Services
  Organization or an assigned Delegated Admin Account of Amazon CloudWatch
  telemetry config.
  """
  @spec get_telemetry_evaluation_status_for_organization(map(), %{}, list()) ::
          {:ok, get_telemetry_evaluation_status_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_evaluation_status_for_organization_errors()}
  def get_telemetry_evaluation_status_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryEvaluationStatusForOrganization"
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

  Retrieves the details of a specific telemetry rule in your account.
  """
  @spec get_telemetry_rule(map(), get_telemetry_rule_input(), list()) ::
          {:ok, get_telemetry_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_rule_errors()}
  def get_telemetry_rule(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryRule"
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

  Retrieves the details of a specific organization telemetry rule.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec get_telemetry_rule_for_organization(
          map(),
          get_telemetry_rule_for_organization_input(),
          list()
        ) ::
          {:ok, get_telemetry_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_telemetry_rule_for_organization_errors()}
  def get_telemetry_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/GetTelemetryRuleForOrganization"
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
  Lists all centralization rules in your organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec list_centralization_rules_for_organization(
          map(),
          list_centralization_rules_for_organization_input(),
          list()
        ) ::
          {:ok, list_centralization_rules_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_centralization_rules_for_organization_errors()}
  def list_centralization_rules_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/ListCentralizationRulesForOrganization"
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

  Returns a list of telemetry configurations for Amazon Web Services resources
  supported by telemetry config.

  For more information, see [Auditing CloudWatch telemetry configurations](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html).
  """
  @spec list_resource_telemetry(map(), list_resource_telemetry_input(), list()) ::
          {:ok, list_resource_telemetry_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_telemetry_errors()}
  def list_resource_telemetry(%Client{} = client, input, options \\ []) do
    url_path = "/ListResourceTelemetry"
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

  Returns a list of telemetry configurations for Amazon Web Services resources
  supported by telemetry config in the organization.
  """
  @spec list_resource_telemetry_for_organization(
          map(),
          list_resource_telemetry_for_organization_input(),
          list()
        ) ::
          {:ok, list_resource_telemetry_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_telemetry_for_organization_errors()}
  def list_resource_telemetry_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/ListResourceTelemetryForOrganization"
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

  Lists all tags attached to the specified telemetry rule resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
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

  Lists all telemetry rules in your account.

  You can filter the results by specifying a rule name prefix.
  """
  @spec list_telemetry_rules(map(), list_telemetry_rules_input(), list()) ::
          {:ok, list_telemetry_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_telemetry_rules_errors()}
  def list_telemetry_rules(%Client{} = client, input, options \\ []) do
    url_path = "/ListTelemetryRules"
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

  Lists all telemetry rules in your organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec list_telemetry_rules_for_organization(
          map(),
          list_telemetry_rules_for_organization_input(),
          list()
        ) ::
          {:ok, list_telemetry_rules_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_telemetry_rules_for_organization_errors()}
  def list_telemetry_rules_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/ListTelemetryRulesForOrganization"
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

  This action begins onboarding the caller Amazon Web Services account to the
  telemetry config feature.
  """
  @spec start_telemetry_evaluation(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_telemetry_evaluation_errors()}
  def start_telemetry_evaluation(%Client{} = client, input, options \\ []) do
    url_path = "/StartTelemetryEvaluation"
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

  This actions begins onboarding the organization and all member accounts to the
  telemetry config feature.
  """
  @spec start_telemetry_evaluation_for_organization(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_telemetry_evaluation_for_organization_errors()}
  def start_telemetry_evaluation_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/StartTelemetryEvaluationForOrganization"
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

  This action begins offboarding the caller Amazon Web Services account from the
  telemetry config feature.
  """
  @spec stop_telemetry_evaluation(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_telemetry_evaluation_errors()}
  def stop_telemetry_evaluation(%Client{} = client, input, options \\ []) do
    url_path = "/StopTelemetryEvaluation"
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

  This action offboards the Organization of the caller Amazon Web Services account
  from the telemetry config feature.
  """
  @spec stop_telemetry_evaluation_for_organization(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_telemetry_evaluation_for_organization_errors()}
  def stop_telemetry_evaluation_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/StopTelemetryEvaluationForOrganization"
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

  Adds or updates tags for a telemetry rule resource.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
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

  Removes tags from a telemetry rule resource.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
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
  Updates an existing centralization rule that applies across an Amazon Web
  Services Organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec update_centralization_rule_for_organization(
          map(),
          update_centralization_rule_for_organization_input(),
          list()
        ) ::
          {:ok, update_centralization_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_centralization_rule_for_organization_errors()}
  def update_centralization_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateCentralizationRuleForOrganization"
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

  Updates an existing telemetry rule in your account.
  """
  @spec update_telemetry_rule(map(), update_telemetry_rule_input(), list()) ::
          {:ok, update_telemetry_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_telemetry_rule_errors()}
  def update_telemetry_rule(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTelemetryRule"
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

  Updates an existing telemetry rule that applies across an Amazon Web Services
  Organization.

  This operation can only be called by the organization's management account or a
  delegated administrator account.
  """
  @spec update_telemetry_rule_for_organization(
          map(),
          update_telemetry_rule_for_organization_input(),
          list()
        ) ::
          {:ok, update_telemetry_rule_for_organization_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_telemetry_rule_for_organization_errors()}
  def update_telemetry_rule_for_organization(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTelemetryRuleForOrganization"
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
