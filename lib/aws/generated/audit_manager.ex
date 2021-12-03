# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AuditManager do
  @moduledoc """
  Welcome to the Audit Manager API reference.

  This guide is for developers who need detailed information about the Audit
  Manager API operations, data types, and errors.

  Audit Manager is a service that provides automated evidence collection so that
  you can continually audit your Amazon Web Services usage. You can use it to
  assess the effectiveness of your controls, manage risk, and simplify compliance.

  Audit Manager provides prebuilt frameworks that structure and automate
  assessments for a given compliance standard. Frameworks include a prebuilt
  collection of controls with descriptions and testing procedures. These controls
  are grouped according to the requirements of the specified compliance standard
  or regulation. You can also customize frameworks and controls to support
  internal audits with specific requirements.

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
  Associates an evidence folder to an assessment report in a Audit Manager
  assessment.
  """
  def associate_assessment_report_evidence_folder(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/associateToAssessmentReport"
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
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/batchAssociateToAssessmentReport"

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
  Creates a batch of delegations for an assessment in Audit Manager.
  """
  def batch_create_delegation_by_assessment(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/delegations"
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
  Deletes a batch of delegations for an assessment in Audit Manager.
  """
  def batch_delete_delegation_by_assessment(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/delegations"
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
  Disassociates a list of evidence from an assessment report in Audit Manager.
  """
  def batch_disassociate_assessment_report_evidence(
        %Client{} = client,
        assessment_id,
        input,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/batchDisassociateFromAssessmentReport"

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
  Uploads one or more pieces of evidence to a control in an Audit Manager
  assessment.
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
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/controls/#{AWS.Util.encode_uri(control_id)}/evidence"

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
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports"
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
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"
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
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"
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
  Deletes a share request for a custom framework in Audit Manager.
  """
  def delete_assessment_framework_share(%Client{} = client, request_id, input, options \\ []) do
    url_path = "/assessmentFrameworkShareRequests/#{AWS.Util.encode_uri(request_id)}"
    headers = []

    {query_params, input} =
      [
        {"requestType", "requestType"}
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
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports/#{AWS.Util.encode_uri(assessment_report_id)}"

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
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"
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
  Removes the specified member Amazon Web Services account as a delegated
  administrator for Audit Manager.

  When you remove a delegated administrator from your Audit Manager settings, you
  continue to have access to the evidence that you previously collected under that
  account. This is also the case when you deregister a delegated administrator
  from Audit Manager. However, Audit Manager will stop collecting and attaching
  evidence to that delegated administrator account moving forward.
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
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/disassociateFromAssessmentReport"

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
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"
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
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"
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
  Returns the URL of an assessment report in Audit Manager.
  """
  def get_assessment_report_url(
        %Client{} = client,
        assessment_id,
        assessment_report_id,
        options \\ []
      ) do
    url_path =
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/reports/#{AWS.Util.encode_uri(assessment_report_id)}/url"

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
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/changelogs"
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
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"
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
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}/evidence/#{AWS.Util.encode_uri(evidence_id)}"

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
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}/evidence"

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
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/evidenceFolders/#{AWS.Util.encode_uri(evidence_folder_id)}"

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
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/evidenceFolders"
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
  Returns a list of evidence folders that are associated with a specified control
  of an assessment in Audit Manager.
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
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/evidenceFolders-by-assessment-control/#{AWS.Util.encode_uri(control_set_id)}/#{AWS.Util.encode_uri(control_id)}"

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
  Gets the latest analytics data for all your current active assessments.
  """
  def get_insights(%Client{} = client, options \\ []) do
    url_path = "/insights"
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
  Gets the latest analytics data for a specific active assessment.
  """
  def get_insights_by_assessment(%Client{} = client, assessment_id, options \\ []) do
    url_path = "/insights/assessments/#{AWS.Util.encode_uri(assessment_id)}"
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
  Returns the settings for the specified Amazon Web Services account.
  """
  def get_settings(%Client{} = client, attribute, options \\ []) do
    url_path = "/settings/#{AWS.Util.encode_uri(attribute)}"
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
  Lists the latest analytics data for controls within a specific control domain
  and a specific active assessment.

  Control insights are listed only if the control belongs to the control domain
  and assessment that was specified. Moreover, the control must have collected
  evidence on the `lastUpdated` date of `controlInsightsByAssessment`. If neither
  of these conditions are met, no data is listed for that control.
  """
  def list_assessment_control_insights_by_control_domain(
        %Client{} = client,
        assessment_id,
        control_domain_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/insights/controls-by-assessment"
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
      if !is_nil(control_domain_id) do
        [{"controlDomainId", control_domain_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(assessment_id) do
        [{"assessmentId", assessment_id} | query_params]
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
  Returns a list of sent or received share requests for custom frameworks in Audit
  Manager.
  """
  def list_assessment_framework_share_requests(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        request_type,
        options \\ []
      ) do
    url_path = "/assessmentFrameworkShareRequests"
    headers = []
    query_params = []

    query_params =
      if !is_nil(request_type) do
        [{"requestType", request_type} | query_params]
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
  Returns a list of the frameworks that are available in the Audit Manager
  framework library.
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
  def list_assessments(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/assessments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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
  Lists the latest analytics data for control domains across all of your active
  assessments.

  A control domain is listed only if at least one of the controls within that
  domain collected evidence on the `lastUpdated` date of `controlDomainInsights`.
  If this condition isn’t met, no data is listed for that control domain.
  """
  def list_control_domain_insights(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/insights/control-domains"
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
  Lists analytics data for control domains within a specified active assessment.

  A control domain is listed only if at least one of the controls within that
  domain collected evidence on the `lastUpdated` date of `controlDomainInsights`.
  If this condition isn’t met, no data is listed for that domain.
  """
  def list_control_domain_insights_by_assessment(
        %Client{} = client,
        assessment_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/insights/control-domains-by-assessment"
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
      if !is_nil(assessment_id) do
        [{"assessmentId", assessment_id} | query_params]
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
  Lists the latest analytics data for controls within a specific control domain
  across all active assessments.

  Control insights are listed only if the control belongs to the control domain
  that was specified and the control collected evidence on the `lastUpdated` date
  of `controlInsightsMetadata`. If neither of these conditions are met, no data is
  listed for that control.
  """
  def list_control_insights_by_control_domain(
        %Client{} = client,
        control_domain_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/insights/controls"
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
      if !is_nil(control_domain_id) do
        [{"controlDomainId", control_domain_id} | query_params]
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
  Returns a list of keywords that are pre-mapped to the specified control data
  source.
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
      nil
    )
  end

  @doc """
  Enables Audit Manager for the specified Amazon Web Services account.
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
  Enables an Amazon Web Services account within the organization as the delegated
  administrator for Audit Manager.
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
  Creates a share request for a custom framework in Audit Manager.

  The share request specifies a recipient and notifies them that a custom
  framework is available. Recipients have 120 days to accept or decline the
  request. If no action is taken, the share request expires.

  When you invoke the `StartAssessmentFrameworkShare` API, you are about to share
  a custom framework with another Amazon Web Services account. You may not share a
  custom framework that is derived from a standard framework if the standard
  framework is designated as not eligible for sharing by Amazon Web Services,
  unless you have obtained permission to do so from the owner of the standard
  framework. To learn more about which standard frameworks are eligible for
  sharing, see [Framework sharing eligibility](https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility)
  in the *Audit Manager User Guide*.
  """
  def start_assessment_framework_share(%Client{} = client, framework_id, input, options \\ []) do
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}/shareRequests"
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
      nil
    )
  end

  @doc """
  Removes a tag from a resource in Audit Manager.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}"
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
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/controls/#{AWS.Util.encode_uri(control_id)}"

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
      "/assessments/#{AWS.Util.encode_uri(assessment_id)}/controlSets/#{AWS.Util.encode_uri(control_set_id)}/status"

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
    url_path = "/assessmentFrameworks/#{AWS.Util.encode_uri(framework_id)}"
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
  Updates a share request for a custom framework in Audit Manager.
  """
  def update_assessment_framework_share(%Client{} = client, request_id, input, options \\ []) do
    url_path = "/assessmentFrameworkShareRequests/#{AWS.Util.encode_uri(request_id)}"
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
    url_path = "/assessments/#{AWS.Util.encode_uri(assessment_id)}/status"
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
    url_path = "/controls/#{AWS.Util.encode_uri(control_id)}"
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
