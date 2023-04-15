# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Inspector2 do
  @moduledoc """
  Amazon Inspector is a vulnerability discovery service that automates continuous
  scanning for security vulnerabilities within your Amazon EC2 and Amazon ECR
  environments.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-06-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "inspector2",
      global?: false,
      protocol: "rest-json",
      service_id: "Inspector2",
      signature_version: "v4",
      signing_name: "inspector2",
      target_prefix: nil
    }
  end

  @doc """
  Associates an Amazon Web Services account with an Amazon Inspector delegated
  administrator.
  """
  def associate_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/associate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateMember",
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
  Retrieves the Amazon Inspector status of multiple Amazon Web Services accounts
  within your environment.
  """
  def batch_get_account_status(%Client{} = client, input, options \\ []) do
    url_path = "/status/batch/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchGetAccountStatus",
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
  Gets free trial status for multiple Amazon Web Services accounts.
  """
  def batch_get_free_trial_info(%Client{} = client, input, options \\ []) do
    url_path = "/freetrialinfo/batchget"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchGetFreeTrialInfo",
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
  Cancels the given findings report.
  """
  def cancel_findings_report(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CancelFindingsReport",
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
  Creates a filter resource using specified filter criteria.
  """
  def create_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/create"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateFilter",
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
  Creates a finding report.
  """
  def create_findings_report(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/create"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateFindingsReport",
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
  Deletes a filter resource.
  """
  def delete_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/delete"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteFilter",
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
  Describe Amazon Inspector configuration settings for an Amazon Web Services
  organization.
  """
  def describe_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/organizationconfiguration/describe"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeOrganizationConfiguration",
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
  Disables Amazon Inspector scans for one or more Amazon Web Services accounts.

  Disabling all scan types in an account disables the Amazon Inspector service.
  """
  def disable(%Client{} = client, input, options \\ []) do
    url_path = "/disable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "Disable",
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
  Disables the Amazon Inspector delegated administrator for your organization.
  """
  def disable_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/disable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisableDelegatedAdminAccount",
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
  Disassociates a member account from an Amazon Inspector delegated administrator.
  """
  def disassociate_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/disassociate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateMember",
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
  Enables Amazon Inspector scans for one or more Amazon Web Services accounts.
  """
  def enable(%Client{} = client, input, options \\ []) do
    url_path = "/enable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "Enable",
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
  Enables the Amazon Inspector delegated administrator for your Organizations
  organization.
  """
  def enable_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/enable"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "EnableDelegatedAdminAccount",
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
  Retrieves setting configurations for Inspector scans.
  """
  def get_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetConfiguration",
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
  Retrieves information about the Amazon Inspector delegated administrator for
  your organization.
  """
  def get_delegated_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDelegatedAdminAccount",
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
  Gets the status of a findings report.
  """
  def get_findings_report_status(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/status/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetFindingsReportStatus",
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
  Gets member information for your organization.
  """
  def get_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMember",
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
  Lists the permissions an account has to configure Amazon Inspector.
  """
  def list_account_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/accountpermissions/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAccountPermissions",
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
  Lists coverage details for you environment.
  """
  def list_coverage(%Client{} = client, input, options \\ []) do
    url_path = "/coverage/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListCoverage",
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
  Lists Amazon Inspector coverage statistics for your environment.
  """
  def list_coverage_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/coverage/statistics/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListCoverageStatistics",
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
  Lists information about the Amazon Inspector delegated administrator of your
  organization.
  """
  def list_delegated_admin_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/delegatedadminaccounts/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListDelegatedAdminAccounts",
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
  Lists the filters associated with your account.
  """
  def list_filters(%Client{} = client, input, options \\ []) do
    url_path = "/filters/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListFilters",
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
  Lists aggregated finding data for your environment based on specific criteria.
  """
  def list_finding_aggregations(%Client{} = client, input, options \\ []) do
    url_path = "/findings/aggregation/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListFindingAggregations",
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
  Lists findings for your environment.
  """
  def list_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListFindings",
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
  List members associated with the Amazon Inspector delegated administrator for
  your organization.
  """
  def list_members(%Client{} = client, input, options \\ []) do
    url_path = "/members/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListMembers",
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
  Lists all tags attached to a given resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  Lists the Amazon Inspector usage totals over the last 30 days.
  """
  def list_usage_totals(%Client{} = client, input, options \\ []) do
    url_path = "/usage/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListUsageTotals",
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
      "TagResource",
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
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UntagResource",
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
  Updates setting configurations for your Amazon Inspector account.

  When you use this API as an Amazon Inspector delegated administrator this
  updates the setting for all accounts you manage. Member accounts in an
  organization cannot update this setting.
  """
  def update_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/configuration/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateConfiguration",
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
  Specifies the action that is to be applied to the findings that match the
  filter.
  """
  def update_filter(%Client{} = client, input, options \\ []) do
    url_path = "/filters/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateFilter",
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
  Updates the configurations for your Amazon Inspector organization.
  """
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/organizationconfiguration/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateOrganizationConfiguration",
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
