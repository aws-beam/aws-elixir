# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Config do
  @moduledoc """
  AWS Config

  AWS Config provides a way to keep track of the configurations of all the AWS
  resources associated with your AWS account.

  You can use AWS Config to get the current and historical configurations of each
  AWS resource and also to get information about the relationship between the
  resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2) instance,
  an Elastic Block Store (EBS) volume, an elastic network Interface (ENI), or a
  security group. For a complete list of resources currently supported by AWS
  Config, see [Supported AWS Resources](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).

  You can access and manage AWS Config through the AWS Management Console, the AWS
  Command Line Interface (AWS CLI), the AWS Config API, or the AWS SDKs for AWS
  Config. This reference guide contains documentation for the AWS Config API and
  the AWS CLI commands that you can use to manage AWS Config. The AWS Config API
  uses the Signature Version 4 protocol for signing requests. For more information
  about how to sign a request with this protocol, see [Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  For detailed information about AWS Config features and their associated actions
  or commands, as well as how to work with AWS Management Console, see [What Is AWS
  Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
  in the *AWS Config Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Config Service",
      api_version: "2014-11-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "config",
      global?: false,
      protocol: "json",
      service_id: "Config Service",
      signature_version: "v4",
      signing_name: "config",
      target_prefix: "StarlingDoveService"
    }
  end

  @doc """
  Returns the current configuration items for resources that are present in your
  AWS Config aggregator.

  The operation also returns a list of resources that are not processed in the
  current request. If there are no unprocessed resources, the operation returns an
  empty `unprocessedResourceIdentifiers` list.

     The API does not return results for deleted resources.

     The API does not return tags and relationships.
  """
  def batch_get_aggregate_resource_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetAggregateResourceConfig", input, options)
  end

  @doc """
  Returns the current configuration for one or more requested resources.

  The operation also returns a list of resources that are not processed in the
  current request. If there are no unprocessed resources, the operation returns an
  empty unprocessedResourceKeys list.

     The API does not return results for deleted resources.

     The API does not return any tags for the requested resources. This
  information is filtered out of the supplementaryConfiguration section of the API
  response.
  """
  def batch_get_resource_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetResourceConfig", input, options)
  end

  @doc """
  Deletes the authorization granted to the specified configuration aggregator
  account in a specified region.
  """
  def delete_aggregation_authorization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAggregationAuthorization", input, options)
  end

  @doc """
  Deletes the specified AWS Config rule and all of its evaluation results.

  AWS Config sets the state of a rule to `DELETING` until the deletion is
  complete. You cannot update a rule while it is in this state. If you make a
  `PutConfigRule` or `DeleteConfigRule` request for the rule, you will receive a
  `ResourceInUseException`.

  You can check the state of a rule by using the `DescribeConfigRules` request.
  """
  def delete_config_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConfigRule", input, options)
  end

  @doc """
  Deletes the specified configuration aggregator and the aggregated data
  associated with the aggregator.
  """
  def delete_configuration_aggregator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConfigurationAggregator", input, options)
  end

  @doc """
  Deletes the configuration recorder.

  After the configuration recorder is deleted, AWS Config will not record resource
  configuration changes until you create a new configuration recorder.

  This action does not delete the configuration information that was previously
  recorded. You will be able to access the previously recorded information by
  using the `GetResourceConfigHistory` action, but you will not be able to access
  this information in the AWS Config console until you create a new configuration
  recorder.
  """
  def delete_configuration_recorder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConfigurationRecorder", input, options)
  end

  @doc """
  Deletes the specified conformance pack and all the AWS Config rules, remediation
  actions, and all evaluation results within that conformance pack.

  AWS Config sets the conformance pack to `DELETE_IN_PROGRESS` until the deletion
  is complete. You cannot update a conformance pack while it is in this state.
  """
  def delete_conformance_pack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConformancePack", input, options)
  end

  @doc """
  Deletes the delivery channel.

  Before you can delete the delivery channel, you must stop the configuration
  recorder by using the `StopConfigurationRecorder` action.
  """
  def delete_delivery_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDeliveryChannel", input, options)
  end

  @doc """
  Deletes the evaluation results for the specified AWS Config rule.

  You can specify one AWS Config rule per request. After you delete the evaluation
  results, you can call the `StartConfigRulesEvaluation` API to start evaluating
  your AWS resources against the rule.
  """
  def delete_evaluation_results(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEvaluationResults", input, options)
  end

  @doc """
  Deletes the specified organization config rule and all of its evaluation results
  from all member accounts in that organization.

  Only a master account and a delegated administrator account can delete an
  organization config rule. When calling this API with a delegated administrator,
  you must ensure AWS Organizations `ListDelegatedAdministrator` permissions are
  added.

  AWS Config sets the state of a rule to DELETE_IN_PROGRESS until the deletion is
  complete. You cannot update a rule while it is in this state.
  """
  def delete_organization_config_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteOrganizationConfigRule", input, options)
  end

  @doc """
  Deletes the specified organization conformance pack and all of the config rules
  and remediation actions from all member accounts in that organization.

  Only a master account or a delegated administrator account can delete an
  organization conformance pack. When calling this API with a delegated
  administrator, you must ensure AWS Organizations `ListDelegatedAdministrator`
  permissions are added.

  AWS Config sets the state of a conformance pack to DELETE_IN_PROGRESS until the
  deletion is complete. You cannot update a conformance pack while it is in this
  state.
  """
  def delete_organization_conformance_pack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteOrganizationConformancePack", input, options)
  end

  @doc """
  Deletes pending authorization requests for a specified aggregator account in a
  specified region.
  """
  def delete_pending_aggregation_request(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePendingAggregationRequest", input, options)
  end

  @doc """
  Deletes the remediation configuration.
  """
  def delete_remediation_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRemediationConfiguration", input, options)
  end

  @doc """
  Deletes one or more remediation exceptions mentioned in the resource keys.

  AWS Config generates a remediation exception when a problem occurs executing a
  remediation action to a specific resource. Remediation exceptions blocks
  auto-remediation until the exception is cleared.
  """
  def delete_remediation_exceptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRemediationExceptions", input, options)
  end

  @doc """
  Records the configuration state for a custom resource that has been deleted.

  This API records a new ConfigurationItem with a ResourceDeleted status. You can
  retrieve the ConfigurationItems recorded for this resource in your AWS Config
  History.
  """
  def delete_resource_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResourceConfig", input, options)
  end

  @doc """
  Deletes the retention configuration.
  """
  def delete_retention_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRetentionConfiguration", input, options)
  end

  @doc """
  Deletes the stored query for an AWS account in an AWS Region.
  """
  def delete_stored_query(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteStoredQuery", input, options)
  end

  @doc """
  Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the
  specified delivery channel.

  After the delivery has started, AWS Config sends the following notifications
  using an Amazon SNS topic that you have specified.

    * Notification of the start of the delivery.

    * Notification of the completion of the delivery, if the delivery
  was successfully completed.

    * Notification of delivery failure, if the delivery failed.
  """
  def deliver_config_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeliverConfigSnapshot", input, options)
  end

  @doc """
  Returns a list of compliant and noncompliant rules with the number of resources
  for compliant and noncompliant rules.

  The results can return an empty result page, but if you have a `nextToken`, the
  results are displayed on the next page.
  """
  def describe_aggregate_compliance_by_config_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeAggregateComplianceByConfigRules",
      input,
      options
    )
  end

  @doc """
  Returns a list of authorizations granted to various aggregator accounts and
  regions.
  """
  def describe_aggregation_authorizations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAggregationAuthorizations", input, options)
  end

  @doc """
  Indicates whether the specified AWS Config rules are compliant.

  If a rule is noncompliant, this action returns the number of AWS resources that
  do not comply with the rule.

  A rule is compliant if all of the evaluated resources comply with it. It is
  noncompliant if any of these resources do not comply.

  If AWS Config has no current evaluation results for the rule, it returns
  `INSUFFICIENT_DATA`. This result might indicate one of the following conditions:

    * AWS Config has never invoked an evaluation for the rule. To check
  whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the
  `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.

    * The rule's AWS Lambda function is failing to send evaluation
  results to AWS Config. Verify that the role you assigned to your configuration
  recorder includes the `config:PutEvaluations` permission. If the rule is a
  custom rule, verify that the AWS Lambda execution role includes the
  `config:PutEvaluations` permission.

    * The rule's AWS Lambda function has returned `NOT_APPLICABLE` for
  all evaluation results. This can occur if the resources were deleted or removed
  from the rule's scope.
  """
  def describe_compliance_by_config_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeComplianceByConfigRule", input, options)
  end

  @doc """
  Indicates whether the specified AWS resources are compliant.

  If a resource is noncompliant, this action returns the number of AWS Config
  rules that the resource does not comply with.

  A resource is compliant if it complies with all the AWS Config rules that
  evaluate it. It is noncompliant if it does not comply with one or more of these
  rules.

  If AWS Config has no current evaluation results for the resource, it returns
  `INSUFFICIENT_DATA`. This result might indicate one of the following conditions
  about the rules that evaluate the resource:

    * AWS Config has never invoked an evaluation for the rule. To check
  whether it has, use the `DescribeConfigRuleEvaluationStatus` action to get the
  `LastSuccessfulInvocationTime` and `LastFailedInvocationTime`.

    * The rule's AWS Lambda function is failing to send evaluation
  results to AWS Config. Verify that the role that you assigned to your
  configuration recorder includes the `config:PutEvaluations` permission. If the
  rule is a custom rule, verify that the AWS Lambda execution role includes the
  `config:PutEvaluations` permission.

    * The rule's AWS Lambda function has returned `NOT_APPLICABLE` for
  all evaluation results. This can occur if the resources were deleted or removed
  from the rule's scope.
  """
  def describe_compliance_by_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeComplianceByResource", input, options)
  end

  @doc """
  Returns status information for each of your AWS managed Config rules.

  The status includes information such as the last time AWS Config invoked the
  rule, the last time AWS Config failed to invoke the rule, and the related error
  for the last failure.
  """
  def describe_config_rule_evaluation_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConfigRuleEvaluationStatus", input, options)
  end

  @doc """
  Returns details about your AWS Config rules.
  """
  def describe_config_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConfigRules", input, options)
  end

  @doc """
  Returns status information for sources within an aggregator.

  The status includes information about the last time AWS Config verified
  authorization between the source account and an aggregator account. In case of a
  failure, the status contains the related error code or message.
  """
  def describe_configuration_aggregator_sources_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeConfigurationAggregatorSourcesStatus",
      input,
      options
    )
  end

  @doc """
  Returns the details of one or more configuration aggregators.

  If the configuration aggregator is not specified, this action returns the
  details for all the configuration aggregators associated with the account.
  """
  def describe_configuration_aggregators(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConfigurationAggregators", input, options)
  end

  @doc """
  Returns the current status of the specified configuration recorder.

  If a configuration recorder is not specified, this action returns the status of
  all configuration recorders associated with the account.

  Currently, you can specify only one configuration recorder per region in your
  account.
  """
  def describe_configuration_recorder_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeConfigurationRecorderStatus",
      input,
      options
    )
  end

  @doc """
  Returns the details for the specified configuration recorders.

  If the configuration recorder is not specified, this action returns the details
  for all configuration recorders associated with the account.

  Currently, you can specify only one configuration recorder per region in your
  account.
  """
  def describe_configuration_recorders(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConfigurationRecorders", input, options)
  end

  @doc """
  Returns compliance details for each rule in that conformance pack.

  You must provide exact rule names.
  """
  def describe_conformance_pack_compliance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConformancePackCompliance", input, options)
  end

  @doc """
  Provides one or more conformance packs deployment status.

  If there are no conformance packs then you will see an empty result.
  """
  def describe_conformance_pack_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConformancePackStatus", input, options)
  end

  @doc """
  Returns a list of one or more conformance packs.
  """
  def describe_conformance_packs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConformancePacks", input, options)
  end

  @doc """
  Returns the current status of the specified delivery channel.

  If a delivery channel is not specified, this action returns the current status
  of all delivery channels associated with the account.

  Currently, you can specify only one delivery channel per region in your account.
  """
  def describe_delivery_channel_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDeliveryChannelStatus", input, options)
  end

  @doc """
  Returns details about the specified delivery channel.

  If a delivery channel is not specified, this action returns the details of all
  delivery channels associated with the account.

  Currently, you can specify only one delivery channel per region in your account.
  """
  def describe_delivery_channels(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDeliveryChannels", input, options)
  end

  @doc """
  Provides organization config rule deployment status for an organization.

  The status is not considered successful until organization config rule is
  successfully deployed in all the member accounts with an exception of excluded
  accounts.

  When you specify the limit and the next token, you receive a paginated response.
  Limit and next token are not applicable if you specify organization config rule
  names. It is only applicable, when you request all the organization config
  rules.
  """
  def describe_organization_config_rule_statuses(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeOrganizationConfigRuleStatuses",
      input,
      options
    )
  end

  @doc """
  Returns a list of organization config rules.

  When you specify the limit and the next token, you receive a paginated response.
  Limit and next token are not applicable if you specify organization config rule
  names. It is only applicable, when you request all the organization config
  rules.
  """
  def describe_organization_config_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeOrganizationConfigRules", input, options)
  end

  @doc """
  Provides organization conformance pack deployment status for an organization.

  The status is not considered successful until organization conformance pack is
  successfully deployed in all the member accounts with an exception of excluded
  accounts.

  When you specify the limit and the next token, you receive a paginated response.
  Limit and next token are not applicable if you specify organization conformance
  pack names. They are only applicable, when you request all the organization
  conformance packs.
  """
  def describe_organization_conformance_pack_statuses(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeOrganizationConformancePackStatuses",
      input,
      options
    )
  end

  @doc """
  Returns a list of organization conformance packs.

  When you specify the limit and the next token, you receive a paginated response.

  Limit and next token are not applicable if you specify organization conformance
  packs names. They are only applicable, when you request all the organization
  conformance packs.
  """
  def describe_organization_conformance_packs(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeOrganizationConformancePacks",
      input,
      options
    )
  end

  @doc """
  Returns a list of all pending aggregation requests.
  """
  def describe_pending_aggregation_requests(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePendingAggregationRequests", input, options)
  end

  @doc """
  Returns the details of one or more remediation configurations.
  """
  def describe_remediation_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRemediationConfigurations", input, options)
  end

  @doc """
  Returns the details of one or more remediation exceptions.

  A detailed view of a remediation exception for a set of resources that includes
  an explanation of an exception and the time when the exception will be deleted.
  When you specify the limit and the next token, you receive a paginated response.

  AWS Config generates a remediation exception when a problem occurs executing a
  remediation action to a specific resource. Remediation exceptions blocks
  auto-remediation until the exception is cleared.

  When you specify the limit and the next token, you receive a paginated response.

  Limit and next token are not applicable if you request resources in batch. It is
  only applicable, when you request all resources.
  """
  def describe_remediation_exceptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRemediationExceptions", input, options)
  end

  @doc """
  Provides a detailed view of a Remediation Execution for a set of resources
  including state, timestamps for when steps for the remediation execution occur,
  and any error messages for steps that have failed.

  When you specify the limit and the next token, you receive a paginated response.
  """
  def describe_remediation_execution_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRemediationExecutionStatus", input, options)
  end

  @doc """
  Returns the details of one or more retention configurations.

  If the retention configuration name is not specified, this action returns the
  details for all the retention configurations for that account.

  Currently, AWS Config supports only one retention configuration per region in
  your account.
  """
  def describe_retention_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRetentionConfigurations", input, options)
  end

  @doc """
  Returns the evaluation results for the specified AWS Config rule for a specific
  resource in a rule.

  The results indicate which AWS resources were evaluated by the rule, when each
  resource was last evaluated, and whether each resource complies with the rule.

  The results can return an empty result page. But if you have a `nextToken`, the
  results are displayed on the next page.
  """
  def get_aggregate_compliance_details_by_config_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetAggregateComplianceDetailsByConfigRule",
      input,
      options
    )
  end

  @doc """
  Returns the number of compliant and noncompliant rules for one or more accounts
  and regions in an aggregator.

  The results can return an empty result page, but if you have a nextToken, the
  results are displayed on the next page.
  """
  def get_aggregate_config_rule_compliance_summary(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetAggregateConfigRuleComplianceSummary",
      input,
      options
    )
  end

  @doc """
  Returns the resource counts across accounts and regions that are present in your
  AWS Config aggregator.

  You can request the resource counts by providing filters and GroupByKey.

  For example, if the input contains accountID 12345678910 and region us-east-1 in
  filters, the API returns the count of resources in account ID 12345678910 and
  region us-east-1. If the input contains ACCOUNT_ID as a GroupByKey, the API
  returns resource counts for all source accounts that are present in your
  aggregator.
  """
  def get_aggregate_discovered_resource_counts(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetAggregateDiscoveredResourceCounts",
      input,
      options
    )
  end

  @doc """
  Returns configuration item that is aggregated for your specific resource in a
  specific source account and region.
  """
  def get_aggregate_resource_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAggregateResourceConfig", input, options)
  end

  @doc """
  Returns the evaluation results for the specified AWS Config rule.

  The results indicate which AWS resources were evaluated by the rule, when each
  resource was last evaluated, and whether each resource complies with the rule.
  """
  def get_compliance_details_by_config_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetComplianceDetailsByConfigRule", input, options)
  end

  @doc """
  Returns the evaluation results for the specified AWS resource.

  The results indicate which AWS Config rules were used to evaluate the resource,
  when each rule was last used, and whether the resource complies with each rule.
  """
  def get_compliance_details_by_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetComplianceDetailsByResource", input, options)
  end

  @doc """
  Returns the number of AWS Config rules that are compliant and noncompliant, up
  to a maximum of 25 for each.
  """
  def get_compliance_summary_by_config_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetComplianceSummaryByConfigRule", input, options)
  end

  @doc """
  Returns the number of resources that are compliant and the number that are
  noncompliant.

  You can specify one or more resource types to get these numbers for each
  resource type. The maximum number returned is 100.
  """
  def get_compliance_summary_by_resource_type(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetComplianceSummaryByResourceType", input, options)
  end

  @doc """
  Returns compliance details of a conformance pack for all AWS resources that are
  monitered by conformance pack.
  """
  def get_conformance_pack_compliance_details(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetConformancePackComplianceDetails",
      input,
      options
    )
  end

  @doc """
  Returns compliance details for the conformance pack based on the cumulative
  compliance results of all the rules in that conformance pack.
  """
  def get_conformance_pack_compliance_summary(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetConformancePackComplianceSummary",
      input,
      options
    )
  end

  @doc """
  Returns the resource types, the number of each resource type, and the total
  number of resources that AWS Config is recording in this region for your AWS
  account.

  ## Example

    1. AWS Config is recording three resource types in the US East
  (Ohio) Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3
  buckets.

    2. You make a call to the `GetDiscoveredResourceCounts` action and
  specify that you want all resource types.

    3. AWS Config returns the following:

      * The resource types (EC2 instances, IAM users, and S3
  buckets).

      * The number of each resource type (25, 20, and 15).

      * The total number of all resources (60).

  The response is paginated. By default, AWS Config lists 100 `ResourceCount`
  objects on each page. You can customize this number with the `limit` parameter.
  The response includes a `nextToken` string. To get the next page of results, run
  the request again and specify the string for the `nextToken` parameter.

  If you make a call to the `GetDiscoveredResourceCounts` action, you might not
  immediately receive resource counts in the following situations:

     You are a new AWS Config customer.

     You just enabled resource recording.

  It might take a few minutes for AWS Config to record and count your resources.
  Wait a few minutes and then retry the `GetDiscoveredResourceCounts` action.
  """
  def get_discovered_resource_counts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDiscoveredResourceCounts", input, options)
  end

  @doc """
  Returns detailed status for each member account within an organization for a
  given organization config rule.
  """
  def get_organization_config_rule_detailed_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetOrganizationConfigRuleDetailedStatus",
      input,
      options
    )
  end

  @doc """
  Returns detailed status for each member account within an organization for a
  given organization conformance pack.
  """
  def get_organization_conformance_pack_detailed_status(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetOrganizationConformancePackDetailedStatus",
      input,
      options
    )
  end

  @doc """
  Returns a list of configuration items for the specified resource.

  The list contains details about each state of the resource during the specified
  time interval. If you specified a retention period to retain your
  `ConfigurationItems` between a minimum of 30 days and a maximum of 7 years (2557
  days), AWS Config returns the `ConfigurationItems` for the specified retention
  period.

  The response is paginated. By default, AWS Config returns a limit of 10
  configuration items per page. You can customize this number with the `limit`
  parameter. The response includes a `nextToken` string. To get the next page of
  results, run the request again and specify the string for the `nextToken`
  parameter.

  Each call to the API is limited to span a duration of seven days. It is likely
  that the number of records returned is smaller than the specified `limit`. In
  such cases, you can make another call, using the `nextToken`.
  """
  def get_resource_config_history(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResourceConfigHistory", input, options)
  end

  @doc """
  Returns the details of a specific stored query.
  """
  def get_stored_query(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetStoredQuery", input, options)
  end

  @doc """
  Accepts a resource type and returns a list of resource identifiers that are
  aggregated for a specific resource type across accounts and regions.

  A resource identifier includes the resource type, ID, (if available) the custom
  resource name, source account, and source region. You can narrow the results to
  include only resources that have specific resource IDs, or a resource name, or
  source account ID, or source region.

  For example, if the input consists of accountID 12345678910 and the region is
  us-east-1 for resource type `AWS::EC2::Instance` then the API returns all the
  EC2 instance identifiers of accountID 12345678910 and region us-east-1.
  """
  def list_aggregate_discovered_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAggregateDiscoveredResources", input, options)
  end

  @doc """
  Accepts a resource type and returns a list of resource identifiers for the
  resources of that type.

  A resource identifier includes the resource type, ID, and (if available) the
  custom resource name. The results consist of resources that AWS Config has
  discovered, including those that AWS Config is not currently recording. You can
  narrow the results to include only resources that have specific resource IDs or
  a resource name.

  You can specify either resource IDs or a resource name, but not both, in the
  same request.

  The response is paginated. By default, AWS Config lists 100 resource identifiers
  on each page. You can customize this number with the `limit` parameter. The
  response includes a `nextToken` string. To get the next page of results, run the
  request again and specify the string for the `nextToken` parameter.
  """
  def list_discovered_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDiscoveredResources", input, options)
  end

  @doc """
  List the stored queries for an AWS account in an AWS Region.

  The default is 100.
  """
  def list_stored_queries(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListStoredQueries", input, options)
  end

  @doc """
  List the tags for AWS Config resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Authorizes the aggregator account and region to collect data from the source
  account and region.
  """
  def put_aggregation_authorization(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutAggregationAuthorization", input, options)
  end

  @doc """
  Adds or updates an AWS Config rule for evaluating whether your AWS resources
  comply with your desired configurations.

  You can use this action for custom AWS Config rules and AWS managed Config
  rules. A custom AWS Config rule is a rule that you develop and maintain. An AWS
  managed Config rule is a customizable, predefined rule that AWS Config provides.

  If you are adding a new custom AWS Config rule, you must first create the AWS
  Lambda function that the rule invokes to evaluate your resources. When you use
  the `PutConfigRule` action to add the rule to AWS Config, you must specify the
  Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the
  ARN for the `SourceIdentifier` key. This key is part of the `Source` object,
  which is part of the `ConfigRule` object.

  If you are adding an AWS managed Config rule, specify the rule's identifier for
  the `SourceIdentifier` key. To reference AWS managed Config rule identifiers,
  see [About AWS Managed Config Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).

  For any new rule that you add, specify the `ConfigRuleName` in the `ConfigRule`
  object. Do not specify the `ConfigRuleArn` or the `ConfigRuleId`. These values
  are generated by AWS Config for new rules.

  If you are updating a rule that you added previously, you can specify the rule
  by `ConfigRuleName`, `ConfigRuleId`, or `ConfigRuleArn` in the `ConfigRule` data
  type that you use in this request.

  The maximum number of rules that AWS Config supports is 150.

  For information about requesting a rule limit increase, see [AWS Config Limits](http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config)
  in the *AWS General Reference Guide*.

  For more information about developing and using AWS Config rules, see
  [Evaluating AWS Resource Configurations with AWS Config](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html)
  in the *AWS Config Developer Guide*.
  """
  def put_config_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutConfigRule", input, options)
  end

  @doc """
  Creates and updates the configuration aggregator with the selected source
  accounts and regions.

  The source account can be individual account(s) or an organization.

  AWS Config should be enabled in source accounts and regions you want to
  aggregate.

  If your source type is an organization, you must be signed in to the master
  account and all features must be enabled in your organization. AWS Config calls
  `EnableAwsServiceAccess` API to enable integration between AWS Config and AWS
  Organizations.
  """
  def put_configuration_aggregator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutConfigurationAggregator", input, options)
  end

  @doc """
  Creates a new configuration recorder to record the selected resource
  configurations.

  You can use this action to change the role `roleARN` or the `recordingGroup` of
  an existing recorder. To change the role, call the action on the existing
  configuration recorder and specify a role.

  Currently, you can specify only one configuration recorder per region in your
  account.

  If `ConfigurationRecorder` does not have the **recordingGroup** parameter
  specified, the default is to record all supported resource types.
  """
  def put_configuration_recorder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutConfigurationRecorder", input, options)
  end

  @doc """
  Creates or updates a conformance pack.

  A conformance pack is a collection of AWS Config rules that can be easily
  deployed in an account and a region and across AWS Organization.

  This API creates a service linked role `AWSServiceRoleForConfigConforms` in your
  account. The service linked role is created only when the role does not exist in
  your account.

  You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but
  not both. If you provide both AWS Config uses the `TemplateS3Uri` parameter and
  ignores the `TemplateBody` parameter.
  """
  def put_conformance_pack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutConformancePack", input, options)
  end

  @doc """
  Creates a delivery channel object to deliver configuration information to an
  Amazon S3 bucket and Amazon SNS topic.

  Before you can create a delivery channel, you must create a configuration
  recorder.

  You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of
  the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS
  topic, call this action and specify the changed values for the S3 bucket and the
  SNS topic. If you specify a different value for either the S3 bucket or the SNS
  topic, this action will keep the existing value for the parameter that is not
  changed.

  You can have only one delivery channel per region in your account.
  """
  def put_delivery_channel(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutDeliveryChannel", input, options)
  end

  @doc """
  Used by an AWS Lambda function to deliver evaluation results to AWS Config.

  This action is required in every AWS Lambda function that is invoked by an AWS
  Config rule.
  """
  def put_evaluations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutEvaluations", input, options)
  end

  def put_external_evaluation(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutExternalEvaluation", input, options)
  end

  @doc """
  Adds or updates organization config rule for your entire organization evaluating
  whether your AWS resources comply with your desired configurations.

  Only a master account and a delegated administrator can create or update an
  organization config rule. When calling this API with a delegated administrator,
  you must ensure AWS Organizations `ListDelegatedAdministrator` permissions are
  added.

  This API enables organization service access through the
  `EnableAWSServiceAccess` action and creates a service linked role
  `AWSServiceRoleForConfigMultiAccountSetup` in the master or delegated
  administrator account of your organization. The service linked role is created
  only when the role does not exist in the caller account. AWS Config verifies the
  existence of role with `GetRole` action.

  To use this API with delegated administrator, register a delegated administrator
  by calling AWS Organization `register-delegated-administrator` for
  `config-multiaccountsetup.amazonaws.com`.

  You can use this action to create both custom AWS Config rules and AWS managed
  Config rules. If you are adding a new custom AWS Config rule, you must first
  create AWS Lambda function in the master account or a delegated administrator
  that the rule invokes to evaluate your resources. When you use the
  `PutOrganizationConfigRule` action to add the rule to AWS Config, you must
  specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function.
  If you are adding an AWS managed Config rule, specify the rule's identifier for
  the `RuleIdentifier` key.

  The maximum number of organization config rules that AWS Config supports is 150
  and 3 delegated administrator per organization.

  Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in
  an organization.

  Specify either `OrganizationCustomRuleMetadata` or
  `OrganizationManagedRuleMetadata`.
  """
  def put_organization_config_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutOrganizationConfigRule", input, options)
  end

  @doc """
  Deploys conformance packs across member accounts in an AWS Organization.

  Only a master account and a delegated administrator can call this API. When
  calling this API with a delegated administrator, you must ensure AWS
  Organizations `ListDelegatedAdministrator` permissions are added.

  This API enables organization service access for
  `config-multiaccountsetup.amazonaws.com` through the `EnableAWSServiceAccess`
  action and creates a service linked role
  `AWSServiceRoleForConfigMultiAccountSetup` in the master or delegated
  administrator account of your organization. The service linked role is created
  only when the role does not exist in the caller account. To use this API with
  delegated administrator, register a delegated administrator by calling AWS
  Organization `register-delegate-admin` for
  `config-multiaccountsetup.amazonaws.com`.

  Prerequisite: Ensure you call `EnableAllFeatures` API to enable all features in
  an organization.

  You must specify either the `TemplateS3Uri` or the `TemplateBody` parameter, but
  not both. If you provide both AWS Config uses the `TemplateS3Uri` parameter and
  ignores the `TemplateBody` parameter.

  AWS Config sets the state of a conformance pack to CREATE_IN_PROGRESS and
  UPDATE_IN_PROGRESS until the conformance pack is created or updated. You cannot
  update a conformance pack while it is in this state.

  You can create 6 conformance packs with 25 AWS Config rules in each pack and 3
  delegated administrator per organization.
  """
  def put_organization_conformance_pack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutOrganizationConformancePack", input, options)
  end

  @doc """
  Adds or updates the remediation configuration with a specific AWS Config rule
  with the selected target or action.

  The API creates the `RemediationConfiguration` object for the AWS Config rule.
  The AWS Config rule must already exist for you to add a remediation
  configuration. The target (SSM document) must exist and have permissions to use
  the target.

  If you make backward incompatible changes to the SSM document, you must call
  this again to ensure the remediations can run.

  This API does not support adding remediation configurations for service-linked
  AWS Config Rules such as Organization Config rules, the rules deployed by
  conformance packs, and rules deployed by AWS Security Hub.
  """
  def put_remediation_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRemediationConfigurations", input, options)
  end

  @doc """
  A remediation exception is when a specific resource is no longer considered for
  auto-remediation.

  This API adds a new exception or updates an exisiting exception for a specific
  resource with a specific AWS Config rule.

  AWS Config generates a remediation exception when a problem occurs executing a
  remediation action to a specific resource. Remediation exceptions blocks
  auto-remediation until the exception is cleared.
  """
  def put_remediation_exceptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRemediationExceptions", input, options)
  end

  @doc """
  Records the configuration state for the resource provided in the request.

  The configuration state of a resource is represented in AWS Config as
  Configuration Items. Once this API records the configuration item, you can
  retrieve the list of configuration items for the custom resource type using
  existing AWS Config APIs.

  The custom resource type must be registered with AWS CloudFormation. This API
  accepts the configuration item registered with AWS CloudFormation.

  When you call this API, AWS Config only stores configuration state of the
  resource provided in the request. This API does not change or remediate the
  configuration of the resource.

  Write-only schema properites are not recorded as part of the published
  configuration item.
  """
  def put_resource_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutResourceConfig", input, options)
  end

  @doc """
  Creates and updates the retention configuration with details about retention
  period (number of days) that AWS Config stores your historical information.

  The API creates the `RetentionConfiguration` object and names the object as
  **default**. When you have a `RetentionConfiguration` object named **default**,
  calling the API modifies the default object.

  Currently, AWS Config supports only one retention configuration per region in
  your account.
  """
  def put_retention_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRetentionConfiguration", input, options)
  end

  @doc """
  Saves a new query or updates an existing saved query.

  The `QueryName` must be unique for an AWS account in an AWS Region. You can
  create upto 300 queries in an AWS account in an AWS Region.
  """
  def put_stored_query(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutStoredQuery", input, options)
  end

  @doc """
  Accepts a structured query language (SQL) SELECT command and an aggregator to
  query configuration state of AWS resources across multiple accounts and regions,
  performs the corresponding search, and returns resource configurations matching
  the properties.

  For more information about query components, see the [ ## Query Components
  ](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html)
  section in the AWS Config Developer Guide.
  """
  def select_aggregate_resource_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SelectAggregateResourceConfig", input, options)
  end

  @doc """
  Accepts a structured query language (SQL) `SELECT` command, performs the
  corresponding search, and returns resource configurations matching the
  properties.

  For more information about query components, see the [ ## Query Components
  ](https://docs.aws.amazon.com/config/latest/developerguide/query-components.html)
  section in the AWS Config Developer Guide.
  """
  def select_resource_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SelectResourceConfig", input, options)
  end

  @doc """
  Runs an on-demand evaluation for the specified AWS Config rules against the last
  known configuration state of the resources.

  Use `StartConfigRulesEvaluation` when you want to test that a rule you updated
  is working as expected. `StartConfigRulesEvaluation` does not re-record the
  latest configuration state for your resources. It re-runs an evaluation against
  the last known state of your resources.

  You can specify up to 25 AWS Config rules per request.

  An existing `StartConfigRulesEvaluation` call for the specified rules must
  complete before you can call the API again. If you chose to have AWS Config
  stream to an Amazon SNS topic, you will receive a `ConfigRuleEvaluationStarted`
  notification when the evaluation starts.

  You don't need to call the `StartConfigRulesEvaluation` API to run an evaluation
  for a new rule. When you create a rule, AWS Config evaluates your resources
  against the rule automatically.

  The `StartConfigRulesEvaluation` API is useful if you want to run on-demand
  evaluations, such as the following example:

    1. You have a custom rule that evaluates your IAM resources every 24
  hours.

    2. You update your Lambda function to add additional conditions to
  your rule.

    3. Instead of waiting for the next periodic evaluation, you call the
  `StartConfigRulesEvaluation` API.

    4. AWS Config invokes your Lambda function and evaluates your IAM
  resources.

    5. Your custom rule will still run periodic evaluations every 24
  hours.
  """
  def start_config_rules_evaluation(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartConfigRulesEvaluation", input, options)
  end

  @doc """
  Starts recording configurations of the AWS resources you have selected to record
  in your AWS account.

  You must have created at least one delivery channel to successfully start the
  configuration recorder.
  """
  def start_configuration_recorder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartConfigurationRecorder", input, options)
  end

  @doc """
  Runs an on-demand remediation for the specified AWS Config rules against the
  last known remediation configuration.

  It runs an execution against the current state of your resources. Remediation
  execution is asynchronous.

  You can specify up to 100 resource keys per request. An existing
  StartRemediationExecution call for the specified resource keys must complete
  before you can call the API again.
  """
  def start_remediation_execution(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartRemediationExecution", input, options)
  end

  @doc """
  Stops recording configurations of the AWS resources you have selected to record
  in your AWS account.
  """
  def stop_configuration_recorder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopConfigurationRecorder", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified resourceArn.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are deleted as well.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end
end