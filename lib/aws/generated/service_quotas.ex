# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceQuotas do
  @moduledoc """
  Service Quotas is a web service that you can use to manage many of your AWS
  service quotas.

  Quotas, also referred to as limits, are the maximum values for a resource, item,
  or operation. This guide provide descriptions of the Service Quotas actions that
  you can call from an API. For the Service Quotas user guide, which explains how
  to use Service Quotas from the console, see [What is Service Quotas](https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html).

  AWS provides SDKs that consist of libraries and sample code for programming
  languages and platforms (Java, Ruby, .NET, iOS, Android, etc...,). The SDKs
  provide a convenient way to create programmatic access to Service Quotas and
  AWS. For information about the AWS SDKs, including how to download and install
  them, see the [Tools for Amazon Web Services](https://docs.aws.amazon.com/aws.amazon.com/tools) page.
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
  Associates the Service Quotas template with your organization so that when new
  accounts are created in your organization, the template submits increase
  requests for the specified service quotas.

  Use the Service Quotas template to request an increase for any adjustable quota
  value. After you define the Service Quotas template, use this operation to
  associate, or enable, the template.
  """
  def associate_service_quota_template(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateServiceQuotaTemplate", input, options)
  end

  @doc """
  Removes a service quota increase request from the Service Quotas template.
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
  Disables the Service Quotas template.

  Once the template is disabled, it does not request quota increases for new
  accounts in your organization. Disabling the quota template does not apply the
  quota increase requests from the template.

  ## Related operations

    * To enable the quota template, call
  `AssociateServiceQuotaTemplate`.

    * To delete a specific service quota from the template, use
  `DeleteServiceQuotaIncreaseRequestFromTemplate`.
  """
  def disassociate_service_quota_template(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateServiceQuotaTemplate", input, options)
  end

  @doc """
  Retrieves the default service quotas values.

  The Value returned for each quota is the AWS default value, even if the quotas
  have been increased..
  """
  def get_a_w_s_default_service_quota(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAWSDefaultServiceQuota", input, options)
  end

  @doc """
  Retrieves the `ServiceQuotaTemplateAssociationStatus` value from the service.

  Use this action to determine if the Service Quota template is associated, or
  enabled.
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
  Retrieves the details for a particular increase request.
  """
  def get_requested_service_quota_change(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRequestedServiceQuotaChange", input, options)
  end

  @doc """
  Returns the details for the specified service quota.

  This operation provides a different Value than the `GetAWSDefaultServiceQuota`
  operation. This operation returns the applied value for each quota.
  `GetAWSDefaultServiceQuota` returns the default AWS value for each quota.
  """
  def get_service_quota(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetServiceQuota", input, options)
  end

  @doc """
  Returns the details of the service quota increase request in your template.
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
  Lists all default service quotas for the specified AWS service or all AWS
  services.

  ListAWSDefaultServiceQuotas is similar to `ListServiceQuotas` except for the
  Value object. The Value object returned by `ListAWSDefaultServiceQuotas` is the
  default value assigned by AWS. This request returns a list of all service quotas
  for the specified service. The listing of each you'll see the default values are
  the values that AWS provides for the quotas.

  Always check the `NextToken` response parameter when calling any of the `List*`
  operations. These operations can return an unexpected list of results, even when
  there are more results available. When this happens, the `NextToken` response
  parameter contains a value to pass the next call to the same API to request the
  next part of the list.
  """
  def list_a_w_s_default_service_quotas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAWSDefaultServiceQuotas", input, options)
  end

  @doc """
  Requests a list of the changes to quotas for a service.
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
  Requests a list of the changes to specific service quotas.

  This command provides additional granularity over the
  `ListRequestedServiceQuotaChangeHistory` command. Once a quota change request
  has reached `CASE_CLOSED, APPROVED,` or `DENIED`, the history has been kept for
  90 days.
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
  Returns a list of the quota increase requests in the template.
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
  Lists all service quotas for the specified AWS service.

  This request returns a list of the service quotas for the specified service.
  you'll see the default values are the values that AWS provides for the quotas.

  Always check the `NextToken` response parameter when calling any of the `List*`
  operations. These operations can return an unexpected list of results, even when
  there are more results available. When this happens, the `NextToken` response
  parameter contains a value to pass the next call to the same API to request the
  next part of the list.
  """
  def list_service_quotas(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServiceQuotas", input, options)
  end

  @doc """
  Lists the AWS services available in Service Quotas.

  Not all AWS services are available in Service Quotas. To list the see the list
  of the service quotas for a specific service, use `ListServiceQuotas`.
  """
  def list_services(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListServices", input, options)
  end

  @doc """
  Defines and adds a quota to the service quota template.

  To add a quota to the template, you must provide the `ServiceCode`, `QuotaCode`,
  `AwsRegion`, and `DesiredValue`. Once you add a quota to the template, use
  `ListServiceQuotaIncreaseRequestsInTemplate` to see the list of quotas in the
  template.
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
  Retrieves the details of a service quota increase request.

  The response to this command provides the details in the
  `RequestedServiceQuotaChange` object.
  """
  def request_service_quota_increase(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RequestServiceQuotaIncrease", input, options)
  end
end