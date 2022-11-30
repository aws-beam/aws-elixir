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
    %{
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "AssociateAssessmentReportEvidenceFolder",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchAssociateAssessmentReportEvidence",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchCreateDelegationByAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchDeleteDelegationByAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchDisassociateAssessmentReportEvidence",
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

  You can upload manual evidence from any Amazon Simple Storage Service (Amazon
  S3) bucket by specifying the S3 URI of the evidence.

  You must upload manual evidence to your S3 bucket before you can upload it to
  your assessment. For instructions, see
  [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html) and
  [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html)
  in the *Amazon Simple Storage Service API Reference.*

  The following restrictions apply to this action:

    * Maximum size of an individual evidence file: 100 MB

    * Number of daily manual evidence uploads per control: 100

    * Supported file formats: See [Supported file types for manual evidence](https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files)
  in the *Audit Manager User Guide*

  For more information about Audit Manager service restrictions, see [Quotas and restrictions for Audit
  Manager](https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html).
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BatchImportEvidenceToAssessmentControl",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAssessmentFramework",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAssessmentReport",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateControl",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAssessmentFramework",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAssessmentFrameworkShare",
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
  Deletes an assessment report in Audit Manager.

  When you run the `DeleteAssessmentReport` operation, Audit Manager attempts to
  delete the following data:

    1. The specified assessment report that’s stored in your S3 bucket

    2. The associated metadata that’s stored in Audit Manager

  If Audit Manager can’t access the assessment report in your S3 bucket, the
  report isn’t deleted. In this event, the `DeleteAssessmentReport` operation
  doesn’t fail. Instead, it proceeds to delete the associated metadata only. You
  must then delete the assessment report from the S3 bucket yourself.

  This scenario happens when Audit Manager receives a `403 (Forbidden)` or `404
  (Not Found)` error from Amazon S3. To avoid this, make sure that your S3 bucket
  is available, and that you configured the correct permissions for Audit Manager
  to delete resources in your S3 bucket. For an example permissions policy that
  you can use, see [Assessment report destination permissions](https://docs.aws.amazon.com/audit-manager/latest/userguide/security_iam_id-based-policy-examples.html#full-administrator-access-assessment-report-destination)
  in the *Audit Manager User Guide*. For information about the issues that could
  cause a `403 (Forbidden)` or `404 (Not Found`) error from Amazon S3, see [List of Error
  Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList)
  in the *Amazon Simple Storage Service API Reference*.
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAssessmentReport",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteControl",
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

  When you deregister your account from Audit Manager, your data isn’t deleted. If
  you want to delete your resource data, you must perform that task separately
  before you deregister your account. Either, you can do this in the Audit Manager
  console. Or, you can use one of the delete API operations that are provided by
  Audit Manager.

  To delete your Audit Manager resource data, see the following instructions:

    
  [DeleteAssessment](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html) (see also: [Deleting an
  assessment](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html)
  in the *Audit Manager User Guide*)

    
  [DeleteAssessmentFramework](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html) (see also: [Deleting a custom
  framework](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html)
  in the *Audit Manager User Guide*)

    
  [DeleteAssessmentFrameworkShare](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html) (see also: [Deleting a share
  request](https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html)
  in the *Audit Manager User Guide*)

    
  [DeleteAssessmentReport](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html) (see also: [Deleting an assessment
  report](https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps)
  in the *Audit Manager User Guide*)

    
  [DeleteControl](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html) (see also: [Deleting a custom
  control](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html)
  in the *Audit Manager User Guide*)

  At this time, Audit Manager doesn't provide an option to delete evidence. All
  available delete operations are listed above.
  """
  def deregister_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/deregisterAccount"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeregisterAccount",
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
  Removes the specified Amazon Web Services account as a delegated administrator
  for Audit Manager.

  When you remove a delegated administrator from your Audit Manager settings, you
  continue to have access to the evidence that you previously collected under that
  account. This is also the case when you deregister a delegated administrator
  from Organizations. However, Audit Manager will stop collecting and attaching
  evidence to that delegated administrator account moving forward.

  Keep in mind the following cleanup task if you use evidence finder:

  Before you use your management account to remove a delegated administrator, make
  sure that the current delegated administrator account signs in to Audit Manager
  and disables evidence finder first. Disabling evidence finder automatically
  deletes the event data store that was created in their account when they enabled
  evidence finder. If this task isn’t completed, the event data store remains in
  their account. In this case, we recommend that the original delegated
  administrator goes to CloudTrail Lake and manually [deletes the event data store](https://docs.aws.amazon.com/userguide/awscloudtrail/latest/userguide/query-eds-disable-termination.html).

  This cleanup task is necessary to ensure that you don't end up with multiple
  event data stores. Audit Manager will ignore an unused event data store after
  you remove or change a delegated administrator account. However, the unused
  event data store continues to incur storage costs from CloudTrail Lake if you
  don't delete it.

  When you deregister a delegated administrator account for Audit Manager, the
  data for that account isn’t deleted. If you want to delete resource data for a
  delegated administrator account, you must perform that task separately before
  you deregister the account. Either, you can do this in the Audit Manager
  console. Or, you can use one of the delete API operations that are provided by
  Audit Manager.

  To delete your Audit Manager resource data, see the following instructions:

    *
  [DeleteAssessment](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html) (see also: [Deleting an
  assessment](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html)
  in the *Audit Manager User Guide*)

    *
  [DeleteAssessmentFramework](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html) (see also: [Deleting a custom
  framework](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html)
  in the *Audit Manager User Guide*)

    *
  [DeleteAssessmentFrameworkShare](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html) (see also: [Deleting a share
  request](https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html)
  in the *Audit Manager User Guide*)

    *
  [DeleteAssessmentReport](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html) (see also: [Deleting an assessment
  report](https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps)
  in the *Audit Manager User Guide*)

    *
  [DeleteControl](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html) (see also: [Deleting a custom
  control](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html)
  in the *Audit Manager User Guide*)

  At this time, Audit Manager doesn't provide an option to delete evidence. All
  available delete operations are listed above.
  """
  def deregister_organization_admin_account(%Client{} = client, input, options \\ []) do
    url_path = "/account/deregisterOrganizationAdminAccount"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeregisterOrganizationAdminAccount",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisassociateAssessmentReportEvidenceFolder",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAccountStatus",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAssessmentFramework",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAssessmentReportUrl",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetChangeLogs",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetControl",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDelegations",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEvidence",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEvidenceByEvidenceFolder",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEvidenceFolder",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEvidenceFoldersByAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEvidenceFoldersByAssessmentControl",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetInsights",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetInsightsByAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetOrganizationAdminAccount",
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
  Returns a list of all of the Amazon Web Services that you can choose to include
  in your assessment.

  When you [create an assessment](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_CreateAssessment.html),
  specify which of these services you want to include to narrow the assessment's
  [scope](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Scope.html).
  """
  def get_services_in_scope(%Client{} = client, options \\ []) do
    url_path = "/services"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetServicesInScope",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetSettings",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAssessmentControlInsightsByControlDomain",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAssessmentFrameworkShareRequests",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAssessmentFrameworks",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAssessmentReports",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAssessments",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListControlDomainInsights",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListControlDomainInsightsByAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListControlInsightsByControlDomain",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListControls",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListKeywordsForDataSource",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListNotifications",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RegisterAccount",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "RegisterOrganizationAdminAccount",
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

  When you create a share request, Audit Manager stores a snapshot of your custom
  framework in the US East (N. Virginia) Amazon Web Services Region. Audit Manager
  also stores a backup of the same snapshot in the US West (Oregon) Amazon Web
  Services Region.

  Audit Manager deletes the snapshot and the backup snapshot when one of the
  following events occurs:

    * The sender revokes the share request.

    * The recipient declines the share request.

    * The recipient encounters an error and doesn't successfully accept
  the share request.

    * The share request expires before the recipient responds to the
  request.

  When a sender [resends a share request](https://docs.aws.amazon.com/audit-manager/latest/userguide/framework-sharing.html#framework-sharing-resend),
  the snapshot is replaced with an updated version that corresponds with the
  latest version of the custom framework.

  When a recipient accepts a share request, the snapshot is replicated into their
  Amazon Web Services account under the Amazon Web Services Region that was
  specified in the share request.

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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartAssessmentFrameworkShare",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAssessment",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAssessmentControl",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAssessmentControlSetStatus",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAssessmentFramework",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAssessmentFrameworkShare",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAssessmentStatus",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateControl",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateSettings",
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ValidateAssessmentReportIntegrity",
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
