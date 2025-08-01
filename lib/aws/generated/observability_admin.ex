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
        optional("NextToken") => String.t(),
        optional("ResourceIdentifierPrefix") => String.t(),
        optional("ResourceTags") => map(),
        optional("ResourceTypes") => list(list(any())()),
        optional("TelemetryConfigurationState") => map()
      }

  """
  @type list_resource_telemetry_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_input() :: %{
        optional("Tags") => map(),
        required("Rule") => telemetry_rule(),
        required("RuleName") => String.t()
      }

  """
  @type create_telemetry_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_output() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t(),
        "RuleName" => String.t(),
        "TelemetryRule" => telemetry_rule()
      }

  """
  @type get_telemetry_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_telemetry_evaluation_status_for_organization_output() :: %{
        "FailureReason" => String.t(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_evaluation_status_for_organization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_telemetry_evaluation_status_output() :: %{
        "FailureReason" => String.t(),
        "Status" => list(any())
      }

  """
  @type get_telemetry_evaluation_status_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_for_organization_output() :: %{
        "RuleArn" => String.t()
      }

  """
  @type create_telemetry_rule_for_organization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t()
      }

  """
  @type get_telemetry_rule_for_organization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telemetry_destination_configuration() :: %{
        "DestinationPattern" => [String.t()],
        "DestinationType" => list(any()),
        "RetentionInDays" => integer(),
        "VPCFlowLogParameters" => vpc_flow_log_parameters()
      }

  """
  @type telemetry_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_input() :: %{
        required("RuleIdentifier") => String.t()
      }

  """
  @type get_telemetry_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_telemetry_rule_for_organization_output() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "RuleArn" => String.t(),
        "RuleName" => String.t(),
        "TelemetryRule" => telemetry_rule()
      }

  """
  @type get_telemetry_rule_for_organization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telemetry_configuration() :: %{
        "AccountIdentifier" => String.t(),
        "LastUpdateTimeStamp" => [float()],
        "ResourceIdentifier" => String.t(),
        "ResourceTags" => map(),
        "ResourceType" => list(any()),
        "TelemetryConfigurationState" => map()
      }

  """
  @type telemetry_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_output() :: %{
        "NextToken" => String.t(),
        "TelemetryConfigurations" => list(telemetry_configuration())
      }

  """
  @type list_resource_telemetry_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_for_organization_output() :: %{
        "RuleArn" => String.t()
      }

  """
  @type update_telemetry_rule_for_organization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_for_organization_output() :: %{
        "NextToken" => String.t(),
        "TelemetryRuleSummaries" => list(telemetry_rule_summary())
      }

  """
  @type list_telemetry_rules_for_organization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_for_organization_output() :: %{
        "NextToken" => String.t(),
        "TelemetryConfigurations" => list(telemetry_configuration())
      }

  """
  @type list_resource_telemetry_for_organization_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_for_organization_input() :: %{
        required("Rule") => telemetry_rule(),
        required("RuleIdentifier") => String.t()
      }

  """
  @type update_telemetry_rule_for_organization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_for_organization_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RuleNamePrefix") => [String.t()],
        optional("SourceAccountIds") => list(String.t()),
        optional("SourceOrganizationUnitIds") => list(String.t())
      }

  """
  @type list_telemetry_rules_for_organization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resource_telemetry_for_organization_input() :: %{
        optional("AccountIdentifiers") => list(String.t()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceIdentifierPrefix") => String.t(),
        optional("ResourceTags") => map(),
        optional("ResourceTypes") => list(list(any())()),
        optional("TelemetryConfigurationState") => map()
      }

  """
  @type list_resource_telemetry_for_organization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_output() :: %{
        "RuleArn" => String.t()
      }

  """
  @type update_telemetry_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()],
        "amznErrorType" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_flow_log_parameters() :: %{
        "LogFormat" => [String.t()],
        "MaxAggregationInterval" => [integer()],
        "TrafficType" => [String.t()]
      }

  """
  @type vpc_flow_log_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_telemetry_rule_input() :: %{
        required("Rule") => telemetry_rule(),
        required("RuleIdentifier") => String.t()
      }

  """
  @type update_telemetry_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RuleNamePrefix") => [String.t()]
      }

  """
  @type list_telemetry_rules_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telemetry_rule_summary() :: %{
        "CreatedTimeStamp" => [float()],
        "LastUpdateTimeStamp" => [float()],
        "ResourceType" => list(any()),
        "RuleArn" => String.t(),
        "RuleName" => String.t(),
        "TelemetryType" => list(any())
      }

  """
  @type telemetry_rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{
        required("ResourceARN") => String.t()
      }

  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_for_organization_input() :: %{
        optional("Tags") => map(),
        required("Rule") => telemetry_rule(),
        required("RuleName") => String.t()
      }

  """
  @type create_telemetry_rule_for_organization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telemetry_rule() :: %{
        "DestinationConfiguration" => telemetry_destination_configuration(),
        "ResourceType" => list(any()),
        "Scope" => [String.t()],
        "SelectionCriteria" => [String.t()],
        "TelemetryType" => list(any())
      }

  """
  @type telemetry_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_telemetry_rule_input() :: %{
        required("RuleIdentifier") => String.t()
      }

  """
  @type delete_telemetry_rule_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_telemetry_rule_for_organization_input() :: %{
        required("RuleIdentifier") => String.t()
      }

  """
  @type delete_telemetry_rule_for_organization_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_telemetry_rule_output() :: %{
        "RuleArn" => String.t()
      }

  """
  @type create_telemetry_rule_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_telemetry_rules_output() :: %{
        "NextToken" => String.t(),
        "TelemetryRuleSummaries" => list(telemetry_rule_summary())
      }

  """
  @type list_telemetry_rules_output() :: %{String.t() => any()}

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
