# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AuditManager do
  @moduledoc """
  Welcome to the Audit Manager API reference.

  This guide is for developers who need detailed information about the Audit
  Manager API operations, data types, and errors.

  Audit Manager is a service that provides automated evidence collection so that
  you can continuously audit your Amazon Web Services usage, and assess the
  effectiveness of your controls to better manage risk and simplify compliance.

  Audit Manager provides pre-built frameworks that structure and automate
  assessments for a given compliance standard. Frameworks include a pre-built
  collection of controls with descriptions and testing procedures, which are
  grouped according to the requirements of the specified compliance standard or
  regulation. You can also customize frameworks and controls to support internal
  audits with unique requirements.

  Use the following links to get started with the Audit Manager API:

    *
  [Actions](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html): An alphabetical list of all Audit Manager API operations.

    * [Data
  types](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html):
  An alphabetical list of all Audit Manager data types.

    * [Common parameters](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html):
  Parameters that all Query operations can use.

    * [Common errors](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html):
  Client and server errors that all operations can return.

  If you're new to Audit Manager, we recommend that you review the [ Audit Manager User
  Guide](https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "auditmanager",
      global?: false,
      protocol: "rest-json",
      service_id: "AuditManager",
      signature_version: "v4",
      signing_name: "auditmanager",
      target_prefix: nil
    }
  end

  @doc """
  Associates an evidence folder to the specified assessment report in Audit
  Manager.
  """
  def associate_assessment_report_evidence_folder(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/associateToAssessmentReport"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates a list of evidence to an assessment report in an Audit Manager
  assessment.
  """
  def batch_associate_assessment_report_evidence(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/batchAssociateToAssessmentReport"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Create a batch of delegations for a specified assessment in Audit Manager.
  """
  def batch_create_delegation_by_assessment(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/delegations"
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
      nil
    )
  end

  @doc """
  Deletes the delegations in the specified Audit Manager assessment.
  """
  def batch_delete_delegation_by_assessment(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/delegations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disassociates a list of evidence from the specified assessment report in Audit
  Manager.
  """
  def batch_disassociate_assessment_report_evidence(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/batchDisassociateFromAssessmentReport"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Uploads one or more pieces of evidence to the specified control in the
  assessment in Audit Manager.
  """
  def batch_import_evidence_to_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/controlSets/#{URI.encode(control_set_id)}/controls/#{URI.encode(control_id)}/evidence"

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
      nil
    )
  end

  @doc """
  Creates an assessment in Audit Manager.
  """
  def create_assessment(%Client{} = client, input, options \\ []) do
    url_path = "/assessments"
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
      nil
    )
  end

  @doc """
  Creates a custom framework in Audit Manager.
  """
  def create_assessment_framework(%Client{} = client, input, options \\ []) do
    url_path = "/assessmentFrameworks"
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
      nil
    )
  end

  @doc """
  Creates an assessment report for the specified assessment.
  """
  def create_assessment_report(%Client{} = client, assessment_id, input, options \\ []) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/reports"
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
      nil
    )
  end

  @doc """
  Creates a new custom control in Audit Manager.
  """
  def create_control(%Client{} = client, input, options \\ []) do
    url_path = "/controls"
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
      nil
    )
  end

  @doc """
  Deletes an assessment in Audit Manager.
  """
  def delete_assessment(%Client{} = client, assessment_id, input, options \\ []) do
    url_path = "/assessments/#{URI.encode(assessment_id)}"
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
      nil
    )
  end

  @doc """
  Deletes a custom framework in Audit Manager.
  """
  def delete_assessment_framework(%Client{} = client, framework_id, input, options \\ []) do
    url_path = "/assessmentFrameworks/#{URI.encode(framework_id)}"
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
      nil
    )
  end

  @doc """
  Deletes an assessment report from an assessment in Audit Manager.
  """
  def delete_assessment_report(
        %Client{} = client,
        assessment_id,
        assessment_report_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/reports/#{URI.encode(assessment_report_id)}"

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
      nil
    )
  end

  @doc """
  Deletes a custom control in Audit Manager.
  """
  def delete_control(%Client{} = client, control_id, input, options \\ []) do
    url_path = "/controls/#{URI.encode(control_id)}"
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
      nil
    )
  end

  @doc """
  Deregisters an account in Audit Manager.
  """
  def deregister_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/deregisterAccount"
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
      nil
    )
  end

  @doc """
  Removes the specified member account as a delegated administrator for Audit
  Manager.

  When you remove a delegated administrator from your Audit Manager settings, or
  when you deregister a delegated administrator from Organizations, you continue
  to have access to the evidence that you previously collected under that account.
  However, Audit Manager will stop collecting and attaching evidence to that
  delegated administrator account moving forward.
  """
  def deregister_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/deregisterOrganizationAdminAccount"
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
      nil
    )
  end

  @doc """
  Disassociates an evidence folder from the specified assessment report in Audit
  Manager.
  """
  def disassociate_assessment_report_evidence_folder(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/disassociateFromAssessmentReport"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns the registration status of an account in Audit Manager.
  """
  def get_account_status(%Client{} = client, options \\ []) do
    url_path = "/account/status"
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
      nil
    )
  end

  @doc """
  Returns an assessment from Audit Manager.
  """
  def get_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/assessments/#{URI.encode(assessment_id)}"
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
      nil
    )
  end

  @doc """
  Returns a framework from Audit Manager.
  """
  def get_assessment_framework(%Client{} = client, framework_id, options \\ []) do
    url_path = "/assessmentFrameworks/#{URI.encode(framework_id)}"
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
      nil
    )
  end

  @doc """
  Returns the URL of a specified assessment report in Audit Manager.
  """
  def get_assessment_report_url(
        %Client{} = client,
        assessment_id,
        assessment_report_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/reports/#{URI.encode(assessment_report_id)}/url"

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
      nil
    )
  end

  @doc """
  Returns a list of changelogs from Audit Manager.
  """
  def get_change_logs(
        %Client{} = client,
        assessment_id,
        control_id \\ nil,
        control_set_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/changelogs"
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

    query_params =
      if !is_nil(control_set_id) do
        [{"controlSetId", control_set_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(control_id) do
        [{"controlId", control_id} | query_params]
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
      nil
    )
  end

  @doc """
  Returns a control from Audit Manager.
  """
  def get_control(%Client{} = client, control_id, options \\ []) do
    url_path = "/controls/#{URI.encode(control_id)}"
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
      nil
    )
  end

  @doc """
  Returns a list of delegations from an audit owner to a delegate.
  """
  def get_delegations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/delegations"
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
      nil
    )
  end

  @doc """
  Returns evidence from Audit Manager.
  """
  def get_evidence(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        evidence_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/controlSets/#{URI.encode(control_set_id)}/evidenceFolders/#{URI.encode(evidence_folder_id)}/evidence/#{URI.encode(evidence_id)}"

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
      nil
    )
  end

  @doc """
  Returns all evidence from a specified evidence folder in Audit Manager.
  """
  def get_evidence_by_evidence_folder(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/controlSets/#{URI.encode(control_set_id)}/evidenceFolders/#{URI.encode(evidence_folder_id)}/evidence"

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
      nil
    )
  end

  @doc """
  Returns an evidence folder from the specified assessment in Audit Manager.
  """
  def get_evidence_folder(
        %Client{} = client,
        assessment_id,
        control_set_id,
        evidence_folder_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/controlSets/#{URI.encode(control_set_id)}/evidenceFolders/#{URI.encode(evidence_folder_id)}"

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
      nil
    )
  end

  @doc """
  Returns the evidence folders from a specified assessment in Audit Manager.
  """
  def get_evidence_folders_by_assessment(
        %Client{} = client,
        assessment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/evidenceFolders"
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
      nil
    )
  end

  @doc """
  Returns a list of evidence folders associated with a specified control of an
  assessment in Audit Manager.
  """
  def get_evidence_folders_by_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/evidenceFolders-by-assessment-control/#{URI.encode(control_set_id)}/#{URI.encode(control_id)}"

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
      nil
    )
  end

  @doc """
  Returns the name of the delegated Amazon Web Services administrator account for
  the organization.
  """
  def get_organization_admin_account(%Client{} = client, options \\ []) do
    url_path = "/account/organizationAdminAccount"
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
      nil
    )
  end

  @doc """
  Returns a list of the in-scope Amazon Web Services services for the specified
  assessment.
  """
  def get_services_in_scope(%Client{} = client, options \\ []) do
    url_path = "/services"
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
      nil
    )
  end

  @doc """
  Returns the settings for the specified account.
  """
  def get_settings(%Client{} = client, attribute, options \\ []) do
    url_path = "/settings/#{URI.encode(attribute)}"
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
      nil
    )
  end

  @doc """
  Returns a list of the frameworks available in the Audit Manager framework
  library.
  """
  def list_assessment_frameworks(
        %Client{} = client,
        framework_type,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assessmentFrameworks"
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

    query_params =
      if !is_nil(framework_type) do
        [{"frameworkType", framework_type} | query_params]
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
      nil
    )
  end

  @doc """
  Returns a list of assessment reports created in Audit Manager.
  """
  def list_assessment_reports(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/assessmentReports"
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
      nil
    )
  end

  @doc """
  Returns a list of current and past assessments from Audit Manager.
  """
  def list_assessments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/assessments"
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
      nil
    )
  end

  @doc """
  Returns a list of controls from Audit Manager.
  """
  def list_controls(
        %Client{} = client,
        control_type,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/controls"
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

    query_params =
      if !is_nil(control_type) do
        [{"controlType", control_type} | query_params]
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
      nil
    )
  end

  @doc """
  Returns a list of keywords that pre-mapped to the specified control data source.
  """
  def list_keywords_for_data_source(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        source,
        options \\ []
      ) do
    url_path = "/dataSourceKeywords"
    headers = []
    query_params = []

    query_params =
      if !is_nil(source) do
        [{"source", source} | query_params]
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
      nil
    )
  end

  @doc """
  Returns a list of all Audit Manager notifications.
  """
  def list_notifications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/notifications"
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
      nil
    )
  end

  @doc """
  Returns a list of tags for the specified resource in Audit Manager.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
      nil
    )
  end

  @doc """
  Enables Audit Manager for the specified account.
  """
  def register_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/registerAccount"
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
      nil
    )
  end

  @doc """
  Enables an account within the organization as the delegated administrator for
  Audit Manager.
  """
  def register_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/registerOrganizationAdminAccount"
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
      nil
    )
  end

  @doc """
  Tags the specified resource in Audit Manager.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
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
      nil
    )
  end

  @doc """
  Removes a tag from a resource in Audit Manager.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      nil
    )
  end

  @doc """
  Edits an Audit Manager assessment.
  """
  def update_assessment(%Client{} = client, assessment_id, input, options \\ []) do
    url_path = "/assessments/#{URI.encode(assessment_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a control within an assessment in Audit Manager.
  """
  def update_assessment_control(
        %Client{} = client,
        assessment_id,
        control_id,
        control_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/controlSets/#{URI.encode(control_set_id)}/controls/#{URI.encode(control_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the status of a control set in an Audit Manager assessment.
  """
  def update_assessment_control_set_status(
        %Client{} = client,
        assessment_id,
        control_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{URI.encode(assessment_id)}/controlSets/#{URI.encode(control_set_id)}/status"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a custom framework in Audit Manager.
  """
  def update_assessment_framework(%Client{} = client, framework_id, input, options \\ []) do
    url_path = "/assessmentFrameworks/#{URI.encode(framework_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the status of an assessment in Audit Manager.
  """
  def update_assessment_status(%Client{} = client, assessment_id, input, options \\ []) do
    url_path = "/assessments/#{URI.encode(assessment_id)}/status"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates a custom control in Audit Manager.
  """
  def update_control(%Client{} = client, control_id, input, options \\ []) do
    url_path = "/controls/#{URI.encode(control_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates Audit Manager settings for the current user account.
  """
  def update_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Validates the integrity of an assessment report in Audit Manager.
  """
  def validate_assessment_report_integrity(%Client{} = client, input, options \\ []) do
    url_path = "/assessmentReports/integrity"
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
      nil
    )
  end
end
