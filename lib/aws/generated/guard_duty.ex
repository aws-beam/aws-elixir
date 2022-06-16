# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GuardDuty do
  @moduledoc """
  Amazon GuardDuty is a continuous security monitoring service that analyzes and
  processes the following data sources: VPC Flow Logs, AWS CloudTrail management
  event logs, CloudTrail S3 data event logs, EKS audit logs, and DNS logs.

  It uses threat intelligence feeds (such as lists of malicious IPs and domains)
  and machine learning to identify unexpected, potentially unauthorized, and
  malicious activity within your Amazon Web Services environment. This can include
  issues like escalations of privileges, uses of exposed credentials, or
  communication with malicious IPs, URLs, or domains. For example, GuardDuty can
  detect compromised EC2 instances that serve malware or mine bitcoin.

  GuardDuty also monitors Amazon Web Services account access behavior for signs of
  compromise. Some examples of this are unauthorized infrastructure deployments
  such as EC2 instances deployed in a Region that has never been used, or unusual
  API calls like a password policy change to reduce password strength.

  GuardDuty informs you of the status of your Amazon Web Services environment by
  producing security findings that you can view in the GuardDuty console or
  through Amazon CloudWatch events. For more information, see the * [Amazon GuardDuty User
  Guide](https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html)
  *.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  """
  def create_detector(%Client{} = client, input, options \\ []) do
    url_path = "/detector"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  """
  def create_filter(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/filter"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

  When using `Create Members` as an organizations delegated administrator this
  action will enable GuardDuty in the added member accounts, with the exception of
  the organization delegated administrator account, which must enable GuardDuty
  prior to being added as a member.

  If you are adding accounts by invitation use this action after GuardDuty has
  been enabled in potential member accounts and before using [ `Invite Members`
  ](https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html).
  """
  def create_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Generates example findings of types specified by the list of finding types.

  If 'NULL' is specified for `findingTypes`, the API generates example findings of
  all supported finding types.
  """
  def create_sample_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/create"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  """
  def delete_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/delete"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Returns information about the account selected as the delegated administrator
  for GuardDuty.
  """
  def describe_organization_configuration(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/admin"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Disables an Amazon Web Services account within the Organization as the GuardDuty
  delegated administrator.
  """
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin/disable"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  """
  def disassociate_from_master_account(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master/disassociate"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Disassociates GuardDuty member accounts (to the current GuardDuty administrator
  account) specified by the account IDs.
  """
  def disassociate_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/disassociate"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Enables an Amazon Web Services account within the organization as the GuardDuty
  delegated administrator.
  """
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin/enable"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Provides the details for the GuardDuty administrator account associated with the
  current GuardDuty member account.
  """
  def get_administrator_account(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/administrator"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves an Amazon GuardDuty detector specified by the detectorId.
  """
  def get_detector(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns the details of the filter specified by the filter name.
  """
  def get_filter(%Client{} = client, detector_id, filter_name, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/filter/#{AWS.Util.encode_uri(filter_name)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Describes Amazon GuardDuty findings specified by finding IDs.
  """
  def get_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/get"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  """
  def get_findings_statistics(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings/statistics"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the IPSet specified by the `ipSetId`.
  """
  def get_ip_set(%Client{} = client, detector_id, ip_set_id, options \\ []) do
    url_path =
      "/detector/#{AWS.Util.encode_uri(detector_id)}/ipset/#{AWS.Util.encode_uri(ip_set_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Provides the details for the GuardDuty administrator account associated with the
  current GuardDuty member account.
  """
  def get_master_account(%Client{} = client, detector_id, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/master"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Describes which data sources are enabled for the member account's detector.
  """
  def get_member_detectors(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/detector/get"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Provides the number of days left for each data source used in the free trial
  period.
  """
  def get_remaining_free_trial_days(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/freeTrial/daysRemaining"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
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

    Request.request_rest(
      client,
      metadata(),
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
  Invites other Amazon Web Services accounts (created as members of the current
  Amazon Web Services account by CreateMembers) to enable GuardDuty, and allow the
  current Amazon Web Services account to view and manage these accounts' findings
  on their behalf as the GuardDuty administrator account.
  """
  def invite_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/invite"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists Amazon GuardDuty findings for the specified detector ID.
  """
  def list_findings(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/findings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the accounts configured as GuardDuty delegated administrators.
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists tags for a resource.

  Tagging is currently supported for detectors, finding filters, IP sets, and
  threat intel sets, with a limit of 50 tags per resource. When invoked, this
  operation returns all assigned tags for a given resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Turns on GuardDuty monitoring of the specified member accounts.

  Use this operation to restart monitoring of accounts that you stopped monitoring
  with the `StopMonitoringMembers` operation.
  """
  def start_monitoring_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/start"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  """
  def stop_monitoring_members(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/stop"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Updates the Amazon GuardDuty detector specified by the detectorId.
  """
  def update_detector(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  """
  def update_member_detectors(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/member/detector/update"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Updates the delegated administrator account with the values provided.
  """
  def update_organization_configuration(%Client{} = client, detector_id, input, options \\ []) do
    url_path = "/detector/#{AWS.Util.encode_uri(detector_id)}/admin"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
