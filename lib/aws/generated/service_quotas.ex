# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceQuotas do
  @moduledoc """
  With Service Quotas, you can view and manage your quotas easily as your AWS
  workloads grow.

  Quotas, also referred to as limits, are the maximum number of resources that you
  can create in your AWS account. For more information, see the [Service Quotas User Guide](https://docs.aws.amazon.com/servicequotas/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-06-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicequotas",
      global?: false,
      protocol: "json",
      service_id: "Service Quotas",
      signature_version: "v4",
      signing_name: "servicequotas",
      target_prefix: "ServiceQuotasV20190624"
    }
  end

  @doc """
  Associates your quota request template with your organization.

  When a new account is created in your organization, the quota increase requests
  in the template are automatically applied to the account. You can add a quota
  increase request for any adjustable quota to your template.
  """
  def associate_service_quota_template(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateServiceQuotaTemplate", input, options)
  end

  @doc """
  Deletes the quota increase request for the specified quota from your quota
  request template.
  """
  def delete_service_quota_increase_request_from_template(
        %Client{} = client,
        input,
        options \\ []
      ) do
    Request.request_post(
      client,
      metadata(),
      "DeleteServiceQuotaIncreaseRequestFromTemplate",
      input,
      options
    )
  end

  @doc """
  Disables your quota request template.

  After a template is disabled, the quota increase requests in the template are
  not applied to new accounts in your organization. Disabling a quota request
  template does not apply its quota increase requests.
  """
  def disassociate_service_quota_template(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateServiceQuotaTemplate", input, options)
  end

  @doc """
  Retrieves the status of the association for the quota request template.
  """
  def get_association_for_service_quota_template(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetAssociationForServiceQuotaTemplate",
      input,
      options
    )
  end

  @doc """
  Retrieves the default value for the specified quota.

  The default value does not reflect any quota increases.
  """
  def get_aws_default_service_quota(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAWSDefaultServiceQuota", input, options)
  end

  @doc """
  Retrieves information about the specified quota increase request.
  """
  def get_requested_service_quota_change(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRequestedServiceQuotaChange", input, options)
  end

  @doc """
  Retrieves the applied quota value for the specified quota.

  For some quotas, only the default values are available. If the applied quota
  value is not available for a quota, the quota is not retrieved.
  """
  def get_service_quota(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetServiceQuota", input, options)
  end

  @doc """
  Retrieves information about the specified quota increase request in your quota
  request template.
  """
  def get_service_quota_increase_request_from_template(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "GetServiceQuotaIncreaseRequestFromTemplate",
      input,
      options
    )
  end

  @doc """
  Lists the default values for the quotas for the specified AWS service.

  A default value does not reflect any quota increases.
  """
  def list_aws_default_service_quotas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAWSDefaultServiceQuotas", input, options)
  end

  @doc """
  Retrieves the quota increase requests for the specified service.
  """
  def list_requested_service_quota_change_history(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListRequestedServiceQuotaChangeHistory",
      input,
      options
    )
  end

  @doc """
  Retrieves the quota increase requests for the specified quota.
  """
  def list_requested_service_quota_change_history_by_quota(
        %Client{} = client,
        input,
        options \\ []
      ) do
    Request.request_post(
      client,
      metadata(),
      "ListRequestedServiceQuotaChangeHistoryByQuota",
      input,
      options
    )
  end

  @doc """
  Lists the quota increase requests in the specified quota request template.
  """
  def list_service_quota_increase_requests_in_template(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListServiceQuotaIncreaseRequestsInTemplate",
      input,
      options
    )
  end

  @doc """
  Lists the applied quota values for the specified AWS service.

  For some quotas, only the default values are available. If the applied quota
  value is not available for a quota, the quota is not retrieved.
  """
  def list_service_quotas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServiceQuotas", input, options)
  end

  @doc """
  Lists the names and codes for the services integrated with Service Quotas.
  """
  def list_services(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServices", input, options)
  end

  @doc """
  Returns a list of the tags assigned to the specified applied quota.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Adds a quota increase request to your quota request template.
  """
  def put_service_quota_increase_request_into_template(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "PutServiceQuotaIncreaseRequestIntoTemplate",
      input,
      options
    )
  end

  @doc """
  Submits a quota increase request for the specified quota.
  """
  def request_service_quota_increase(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RequestServiceQuotaIncrease", input, options)
  end

  @doc """
  Adds tags to the specified applied quota.

  You can include one or more tags to add to the quota.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified applied quota.

  You can specify one or more tags to remove.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end
end