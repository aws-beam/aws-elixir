# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.NetworkSecurityManager do
  @moduledoc """
  AWS Network Security Manager helps you centrally configure and deploy network
  security protections across your organization.

  Supported protections include AWS WAF and AWS Shield Advanced. This centralized
  approach reduces the overhead of managing protections individually across
  accounts and ensures consistent security at scale.

  You define reusable *rules* and *templates*, then combine them into *policies*.
  Next, you select the accounts and resources to protect with *scopes* and roll
  the protections out with *deployments*. For example, you can define a set of AWS
  WAF rules and group them into a policy. Then deploy that policy across all
  accounts in your organization with a single deployment.

  This API reference describes the operations and data types for AWS Network
  Security Manager.

  For conceptual information, tutorials, and guidance on writing rule
  configurations, see the [AWS Network Security Manager Developer Guide](https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html).
  For the default quotas that apply to your account, see
  [Quotas](https://docs.aws.amazon.com/network-security-manager/latest/devguide/quotas.html). For the service endpoints available in each Region, see [AWS Network Security
  Manager endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/network-security-manager.html)
  in the *AWS General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_reference() :: %{
        "accountId" => String.t() | atom(),
        "email" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type account_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_set() :: %{
        "accountIds" => list(String.t() | atom()),
        "organizationalUnits" => list(String.t() | atom())
      }

  """
  @type account_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_account_details() :: %{
        "adminAccount" => String.t() | atom(),
        "adminScope" => admin_scope(),
        "priority" => integer(),
        "status" => list(any())
      }

  """
  @type admin_account_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_account_summary() :: %{
        "accountId" => String.t() | atom(),
        "email" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => integer()
      }

  """
  @type admin_account_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_firewall_type_scope() :: %{
        "allFirewallTypesEnabled" => [boolean()],
        "firewallTypes" => list(list(any())())
      }

  """
  @type admin_firewall_type_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_scope() :: %{
        "firewallTypeScope" => admin_firewall_type_scope(),
        "scopeFilter" => list()
      }

  """
  @type admin_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_scope_input() :: %{
        "firewallTypeScope" => admin_firewall_type_scope(),
        "scopeFilter" => list()
      }

  """
  @type admin_scope_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_scope_selection() :: %{
        "accounts" => list(account_reference()),
        "organizationalUnits" => list(organizational_unit_reference())
      }

  """
  @type admin_scope_selection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      admin_scope_selection_input() :: %{
        "accounts" => list(String.t() | atom()),
        "organizationalUnits" => list(String.t() | atom())
      }

  """
  @type admin_scope_selection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alb_configuration() :: %{
        "ipAddressType" => list(any()),
        "scheme" => list(any())
      }

  """
  @type alb_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_policy() :: %{
        "policyArn" => String.t() | atom()
      }

  """
  @type associated_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_rule() :: %{
        "ruleArn" => String.t() | atom()
      }

  """
  @type associated_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_scope() :: %{
        "scopeArn" => String.t() | atom()
      }

  """
  @type associated_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      configuration_issue() :: %{
        "actualValue" => [String.t() | atom()],
        "configurationName" => [String.t() | atom()],
        "expectedValue" => [String.t() | atom()]
      }

  """
  @type configuration_issue() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_deployment_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("deploymentDescription") => String.t() | atom(),
        optional("isPublished") => boolean(),
        optional("tags") => map(),
        required("associatedPolicyList") => list(policy_reference()),
        required("associatedScopeList") => list(scope_reference()),
        required("deploymentConfiguration") => deployment_configuration(),
        required("deploymentName") => String.t() | atom()
      }

  """
  @type create_deployment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_deployment_output() :: %{
        "associatedPolicyList" => list(associated_policy()),
        "associatedScopeList" => list(associated_scope()),
        "deploymentArn" => String.t() | atom(),
        "deploymentConfiguration" => deployment_configuration(),
        "deploymentCoverage" => list(deployment_coverage_entry()),
        "deploymentDescription" => String.t() | atom(),
        "deploymentId" => String.t() | atom(),
        "deploymentName" => String.t() | atom(),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom(),
        "warnings" => list(deployment_warning_entry())
      }

  """
  @type create_deployment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_deployment_snapshot_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_deployment_snapshot_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_deployment_snapshot_output() :: %{
        "associatedPolicyList" => list(associated_policy()),
        "associatedScopeList" => list(associated_scope()),
        "deploymentArn" => String.t() | atom(),
        "deploymentConfiguration" => deployment_configuration(),
        "deploymentDescription" => String.t() | atom(),
        "deploymentId" => String.t() | atom(),
        "deploymentName" => String.t() | atom(),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_deployment_snapshot_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_input() :: %{
        optional("associatedTemplateAndRuleList") => list(list()),
        optional("clientToken") => String.t() | atom(),
        optional("isPublished") => boolean(),
        optional("policyDescription") => String.t() | atom(),
        optional("tags") => map(),
        required("firewallType") => list(any()),
        required("policyConfiguration") => policy_configuration(),
        required("policyName") => String.t() | atom(),
        required("priority") => integer()
      }

  """
  @type create_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_output() :: %{
        "associatedTemplateAndRuleList" => list(list()),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "policyArn" => String.t() | atom(),
        "policyConfiguration" => policy_configuration(),
        "policyDescription" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "policyName" => String.t() | atom(),
        "priority" => integer(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_snapshot_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_policy_snapshot_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_policy_snapshot_output() :: %{
        "associatedTemplateAndRuleList" => list(list()),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "policyArn" => String.t() | atom(),
        "policyConfiguration" => policy_configuration(),
        "policyDescription" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "policyName" => String.t() | atom(),
        "priority" => integer(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_policy_snapshot_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("isPublished") => boolean(),
        optional("ruleDescription") => String.t() | atom(),
        optional("tags") => map(),
        required("configuration") => any(),
        required("firewallType") => list(any()),
        required("ruleName") => String.t() | atom(),
        required("ruleType") => list(any())
      }

  """
  @type create_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_output() :: %{
        "configuration" => any(),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "ruleArn" => String.t() | atom(),
        "ruleDescription" => String.t() | atom(),
        "ruleId" => String.t() | atom(),
        "ruleName" => String.t() | atom(),
        "ruleType" => list(any()),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_snapshot_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_rule_snapshot_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_snapshot_output() :: %{
        "configuration" => any(),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "ruleArn" => String.t() | atom(),
        "ruleDescription" => String.t() | atom(),
        "ruleId" => String.t() | atom(),
        "ruleName" => String.t() | atom(),
        "ruleType" => list(any()),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_rule_snapshot_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scope_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("isPublished") => boolean(),
        optional("scopeDescription") => String.t() | atom(),
        optional("tags") => map(),
        required("scopeConfiguration") => scope_configuration(),
        required("scopeName") => String.t() | atom()
      }

  """
  @type create_scope_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scope_output() :: %{
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "scopeArn" => String.t() | atom(),
        "scopeConfiguration" => scope_configuration(),
        "scopeDescription" => String.t() | atom(),
        "scopeId" => String.t() | atom(),
        "scopeName" => String.t() | atom(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_scope_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scope_snapshot_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_scope_snapshot_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scope_snapshot_output() :: %{
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "scopeArn" => String.t() | atom(),
        "scopeConfiguration" => scope_configuration(),
        "scopeDescription" => String.t() | atom(),
        "scopeId" => String.t() | atom(),
        "scopeName" => String.t() | atom(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_scope_snapshot_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_template_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("isPublished") => boolean(),
        optional("tags") => map(),
        optional("templateDescription") => String.t() | atom(),
        required("associatedRuleList") => list(rule_reference()),
        required("firewallType") => list(any()),
        required("templateName") => String.t() | atom()
      }

  """
  @type create_template_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_template_output() :: %{
        "associatedRuleList" => list(associated_rule()),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "status" => list(any()),
        "templateArn" => String.t() | atom(),
        "templateDescription" => String.t() | atom(),
        "templateId" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_template_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_template_snapshot_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("tags") => map()
      }

  """
  @type create_template_snapshot_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_template_snapshot_output() :: %{
        "associatedRuleList" => list(associated_rule()),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "status" => list(any()),
        "templateArn" => String.t() | atom(),
        "templateDescription" => String.t() | atom(),
        "templateId" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type create_template_snapshot_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_admin_account_request() :: %{}

  """
  @type delete_admin_account_request() :: %{}

  @typedoc """

  ## Example:

      delete_deployment_input() :: %{}

  """
  @type delete_deployment_input() :: %{}

  @typedoc """

  ## Example:

      delete_policy_input() :: %{}

  """
  @type delete_policy_input() :: %{}

  @typedoc """

  ## Example:

      delete_rule_input() :: %{}

  """
  @type delete_rule_input() :: %{}

  @typedoc """

  ## Example:

      delete_scope_input() :: %{}

  """
  @type delete_scope_input() :: %{}

  @typedoc """

  ## Example:

      delete_template_input() :: %{}

  """
  @type delete_template_input() :: %{}

  @typedoc """

  ## Example:

      deployment_configuration() :: %{
        "enableCrossAccountVisibility" => boolean()
      }

  """
  @type deployment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_coverage_entry() :: %{
        "firewallType" => list(any()),
        "inScopeResourceTypes" => list(list(any())()),
        "policyArns" => list(String.t() | atom())
      }

  """
  @type deployment_coverage_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_summary() :: %{
        "deploymentArn" => String.t() | atom(),
        "deploymentId" => String.t() | atom(),
        "deploymentName" => String.t() | atom(),
        "hasPublishedVersion" => boolean(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type deployment_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deployment_warning_entry() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()],
        "policyArn" => String.t() | atom()
      }

  """
  @type deployment_warning_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      generate_rule_configuration_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("currentConfiguration") => [String.t() | atom()],
        optional("wafConfigDataType") => list(any()),
        required("prompt") => String.t() | atom(),
        required("ruleFirewallType") => list(any()),
        required("ruleType") => list(any())
      }

  """
  @type generate_rule_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      generate_rule_configuration_response() :: %{
        "configuration" => [String.t() | atom()],
        "description" => [String.t() | atom()]
      }

  """
  @type generate_rule_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_admin_account_request() :: %{}

  """
  @type get_admin_account_request() :: %{}

  @typedoc """

  ## Example:

      get_admin_account_response() :: %{
        "adminAccountDetails" => admin_account_details()
      }

  """
  @type get_admin_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_deployment_input() :: %{}

  """
  @type get_deployment_input() :: %{}

  @typedoc """

  ## Example:

      get_deployment_output() :: %{
        "associatedPolicyList" => list(associated_policy()),
        "associatedScopeList" => list(associated_scope()),
        "deploymentArn" => String.t() | atom(),
        "deploymentConfiguration" => deployment_configuration(),
        "deploymentCoverage" => list(deployment_coverage_entry()),
        "deploymentDescription" => String.t() | atom(),
        "deploymentId" => String.t() | atom(),
        "deploymentName" => String.t() | atom(),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom(),
        "warnings" => list(deployment_warning_entry())
      }

  """
  @type get_deployment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_input() :: %{}

  """
  @type get_policy_input() :: %{}

  @typedoc """

  ## Example:

      get_policy_output() :: %{
        "associatedTemplateAndRuleList" => list(list()),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "policyArn" => String.t() | atom(),
        "policyConfiguration" => policy_configuration(),
        "policyDescription" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "policyName" => String.t() | atom(),
        "priority" => integer(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type get_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_rule_input() :: %{}

  """
  @type get_rule_input() :: %{}

  @typedoc """

  ## Example:

      get_rule_output() :: %{
        "configuration" => any(),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "ruleArn" => String.t() | atom(),
        "ruleDescription" => String.t() | atom(),
        "ruleId" => String.t() | atom(),
        "ruleName" => String.t() | atom(),
        "ruleType" => list(any()),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type get_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_scope_input() :: %{}

  """
  @type get_scope_input() :: %{}

  @typedoc """

  ## Example:

      get_scope_output() :: %{
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "scopeArn" => String.t() | atom(),
        "scopeConfiguration" => scope_configuration(),
        "scopeDescription" => String.t() | atom(),
        "scopeId" => String.t() | atom(),
        "scopeName" => String.t() | atom(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type get_scope_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_template_input() :: %{}

  """
  @type get_template_input() :: %{}

  @typedoc """

  ## Example:

      get_template_output() :: %{
        "associatedRuleList" => list(associated_rule()),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "status" => list(any()),
        "templateArn" => String.t() | atom(),
        "templateDescription" => String.t() | atom(),
        "templateId" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type get_template_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_firewall_reasons() :: %{
        "incorrectAppendableConfigurationOrder" => list(configuration_issue()),
        "incorrectSingleValueConfigurations" => list(configuration_issue()),
        "missingAppendableConfigurationValues" => list(configuration_issue()),
        "missingMergeableConfigurationValues" => list(configuration_issue()),
        "unexpectedAppendableConfigurationValues" => list(configuration_issue()),
        "unexpectedMergeableConfigurationValues" => list(configuration_issue())
      }

  """
  @type invalid_firewall_reasons() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_admin_accounts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_admin_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_admin_accounts_response() :: %{
        "adminAccounts" => list(admin_account_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_admin_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_aggregate_resource_synchronization_statuses_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("synchronizationStatus") => list(any())
      }

  """
  @type list_aggregate_resource_synchronization_statuses_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_aggregate_resource_synchronization_statuses_output() :: %{
        "nextToken" => String.t() | atom(),
        "resourceSynchronizationStatuses" => list(resource_synchronization_status_summary())
      }

  """
  @type list_aggregate_resource_synchronization_statuses_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_deployment_snapshots_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_deployment_snapshots_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployment_snapshots_output() :: %{
        "nextToken" => String.t() | atom(),
        "snapshots" => list(deployment_summary())
      }

  """
  @type list_deployment_snapshots_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployments_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_deployments_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_deployments_output() :: %{
        "deployments" => list(deployment_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_deployments_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policies_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_policies_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policies_output() :: %{
        "nextToken" => String.t() | atom(),
        "policies" => list(policy_summary())
      }

  """
  @type list_policies_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_snapshots_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_policy_snapshots_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_policy_snapshots_output() :: %{
        "nextToken" => String.t() | atom(),
        "snapshots" => list(policy_summary())
      }

  """
  @type list_policy_snapshots_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_associations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("resourceIdentifier") => String.t() | atom()
      }

  """
  @type list_resource_associations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_associations_output() :: %{
        "nextToken" => String.t() | atom(),
        "resourceAssociations" => list(resource_association())
      }

  """
  @type list_resource_associations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_synchronization_statuses_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("synchronizationStatus") => list(any()),
        required("deploymentIdentifier") => String.t() | atom()
      }

  """
  @type list_resource_synchronization_statuses_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resource_synchronization_statuses_output() :: %{
        "nextToken" => String.t() | atom(),
        "resourceSynchronizationStatuses" => list(resource_synchronization_status_summary())
      }

  """
  @type list_resource_synchronization_statuses_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rule_snapshots_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_rule_snapshots_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rule_snapshots_output() :: %{
        "nextToken" => String.t() | atom(),
        "snapshots" => list(rule_summary())
      }

  """
  @type list_rule_snapshots_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rules_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rules_output() :: %{
        "nextToken" => String.t() | atom(),
        "rules" => list(rule_summary())
      }

  """
  @type list_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scope_snapshots_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_scope_snapshots_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scope_snapshots_output() :: %{
        "nextToken" => String.t() | atom(),
        "snapshots" => list(scope_summary())
      }

  """
  @type list_scope_snapshots_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scopes_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_scopes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scopes_output() :: %{
        "nextToken" => String.t() | atom(),
        "scopes" => list(scope_summary())
      }

  """
  @type list_scopes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_template_snapshots_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_template_snapshots_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_template_snapshots_output() :: %{
        "nextToken" => String.t() | atom(),
        "snapshots" => list(template_summary())
      }

  """
  @type list_template_snapshots_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_templates_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_templates_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_templates_output() :: %{
        "nextToken" => String.t() | atom(),
        "templates" => list(template_summary())
      }

  """
  @type list_templates_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_visible_marker() :: %{
        "reason" => [String.t() | atom()]
      }

  """
  @type not_visible_marker() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organizational_unit_reference() :: %{
        "name" => [String.t() | atom()],
        "ouId" => String.t() | atom()
      }

  """
  @type organizational_unit_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_configuration() :: %{
        "remediationEnabled" => boolean(),
        "resourcesCleanUp" => boolean(),
        "wafConfig" => waf_config()
      }

  """
  @type policy_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_reference() :: %{
        "policyIdentifier" => String.t() | atom()
      }

  """
  @type policy_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_summary() :: %{
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "policyArn" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "policyName" => String.t() | atom(),
        "priority" => integer(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type policy_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_admin_account_request() :: %{
        optional("adminScope") => admin_scope_input(),
        required("accountId") => String.t() | atom(),
        required("priority") => integer()
      }

  """
  @type put_admin_account_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_admin_account_response() :: %{
        "adminAccountDetails" => admin_account_details()
      }

  """
  @type put_admin_account_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remediation_issue_details() :: %{
        "correctiveAction" => [String.t() | atom()],
        "issueType" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type remediation_issue_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_association() :: %{
        "arn" => String.t() | atom(),
        "resourceType" => list(any())
      }

  """
  @type resource_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_scope() :: %{
        "exclude" => resource_set(),
        "include" => resource_set(),
        "includeAll" => [boolean()]
      }

  """
  @type resource_scope() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_set() :: %{
        "explicitArns" => list(String.t() | atom()),
        "expression" => list()
      }

  """
  @type resource_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_synchronization_status_summary() :: %{
        "accountId" => String.t() | atom(),
        "deploymentArn" => String.t() | atom(),
        "evaluatedAt" => non_neg_integer(),
        "outOfSyncReasons" => list(),
        "remediationIssues" => list(),
        "resourceArn" => String.t() | atom(),
        "resourceType" => list(any()),
        "synchronizationStatus" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type resource_synchronization_status_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_reference() :: %{
        "ruleIdentifier" => String.t() | atom()
      }

  """
  @type rule_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_summary() :: %{
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "ruleArn" => String.t() | atom(),
        "ruleId" => String.t() | atom(),
        "ruleName" => String.t() | atom(),
        "ruleType" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scope_configuration() :: %{
        "accountFilter" => list(),
        "resourceScopes" => map()
      }

  """
  @type scope_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scope_reference() :: %{
        "scopeIdentifier" => String.t() | atom()
      }

  """
  @type scope_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scope_summary() :: %{
        "hasPublishedVersion" => boolean(),
        "scopeArn" => String.t() | atom(),
        "scopeId" => String.t() | atom(),
        "scopeName" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type scope_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_policy_violation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type tag_policy_violation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      template_summary() :: %{
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "status" => list(any()),
        "templateArn" => String.t() | atom(),
        "templateId" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type template_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      update_deployment_input() :: %{
        optional("associatedPolicyList") => list(policy_reference()),
        optional("associatedScopeList") => list(scope_reference()),
        optional("clientToken") => String.t() | atom(),
        optional("deploymentConfiguration") => deployment_configuration(),
        optional("deploymentDescription") => String.t() | atom(),
        required("isPublished") => boolean(),
        required("updateToken") => String.t() | atom()
      }

  """
  @type update_deployment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_deployment_output() :: %{
        "associatedPolicyList" => list(associated_policy()),
        "associatedScopeList" => list(associated_scope()),
        "deploymentArn" => String.t() | atom(),
        "deploymentConfiguration" => deployment_configuration(),
        "deploymentCoverage" => list(deployment_coverage_entry()),
        "deploymentDescription" => String.t() | atom(),
        "deploymentId" => String.t() | atom(),
        "deploymentName" => String.t() | atom(),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom(),
        "warnings" => list(deployment_warning_entry())
      }

  """
  @type update_deployment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy_input() :: %{
        optional("associatedTemplateAndRuleList") => list(list()),
        optional("clientToken") => String.t() | atom(),
        optional("policyConfiguration") => policy_configuration(),
        optional("policyDescription") => String.t() | atom(),
        optional("priority") => integer(),
        required("isPublished") => boolean(),
        required("updateToken") => String.t() | atom()
      }

  """
  @type update_policy_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_policy_output() :: %{
        "associatedTemplateAndRuleList" => list(list()),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "policyArn" => String.t() | atom(),
        "policyConfiguration" => policy_configuration(),
        "policyDescription" => String.t() | atom(),
        "policyId" => String.t() | atom(),
        "policyName" => String.t() | atom(),
        "priority" => integer(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type update_policy_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_rule_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("configuration") => any(),
        optional("ruleDescription") => String.t() | atom(),
        optional("ruleType") => list(any()),
        required("isPublished") => boolean(),
        required("updateToken") => String.t() | atom()
      }

  """
  @type update_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_rule_output() :: %{
        "configuration" => any(),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "ruleArn" => String.t() | atom(),
        "ruleDescription" => String.t() | atom(),
        "ruleId" => String.t() | atom(),
        "ruleName" => String.t() | atom(),
        "ruleType" => list(any()),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type update_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scope_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("scopeConfiguration") => scope_configuration(),
        optional("scopeDescription") => String.t() | atom(),
        required("isPublished") => boolean(),
        required("updateToken") => String.t() | atom()
      }

  """
  @type update_scope_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_scope_output() :: %{
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "scopeArn" => String.t() | atom(),
        "scopeConfiguration" => scope_configuration(),
        "scopeDescription" => String.t() | atom(),
        "scopeId" => String.t() | atom(),
        "scopeName" => String.t() | atom(),
        "status" => list(any()),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type update_scope_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_template_input() :: %{
        optional("associatedRuleList") => list(rule_reference()),
        optional("clientToken") => String.t() | atom(),
        optional("templateDescription") => String.t() | atom(),
        required("isPublished") => boolean(),
        required("updateToken") => String.t() | atom()
      }

  """
  @type update_template_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_template_output() :: %{
        "associatedRuleList" => list(associated_rule()),
        "firewallType" => list(any()),
        "hasPublishedVersion" => boolean(),
        "isSnapshot" => boolean(),
        "status" => list(any()),
        "templateArn" => String.t() | atom(),
        "templateDescription" => String.t() | atom(),
        "templateId" => String.t() | atom(),
        "templateName" => String.t() | atom(),
        "updateToken" => String.t() | atom(),
        "updatedAt" => non_neg_integer(),
        "version" => String.t() | atom()
      }

  """
  @type update_template_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waf_config() :: %{
        "conflictResolution" => list(any()),
        "existingCustomerWebACLResolution" => list(any())
      }

  """
  @type waf_config() :: %{(String.t() | atom()) => any()}

  @type create_deployment_errors() ::
          validation_exception()
          | throttling_exception()
          | tag_policy_violation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_deployment_snapshot_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | tag_policy_violation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_policy_snapshot_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_rule_errors() ::
          validation_exception()
          | throttling_exception()
          | tag_policy_violation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_rule_snapshot_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_scope_errors() ::
          validation_exception()
          | throttling_exception()
          | tag_policy_violation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_scope_snapshot_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_template_errors() ::
          validation_exception()
          | throttling_exception()
          | tag_policy_violation_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_template_snapshot_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_admin_account_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type delete_deployment_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_rule_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_scope_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_template_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type generate_rule_configuration_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_admin_account_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_deployment_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_rule_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_scope_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_template_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_admin_accounts_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_aggregate_resource_synchronization_statuses_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_deployment_snapshots_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_deployments_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_policies_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_policy_snapshots_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_resource_associations_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_resource_synchronization_statuses_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_rule_snapshots_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_rules_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_scope_snapshots_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_scopes_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_template_snapshots_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_templates_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_admin_account_errors() ::
          validation_exception()
          | throttling_exception()
          | service_unavailable_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | tag_policy_violation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | tag_policy_violation_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_deployment_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_rule_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_scope_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_template_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2025-10-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "network-security-manager",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Network Security Manager",
      signature_version: "v4",
      signing_name: "network-security-manager",
      target_prefix: nil
    }
  end

  @doc """
  Creates a deployment.

  A deployment applies one or more policies to the accounts and resources selected
  by a scope. Use `isPublished` to create the deployment in published (`ACTIVE`)
  or draft (`DRAFT`) state. The response includes coverage information and any
  warnings about the deployment.
  """
  @spec create_deployment(map(), create_deployment_input(), list()) ::
          {:ok, create_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/deployments"
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
  Creates a snapshot of the current published version of the specified deployment.
  """
  @spec create_deployment_snapshot(
          map(),
          String.t() | atom(),
          create_deployment_snapshot_input(),
          list()
        ) ::
          {:ok, create_deployment_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_snapshot_errors()}
  def create_deployment_snapshot(%Client{} = client, deployment_identifier, input, options \\ []) do
    url_path = "/deployments/#{AWS.Util.encode_uri(deployment_identifier)}/snapshots"
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
  Creates a policy.

  A policy combines templates and rules with enforcement settings for a firewall
  type, such as AWS WAF or AWS Shield Advanced. Use `isPublished` to create the
  policy in published (`ACTIVE`) or draft (`DRAFT`) state.
  """
  @spec create_policy(map(), create_policy_input(), list()) ::
          {:ok, create_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_errors()}
  def create_policy(%Client{} = client, input, options \\ []) do
    url_path = "/policies"
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
  Creates a snapshot of the current published version of the specified policy.
  """
  @spec create_policy_snapshot(map(), String.t() | atom(), create_policy_snapshot_input(), list()) ::
          {:ok, create_policy_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_policy_snapshot_errors()}
  def create_policy_snapshot(%Client{} = client, policy_identifier, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_identifier)}/snapshots"
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
  Creates a rule.

  A rule defines a network security configuration to enforce, such as an AWS WAF
  rule group or configuration data. Use `isPublished` to create the rule in
  published (`ACTIVE`) or draft (`DRAFT`) state.
  """
  @spec create_rule(map(), create_rule_input(), list()) ::
          {:ok, create_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, input, options \\ []) do
    url_path = "/rules"
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
  Creates a snapshot of the current published version of the specified rule.

  A snapshot is an immutable, versioned copy that other resources can reference.
  """
  @spec create_rule_snapshot(map(), String.t() | atom(), create_rule_snapshot_input(), list()) ::
          {:ok, create_rule_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_snapshot_errors()}
  def create_rule_snapshot(%Client{} = client, rule_identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_identifier)}/snapshots"
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
  Creates a scope.

  A scope selects the accounts and resources that a deployment applies to. Use
  `isPublished` to create the scope in published (`ACTIVE`) or draft (`DRAFT`)
  state.
  """
  @spec create_scope(map(), create_scope_input(), list()) ::
          {:ok, create_scope_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scope_errors()}
  def create_scope(%Client{} = client, input, options \\ []) do
    url_path = "/scopes"
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
  Creates a snapshot of the current published version of the specified scope.
  """
  @spec create_scope_snapshot(map(), String.t() | atom(), create_scope_snapshot_input(), list()) ::
          {:ok, create_scope_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scope_snapshot_errors()}
  def create_scope_snapshot(%Client{} = client, scope_identifier, input, options \\ []) do
    url_path = "/scopes/#{AWS.Util.encode_uri(scope_identifier)}/snapshots"
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
  Creates a template.

  A template groups one or more rules to simplify reuse across policies. You can
  also associate rules with a policy directly, without a template. Use
  `isPublished` to create the template in published (`ACTIVE`) or draft (`DRAFT`)
  state.
  """
  @spec create_template(map(), create_template_input(), list()) ::
          {:ok, create_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_template_errors()}
  def create_template(%Client{} = client, input, options \\ []) do
    url_path = "/templates"
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
  Creates a snapshot of the current published version of the specified template.
  """
  @spec create_template_snapshot(
          map(),
          String.t() | atom(),
          create_template_snapshot_input(),
          list()
        ) ::
          {:ok, create_template_snapshot_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_template_snapshot_errors()}
  def create_template_snapshot(%Client{} = client, template_identifier, input, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_identifier)}/snapshots"
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
  Removes the specified AWS Network Security Manager administrator account.
  """
  @spec delete_admin_account(map(), String.t() | atom(), delete_admin_account_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_admin_account_errors()}
  def delete_admin_account(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/admin-account/#{AWS.Util.encode_uri(account_id)}"
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
  Deletes the specified deployment.
  """
  @spec delete_deployment(map(), String.t() | atom(), delete_deployment_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_deployment_errors()}
  def delete_deployment(%Client{} = client, deployment_identifier, input, options \\ []) do
    url_path = "/deployments/#{AWS.Util.encode_uri(deployment_identifier)}"
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
  Deletes the specified policy.
  """
  @spec delete_policy(map(), String.t() | atom(), delete_policy_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_policy_errors()}
  def delete_policy(%Client{} = client, policy_identifier, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_identifier)}"
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
  Deletes the specified rule.
  """
  @spec delete_rule(map(), String.t() | atom(), delete_rule_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, rule_identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_identifier)}"
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
  Deletes the specified scope.
  """
  @spec delete_scope(map(), String.t() | atom(), delete_scope_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_scope_errors()}
  def delete_scope(%Client{} = client, scope_identifier, input, options \\ []) do
    url_path = "/scopes/#{AWS.Util.encode_uri(scope_identifier)}"
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
  Deletes the specified template.
  """
  @spec delete_template(map(), String.t() | atom(), delete_template_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_template_errors()}
  def delete_template(%Client{} = client, template_identifier, input, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_identifier)}"
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
  Generates a rule configuration from a natural-language description.

  Provide a prompt along with the rule's firewall type and rule type. The service
  returns a configuration that you can use when you create or update a rule. If
  you also provide an existing configuration, the service edits that configuration
  instead of generating a new one.
  """
  @spec generate_rule_configuration(map(), generate_rule_configuration_request(), list()) ::
          {:ok, generate_rule_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_rule_configuration_errors()}
  def generate_rule_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GenerateRuleConfiguration"
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
  Retrieves the details of the specified AWS Network Security Manager
  administrator account.
  """
  @spec get_admin_account(map(), String.t() | atom(), list()) ::
          {:ok, get_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_admin_account_errors()}
  def get_admin_account(%Client{} = client, account_id, options \\ []) do
    url_path = "/admin-account/#{AWS.Util.encode_uri(account_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the specified deployment, including coverage
  information and any warnings.
  """
  @spec get_deployment(map(), String.t() | atom(), list()) ::
          {:ok, get_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, deployment_identifier, options \\ []) do
    url_path = "/deployments/#{AWS.Util.encode_uri(deployment_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the specified policy.
  """
  @spec get_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, policy_identifier, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the specified rule.
  """
  @spec get_rule(map(), String.t() | atom(), list()) ::
          {:ok, get_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rule_errors()}
  def get_rule(%Client{} = client, rule_identifier, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the specified scope.
  """
  @spec get_scope(map(), String.t() | atom(), list()) ::
          {:ok, get_scope_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_scope_errors()}
  def get_scope(%Client{} = client, scope_identifier, options \\ []) do
    url_path = "/scopes/#{AWS.Util.encode_uri(scope_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the specified template.
  """
  @spec get_template(map(), String.t() | atom(), list()) ::
          {:ok, get_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_template_errors()}
  def get_template(%Client{} = client, template_identifier, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the AWS Network Security Manager administrator accounts in the
  organization.
  """
  @spec list_admin_accounts(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_admin_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_admin_accounts_errors()}
  def list_admin_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/admin-accounts"
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
  Lists the aggregated synchronization statuses of resources across the
  deployments in your administrator account.

  You can filter the results by synchronization status and page through them.
  """
  @spec list_aggregate_resource_synchronization_statuses(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_aggregate_resource_synchronization_statuses_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_aggregate_resource_synchronization_statuses_errors()}
  def list_aggregate_resource_synchronization_statuses(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        synchronization_status \\ nil,
        options \\ []
      ) do
    url_path = "/aggregate-sync-statuses"
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

    query_params =
      if !is_nil(synchronization_status) do
        [{"synchronizationStatus", synchronization_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the snapshots of the specified deployment.
  """
  @spec list_deployment_snapshots(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_deployment_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployment_snapshots_errors()}
  def list_deployment_snapshots(
        %Client{} = client,
        deployment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/deployments/#{AWS.Util.encode_uri(deployment_identifier)}/snapshots"
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
  Lists the deployments in the account.

  You can filter the results by status and page through them using `maxResults`
  and `nextToken`.
  """
  @spec list_deployments(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_deployments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployments_errors()}
  def list_deployments(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/deployments"
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

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the policies in the account.

  You can filter the results by status and page through them using `maxResults`
  and `nextToken`.
  """
  @spec list_policies(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_policies_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policies_errors()}
  def list_policies(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/policies"
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

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the snapshots of the specified policy.
  """
  @spec list_policy_snapshots(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_policy_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_policy_snapshots_errors()}
  def list_policy_snapshots(
        %Client{} = client,
        policy_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_identifier)}/snapshots"
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
  Lists the resources associated with the specified resource.
  """
  @spec list_resource_associations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_resource_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_associations_errors()}
  def list_resource_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_identifier,
        options \\ []
      ) do
    url_path = "/resource-associations"
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

    query_params =
      if !is_nil(resource_identifier) do
        [{"resourceIdentifier", resource_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the synchronization statuses of the resources covered by the specified
  deployment.

  You can filter the results by synchronization status and page through them.
  """
  @spec list_resource_synchronization_statuses(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_resource_synchronization_statuses_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resource_synchronization_statuses_errors()}
  def list_resource_synchronization_statuses(
        %Client{} = client,
        deployment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        synchronization_status \\ nil,
        options \\ []
      ) do
    url_path = "/resource-sync-statuses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(deployment_identifier) do
        [{"deploymentIdentifier", deployment_identifier} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(synchronization_status) do
        [{"synchronizationStatus", synchronization_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the snapshots of the specified rule.
  """
  @spec list_rule_snapshots(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_rule_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rule_snapshots_errors()}
  def list_rule_snapshots(
        %Client{} = client,
        rule_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_identifier)}/snapshots"
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
  Lists the rules in the account.

  You can filter the results by status and page through them using `maxResults`
  and `nextToken`.
  """
  @spec list_rules(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rules_errors()}
  def list_rules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/rules"
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

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the snapshots of the specified scope.
  """
  @spec list_scope_snapshots(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_scope_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scope_snapshots_errors()}
  def list_scope_snapshots(
        %Client{} = client,
        scope_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/scopes/#{AWS.Util.encode_uri(scope_identifier)}/snapshots"
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
  Lists the scopes in the account.

  You can filter the results by status and page through them using `maxResults`
  and `nextToken`.
  """
  @spec list_scopes(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_scopes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scopes_errors()}
  def list_scopes(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/scopes"
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

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with the specified resource.
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
  Lists the snapshots of the specified template.
  """
  @spec list_template_snapshots(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_template_snapshots_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_template_snapshots_errors()}
  def list_template_snapshots(
        %Client{} = client,
        template_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_identifier)}/snapshots"
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
  Lists the templates in the account.

  You can filter the results by status and page through them using `maxResults`
  and `nextToken`.
  """
  @spec list_templates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_templates_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_templates_errors()}
  def list_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/templates"
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

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sets the AWS account that serves as an AWS Network Security Manager
  administrator account, and optionally configures the scope of resources that the
  administrator can manage.

  You can't set an administrator account again immediately after you remove it, or
  while the service creates its service-linked role. Retry the request after a few
  minutes.
  """
  @spec put_admin_account(map(), put_admin_account_request(), list()) ::
          {:ok, put_admin_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_admin_account_errors()}
  def put_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin-account"
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
  Adds or overwrites the specified tags on the given resource.
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
      204
    )
  end

  @doc """
  Removes the specified tags from the given resource.
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
      204
    )
  end

  @doc """
  Updates the specified deployment.

  To prevent conflicting concurrent updates, provide the current `updateToken`.
  Use `isPublished` to publish the update or keep the deployment as a draft.
  """
  @spec update_deployment(map(), String.t() | atom(), update_deployment_input(), list()) ::
          {:ok, update_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_deployment_errors()}
  def update_deployment(%Client{} = client, deployment_identifier, input, options \\ []) do
    url_path = "/deployments/#{AWS.Util.encode_uri(deployment_identifier)}"
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
  Updates the specified policy.

  To prevent conflicting concurrent updates, provide the current `updateToken`.
  Use `isPublished` to publish the update or keep the policy as a draft.
  """
  @spec update_policy(map(), String.t() | atom(), update_policy_input(), list()) ::
          {:ok, update_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_policy_errors()}
  def update_policy(%Client{} = client, policy_identifier, input, options \\ []) do
    url_path = "/policies/#{AWS.Util.encode_uri(policy_identifier)}"
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
  Updates the specified rule.

  To prevent conflicting concurrent updates, provide the current `updateToken`.
  Use `isPublished` to publish the update or keep the rule as a draft.
  """
  @spec update_rule(map(), String.t() | atom(), update_rule_input(), list()) ::
          {:ok, update_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rule_errors()}
  def update_rule(%Client{} = client, rule_identifier, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(rule_identifier)}"
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
  Updates the specified scope.

  To prevent conflicting concurrent updates, provide the current `updateToken`.
  Use `isPublished` to publish the update or keep the scope as a draft.
  """
  @spec update_scope(map(), String.t() | atom(), update_scope_input(), list()) ::
          {:ok, update_scope_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_scope_errors()}
  def update_scope(%Client{} = client, scope_identifier, input, options \\ []) do
    url_path = "/scopes/#{AWS.Util.encode_uri(scope_identifier)}"
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
  Updates the specified template.

  To prevent conflicting concurrent updates, provide the current `updateToken`.
  Use `isPublished` to publish the update or keep the template as a draft.
  """
  @spec update_template(map(), String.t() | atom(), update_template_input(), list()) ::
          {:ok, update_template_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_template_errors()}
  def update_template(%Client{} = client, template_identifier, input, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_identifier)}"
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
