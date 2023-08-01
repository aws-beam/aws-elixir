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

  An HTTP 200 response indicates the association was successfully started, but
  doesn’t indicate whether it was completed. You can check if the association
  completed by using
  [ListMembers](https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html) for multiple accounts or
  [GetMembers](https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html)
  for a single account.
  """
  def associate_member(%Client{} = client, input, options \\ []) do
    url_path = "/members/associate"
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
  Retrieves code snippets from findings that Amazon Inspector detected code
  vulnerabilities in.
  """
  def batch_get_code_snippet(%Client{} = client, input, options \\ []) do
    url_path = "/codesnippet/batchget"
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
  Gets vulnerability details for findings.
  """
  def batch_get_finding_details(%Client{} = client, input, options \\ []) do
    url_path = "/findings/details/batch/get"
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
  Retrieves Amazon Inspector deep inspection activation status of multiple member
  accounts within your organization.

  You must be the delegated administrator of an organization in Amazon Inspector
  to use this API.
  """
  def batch_get_member_ec2_deep_inspection_status(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionstatus/member/batch/get"
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
  Activates or deactivates Amazon Inspector deep inspection for the provided
  member accounts in your organization.

  You must be the delegated administrator of an organization in Amazon Inspector
  to use this API.
  """
  def batch_update_member_ec2_deep_inspection_status(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionstatus/member/batch/update"
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
  Cancels a software bill of materials (SBOM) report.
  """
  def cancel_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/cancel"
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

  By default only `ACTIVE` findings are returned in the report. To see `SUPRESSED`
  or `CLOSED` findings you must specify a value for the `findingStatus` filter
  criteria.
  """
  def create_findings_report(%Client{} = client, input, options \\ []) do
    url_path = "/reporting/create"
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
  Creates a software bill of materials (SBOM) report.
  """
  def create_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/create"
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
  Retrieves the activation status of Amazon Inspector deep inspection and custom
  paths associated with your account.
  """
  def get_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/get"
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
  Gets an encryption key.
  """
  def get_encryption_key(%Client{} = client, resource_type, scan_type, options \\ []) do
    url_path = "/encryptionkey/get"
    headers = []
    query_params = []

    query_params =
      if !is_nil(scan_type) do
        [{"scanType", scan_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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
  Gets details of a software bill of materials (SBOM) report.
  """
  def get_sbom_export(%Client{} = client, input, options \\ []) do
    url_path = "/sbomexport/get"
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
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
  Resets an encryption key.

  After the key is reset your resources will be encrypted by an Amazon Web
  Services owned key.
  """
  def reset_encryption_key(%Client{} = client, input, options \\ []) do
    url_path = "/encryptionkey/reset"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Lists Amazon Inspector coverage details for a specific vulnerability.
  """
  def search_vulnerabilities(%Client{} = client, input, options \\ []) do
    url_path = "/vulnerabilities/search"
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
  Activates, deactivates Amazon Inspector deep inspection, or updates custom paths
  for your account.
  """
  def update_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/update"
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
  Updates an encryption key.

  A `ResourceNotFoundException` means that an AWS owned key is being used for
  encryption.
  """
  def update_encryption_key(%Client{} = client, input, options \\ []) do
    url_path = "/encryptionkey/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
  Updates the Amazon Inspector deep inspection custom paths for your organization.

  You must be an Amazon Inspector delegated administrator to use this API.
  """
  def update_org_ec2_deep_inspection_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/ec2deepinspectionconfiguration/org/update"
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
