# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Macie2 do
  @moduledoc """
  Amazon Macie is a fully managed data security and data privacy service that uses
  machine learning and pattern matching to help you discover and protect your
  sensitive data in AWS.

  Macie automates the discovery of sensitive data, such as PII and intellectual
  property, to provide you with insight into the data that your organization
  stores in AWS. Macie also provides an inventory of your Amazon S3 buckets, which
  it continually monitors for you. If Macie detects sensitive data or potential
  data access issues, it generates detailed findings for you to review and act
  upon as necessary.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "macie2",
      global?: false,
      protocol: "rest-json",
      service_id: "Macie2",
      signature_version: "v4",
      signing_name: "macie2",
      target_prefix: nil
    }
  end

  @doc """
  Accepts an Amazon Macie membership invitation that was received from a specific
  account.
  """
  def accept_invitation(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/accept"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AcceptInvitation",
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
  Retrieves information about one or more custom data identifiers.
  """
  def batch_get_custom_data_identifiers(%Client{} = client, input, options \\ []) do
    url_path = "/custom-data-identifiers/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchGetCustomDataIdentifiers",
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
  Creates and defines the settings for an allow list.
  """
  def create_allow_list(%Client{} = client, input, options \\ []) do
    url_path = "/allow-lists"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAllowList",
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
  Creates and defines the settings for a classification job.
  """
  def create_classification_job(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateClassificationJob",
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
  Creates and defines the criteria and other settings for a custom data
  identifier.
  """
  def create_custom_data_identifier(%Client{} = client, input, options \\ []) do
    url_path = "/custom-data-identifiers"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateCustomDataIdentifier",
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
  Creates and defines the criteria and other settings for a findings filter.
  """
  def create_findings_filter(%Client{} = client, input, options \\ []) do
    url_path = "/findingsfilters"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateFindingsFilter",
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
  Sends an Amazon Macie membership invitation to one or more accounts.
  """
  def create_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateInvitations",
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
  Associates an account with an Amazon Macie administrator account.
  """
  def create_member(%Client{} = client, input, options \\ []) do
    url_path = "/members"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateMember",
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
  Creates sample findings.
  """
  def create_sample_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/sample"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateSampleFindings",
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
  Declines Amazon Macie membership invitations that were received from specific
  accounts.
  """
  def decline_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/decline"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeclineInvitations",
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
  Deletes an allow list.
  """
  def delete_allow_list(%Client{} = client, id, input, options \\ []) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"
    headers = []

    {query_params, input} =
      [
        {"ignoreJobChecks", "ignoreJobChecks"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAllowList",
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
  Soft deletes a custom data identifier.
  """
  def delete_custom_data_identifier(%Client{} = client, id, input, options \\ []) do
    url_path = "/custom-data-identifiers/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteCustomDataIdentifier",
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
  Deletes a findings filter.
  """
  def delete_findings_filter(%Client{} = client, id, input, options \\ []) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteFindingsFilter",
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
  Deletes Amazon Macie membership invitations that were received from specific
  accounts.
  """
  def delete_invitations(%Client{} = client, input, options \\ []) do
    url_path = "/invitations/delete"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteInvitations",
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
  Deletes the association between an Amazon Macie administrator account and an
  account.
  """
  def delete_member(%Client{} = client, id, input, options \\ []) do
    url_path = "/members/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteMember",
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
  Retrieves (queries) statistical data and other information about one or more S3
  buckets that Amazon Macie monitors and analyzes for an account.
  """
  def describe_buckets(%Client{} = client, input, options \\ []) do
    url_path = "/datasources/s3"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeBuckets",
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
  Retrieves the status and settings for a classification job.
  """
  def describe_classification_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeClassificationJob",
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
  Retrieves the Amazon Macie configuration settings for an organization in
  Organizations.
  """
  def describe_organization_configuration(%Client{} = client, options \\ []) do
    url_path = "/admin/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeOrganizationConfiguration",
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
  Disables Amazon Macie and deletes all settings and resources for a Macie
  account.
  """
  def disable_macie(%Client{} = client, input, options \\ []) do
    url_path = "/macie"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisableMacie",
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
  Disables an account as the delegated Amazon Macie administrator account for an
  organization in Organizations.
  """
  def disable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin"
    headers = []

    {query_params, input} =
      [
        {"adminAccountId", "adminAccountId"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisableOrganizationAdminAccount",
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
  Disassociates a member account from its Amazon Macie administrator account.
  """
  def disassociate_from_administrator_account(%Client{} = client, input, options \\ []) do
    url_path = "/administrator/disassociate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateFromAdministratorAccount",
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
  (Deprecated) Disassociates a member account from its Amazon Macie administrator
  account.

  This operation has been replaced by the DisassociateFromAdministratorAccount
  operation.
  """
  def disassociate_from_master_account(%Client{} = client, input, options \\ []) do
    url_path = "/master/disassociate"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateFromMasterAccount",
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
  Disassociates an Amazon Macie administrator account from a member account.
  """
  def disassociate_member(%Client{} = client, id, input, options \\ []) do
    url_path = "/members/disassociate/#{AWS.Util.encode_uri(id)}"
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
  Enables Amazon Macie and specifies the configuration settings for a Macie
  account.
  """
  def enable_macie(%Client{} = client, input, options \\ []) do
    url_path = "/macie"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "EnableMacie",
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
  Designates an account as the delegated Amazon Macie administrator account for an
  organization in Organizations.
  """
  def enable_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/admin"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "EnableOrganizationAdminAccount",
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
  Retrieves information about the Amazon Macie administrator account for an
  account.
  """
  def get_administrator_account(%Client{} = client, options \\ []) do
    url_path = "/administrator"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAdministratorAccount",
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
  Retrieves the settings and status of an allow list.
  """
  def get_allow_list(%Client{} = client, id, options \\ []) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAllowList",
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
  Retrieves the configuration settings and status of automated sensitive data
  discovery for an account.
  """
  def get_automated_discovery_configuration(%Client{} = client, options \\ []) do
    url_path = "/automated-discovery/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAutomatedDiscoveryConfiguration",
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
  Retrieves (queries) aggregated statistical data about all the S3 buckets that
  Amazon Macie monitors and analyzes for an account.
  """
  def get_bucket_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/datasources/s3/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetBucketStatistics",
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
  Retrieves the configuration settings for storing data classification results.
  """
  def get_classification_export_configuration(%Client{} = client, options \\ []) do
    url_path = "/classification-export-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetClassificationExportConfiguration",
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
  Retrieves the classification scope settings for an account.
  """
  def get_classification_scope(%Client{} = client, id, options \\ []) do
    url_path = "/classification-scopes/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetClassificationScope",
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
  Retrieves the criteria and other settings for a custom data identifier.
  """
  def get_custom_data_identifier(%Client{} = client, id, options \\ []) do
    url_path = "/custom-data-identifiers/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetCustomDataIdentifier",
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
  Retrieves (queries) aggregated statistical data about findings.
  """
  def get_finding_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/findings/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetFindingStatistics",
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
  Retrieves the details of one or more findings.
  """
  def get_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings/describe"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetFindings",
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
  Retrieves the criteria and other settings for a findings filter.
  """
  def get_findings_filter(%Client{} = client, id, options \\ []) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetFindingsFilter",
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
  Retrieves the configuration settings for publishing findings to Security Hub.
  """
  def get_findings_publication_configuration(%Client{} = client, options \\ []) do
    url_path = "/findings-publication-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetFindingsPublicationConfiguration",
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
  Retrieves the count of Amazon Macie membership invitations that were received by
  an account.
  """
  def get_invitations_count(%Client{} = client, options \\ []) do
    url_path = "/invitations/count"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetInvitationsCount",
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
  Retrieves the status and configuration settings for an Amazon Macie account.
  """
  def get_macie_session(%Client{} = client, options \\ []) do
    url_path = "/macie"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMacieSession",
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
  (Deprecated) Retrieves information about the Amazon Macie administrator account
  for an account.

  This operation has been replaced by the GetAdministratorAccount operation.
  """
  def get_master_account(%Client{} = client, options \\ []) do
    url_path = "/master"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMasterAccount",
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
  Retrieves information about an account that's associated with an Amazon Macie
  administrator account.
  """
  def get_member(%Client{} = client, id, options \\ []) do
    url_path = "/members/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetMember",
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
  Retrieves (queries) sensitive data discovery statistics and the sensitivity
  score for an S3 bucket.
  """
  def get_resource_profile(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/resource-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetResourceProfile",
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
  Retrieves the status and configuration settings for retrieving occurrences of
  sensitive data reported by findings.
  """
  def get_reveal_configuration(%Client{} = client, options \\ []) do
    url_path = "/reveal-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRevealConfiguration",
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
  Retrieves occurrences of sensitive data reported by a finding.
  """
  def get_sensitive_data_occurrences(%Client{} = client, finding_id, options \\ []) do
    url_path = "/findings/#{AWS.Util.encode_uri(finding_id)}/reveal"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetSensitiveDataOccurrences",
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
  Checks whether occurrences of sensitive data can be retrieved for a finding.
  """
  def get_sensitive_data_occurrences_availability(%Client{} = client, finding_id, options \\ []) do
    url_path = "/findings/#{AWS.Util.encode_uri(finding_id)}/reveal/availability"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetSensitiveDataOccurrencesAvailability",
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
  Retrieves the settings for the sensitivity inspection template for an account.
  """
  def get_sensitivity_inspection_template(%Client{} = client, id, options \\ []) do
    url_path = "/templates/sensitivity-inspections/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetSensitivityInspectionTemplate",
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
  Retrieves (queries) quotas and aggregated usage data for one or more accounts.
  """
  def get_usage_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/usage/statistics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetUsageStatistics",
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
  Retrieves (queries) aggregated usage data for an account.
  """
  def get_usage_totals(%Client{} = client, time_range \\ nil, options \\ []) do
    url_path = "/usage"
    headers = []
    query_params = []

    query_params =
      if !is_nil(time_range) do
        [{"timeRange", time_range} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetUsageTotals",
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
  Retrieves a subset of information about all the allow lists for an account.
  """
  def list_allow_lists(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/allow-lists"
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

    Request.request_rest(
      client,
      meta,
      "ListAllowLists",
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
  Retrieves a subset of information about one or more classification jobs.
  """
  def list_classification_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/jobs/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListClassificationJobs",
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
  Retrieves a subset of information about the classification scope for an account.
  """
  def list_classification_scopes(
        %Client{} = client,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/classification-scopes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListClassificationScopes",
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
  Retrieves a subset of information about all the custom data identifiers for an
  account.
  """
  def list_custom_data_identifiers(%Client{} = client, input, options \\ []) do
    url_path = "/custom-data-identifiers/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListCustomDataIdentifiers",
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
  Retrieves a subset of information about one or more findings.
  """
  def list_findings(%Client{} = client, input, options \\ []) do
    url_path = "/findings"
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
  Retrieves a subset of information about all the findings filters for an account.
  """
  def list_findings_filters(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/findingsfilters"
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

    Request.request_rest(
      client,
      meta,
      "ListFindingsFilters",
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
  Retrieves information about the Amazon Macie membership invitations that were
  received by an account.
  """
  def list_invitations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/invitations"
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

    Request.request_rest(
      client,
      meta,
      "ListInvitations",
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
  Retrieves information about all the managed data identifiers that Amazon Macie
  currently provides.
  """
  def list_managed_data_identifiers(%Client{} = client, input, options \\ []) do
    url_path = "/managed-data-identifiers/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListManagedDataIdentifiers",
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
  Retrieves information about the accounts that are associated with an Amazon
  Macie administrator account.
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

    Request.request_rest(
      client,
      meta,
      "ListMembers",
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
  Retrieves information about the delegated Amazon Macie administrator account for
  an organization in Organizations.
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

    Request.request_rest(
      client,
      meta,
      "ListOrganizationAdminAccounts",
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
  Retrieves information about objects that were selected from an S3 bucket for
  automated sensitive data discovery.
  """
  def list_resource_profile_artifacts(
        %Client{} = client,
        next_token \\ nil,
        resource_arn,
        options \\ []
      ) do
    url_path = "/resource-profiles/artifacts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "ListResourceProfileArtifacts",
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
  Retrieves information about the types and amount of sensitive data that Amazon
  Macie found in an S3 bucket.
  """
  def list_resource_profile_detections(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        resource_arn,
        options \\ []
      ) do
    url_path = "/resource-profiles/detections"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
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

    Request.request_rest(
      client,
      meta,
      "ListResourceProfileDetections",
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
  Retrieves a subset of information about the sensitivity inspection template for
  an account.
  """
  def list_sensitivity_inspection_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates/sensitivity-inspections"
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

    Request.request_rest(
      client,
      meta,
      "ListSensitivityInspectionTemplates",
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
  Retrieves the tags (keys and values) that are associated with an Amazon Macie
  resource.
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
  Creates or updates the configuration settings for storing data classification
  results.
  """
  def put_classification_export_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/classification-export-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutClassificationExportConfiguration",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the configuration settings for publishing findings to Security Hub.
  """
  def put_findings_publication_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/findings-publication-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutFindingsPublicationConfiguration",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves (queries) statistical data and other information about Amazon Web
  Services resources that Amazon Macie monitors and analyzes.
  """
  def search_resources(%Client{} = client, input, options \\ []) do
    url_path = "/datasources/search-resources"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "SearchResources",
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
  Adds or updates one or more tags (keys and values) that are associated with an
  Amazon Macie resource.
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
      204
    )
  end

  @doc """
  Tests a custom data identifier.
  """
  def test_custom_data_identifier(%Client{} = client, input, options \\ []) do
    url_path = "/custom-data-identifiers/test"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TestCustomDataIdentifier",
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
  Removes one or more tags (keys and values) from an Amazon Macie resource.
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
      204
    )
  end

  @doc """
  Updates the settings for an allow list.
  """
  def update_allow_list(%Client{} = client, id, input, options \\ []) do
    url_path = "/allow-lists/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAllowList",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables or disables automated sensitive data discovery for an account.
  """
  def update_automated_discovery_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/automated-discovery/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAutomatedDiscoveryConfiguration",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Changes the status of a classification job.
  """
  def update_classification_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateClassificationJob",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the classification scope settings for an account.
  """
  def update_classification_scope(%Client{} = client, id, input, options \\ []) do
    url_path = "/classification-scopes/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateClassificationScope",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the criteria and other settings for a findings filter.
  """
  def update_findings_filter(%Client{} = client, id, input, options \\ []) do
    url_path = "/findingsfilters/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateFindingsFilter",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Suspends or re-enables Amazon Macie, or updates the configuration settings for a
  Macie account.
  """
  def update_macie_session(%Client{} = client, input, options \\ []) do
    url_path = "/macie"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateMacieSession",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Enables an Amazon Macie administrator to suspend or re-enable Macie for a member
  account.
  """
  def update_member_session(%Client{} = client, id, input, options \\ []) do
    url_path = "/macie/members/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateMemberSession",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the Amazon Macie configuration settings for an organization in
  Organizations.
  """
  def update_organization_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/admin/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateOrganizationConfiguration",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the sensitivity score for an S3 bucket.
  """
  def update_resource_profile(%Client{} = client, input, options \\ []) do
    url_path = "/resource-profiles"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateResourceProfile",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the sensitivity scoring settings for an S3 bucket.
  """
  def update_resource_profile_detections(%Client{} = client, input, options \\ []) do
    url_path = "/resource-profiles/detections"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateResourceProfileDetections",
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the status and configuration settings for retrieving occurrences of
  sensitive data reported by findings.
  """
  def update_reveal_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/reveal-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateRevealConfiguration",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the settings for the sensitivity inspection template for an account.
  """
  def update_sensitivity_inspection_template(%Client{} = client, id, input, options \\ []) do
    url_path = "/templates/sensitivity-inspections/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateSensitivityInspectionTemplate",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
