# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GuardDuty do
  @moduledoc """
  Amazon GuardDuty is a continuous security monitoring service that analyzes and
  processes the following foundational data sources - VPC flow logs, Amazon Web
  Services CloudTrail management event logs, CloudTrail S3 data event logs, EKS
  audit logs, DNS logs, Amazon EBS volume data, runtime activity belonging to
  container workloads, such as Amazon EKS, Amazon ECS (including Amazon Web
  Services Fargate), and Amazon EC2 instances.

  It uses threat intelligence feeds, such as lists of malicious IPs and domains,
  and machine learning to identify unexpected, potentially unauthorized, and
  malicious activity within your Amazon Web Services environment. This can include
  issues like escalations of privileges, uses of exposed credentials, or
  communication with malicious IPs, domains, or presence of malware on your Amazon
  EC2 instances and container workloads. For example, GuardDuty can detect
  compromised EC2 instances and container workloads serving malware, or mining
  bitcoin.

  GuardDuty also monitors Amazon Web Services account access behavior for signs of
  compromise, such as unauthorized infrastructure deployments like EC2 instances
  deployed in a Region that has never been used, or unusual API calls like a
  password policy change to reduce password strength.

  GuardDuty informs you about the status of your Amazon Web Services environment
  by producing security findings that you can view in the GuardDuty console or
  through Amazon EventBridge. For more information, see the * [Amazon GuardDuty User
  Guide](https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html)
  *.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "guardduty",
      global?: false,
      protocol: "rest-json",
      service_id: "GuardDuty",
      signature_version: "v4",
      signing_name: "guardduty",
      target_prefix: nil
    }
  end

  @doc """
  Accepts the invitation to be a member account and get monitored by a GuardDuty
  administrator account that sent the invitation.
  """
  def accept_administrator_invitation(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator"
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
  Accepts the invitation to be monitored by a GuardDuty administrator account.
  """
  def accept_invitation(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master"
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
  Archives GuardDuty findings that are specified by the list of finding IDs.

  Only the administrator account can archive findings. Member accounts don't have
  permission to archive findings from their accounts.
  """
  def archive_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/archive"
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
  Creates a single Amazon GuardDuty detector.

  A detector is a resource that represents the GuardDuty service. To start using
  GuardDuty, you must create a detector in each Region where you enable the
  service. You can have only one detector per account per Region. All data sources
  are enabled in a new detector by default.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def create_detector(%Client{} = client, input, options \\ []) do
    url_path = "/detector"
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
  Creates a filter using the specified finding criteria.

  The maximum number of saved filters per Amazon Web Services account per Region
  is 100. For more information, see [Quotas for GuardDuty](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_limits.html).
  """
  def create_filter(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/filter"
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
  Creates a new IPSet, which is called a trusted IP list in the console user
  interface.

  An IPSet is a list of IP addresses that are trusted for secure communication
  with Amazon Web Services infrastructure and applications. GuardDuty doesn't
  generate findings for IP addresses that are included in IPSets. Only users from
  the administrator account can use this operation.
  """
  def create_ip_set(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset"
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
  Creates member accounts of the current Amazon Web Services account by specifying
  a list of Amazon Web Services account IDs.

  This step is a prerequisite for managing the associated member accounts either
  by invitation or through an organization.

  As a delegated administrator, using `CreateMembers` will enable GuardDuty in the
  added member accounts, with the exception of the organization delegated
  administrator account. A delegated administrator must enable GuardDuty prior to
  being added as a member.

  When you use CreateMembers as an Organizations delegated administrator,
  GuardDuty applies your organization's auto-enable settings to the member
  accounts in this request, irrespective of the accounts being new or existing
  members. For more information about the existing auto-enable settings for your
  organization, see
  [DescribeOrganizationConfiguration](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DescribeOrganizationConfiguration.html).  If you are adding accounts by invitation, before using
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html),
  use `CreateMembers` after GuardDuty has been enabled in potential member
  accounts.

  If you disassociate a member from a GuardDuty delegated administrator, the
  member account details obtained from this API, including the associated email
  addresses, will be retained. This is done so that the delegated administrator
  can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html) API without the need to invoke the CreateMembers API again. To remove the
  details associated with a member account, the delegated administrator must
  invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.
  """
  def create_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member"
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
  Creates a publishing destination to export findings to.

  The resource to export findings to must exist before you use this operation.
  """
  def create_publishing_destination(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination"
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
  Generates sample findings of types specified by the list of finding types.

  If 'NULL' is specified for `findingTypes`, the API generates sample findings of
  all supported finding types.
  """
  def create_sample_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/create"
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
  Creates a new ThreatIntelSet.

  ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates
  findings based on ThreatIntelSets. Only users of the administrator account can
  use this operation.
  """
  def create_threat_intel_set(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset"
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
  Declines invitations sent to the current member account by Amazon Web Services
  accounts specified by their account IDs.
  """
  def decline_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/decline"
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
  Deletes an Amazon GuardDuty detector that is specified by the detector ID.
  """
  def delete_detector(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
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
  Deletes the filter specified by the filter name.
  """
  def delete_filter(%Client{} = client, detector_id, filter_name, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

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
  Deletes invitations sent to the current member account by Amazon Web Services
  accounts specified by their account IDs.
  """
  def delete_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitation/delete"
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
  Deletes the IPSet specified by the `ipSetId`.

  IPSets are called trusted IP lists in the console user interface.
  """
  def delete_ip_set(%Client{} = client, detector_id, ip_set_id, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

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
  Deletes GuardDuty member accounts (to the current GuardDuty administrator
  account) specified by the account IDs.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to disable GuardDuty for a member
  account in your organization.
  """
  def delete_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/delete"
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
  Deletes the publishing definition with the specified `destinationId`.
  """
  def delete_publishing_destination(
        %Client{} = client,
        destination_id,
        detector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination/#{AWS.Util.encode_uri(destination_id)}"

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
  Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
  """
  def delete_threat_intel_set(
        %Client{} = client,
        detector_id,
        threat_intel_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset/#{AWS.Util.encode_uri(threat_intel_set_id)}"

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
  Returns a list of malware scans.

  Each member account can view the malware scans for their own accounts. An
  administrator can view the malware scans for all the member accounts.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def describe_malware_scans(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/malware-scans"
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
  Returns information about the account selected as the delegated administrator
  for GuardDuty.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def describe_organization_configuration(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/admin"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the publishing destination specified by the provided
  `destinationId`.
  """
  def describe_publishing_destination(
        %Client{} = client,
        destination_id,
        detector_id,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination/#{AWS.Util.encode_uri(destination_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes the existing GuardDuty delegated administrator of the organization.

  Only the organization's management account can run this API operation.
  """
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin/disable"
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
  Disassociates the current GuardDuty member account from its administrator
  account.

  When you disassociate an invited member from a GuardDuty delegated
  administrator, the member account details obtained from the
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html) API, including the associated email addresses, are retained. This is done so
  that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
  API without the need to invoke the CreateMembers API again. To remove the
  details associated with a member account, the delegated administrator must
  invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to disable GuardDuty in a member
  account.
  """
  def disassociate_from_administrator_account(
        %Client{} = client,
        detector_id,
        input,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator/disassociate"
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
  Disassociates the current GuardDuty member account from its administrator
  account.

  When you disassociate an invited member from a GuardDuty delegated
  administrator, the member account details obtained from the
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html) API, including the associated email addresses, are retained. This is done so
  that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
  API without the need to invoke the CreateMembers API again. To remove the
  details associated with a member account, the delegated administrator must
  invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.
  """
  def disassociate_from_master_account(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master/disassociate"
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
  Disassociates GuardDuty member accounts (from the current administrator account)
  specified by the account IDs.

  When you disassociate an invited member from a GuardDuty delegated
  administrator, the member account details obtained from the
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html) API, including the associated email addresses, are retained. This is done so
  that the delegated administrator can invoke the
  [InviteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html)
  API without the need to invoke the CreateMembers API again. To remove the
  details associated with a member account, the delegated administrator must
  invoke the
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html)
  API.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to disassociate a member account
  before removing them from your organization.
  """
  def disassociate_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/disassociate"
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
  Designates an Amazon Web Services account within the organization as your
  GuardDuty delegated administrator.

  Only the organization's management account can run this API operation.
  """
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin/enable"
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
  Provides the details of the GuardDuty administrator account associated with the
  current GuardDuty member account.

  If the organization's management account or a delegated administrator runs this
  API, it will return success (`HTTP 200`) but no content.
  """
  def get_administrator_account(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves aggregated statistics for your account.

  If you are a GuardDuty administrator, you can retrieve the statistics for all
  the resources associated with the active member accounts in your organization
  who have enabled Runtime Monitoring and have the GuardDuty security agent
  running on their resources.
  """
  def get_coverage_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/coverage/statistics"
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
  Retrieves an Amazon GuardDuty detector specified by the detectorId.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def get_detector(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details of the filter specified by the filter name.
  """
  def get_filter(%Client{} = client, detector_id, filter_name, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes Amazon GuardDuty findings specified by finding IDs.
  """
  def get_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/get"
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
  Lists Amazon GuardDuty findings statistics for the specified detector ID.

  There might be regional differences because some flags might not be available in
  all the Regions where GuardDuty is currently supported. For more information,
  see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def get_findings_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/statistics"
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
  Returns the count of all GuardDuty membership invitations that were sent to the
  current member account except the currently accepted invitation.
  """
  def get_invitations_count(%Client{} = client, options \\ []) do
    url_path = "/invitation/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the IPSet specified by the `ipSetId`.
  """
  def get_ip_set(%Client{} = client, detector_id, ip_set_id, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details of the malware scan settings.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def get_malware_scan_settings(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/malware-scan-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides the details for the GuardDuty administrator account associated with the
  current GuardDuty member account.
  """
  def get_master_account(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes which data sources are enabled for the member account's detector.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def get_member_detectors(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/detector/get"
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
  Retrieves GuardDuty member accounts (of the current GuardDuty administrator
  account) specified by the account IDs.
  """
  def get_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/get"
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
  Retrieves how many active member accounts in your Amazon Web Services
  organization have each feature enabled within GuardDuty.

  Only a delegated GuardDuty administrator of an organization can run this API.

  When you create a new Amazon Web Services organization, it might take up to 24
  hours to generate the statistics for the entire organization.
  """
  def get_organization_statistics(%Client{} = client, options \\ []) do
    url_path = "/organization/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides the number of days left for each data source used in the free trial
  period.
  """
  def get_remaining_free_trial_days(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/freeTrial/daysRemaining"
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
  Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.
  """
  def get_threat_intel_set(%Client{} = client, detector_id, threat_intel_set_id, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset/#{AWS.Util.encode_uri(threat_intel_set_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon GuardDuty usage statistics over the last 30 days for the specified
  detector ID.

  For newly enabled detectors or data sources, the cost returned will include only
  the usage so far under 30 days. This may differ from the cost metrics in the
  console, which project usage over 30 days to provide a monthly cost estimate.
  For more information, see [Understanding How Usage Costs are Calculated](https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations).
  """
  def get_usage_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/usage/statistics"
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
  Invites Amazon Web Services accounts to become members of an organization
  administered by the Amazon Web Services account that invokes this API.

  If you are using Amazon Web Services Organizations to manage your GuardDuty
  environment, this step is not needed. For more information, see [Managing accounts with
  organizations](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html).

  To invite Amazon Web Services accounts, the first step is to ensure that
  GuardDuty has been enabled in the potential member accounts. You can now invoke
  this API to add accounts by invitation. The invited accounts can either accept
  or decline the invitation from their GuardDuty accounts. Each invited Amazon Web
  Services account can choose to accept the invitation from only one Amazon Web
  Services account. For more information, see [Managing GuardDuty accounts by invitation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_invitations.html).

  After the invite has been accepted and you choose to disassociate a member
  account (by using
  [DisassociateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DisassociateMembers.html)) from your account, the details of the member account obtained by invoking
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html),
  including the associated email addresses, will be retained. This is done so that
  you can invoke InviteMembers without the need to invoke
  [CreateMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_CreateMembers.html) again. To remove the details associated with a member account, you must also
  invoke
  [DeleteMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_DeleteMembers.html).
  """
  def invite_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/invite"
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
  Lists coverage details for your GuardDuty account.

  If you're a GuardDuty administrator, you can retrieve all resources associated
  with the active member accounts in your organization.

  Make sure the accounts have Runtime Monitoring enabled and GuardDuty agent
  running on their resources.
  """
  def list_coverage(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/coverage"
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
  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
  """
  def list_detectors(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/detector"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of the current filters.
  """
  def list_filters(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/filter"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists GuardDuty findings for the specified detector ID.

  There might be regional differences because some flags might not be available in
  all the Regions where GuardDuty is currently supported. For more information,
  see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def list_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings"
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
  Lists all GuardDuty membership invitations that were sent to the current Amazon
  Web Services account.
  """
  def list_invitations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/invitation"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the IPSets of the GuardDuty service specified by the detector ID.

  If you use this operation from a member account, the IPSets returned are the
  IPSets from the associated administrator account.
  """
  def list_ip_sets(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists details about all member accounts for the current GuardDuty administrator
  account.
  """
  def list_members(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        only_associated \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member"
    headers = []
    query_params = []

    query_params =
      if !is_nil(only_associated) do
        [{"onlyAssociated", only_associated} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the accounts designated as GuardDuty delegated administrators.

  Only the organization's management account can run this API operation.
  """
  def list_organization_admin_accounts(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/admin"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of publishing destinations associated with the specified
  `detectorId`.
  """
  def list_publishing_destinations(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists tags for a resource.

  Tagging is currently supported for detectors, finding filters, IP sets, threat
  intel sets, and publishing destination, with a limit of 50 tags per resource.
  When invoked, this operation returns all assigned tags for a given resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID.

  If you use this operation from a member account, the ThreatIntelSets associated
  with the administrator account are returned.
  """
  def list_threat_intel_sets(
        %Client{} = client,
        detector_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Initiates the malware scan.

  Invoking this API will automatically create the [Service-linked role
  ](https://docs.aws.amazon.com/guardduty/latest/ug/slr-permissions-malware-protection.html)
  in the corresponding account.
  """
  def start_malware_scan(%Client{} = client, input, options \\ []) do
    url_path = "/malware-scan/start"
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
  Turns on GuardDuty monitoring of the specified member accounts.

  Use this operation to restart monitoring of accounts that you stopped monitoring
  with the
  [StopMonitoringMembers](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_StopMonitoringMembers.html)
  operation.
  """
  def start_monitoring_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/start"
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
  Stops GuardDuty monitoring for the specified member accounts.

  Use the `StartMonitoringMembers` operation to restart monitoring for those
  accounts.

  With `autoEnableOrganizationMembers` configuration for your organization set to
  `ALL`, you'll receive an error if you attempt to stop monitoring the member
  accounts in your organization.
  """
  def stop_monitoring_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/stop"
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
  Adds tags to a resource.
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
      204
    )
  end

  @doc """
  Unarchives GuardDuty findings specified by the `findingIds`.
  """
  def unarchive_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/unarchive"
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
  Removes tags from a resource.
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
      204
    )
  end

  @doc """
  Updates the GuardDuty detector specified by the detectorId.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def update_detector(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
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
  Updates the filter specified by the filter name.
  """
  def update_filter(%Client{} = client, detector_id, filter_name, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

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
  Marks the specified GuardDuty findings as useful or not useful.
  """
  def update_findings_feedback(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/feedback"
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
  Updates the IPSet specified by the IPSet ID.
  """
  def update_ip_set(%Client{} = client, detector_id, ip_set_id, input, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

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
  Updates the malware scan settings.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def update_malware_scan_settings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/malware-scan-settings"
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
  Contains information on member accounts to be updated.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def update_member_detectors(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/detector/update"
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
  Configures the delegated administrator account with the provided values.

  You must provide a value for either `autoEnableOrganizationMembers` or
  `autoEnable`, but not both.

  There might be regional differences because some data sources might not be
  available in all the Amazon Web Services Regions where GuardDuty is presently
  supported. For more information, see [Regions and endpoints](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_regions.html).
  """
  def update_organization_configuration(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/admin"
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
  Updates information about the publishing destination specified by the
  `destinationId`.
  """
  def update_publishing_destination(
        %Client{} = client,
        destination_id,
        detector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/publishingDestination/#{AWS.Util.encode_uri(destination_id)}"

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
  Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
  """
  def update_threat_intel_set(
        %Client{} = client,
        detector_id,
        threat_intel_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/threatintelset/#{AWS.Util.encode_uri(threat_intel_set_id)}"

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
end
