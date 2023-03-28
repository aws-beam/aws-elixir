# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecurityHub do
  @moduledoc """
  Security Hub provides you with a comprehensive view of the security state of
  your Amazon Web Services environment and resources.

  It also provides you with the readiness status of your environment based on
  controls from supported security standards. Security Hub collects security data
  from Amazon Web Services accounts, services, and integrated third-party products
  and helps you analyze security trends in your environment to identify the
  highest priority security issues. For more information about Security Hub, see
  the [Security HubUser Guide](https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html).

  When you use operations in the Security Hub API, the requests are executed only
  in the Amazon Web Services Region that is currently active or in the specific
  Amazon Web Services Region that you specify in your request. Any configuration
  or settings change that results from the operation is applied only to that
  Region. To make the same change in other Regions, run the same command for each
  Region in which you want to apply the change.

  For example, if your Region is set to `us-west-2`, when you use `CreateMembers`
  to add a member account to Security Hub, the association of the member account
  with the administrator account is created only in the `us-west-2` Region.
  Security Hub must be enabled for the member account in the same Region that the
  invitation was sent from.

  The following throttling limits apply to using Security Hub API operations.

    * `BatchEnableStandards` - `RateLimit` of 1 request per second.
  `BurstLimit` of 1 request per second.

    * `GetFindings` - `RateLimit` of 3 requests per second. `BurstLimit`
  of 6 requests per second.

    * `BatchImportFindings` - `RateLimit` of 10 requests per second.
  `BurstLimit` of 30 requests per second.

    * `BatchUpdateFindings` - `RateLimit` of 10 requests per second.
  `BurstLimit` of 30 requests per second.

    * `UpdateStandardsControl` - `RateLimit` of 1 request per second.
  `BurstLimit` of 5 requests per second.

    * All other operations - `RateLimit` of 10 requests per second.
  `BurstLimit` of 30 requests per second.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "securityhub",
      global?: false,
      protocol: "rest-json",
      service_id: "SecurityHub",
      signature_version: "v4",
      signing_name: "securityhub",
      target_prefix: nil
    }
  end

  @doc """
  Accepts the invitation to be a member account and be monitored by the Security
  Hub administrator account that the invitation was sent from.

  This operation is only used by member accounts that are not added through
  Organizations.

  When the member account accepts the invitation, permission is granted to the
  administrator account to view findings generated in the member account.
  """
  def accept_administrator_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/administrator"
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
      nil
    )
  end

  @doc """
  This method is deprecated.

  Instead, use `AcceptAdministratorInvitation`.

  The Security Hub console continues to use `AcceptInvitation`. It will eventually
  change to use `AcceptAdministratorInvitation`. Any IAM policies that
  specifically control access to this function must continue to use
  `AcceptInvitation`. You should also add `AcceptAdministratorInvitation` to your
  policies to ensure that the correct permissions are in place after the console
  begins to use `AcceptAdministratorInvitation`.

  Accepts the invitation to be a member account and be monitored by the Security
  Hub administrator account that the invitation was sent from.

  This operation is only used by member accounts that are not added through
  Organizations.

  When the member account accepts the invitation, permission is granted to the
  administrator account to view findings generated in the member account.
  """
  def accept_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/master"
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
      nil
    )
  end

  @doc """
  Disables the standards specified by the provided `StandardsSubscriptionArns`.

  For more information, see [Security Standards](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
  section of the *Security Hub User Guide*.
  """
  def batch_disable_standards(%Client{} = client, input, options \\ []) do
    url_path = "/standards/deregister"
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
      nil
    )
  end

  @doc """
  Enables the standards specified by the provided `StandardsArn`.

  To obtain the ARN for a standard, use the `DescribeStandards` operation.

  For more information, see the [Security Standards](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
  section of the *Security Hub User Guide*.
  """
  def batch_enable_standards(%Client{} = client, input, options \\ []) do
    url_path = "/standards/register"
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
      nil
    )
  end

  @doc """
  Provides details about a batch of security controls for the current Amazon Web
  Services account and Amazon Web Services Region.
  """
  def batch_get_security_controls(%Client{} = client, input, options \\ []) do
    url_path = "/securityControls/batchGet"
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
      nil
    )
  end

  @doc """
  For a batch of security controls and standards, identifies whether each control
  is currently enabled or disabled in a standard.
  """
  def batch_get_standards_control_associations(%Client{} = client, input, options \\ []) do
    url_path = "/associations/batchGet"
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
      nil
    )
  end

  @doc """
  Imports security findings generated by a finding provider into Security Hub.

  This action is requested by the finding provider to import its findings into
  Security Hub.

  `BatchImportFindings` must be called by one of the following:

    * The Amazon Web Services account that is associated with a finding
  if you are using the [default product ARN](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-custom-providers.html#securityhub-custom-providers-bfi-reqs)
  or are a partner sending findings from within a customer's Amazon Web Services
  account. In these cases, the identifier of the account that you are calling
  `BatchImportFindings` from needs to be the same as the `AwsAccountId` attribute
  for the finding.

    * An Amazon Web Services account that Security Hub has allow-listed
  for an official partner integration. In this case, you can call
  `BatchImportFindings` from the allow-listed account and send findings from
  different customer accounts in the same batch.

  The maximum allowed size for a finding is 240 Kb. An error is returned for any
  finding larger than 240 Kb.

  After a finding is created, `BatchImportFindings` cannot be used to update the
  following finding fields and objects, which Security Hub customers use to manage
  their investigation workflow.

    * `Note`

    * `UserDefinedFields`

    * `VerificationState`

    * `Workflow`

  Finding providers also should not use `BatchImportFindings` to update the
  following attributes.

    * `Confidence`

    * `Criticality`

    * `RelatedFindings`

    * `Severity`

    * `Types`

  Instead, finding providers use `FindingProviderFields` to provide values for
  these attributes.
  """
  def batch_import_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/import"
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
      nil
    )
  end

  @doc """
  Used by Security Hub customers to update information about their investigation
  into a finding.

  Requested by administrator accounts or member accounts. Administrator accounts
  can update findings for their account and their member accounts. Member accounts
  can update findings for their account.

  Updates from `BatchUpdateFindings` do not affect the value of `UpdatedAt` for a
  finding.

  Administrator and member accounts can use `BatchUpdateFindings` to update the
  following finding fields and objects.

    * `Confidence`

    * `Criticality`

    * `Note`

    * `RelatedFindings`

    * `Severity`

    * `Types`

    * `UserDefinedFields`

    * `VerificationState`

    * `Workflow`

  You can configure IAM policies to restrict access to fields and field values.
  For example, you might not want member accounts to be able to suppress findings
  or change the finding severity. See [Configuring access to BatchUpdateFindings](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access)
  in the *Security Hub User Guide*.
  """
  def batch_update_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/batchupdate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  For a batch of security controls and standards, this operation updates the
  enablement status of a control in a standard.
  """
  def batch_update_standards_control_associations(%Client{} = client, input, options \\ []) do
    url_path = "/associations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a custom action target in Security Hub.

  You can use custom actions on findings and insights in Security Hub to trigger
  target actions in Amazon CloudWatch Events.
  """
  def create_action_target(%Client{} = client, input, options \\ []) do
    url_path = "/actionTargets"
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
      nil
    )
  end

  @doc """
  Used to enable finding aggregation.

  Must be called from the aggregation Region.

  For more details about cross-Region replication, see [Configuring finding aggregation](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html)
  in the *Security Hub User Guide*.
  """
  def create_finding_aggregator(%Client{} = client, input, options \\ []) do
    url_path = "/findingAggregator/create"
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
      nil
    )
  end

  @doc """
  Creates a custom insight in Security Hub.

  An insight is a consolidation of findings that relate to a security issue that
  requires attention or remediation.

  To group the related findings in the insight, use the `GroupByAttribute`.
  """
  def create_insight(%Client{} = client, input, options \\ []) do
    url_path = "/insights"
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
      nil
    )
  end

  @doc """
  Creates a member association in Security Hub between the specified accounts and
  the account used to make the request, which is the administrator account.

  If you are integrated with Organizations, then the administrator account is
  designated by the organization management account.

  `CreateMembers` is always used to add accounts that are not organization
  members.

  For accounts that are managed using Organizations, `CreateMembers` is only used
  in the following cases:

    * Security Hub is not configured to automatically add new
  organization accounts.

    * The account was disassociated or deleted in Security Hub.

  This action can only be used by an account that has Security Hub enabled. To
  enable Security Hub, you can use the `EnableSecurityHub` operation.

  For accounts that are not organization members, you create the account
  association and then send an invitation to the member account. To send the
  invitation, you use the `InviteMembers` operation. If the account owner accepts
  the invitation, the account becomes a member account in Security Hub.

  Accounts that are managed using Organizations do not receive an invitation. They
  automatically become a member account in Security Hub.

    * If the organization account does not have Security Hub enabled,
  then Security Hub and the default standards are automatically enabled. Note that
  Security Hub cannot be enabled automatically for the organization management
  account. The organization management account must enable Security Hub before the
  administrator account enables it as a member account.

    * For organization accounts that already have Security Hub enabled,
  Security Hub does not make any other changes to those accounts. It does not
  change their enabled standards or controls.

  A permissions policy is added that permits the administrator account to view the
  findings generated in the member account.

  To remove the association between the administrator and member accounts, use the
  `DisassociateFromMasterAccount` or `DisassociateMembers` operation.
  """
  def create_members(%Client{} = client, input, options \\ []) do
    url_path = "/members"
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
      nil
    )
  end

  @doc """
  Declines invitations to become a member account.

  A prospective member account uses this operation to decline an invitation to
  become a member.

  This operation is only called by member accounts that aren't part of an
  organization. Organization accounts don't receive invitations.
  """
  def decline_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/decline"
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
      nil
    )
  end

  @doc """
  Deletes a custom action target from Security Hub.

  Deleting a custom action target does not affect any findings or insights that
  were already sent to Amazon CloudWatch Events using the custom action.
  """
  def delete_action_target(%Client{} = client, action_target_arn, input, options \\ []) do
    url_path = "/actionTargets/#{AWS.Util.encode_multi_segment_uri(action_target_arn)}"
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
      nil
    )
  end

  @doc """
  Deletes a finding aggregator.

  When you delete the finding aggregator, you stop finding aggregation.

  When you stop finding aggregation, findings that were already aggregated to the
  aggregation Region are still visible from the aggregation Region. New findings
  and finding updates are not aggregated.
  """
  def delete_finding_aggregator(%Client{} = client, finding_aggregator_arn, input, options \\ []) do
    url_path =
      "/findingAggregator/delete/#{AWS.Util.encode_multi_segment_uri(finding_aggregator_arn)}"

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
      nil
    )
  end

  @doc """
  Deletes the insight specified by the `InsightArn`.
  """
  def delete_insight(%Client{} = client, insight_arn, input, options \\ []) do
    url_path = "/insights/#{AWS.Util.encode_multi_segment_uri(insight_arn)}"
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
      nil
    )
  end

  @doc """
  Deletes invitations received by the Amazon Web Services account to become a
  member account.

  A Security Hub administrator account can use this operation to delete
  invitations sent to one or more member accounts.

  This operation is only used to delete invitations that are sent to member
  accounts that aren't part of an organization. Organization accounts don't
  receive invitations.
  """
  def delete_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/delete"
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
      nil
    )
  end

  @doc """
  Deletes the specified member accounts from Security Hub.

  Can be used to delete member accounts that belong to an organization as well as
  member accounts that were invited manually.
  """
  def delete_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/delete"
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
      nil
    )
  end

  @doc """
  Returns a list of the custom action targets in Security Hub in your account.
  """
  def describe_action_targets(%Client{} = client, input, options \\ []) do
    url_path = "/actionTargets/get"
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
      nil
    )
  end

  @doc """
  Returns details about the Hub resource in your account, including the `HubArn`
  and the time when you enabled Security Hub.
  """
  def describe_hub(%Client{} = client, hub_arn \\ nil, options \\ []) do
    url_path = "/accounts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(hub_arn) do
        [{"HubArn", hub_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about the Organizations configuration for Security Hub.

  Can only be called from a Security Hub administrator account.
  """
  def describe_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/organization/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about product integrations in Security Hub.

  You can optionally provide an integration ARN. If you provide an integration
  ARN, then the results only include that integration.

  If you do not provide an integration ARN, then the results include all of the
  available product integrations.
  """
  def describe_products(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        product_arn \\ nil,
        options \\ []
      ) do
    url_path = "/products"
    headers = []
    query_params = []

    query_params =
      if !is_nil(product_arn) do
        [{"ProductArn", product_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the available standards in Security Hub.

  For each standard, the results include the standard ARN, the name, and a
  description.
  """
  def describe_standards(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/standards"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of security standards controls.

  For each control, the results include information about whether it is currently
  enabled, the severity, and a link to remediation information.
  """
  def describe_standards_controls(
        %Client{} = client,
        standards_subscription_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/standards/controls/#{AWS.Util.encode_multi_segment_uri(standards_subscription_arn)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Disables the integration of the specified product with Security Hub.

  After the integration is disabled, findings from that product are no longer sent
  to Security Hub.
  """
  def disable_import_findings_for_product(
        %Client{} = client,
        product_subscription_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/productSubscriptions/#{AWS.Util.encode_multi_segment_uri(product_subscription_arn)}"

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
      nil
    )
  end

  @doc """
  Disables a Security Hub administrator account.

  Can only be called by the organization management account.
  """
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/organization/admin/disable"
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
      nil
    )
  end

  @doc """
  Disables Security Hub in your account only in the current Region.

  To disable Security Hub in all Regions, you must submit one request per Region
  where you have enabled Security Hub.

  When you disable Security Hub for an administrator account, it doesn't disable
  Security Hub for any associated member accounts.

  When you disable Security Hub, your existing findings and insights and any
  Security Hub configuration settings are deleted after 90 days and cannot be
  recovered. Any standards that were enabled are disabled, and your administrator
  and member account associations are removed.

  If you want to save your existing findings, you must export them before you
  disable Security Hub.
  """
  def disable_security_hub(%Client{} = client, input, options \\ []) do
    url_path = "/accounts"
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
      nil
    )
  end

  @doc """
  Disassociates the current Security Hub member account from the associated
  administrator account.

  This operation is only used by accounts that are not part of an organization.
  For organization accounts, only the administrator account can disassociate a
  member account.
  """
  def disassociate_from_administrator_account(%Client{} = client, input, options \\ []) do
    url_path = "/administrator/disassociate"
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
      nil
    )
  end

  @doc """
  This method is deprecated.

  Instead, use `DisassociateFromAdministratorAccount`.

  The Security Hub console continues to use `DisassociateFromMasterAccount`. It
  will eventually change to use `DisassociateFromAdministratorAccount`. Any IAM
  policies that specifically control access to this function must continue to use
  `DisassociateFromMasterAccount`. You should also add
  `DisassociateFromAdministratorAccount` to your policies to ensure that the
  correct permissions are in place after the console begins to use
  `DisassociateFromAdministratorAccount`.

  Disassociates the current Security Hub member account from the associated
  administrator account.

  This operation is only used by accounts that are not part of an organization.
  For organization accounts, only the administrator account can disassociate a
  member account.
  """
  def disassociate_from_master_account(%Client{} = client, input, options \\ []) do
    url_path = "/master/disassociate"
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
      nil
    )
  end

  @doc """
  Disassociates the specified member accounts from the associated administrator
  account.

  Can be used to disassociate both accounts that are managed using Organizations
  and accounts that were invited manually.
  """
  def disassociate_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/disassociate"
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
      nil
    )
  end

  @doc """
  Enables the integration of a partner product with Security Hub.

  Integrated products send findings to Security Hub.

  When you enable a product integration, a permissions policy that grants
  permission for the product to send findings to Security Hub is applied.
  """
  def enable_import_findings_for_product(%Client{} = client, input, options \\ []) do
    url_path = "/productSubscriptions"
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
      nil
    )
  end

  @doc """
  Designates the Security Hub administrator account for an organization.

  Can only be called by the organization management account.
  """
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/organization/admin/enable"
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
      nil
    )
  end

  @doc """
  Enables Security Hub for your account in the current Region or the Region you
  specify in the request.

  When you enable Security Hub, you grant to Security Hub the permissions
  necessary to gather findings from other services that are integrated with
  Security Hub.

  When you use the `EnableSecurityHub` operation to enable Security Hub, you also
  automatically enable the following standards:

    * Center for Internet Security (CIS) Amazon Web Services Foundations
  Benchmark v1.2.0

    * Amazon Web Services Foundational Security Best Practices

  Other standards are not automatically enabled.

  To opt out of automatically enabled standards, set `EnableDefaultStandards` to
  `false`.

  After you enable Security Hub, to enable a standard, use the
  `BatchEnableStandards` operation. To disable a standard, use the
  `BatchDisableStandards` operation.

  To learn more, see the [setup information](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html)
  in the *Security Hub User Guide*.
  """
  def enable_security_hub(%Client{} = client, input, options \\ []) do
    url_path = "/accounts"
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
      nil
    )
  end

  @doc """
  Provides the details for the Security Hub administrator account for the current
  member account.

  Can be used by both member accounts that are managed using Organizations and
  accounts that were invited manually.
  """
  def get_administrator_account(%Client{} = client, options \\ []) do
    url_path = "/administrator"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the standards that are currently enabled.
  """
  def get_enabled_standards(%Client{} = client, input, options \\ []) do
    url_path = "/standards/get"
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
      nil
    )
  end

  @doc """
  Returns the current finding aggregation configuration.
  """
  def get_finding_aggregator(%Client{} = client, finding_aggregator_arn, options \\ []) do
    url_path =
      "/findingAggregator/get/#{AWS.Util.encode_multi_segment_uri(finding_aggregator_arn)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of findings that match the specified criteria.

  If finding aggregation is enabled, then when you call `GetFindings` from the
  aggregation Region, the results include all of the matching findings from both
  the aggregation Region and the linked Regions.
  """
  def get_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings"
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
      nil
    )
  end

  @doc """
  Lists the results of the Security Hub insight specified by the insight ARN.
  """
  def get_insight_results(%Client{} = client, insight_arn, options \\ []) do
    url_path = "/insights/results/#{AWS.Util.encode_multi_segment_uri(insight_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists and describes insights for the specified insight ARNs.
  """
  def get_insights(%Client{} = client, input, options \\ []) do
    url_path = "/insights/get"
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
      nil
    )
  end

  @doc """
  Returns the count of all Security Hub membership invitations that were sent to
  the current member account, not including the currently accepted invitation.
  """
  def get_invitations_count(%Client{} = client, options \\ []) do
    url_path = "/invitations/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  This method is deprecated.

  Instead, use `GetAdministratorAccount`.

  The Security Hub console continues to use `GetMasterAccount`. It will eventually
  change to use `GetAdministratorAccount`. Any IAM policies that specifically
  control access to this function must continue to use `GetMasterAccount`. You
  should also add `GetAdministratorAccount` to your policies to ensure that the
  correct permissions are in place after the console begins to use
  `GetAdministratorAccount`.

  Provides the details for the Security Hub administrator account for the current
  member account.

  Can be used by both member accounts that are managed using Organizations and
  accounts that were invited manually.
  """
  def get_master_account(%Client{} = client, options \\ []) do
    url_path = "/master"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the details for the Security Hub member accounts for the specified
  account IDs.

  An administrator account can be either the delegated Security Hub administrator
  account for an organization or an administrator account that enabled Security
  Hub manually.

  The results include both member accounts that are managed using Organizations
  and accounts that were invited manually.
  """
  def get_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/get"
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
      nil
    )
  end

  @doc """
  Invites other Amazon Web Services accounts to become member accounts for the
  Security Hub administrator account that the invitation is sent from.

  This operation is only used to invite accounts that do not belong to an
  organization. Organization accounts do not receive invitations.

  Before you can use this action to invite a member, you must first use the
  `CreateMembers` action to create the member account in Security Hub.

  When the account owner enables Security Hub and accepts the invitation to become
  a member account, the administrator account can view the findings generated from
  the member account.
  """
  def invite_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/invite"
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
      nil
    )
  end

  @doc """
  Lists all findings-generating solutions (products) that you are subscribed to
  receive findings from in Security Hub.
  """
  def list_enabled_products_for_import(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/productSubscriptions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  If finding aggregation is enabled, then `ListFindingAggregators` returns the ARN
  of the finding aggregator.

  You can run this operation from any Region.
  """
  def list_finding_aggregators(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/findingAggregator/list"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all Security Hub membership invitations that were sent to the current
  Amazon Web Services account.

  This operation is only used by accounts that are managed by invitation. Accounts
  that are managed using the integration with Organizations do not receive
  invitations.
  """
  def list_invitations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/invitations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists details about all member accounts for the current Security Hub
  administrator account.

  The results include both member accounts that belong to an organization and
  member accounts that were invited manually.
  """
  def list_members(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        only_associated \\ nil,
        options \\ []
      ) do
    url_path = "/members"
    headers = []
    query_params = []

    query_params =
      if !is_nil(only_associated) do
        [{"OnlyAssociated", only_associated} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the Security Hub administrator accounts.

  Can only be called by the organization management account.
  """
  def list_organization_admin_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/organization/admin"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all of the security controls that apply to a specified standard.
  """
  def list_security_control_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        standards_arn \\ nil,
        options \\ []
      ) do
    url_path = "/securityControls/definitions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(standards_arn) do
        [{"StandardsArn", standards_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Specifies whether a control is currently enabled or disabled in each enabled
  standard in the calling account.
  """
  def list_standards_control_associations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        security_control_id,
        options \\ []
      ) do
    url_path = "/associations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(security_control_id) do
        [{"SecurityControlId", security_control_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of tags associated with a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Adds one or more tags to a resource.
  """
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
      nil
    )
  end

  @doc """
  Removes one or more tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      nil
    )
  end

  @doc """
  Updates the name and description of a custom action target in Security Hub.
  """
  def update_action_target(%Client{} = client, action_target_arn, input, options \\ []) do
    url_path = "/actionTargets/#{AWS.Util.encode_multi_segment_uri(action_target_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the finding aggregation configuration.

  Used to update the Region linking mode and the list of included or excluded
  Regions. You cannot use `UpdateFindingAggregator` to change the aggregation
  Region.

  You must run `UpdateFindingAggregator` from the current aggregation Region.
  """
  def update_finding_aggregator(%Client{} = client, input, options \\ []) do
    url_path = "/findingAggregator/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  `UpdateFindings` is deprecated.

  Instead of `UpdateFindings`, use `BatchUpdateFindings`.

  Updates the `Note` and `RecordState` of the Security Hub-aggregated findings
  that the filter attributes specify. Any member account that can view the finding
  also sees the update to the finding.
  """
  def update_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the Security Hub insight identified by the specified insight ARN.
  """
  def update_insight(%Client{} = client, insight_arn, input, options \\ []) do
    url_path = "/insights/#{AWS.Util.encode_multi_segment_uri(insight_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Used to update the configuration related to Organizations.

  Can only be called from a Security Hub administrator account.
  """
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/organization/configuration"
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
      nil
    )
  end

  @doc """
  Updates configuration options for Security Hub.
  """
  def update_security_hub_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/accounts"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Used to control whether an individual security standard control is enabled or
  disabled.
  """
  def update_standards_control(%Client{} = client, standards_control_arn, input, options \\ []) do
    url_path = "/standards/control/#{AWS.Util.encode_multi_segment_uri(standards_control_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
