# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GuardDuty do
  @moduledoc """
  Amazon GuardDuty is a continuous security monitoring service that analyzes
  and processes the following data sources: VPC Flow Logs, AWS CloudTrail
  event logs, and DNS logs. It uses threat intelligence feeds (such as lists
  of malicious IPs and domains) and machine learning to identify unexpected,
  potentially unauthorized, and malicious activity within your AWS
  environment. This can include issues like escalations of privileges, uses
  of exposed credentials, or communication with malicious IPs, URLs, or
  domains. For example, GuardDuty can detect compromised EC2 instances that
  serve malware or mine bitcoin.

  GuardDuty also monitors AWS account access behavior for signs of
  compromise. Some examples of this are unauthorized infrastructure
  deployments such as EC2 instances deployed in a Region that has never been
  used, or unusual API calls like a password policy change to reduce password
  strength.

  GuardDuty informs you of the status of your AWS environment by producing
  security findings that you can view in the GuardDuty console or through
  Amazon CloudWatch events. For more information, see the * [Amazon GuardDuty
  User
  Guide](https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html)
  *.
  """

  @doc """
  Accepts the invitation to be monitored by a master GuardDuty account.
  """
  def accept_invitation(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/master"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Archives GuardDuty findings that are specified by the list of finding IDs.

  <note> Only the master account can archive findings. Member accounts don't
  have permission to archive findings from their accounts.

  </note>
  """
  def archive_findings(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/findings/archive"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a single Amazon GuardDuty detector. A detector is a resource that
  represents the GuardDuty service. To start using GuardDuty, you must create
  a detector in each Region where you enable the service. You can have only
  one detector per account per Region. All data sources are enabled in a new
  detector by default.
  """
  def create_detector(client, input, options \\ []) do
    path_ = "/detector"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a filter using the specified finding criteria.
  """
  def create_filter(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/filter"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new IPSet, which is called a trusted IP list in the console user
  interface. An IPSet is a list of IP addresses that are trusted for secure
  communication with AWS infrastructure and applications. GuardDuty doesn't
  generate findings for IP addresses that are included in IPSets. Only users
  from the master account can use this operation.
  """
  def create_i_p_set(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/ipset"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates member accounts of the current AWS account by specifying a list of
  AWS account IDs. This step is a prerequisite for managing the associated
  member accounts either by invitation or through an organization.

  When using `Create Members` as an organizations delegated administrator
  this action will enable GuardDuty in the added member accounts, with the
  exception of the organization master account, which must enable GuardDuty
  prior to being added as a member.

  If you are adding accounts by invitation use this action after GuardDuty
  has been enabled in potential member accounts and before using [ `Invite
  Members`
  ](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html).
  """
  def create_members(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a publishing destination to export findings to. The resource to
  export findings to must exist before you use this operation.
  """
  def create_publishing_destination(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/publishingDestination"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Generates example findings of types specified by the list of finding types.
  If 'NULL' is specified for `findingTypes`, the API generates example
  findings of all supported finding types.
  """
  def create_sample_findings(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/findings/create"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP
  addresses. GuardDuty generates findings based on ThreatIntelSets. Only
  users of the master account can use this operation.
  """
  def create_threat_intel_set(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/threatintelset"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Declines invitations sent to the current member account by AWS accounts
  specified by their account IDs.
  """
  def decline_invitations(client, input, options \\ []) do
    path_ = "/invitation/decline"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an Amazon GuardDuty detector that is specified by the detector ID.
  """
  def delete_detector(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the filter specified by the filter name.
  """
  def delete_filter(client, detector_id, filter_name, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/filter/#{URI.encode(filter_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the IPSet specified by the `ipSetId`. IPSets are called trusted IP
  lists in the console user interface.
  """
  def delete_i_p_set(client, detector_id, ip_set_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/ipset/#{URI.encode(ip_set_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes invitations sent to the current member account by AWS accounts
  specified by their account IDs.
  """
  def delete_invitations(client, input, options \\ []) do
    path_ = "/invitation/delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes GuardDuty member accounts (to the current GuardDuty master account)
  specified by the account IDs.
  """
  def delete_members(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member/delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the publishing definition with the specified `destinationId`.
  """
  def delete_publishing_destination(client, destination_id, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/publishingDestination/#{URI.encode(destination_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
  """
  def delete_threat_intel_set(client, detector_id, threat_intel_set_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/threatintelset/#{URI.encode(threat_intel_set_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Returns information about the account selected as the delegated
  administrator for GuardDuty.
  """
  def describe_organization_configuration(client, detector_id, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/admin"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns information about the publishing destination specified by the
  provided `destinationId`.
  """
  def describe_publishing_destination(client, destination_id, detector_id, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/publishingDestination/#{URI.encode(destination_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Disables an AWS account within the Organization as the GuardDuty delegated
  administrator.
  """
  def disable_organization_admin_account(client, input, options \\ []) do
    path_ = "/admin/disable"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates the current GuardDuty member account from its master account.
  """
  def disassociate_from_master_account(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/master/disassociate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates GuardDuty member accounts (to the current GuardDuty master
  account) specified by the account IDs.
  """
  def disassociate_members(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member/disassociate"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Enables an AWS account within the organization as the GuardDuty delegated
  administrator.
  """
  def enable_organization_admin_account(client, input, options \\ []) do
    path_ = "/admin/enable"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves an Amazon GuardDuty detector specified by the detectorId.
  """
  def get_detector(client, detector_id, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the details of the filter specified by the filter name.
  """
  def get_filter(client, detector_id, filter_name, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/filter/#{URI.encode(filter_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes Amazon GuardDuty findings specified by finding IDs.
  """
  def get_findings(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/findings/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Lists Amazon GuardDuty findings statistics for the specified detector ID.
  """
  def get_findings_statistics(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/findings/statistics"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves the IPSet specified by the `ipSetId`.
  """
  def get_i_p_set(client, detector_id, ip_set_id, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/ipset/#{URI.encode(ip_set_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the count of all GuardDuty membership invitations that were sent to
  the current member account except the currently accepted invitation.
  """
  def get_invitations_count(client, options \\ []) do
    path_ = "/invitation/count"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Provides the details for the GuardDuty master account associated with the
  current GuardDuty member account.
  """
  def get_master_account(client, detector_id, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/master"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes which data sources are enabled for the member account's detector.
  """
  def get_member_detectors(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member/detector/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves GuardDuty member accounts (to the current GuardDuty master
  account) specified by the account IDs.
  """
  def get_members(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member/get"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
  """
  def get_threat_intel_set(client, detector_id, threat_intel_set_id, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/threatintelset/#{URI.encode(threat_intel_set_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon GuardDuty usage statistics over the last 30 days for the
  specified detector ID. For newly enabled detectors or data sources the cost
  returned will include only the usage so far under 30 days, this may differ
  from the cost metrics in the console, which projects usage over 30 days to
  provide a monthly cost estimate. For more information see [Understanding
  How Usage Costs are
  Calculated](https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations).
  """
  def get_usage_statistics(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/usage/statistics"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Invites other AWS accounts (created as members of the current AWS account
  by CreateMembers) to enable GuardDuty, and allow the current AWS account to
  view and manage these accounts' GuardDuty findings on their behalf as the
  master account.
  """
  def invite_members(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member/invite"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
  """
  def list_detectors(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/detector"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of the current filters.
  """
  def list_filters(client, detector_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/filter"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon GuardDuty findings for the specified detector ID.
  """
  def list_findings(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/findings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Lists the IPSets of the GuardDuty service specified by the detector ID. If
  you use this operation from a member account, the IPSets returned are the
  IPSets from the associated master account.
  """
  def list_i_p_sets(client, detector_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/ipset"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists all GuardDuty membership invitations that were sent to the current
  AWS account.
  """
  def list_invitations(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/invitation"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists details about all member accounts for the current GuardDuty master
  account.
  """
  def list_members(client, detector_id, max_results \\ nil, next_token \\ nil, only_associated \\ nil, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member"
    headers = []
    query_ = []
    query_ = if !is_nil(only_associated) do
      [{"onlyAssociated", only_associated} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the accounts configured as GuardDuty delegated administrators.
  """
  def list_organization_admin_accounts(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/admin"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of publishing destinations associated with the specified
  `dectectorId`.
  """
  def list_publishing_destinations(client, detector_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/publishingDestination"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists tags for a resource. Tagging is currently supported for detectors,
  finding filters, IP sets, and threat intel sets, with a limit of 50 tags
  per resource. When invoked, this operation returns all assigned tags for a
  given resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the ThreatIntelSets of the GuardDuty service specified by the
  detector ID. If you use this operation from a member account, the
  ThreatIntelSets associated with the master account are returned.
  """
  def list_threat_intel_sets(client, detector_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/threatintelset"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Turns on GuardDuty monitoring of the specified member accounts. Use this
  operation to restart monitoring of accounts that you stopped monitoring
  with the `StopMonitoringMembers` operation.
  """
  def start_monitoring_members(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member/start"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Stops GuardDuty monitoring for the specified member accounts. Use the
  `StartMonitoringMembers` operation to restart monitoring for those
  accounts.
  """
  def stop_monitoring_members(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member/stop"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds tags to a resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Unarchives GuardDuty findings specified by the `findingIds`.
  """
  def unarchive_findings(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/findings/unarchive"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Removes tags from a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates the Amazon GuardDuty detector specified by the detectorId.
  """
  def update_detector(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the filter specified by the filter name.
  """
  def update_filter(client, detector_id, filter_name, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/filter/#{URI.encode(filter_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Marks the specified GuardDuty findings as useful or not useful.
  """
  def update_findings_feedback(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/findings/feedback"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the IPSet specified by the IPSet ID.
  """
  def update_i_p_set(client, detector_id, ip_set_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/ipset/#{URI.encode(ip_set_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Contains information on member accounts to be updated.
  """
  def update_member_detectors(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/member/detector/update"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the delegated administrator account with the values provided.
  """
  def update_organization_configuration(client, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/admin"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates information about the publishing destination specified by the
  `destinationId`.
  """
  def update_publishing_destination(client, destination_id, detector_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/publishingDestination/#{URI.encode(destination_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
  """
  def update_threat_intel_set(client, detector_id, threat_intel_set_id, input, options \\ []) do
    path_ = "/detector/#{URI.encode(detector_id)}/threatintelset/#{URI.encode(threat_intel_set_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "guardduty"}
    host = build_host("guardduty", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
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
