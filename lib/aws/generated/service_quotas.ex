# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceQuotas do
  @moduledoc """
  With Service Quotas, you can view and manage your quotas easily as your Amazon
  Web Services workloads grow.

  Quotas, also referred to as limits, are the maximum number of resources that you
  can
  create in your Amazon Web Services account. For more information, see the
  [Service Quotas User Guide](https://docs.aws.amazon.com/servicequotas/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      request_service_quota_increase_response() :: %{
        "RequestedQuota" => requested_service_quota_change()
      }
      
  """
  @type request_service_quota_increase_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aws_default_service_quota_request() :: %{
        required("QuotaCode") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type get_aws_default_service_quota_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_quotas_response() :: %{
        "NextToken" => String.t(),
        "Quotas" => list(service_quota()())
      }
      
  """
  @type list_service_quotas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_increase_request_in_template() :: %{
        "AwsRegion" => String.t(),
        "DesiredValue" => float(),
        "GlobalQuota" => boolean(),
        "QuotaCode" => String.t(),
        "QuotaName" => String.t(),
        "ServiceCode" => String.t(),
        "ServiceName" => String.t(),
        "Unit" => String.t()
      }
      
  """
  @type service_quota_increase_request_in_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_aws_default_service_quotas_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type list_aws_default_service_quotas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_requested_service_quota_change_response() :: %{
        "RequestedQuota" => requested_service_quota_change()
      }
      
  """
  @type get_requested_service_quota_change_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_service_quota_template_request() :: %{}
      
  """
  @type associate_service_quota_template_request() :: %{}

  @typedoc """

  ## Example:
      
      dependency_access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type dependency_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_service_quota_increase_request_into_template_request() :: %{
        required("AwsRegion") => String.t(),
        required("DesiredValue") => float(),
        required("QuotaCode") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type put_service_quota_increase_request_into_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_aws_default_service_quota_response() :: %{
        "Quota" => service_quota()
      }
      
  """
  @type get_aws_default_service_quota_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_quota_increase_request_from_template_response() :: %{
        "ServiceQuotaIncreaseRequestInTemplate" => service_quota_increase_request_in_template()
      }
      
  """
  @type get_service_quota_increase_request_from_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_quota_increase_requests_in_template_request() :: %{
        optional("AwsRegion") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ServiceCode") => String.t()
      }
      
  """
  @type list_service_quota_increase_requests_in_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      illegal_argument_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type illegal_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_quota_increase_request_from_template_request() :: %{
        required("AwsRegion") => String.t(),
        required("QuotaCode") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type delete_service_quota_increase_request_from_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_quota_increase_request_from_template_response() :: %{}
      
  """
  @type delete_service_quota_increase_request_from_template_response() :: %{}

  @typedoc """

  ## Example:
      
      list_requested_service_quota_change_history_response() :: %{
        "NextToken" => String.t(),
        "RequestedQuotas" => list(requested_service_quota_change()())
      }
      
  """
  @type list_requested_service_quota_change_history_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_service_quota_increase_request_into_template_response() :: %{
        "ServiceQuotaIncreaseRequestInTemplate" => service_quota_increase_request_in_template()
      }
      
  """
  @type put_service_quota_increase_request_into_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_info() :: %{
        "MetricDimensions" => map(),
        "MetricName" => String.t(),
        "MetricNamespace" => String.t(),
        "MetricStatisticRecommendation" => String.t()
      }
      
  """
  @type metric_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_association_for_service_quota_template_request() :: %{}
      
  """
  @type get_association_for_service_quota_template_request() :: %{}

  @typedoc """

  ## Example:
      
      requested_service_quota_change() :: %{
        "CaseId" => String.t(),
        "Created" => non_neg_integer(),
        "DesiredValue" => float(),
        "GlobalQuota" => boolean(),
        "Id" => String.t(),
        "LastUpdated" => non_neg_integer(),
        "QuotaArn" => String.t(),
        "QuotaCode" => String.t(),
        "QuotaContext" => quota_context_info(),
        "QuotaName" => String.t(),
        "QuotaRequestedAtLevel" => list(any()),
        "Requester" => String.t(),
        "ServiceCode" => String.t(),
        "ServiceName" => String.t(),
        "Status" => list(any()),
        "Unit" => String.t()
      }
      
  """
  @type requested_service_quota_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_service_quota_template_response() :: %{}
      
  """
  @type disassociate_service_quota_template_response() :: %{}

  @typedoc """

  ## Example:
      
      list_aws_default_service_quotas_response() :: %{
        "NextToken" => String.t(),
        "Quotas" => list(service_quota()())
      }
      
  """
  @type list_aws_default_service_quotas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_not_in_all_features_mode_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organization_not_in_all_features_mode_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_service_quota_template_response() :: %{}
      
  """
  @type associate_service_quota_template_response() :: %{}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_requested_service_quota_change_history_by_quota_response() :: %{
        "NextToken" => String.t(),
        "RequestedQuotas" => list(requested_service_quota_change()())
      }
      
  """
  @type list_requested_service_quota_change_history_by_quota_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_response() :: %{
        "NextToken" => String.t(),
        "Services" => list(service_info()())
      }
      
  """
  @type list_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quota_context_info() :: %{
        "ContextId" => String.t(),
        "ContextScope" => list(any()),
        "ContextScopeType" => String.t()
      }
      
  """
  @type quota_context_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_quota_response() :: %{
        "Quota" => service_quota()
      }
      
  """
  @type get_service_quota_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_service_quota_increase_request() :: %{
        optional("ContextId") => String.t(),
        required("DesiredValue") => float(),
        required("QuotaCode") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type request_service_quota_increase_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_service_quota_template_request() :: %{}
      
  """
  @type disassociate_service_quota_template_request() :: %{}

  @typedoc """

  ## Example:
      
      get_association_for_service_quota_template_response() :: %{
        "ServiceQuotaTemplateAssociationStatus" => list(any())
      }
      
  """
  @type get_association_for_service_quota_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_resource_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_resource_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_such_resource_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type no_such_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_quotas_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QuotaAppliedAtLevel") => list(any()),
        optional("QuotaCode") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type list_service_quotas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_requested_service_quota_change_request() :: %{
        required("RequestId") => String.t()
      }
      
  """
  @type get_requested_service_quota_change_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      service_quota() :: %{
        "Adjustable" => boolean(),
        "ErrorReason" => error_reason(),
        "GlobalQuota" => boolean(),
        "Period" => quota_period(),
        "QuotaAppliedAtLevel" => list(any()),
        "QuotaArn" => String.t(),
        "QuotaCode" => String.t(),
        "QuotaContext" => quota_context_info(),
        "QuotaName" => String.t(),
        "ServiceCode" => String.t(),
        "ServiceName" => String.t(),
        "Unit" => String.t(),
        "UsageMetric" => metric_info(),
        "Value" => float()
      }
      
  """
  @type service_quota() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_requested_service_quota_change_history_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QuotaRequestedAtLevel") => list(any()),
        optional("ServiceCode") => String.t(),
        optional("Status") => list(any())
      }
      
  """
  @type list_requested_service_quota_change_history_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_available_organization_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type no_available_organization_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      error_reason() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t()
      }
      
  """
  @type error_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_template_not_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_template_not_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_quota_request() :: %{
        optional("ContextId") => String.t(),
        required("QuotaCode") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type get_service_quota_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      templates_not_available_in_region_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type templates_not_available_in_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_quota_increase_request_from_template_request() :: %{
        required("AwsRegion") => String.t(),
        required("QuotaCode") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type get_service_quota_increase_request_from_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_info() :: %{
        "ServiceCode" => String.t(),
        "ServiceName" => String.t()
      }
      
  """
  @type service_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      quota_period() :: %{
        "PeriodUnit" => list(any()),
        "PeriodValue" => integer()
      }
      
  """
  @type quota_period() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      aws_service_access_not_enabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type aws_service_access_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_requested_service_quota_change_history_by_quota_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QuotaRequestedAtLevel") => list(any()),
        optional("Status") => list(any()),
        required("QuotaCode") => String.t(),
        required("ServiceCode") => String.t()
      }
      
  """
  @type list_requested_service_quota_change_history_by_quota_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_policy_violation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type tag_policy_violation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_service_quota_increase_requests_in_template_response() :: %{
        "NextToken" => String.t(),
        "ServiceQuotaIncreaseRequestInTemplateList" => list(service_quota_increase_request_in_template()())
      }
      
  """
  @type list_service_quota_increase_requests_in_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_pagination_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_pagination_token_exception() :: %{String.t() => any()}

  @type associate_service_quota_template_errors() ::
          aws_service_access_not_enabled_exception()
          | templates_not_available_in_region_exception()
          | no_available_organization_exception()
          | access_denied_exception()
          | service_exception()
          | organization_not_in_all_features_mode_exception()
          | too_many_requests_exception()
          | dependency_access_denied_exception()

  @type delete_service_quota_increase_request_from_template_errors() ::
          aws_service_access_not_enabled_exception()
          | templates_not_available_in_region_exception()
          | no_available_organization_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | dependency_access_denied_exception()

  @type disassociate_service_quota_template_errors() ::
          aws_service_access_not_enabled_exception()
          | templates_not_available_in_region_exception()
          | service_quota_template_not_in_use_exception()
          | no_available_organization_exception()
          | access_denied_exception()
          | service_exception()
          | too_many_requests_exception()
          | dependency_access_denied_exception()

  @type get_association_for_service_quota_template_errors() ::
          aws_service_access_not_enabled_exception()
          | templates_not_available_in_region_exception()
          | service_quota_template_not_in_use_exception()
          | no_available_organization_exception()
          | access_denied_exception()
          | service_exception()
          | too_many_requests_exception()
          | dependency_access_denied_exception()

  @type get_aws_default_service_quota_errors() ::
          access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type get_requested_service_quota_change_errors() ::
          access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type get_service_quota_errors() ::
          access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type get_service_quota_increase_request_from_template_errors() ::
          aws_service_access_not_enabled_exception()
          | templates_not_available_in_region_exception()
          | no_available_organization_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | dependency_access_denied_exception()

  @type list_aws_default_service_quotas_errors() ::
          invalid_pagination_token_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type list_requested_service_quota_change_history_errors() ::
          invalid_pagination_token_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type list_requested_service_quota_change_history_by_quota_errors() ::
          invalid_pagination_token_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type list_service_quota_increase_requests_in_template_errors() ::
          aws_service_access_not_enabled_exception()
          | templates_not_available_in_region_exception()
          | no_available_organization_exception()
          | access_denied_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | dependency_access_denied_exception()

  @type list_service_quotas_errors() ::
          invalid_pagination_token_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type list_services_errors() ::
          invalid_pagination_token_exception()
          | access_denied_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type list_tags_for_resource_errors() ::
          access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type put_service_quota_increase_request_into_template_errors() ::
          aws_service_access_not_enabled_exception()
          | templates_not_available_in_region_exception()
          | no_available_organization_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | quota_exceeded_exception()
          | dependency_access_denied_exception()

  @type request_service_quota_increase_errors() ::
          resource_already_exists_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | invalid_resource_state_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()
          | quota_exceeded_exception()
          | dependency_access_denied_exception()

  @type tag_resource_errors() ::
          tag_policy_violation_exception()
          | too_many_tags_exception()
          | access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  @type untag_resource_errors() ::
          access_denied_exception()
          | no_such_resource_exception()
          | service_exception()
          | too_many_requests_exception()
          | illegal_argument_exception()

  def metadata do
    %{
      api_version: "2019-06-24",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicequotas",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Service Quotas",
      signature_version: "v4",
      signing_name: "servicequotas",
      target_prefix: "ServiceQuotasV20190624"
    }
  end

  @doc """
  Associates your quota request template with your organization.

  When a new
  Amazon Web Services account is created in your organization, the quota increase
  requests in the
  template are automatically applied to the account. You can add a quota increase
  request
  for any adjustable quota to your template.
  """
  @spec associate_service_quota_template(
          map(),
          associate_service_quota_template_request(),
          list()
        ) ::
          {:ok, associate_service_quota_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_service_quota_template_errors()}
  def associate_service_quota_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateServiceQuotaTemplate", input, options)
  end

  @doc """
  Deletes the quota increase request for the specified quota from your quota
  request
  template.
  """
  @spec delete_service_quota_increase_request_from_template(
          map(),
          delete_service_quota_increase_request_from_template_request(),
          list()
        ) ::
          {:ok, delete_service_quota_increase_request_from_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_quota_increase_request_from_template_errors()}
  def delete_service_quota_increase_request_from_template(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteServiceQuotaIncreaseRequestFromTemplate",
      input,
      options
    )
  end

  @doc """
  Disables your quota request template.

  After a template is disabled, the quota increase
  requests in the template are not applied to new Amazon Web Services accounts in
  your organization.
  Disabling a quota request template does not apply its quota increase requests.
  """
  @spec disassociate_service_quota_template(
          map(),
          disassociate_service_quota_template_request(),
          list()
        ) ::
          {:ok, disassociate_service_quota_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_service_quota_template_errors()}
  def disassociate_service_quota_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateServiceQuotaTemplate", input, options)
  end

  @doc """
  Retrieves the status of the association for the quota request template.
  """
  @spec get_association_for_service_quota_template(
          map(),
          get_association_for_service_quota_template_request(),
          list()
        ) ::
          {:ok, get_association_for_service_quota_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_association_for_service_quota_template_errors()}
  def get_association_for_service_quota_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAssociationForServiceQuotaTemplate", input, options)
  end

  @doc """
  Retrieves the default value for the specified quota.

  The default value does not
  reflect any quota increases.
  """
  @spec get_aws_default_service_quota(map(), get_aws_default_service_quota_request(), list()) ::
          {:ok, get_aws_default_service_quota_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_aws_default_service_quota_errors()}
  def get_aws_default_service_quota(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAWSDefaultServiceQuota", input, options)
  end

  @doc """
  Retrieves information about the specified quota increase request.
  """
  @spec get_requested_service_quota_change(
          map(),
          get_requested_service_quota_change_request(),
          list()
        ) ::
          {:ok, get_requested_service_quota_change_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_requested_service_quota_change_errors()}
  def get_requested_service_quota_change(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRequestedServiceQuotaChange", input, options)
  end

  @doc """
  Retrieves the applied quota value for the specified quota.

  For some quotas, only the
  default values are available. If the applied quota value is not available for a
  quota,
  the quota is not retrieved.
  """
  @spec get_service_quota(map(), get_service_quota_request(), list()) ::
          {:ok, get_service_quota_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_quota_errors()}
  def get_service_quota(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceQuota", input, options)
  end

  @doc """
  Retrieves information about the specified quota increase request in your quota
  request
  template.
  """
  @spec get_service_quota_increase_request_from_template(
          map(),
          get_service_quota_increase_request_from_template_request(),
          list()
        ) ::
          {:ok, get_service_quota_increase_request_from_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_quota_increase_request_from_template_errors()}
  def get_service_quota_increase_request_from_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "GetServiceQuotaIncreaseRequestFromTemplate",
      input,
      options
    )
  end

  @doc """
  Lists the default values for the quotas for the specified Amazon Web Service.

  A default
  value does not reflect any quota increases.
  """
  @spec list_aws_default_service_quotas(map(), list_aws_default_service_quotas_request(), list()) ::
          {:ok, list_aws_default_service_quotas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_aws_default_service_quotas_errors()}
  def list_aws_default_service_quotas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAWSDefaultServiceQuotas", input, options)
  end

  @doc """
  Retrieves the quota increase requests for the specified Amazon Web Service.
  """
  @spec list_requested_service_quota_change_history(
          map(),
          list_requested_service_quota_change_history_request(),
          list()
        ) ::
          {:ok, list_requested_service_quota_change_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_requested_service_quota_change_history_errors()}
  def list_requested_service_quota_change_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRequestedServiceQuotaChangeHistory", input, options)
  end

  @doc """
  Retrieves the quota increase requests for the specified quota.
  """
  @spec list_requested_service_quota_change_history_by_quota(
          map(),
          list_requested_service_quota_change_history_by_quota_request(),
          list()
        ) ::
          {:ok, list_requested_service_quota_change_history_by_quota_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_requested_service_quota_change_history_by_quota_errors()}
  def list_requested_service_quota_change_history_by_quota(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListRequestedServiceQuotaChangeHistoryByQuota",
      input,
      options
    )
  end

  @doc """
  Lists the quota increase requests in the specified quota request template.
  """
  @spec list_service_quota_increase_requests_in_template(
          map(),
          list_service_quota_increase_requests_in_template_request(),
          list()
        ) ::
          {:ok, list_service_quota_increase_requests_in_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_service_quota_increase_requests_in_template_errors()}
  def list_service_quota_increase_requests_in_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListServiceQuotaIncreaseRequestsInTemplate",
      input,
      options
    )
  end

  @doc """
  Lists the applied quota values for the specified Amazon Web Service.

  For some quotas, only
  the default values are available. If the applied quota value is not available
  for a
  quota, the quota is not retrieved.
  """
  @spec list_service_quotas(map(), list_service_quotas_request(), list()) ::
          {:ok, list_service_quotas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_service_quotas_errors()}
  def list_service_quotas(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServiceQuotas", input, options)
  end

  @doc """
  Lists the names and codes for the Amazon Web Services integrated with Service
  Quotas.
  """
  @spec list_services(map(), list_services_request(), list()) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_services_errors()}
  def list_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
  Returns a list of the tags assigned to the specified applied quota.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds a quota increase request to your quota request template.
  """
  @spec put_service_quota_increase_request_into_template(
          map(),
          put_service_quota_increase_request_into_template_request(),
          list()
        ) ::
          {:ok, put_service_quota_increase_request_into_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_service_quota_increase_request_into_template_errors()}
  def put_service_quota_increase_request_into_template(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "PutServiceQuotaIncreaseRequestIntoTemplate",
      input,
      options
    )
  end

  @doc """
  Submits a quota increase request for the specified quota.
  """
  @spec request_service_quota_increase(map(), request_service_quota_increase_request(), list()) ::
          {:ok, request_service_quota_increase_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, request_service_quota_increase_errors()}
  def request_service_quota_increase(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RequestServiceQuotaIncrease", input, options)
  end

  @doc """
  Adds tags to the specified applied quota.

  You can include one or more tags to add to
  the quota.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified applied quota.

  You can specify one or more tags to
  remove.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
