# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SecurityHub do
  @moduledoc """
  Security Hub provides you with a comprehensive view of the security state
  of your AWS environment and resources. It also provides you with the
  readiness status of your environment based on controls from supported
  security standards. Security Hub collects security data from AWS accounts,
  services, and integrated third-party products and helps you analyze
  security trends in your environment to identify the highest priority
  security issues. For more information about Security Hub, see the * [AWS
  Security Hub User
  Guide](https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html)
  *.

  When you use operations in the Security Hub API, the requests are executed
  only in the AWS Region that is currently active or in the specific AWS
  Region that you specify in your request. Any configuration or settings
  change that results from the operation is applied only to that Region. To
  make the same change in other Regions, execute the same command for each
  Region to apply the change to.

  For example, if your Region is set to `us-west-2`, when you use `
  `CreateMembers` ` to add a member account to Security Hub, the association
  of the member account with the master account is created only in the
  `us-west-2` Region. Security Hub must be enabled for the member account in
  the same Region that the invitation was sent from.

  The following throttling limits apply to using Security Hub API operations.

  <ul> <li> ` `BatchEnableStandards` ` - `RateLimit` of 1 request per second,
  `BurstLimit` of 1 request per second.

  </li> <li> ` `GetFindings` ` - `RateLimit` of 3 requests per second.
  `BurstLimit` of 6 requests per second.

  </li> <li> ` `UpdateFindings` ` - `RateLimit` of 1 request per second.
  `BurstLimit` of 5 requests per second.

  </li> <li> ` `UpdateStandardsControl` ` - `RateLimit` of 1 request per
  second, `BurstLimit` of 5 requests per second.

  </li> <li> All other operations - `RateLimit` of 10 requests per second.
  `BurstLimit` of 30 requests per second.

  </li> </ul>
  """

  @doc """
  Accepts the invitation to be a member account and be monitored by the
  Security Hub master account that the invitation was sent from.

  When the member account accepts the invitation, permission is granted to
  the master account to view findings generated in the member account.
  """
  def accept_invitation(client, input, options \\ []) do
    path_ = "/master"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disables the standards specified by the provided
  `StandardsSubscriptionArns`.

  For more information, see [Security
  Standards](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
  section of the *AWS Security Hub User Guide*.
  """
  def batch_disable_standards(client, input, options \\ []) do
    path_ = "/standards/deregister"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enables the standards specified by the provided `StandardsArn`. To obtain
  the ARN for a standard, use the ` `DescribeStandards` ` operation.

  For more information, see the [Security
  Standards](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html)
  section of the *AWS Security Hub User Guide*.
  """
  def batch_enable_standards(client, input, options \\ []) do
    path_ = "/standards/register"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Imports security findings generated from an integrated third-party product
  into Security Hub. This action is requested by the integrated product to
  import its findings into Security Hub.

  The maximum allowed size for a finding is 240 Kb. An error is returned for
  any finding larger than 240 Kb.

  After a finding is created, `BatchImportFindings` cannot be used to update
  the following finding fields and objects, which Security Hub customers use
  to manage their investigation workflow.

  <ul> <li> `Confidence`

  </li> <li> `Criticality`

  </li> <li> `Note`

  </li> <li> `RelatedFindings`

  </li> <li> `Severity`

  </li> <li> `Types`

  </li> <li> `UserDefinedFields`

  </li> <li> `VerificationState`

  </li> <li> `Workflow`

  </li> </ul>
  """
  def batch_import_findings(client, input, options \\ []) do
    path_ = "/findings/import"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Used by Security Hub customers to update information about their
  investigation into a finding. Requested by master accounts or member
  accounts. Master accounts can update findings for their account and their
  member accounts. Member accounts can update findings for their account.

  Updates from `BatchUpdateFindings` do not affect the value of `UpdatedAt`
  for a finding.

  Master and member accounts can use `BatchUpdateFindings` to update the
  following finding fields and objects.

  <ul> <li> `Confidence`

  </li> <li> `Criticality`

  </li> <li> `Note`

  </li> <li> `RelatedFindings`

  </li> <li> `Severity`

  </li> <li> `Types`

  </li> <li> `UserDefinedFields`

  </li> <li> `VerificationState`

  </li> <li> `Workflow`

  </li> </ul> You can configure IAM policies to restrict access to fields and
  field values. For example, you might not want member accounts to be able to
  suppress findings or change the finding severity. See [Configuring access
  to
  BatchUpdateFindings](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-update-batchupdatefindings.html#batchupdatefindings-configure-access)
  in the *AWS Security Hub User Guide*.
  """
  def batch_update_findings(client, input, options \\ []) do
    path_ = "/findings/batchupdate"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a custom action target in Security Hub.

  You can use custom actions on findings and insights in Security Hub to
  trigger target actions in Amazon CloudWatch Events.
  """
  def create_action_target(client, input, options \\ []) do
    path_ = "/actionTargets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a custom insight in Security Hub. An insight is a consolidation of
  findings that relate to a security issue that requires attention or
  remediation.

  To group the related findings in the insight, use the `GroupByAttribute`.
  """
  def create_insight(client, input, options \\ []) do
    path_ = "/insights"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a member association in Security Hub between the specified accounts
  and the account used to make the request, which is the master account. To
  successfully create a member, you must use this action from an account that
  already has Security Hub enabled. To enable Security Hub, you can use the `
  `EnableSecurityHub` ` operation.

  After you use `CreateMembers` to create member account associations in
  Security Hub, you must use the ` `InviteMembers` ` operation to invite the
  accounts to enable Security Hub and become member accounts in Security Hub.

  If the account owner accepts the invitation, the account becomes a member
  account in Security Hub. A permissions policy is added that permits the
  master account to view the findings generated in the member account. When
  Security Hub is enabled in the invited account, findings start to be sent
  to both the member and master accounts.

  To remove the association between the master and member accounts, use the `
  `DisassociateFromMasterAccount` ` or ` `DisassociateMembers` ` operation.
  """
  def create_members(client, input, options \\ []) do
    path_ = "/members"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Declines invitations to become a member account.
  """
  def decline_invitations(client, input, options \\ []) do
    path_ = "/invitations/decline"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a custom action target from Security Hub.

  Deleting a custom action target does not affect any findings or insights
  that were already sent to Amazon CloudWatch Events using the custom action.
  """
  def delete_action_target(client, action_target_arn, input, options \\ []) do
    path_ = "/actionTargets/#{AWS.Util.encode_uri(action_target_arn, true)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the insight specified by the `InsightArn`.
  """
  def delete_insight(client, insight_arn, input, options \\ []) do
    path_ = "/insights/#{AWS.Util.encode_uri(insight_arn, true)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes invitations received by the AWS account to become a member account.
  """
  def delete_invitations(client, input, options \\ []) do
    path_ = "/invitations/delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the specified member accounts from Security Hub.
  """
  def delete_members(client, input, options \\ []) do
    path_ = "/members/delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of the custom action targets in Security Hub in your
  account.
  """
  def describe_action_targets(client, input, options \\ []) do
    path_ = "/actionTargets/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns details about the Hub resource in your account, including the
  `HubArn` and the time when you enabled Security Hub.
  """
  def describe_hub(client, hub_arn \\ nil, options \\ []) do
    path_ = "/accounts"
    headers = []
    query_ = []
    query_ = if !is_nil(hub_arn) do
      [{"HubArn", hub_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about the available products that you can subscribe to
  and integrate with Security Hub in order to consolidate findings.
  """
  def describe_products(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/products"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of the available standards in Security Hub.

  For each standard, the results include the standard ARN, the name, and a
  description.
  """
  def describe_standards(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/standards"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of security standards controls.

  For each control, the results include information about whether it is
  currently enabled, the severity, and a link to remediation information.
  """
  def describe_standards_controls(client, standards_subscription_arn, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/standards/controls/#{AWS.Util.encode_uri(standards_subscription_arn, true)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Disables the integration of the specified product with Security Hub. After
  the integration is disabled, findings from that product are no longer sent
  to Security Hub.
  """
  def disable_import_findings_for_product(client, product_subscription_arn, input, options \\ []) do
    path_ = "/productSubscriptions/#{AWS.Util.encode_uri(product_subscription_arn, true)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disables Security Hub in your account only in the current Region. To
  disable Security Hub in all Regions, you must submit one request per Region
  where you have enabled Security Hub.

  When you disable Security Hub for a master account, it doesn't disable
  Security Hub for any associated member accounts.

  When you disable Security Hub, your existing findings and insights and any
  Security Hub configuration settings are deleted after 90 days and cannot be
  recovered. Any standards that were enabled are disabled, and your master
  and member account associations are removed.

  If you want to save your existing findings, you must export them before you
  disable Security Hub.
  """
  def disable_security_hub(client, input, options \\ []) do
    path_ = "/accounts"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disassociates the current Security Hub member account from the associated
  master account.
  """
  def disassociate_from_master_account(client, input, options \\ []) do
    path_ = "/master/disassociate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disassociates the specified member accounts from the associated master
  account.
  """
  def disassociate_members(client, input, options \\ []) do
    path_ = "/members/disassociate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enables the integration of a partner product with Security Hub. Integrated
  products send findings to Security Hub.

  When you enable a product integration, a permissions policy that grants
  permission for the product to send findings to Security Hub is applied.
  """
  def enable_import_findings_for_product(client, input, options \\ []) do
    path_ = "/productSubscriptions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enables Security Hub for your account in the current Region or the Region
  you specify in the request.

  When you enable Security Hub, you grant to Security Hub the permissions
  necessary to gather findings from other services that are integrated with
  Security Hub.

  When you use the `EnableSecurityHub` operation to enable Security Hub, you
  also automatically enable the following standards.

  <ul> <li> CIS AWS Foundations

  </li> <li> AWS Foundational Security Best Practices

  </li> </ul> You do not enable the Payment Card Industry Data Security
  Standard (PCI DSS) standard.

  To not enable the automatically enabled standards, set
  `EnableDefaultStandards` to `false`.

  After you enable Security Hub, to enable a standard, use the `
  `BatchEnableStandards` ` operation. To disable a standard, use the `
  `BatchDisableStandards` ` operation.

  To learn more, see [Setting Up AWS Security
  Hub](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-settingup.html)
  in the *AWS Security Hub User Guide*.
  """
  def enable_security_hub(client, input, options \\ []) do
    path_ = "/accounts"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of the standards that are currently enabled.
  """
  def get_enabled_standards(client, input, options \\ []) do
    path_ = "/standards/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of findings that match the specified criteria.
  """
  def get_findings(client, input, options \\ []) do
    path_ = "/findings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the results of the Security Hub insight specified by the insight ARN.
  """
  def get_insight_results(client, insight_arn, options \\ []) do
    path_ = "/insights/results/#{AWS.Util.encode_uri(insight_arn, true)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists and describes insights for the specified insight ARNs.
  """
  def get_insights(client, input, options \\ []) do
    path_ = "/insights/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns the count of all Security Hub membership invitations that were sent
  to the current member account, not including the currently accepted
  invitation.
  """
  def get_invitations_count(client, options \\ []) do
    path_ = "/invitations/count"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides the details for the Security Hub master account for the current
  member account.
  """
  def get_master_account(client, options \\ []) do
    path_ = "/master"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the details for the Security Hub member accounts for the specified
  account IDs.
  """
  def get_members(client, input, options \\ []) do
    path_ = "/members/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Invites other AWS accounts to become member accounts for the Security Hub
  master account that the invitation is sent from.

  Before you can use this action to invite a member, you must first use the `
  `CreateMembers` ` action to create the member account in Security Hub.

  When the account owner accepts the invitation to become a member account
  and enables Security Hub, the master account can view the findings
  generated from the member account.
  """
  def invite_members(client, input, options \\ []) do
    path_ = "/members/invite"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists all findings-generating solutions (products) that you are subscribed
  to receive findings from in Security Hub.
  """
  def list_enabled_products_for_import(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/productSubscriptions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all Security Hub membership invitations that were sent to the current
  AWS account.
  """
  def list_invitations(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/invitations"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists details about all member accounts for the current Security Hub master
  account.
  """
  def list_members(client, max_results \\ nil, next_token \\ nil, only_associated \\ nil, options \\ []) do
    path_ = "/members"
    headers = []
    query_ = []
    query_ = if !is_nil(only_associated) do
      [{"OnlyAssociated", only_associated} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"MaxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of tags associated with a resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Adds one or more tags to a resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes one or more tags from a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the name and description of a custom action target in Security Hub.
  """
  def update_action_target(client, action_target_arn, input, options \\ []) do
    path_ = "/actionTargets/#{AWS.Util.encode_uri(action_target_arn, true)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  `UpdateFindings` is deprecated. Instead of `UpdateFindings`, use
  `BatchUpdateFindings`.

  Updates the `Note` and `RecordState` of the Security Hub-aggregated
  findings that the filter attributes specify. Any member account that can
  view the finding also sees the update to the finding.
  """
  def update_findings(client, input, options \\ []) do
    path_ = "/findings"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the Security Hub insight identified by the specified insight ARN.
  """
  def update_insight(client, insight_arn, input, options \\ []) do
    path_ = "/insights/#{AWS.Util.encode_uri(insight_arn, true)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates configuration options for Security Hub.
  """
  def update_security_hub_configuration(client, input, options \\ []) do
    path_ = "/accounts"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @doc """
  Used to control whether an individual security standard control is enabled
  or disabled.
  """
  def update_standards_control(client, standards_control_arn, input, options \\ []) do
    path_ = "/standards/control/#{AWS.Util.encode_uri(standards_control_arn, true)}"
    headers = []
    query_ = []
    request(client, :patch, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "securityhub"}
    host = build_host("securityhub", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    AWS.HTTP.request(method, url, payload, headers, options, success_status_code)
  end



  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
