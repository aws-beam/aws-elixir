# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PartnerCentralBenefits do
  @moduledoc """
  AWS Partner Central Benefits Service provides APIs for managing partner
  benefits, applications, and allocations within the AWS Partner Network
  ecosystem.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      recall_benefit_application_output() :: %{}
      
  """
  @type recall_benefit_application_output() :: %{}

  @typedoc """

  ## Example:
      
      credit_details() :: %{
        "AllocatedAmount" => monetary_value(),
        "Codes" => list(credit_code()),
        "IssuedAmount" => monetary_value()
      }
      
  """
  @type credit_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_benefit_application_input() :: %{
        optional("BenefitApplicationDetails") => [any()],
        optional("Description") => String.t() | atom(),
        optional("FileDetails") => list(file_input()),
        optional("Name") => String.t() | atom(),
        optional("PartnerContacts") => list(contact()),
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => [String.t() | atom()],
        required("Identifier") => String.t() | atom(),
        required("Revision") => [String.t() | atom()]
      }
      
  """
  @type update_benefit_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      file_input() :: %{
        "BusinessUseCase" => [String.t() | atom()],
        "FileURI" => String.t() | atom()
      }
      
  """
  @type file_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_benefit_allocations_input() :: %{
        optional("BenefitApplicationIdentifiers") => list(String.t() | atom()),
        optional("BenefitIdentifiers") => list(String.t() | atom()),
        optional("FulfillmentTypes") => list(list(any())()),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()],
        optional("Status") => list(list(any())()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_benefit_allocations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_benefit_application_resource_output() :: %{
        "Arn" => [String.t() | atom()],
        "Id" => String.t() | atom(),
        "Revision" => [String.t() | atom()]
      }
      
  """
  @type disassociate_benefit_application_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      credit_code() :: %{
        "AwsAccountId" => [String.t() | atom()],
        "AwsCreditCode" => [String.t() | atom()],
        "ExpiresAt" => non_neg_integer(),
        "IssuedAt" => non_neg_integer(),
        "Status" => list(any()),
        "Value" => monetary_value()
      }
      
  """
  @type credit_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_benefit_application_input() :: %{
        optional("AssociatedResources") => list(String.t() | atom()),
        optional("BenefitApplicationDetails") => [any()],
        optional("Description") => String.t() | atom(),
        optional("FileDetails") => list(file_input()),
        optional("FulfillmentTypes") => list(list(any())()),
        optional("Name") => String.t() | atom(),
        optional("PartnerContacts") => list(contact()),
        optional("Tags") => list(tag()),
        required("BenefitIdentifier") => [String.t() | atom()],
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => [String.t() | atom()]
      }
      
  """
  @type create_benefit_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_benefit_application_resource_output() :: %{
        "Arn" => [String.t() | atom()],
        "Id" => String.t() | atom(),
        "Revision" => [String.t() | atom()]
      }
      
  """
  @type associate_benefit_application_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_benefit_application_output() :: %{
        "Arn" => String.t() | atom(),
        "AssociatedResources" => list(String.t() | atom()),
        "BenefitApplicationDetails" => [any()],
        "BenefitId" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "FileDetails" => list(file_detail()),
        "FulfillmentTypes" => list(list(any())()),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PartnerContacts" => list(contact()),
        "Programs" => list(String.t() | atom()),
        "Revision" => [String.t() | atom()],
        "Stage" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => [String.t() | atom()],
        "StatusReasonCode" => String.t() | atom(),
        "StatusReasonCodes" => list(String.t() | atom()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type get_benefit_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      benefit_summary() :: %{
        "Arn" => [String.t() | atom()],
        "Catalog" => String.t() | atom(),
        "Description" => [String.t() | atom()],
        "FulfillmentTypes" => list(list(any())()),
        "Id" => [String.t() | atom()],
        "Name" => [String.t() | atom()],
        "Programs" => list(String.t() | atom()),
        "Status" => list(any())
      }
      
  """
  @type benefit_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_benefit_output() :: %{
        "Arn" => [String.t() | atom()],
        "BenefitRequestSchema" => [any()],
        "Catalog" => String.t() | atom(),
        "Description" => [String.t() | atom()],
        "FulfillmentTypes" => list(list(any())()),
        "Id" => [String.t() | atom()],
        "Name" => [String.t() | atom()],
        "Programs" => list(String.t() | atom()),
        "Status" => list(any())
      }
      
  """
  @type get_benefit_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_benefit_application_output() :: %{
        "Arn" => [String.t() | atom()],
        "Id" => String.t() | atom(),
        "Revision" => [String.t() | atom()]
      }
      
  """
  @type create_benefit_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_benefit_application_output() :: %{
        "Arn" => [String.t() | atom()],
        "Id" => String.t() | atom(),
        "Revision" => [String.t() | atom()]
      }
      
  """
  @type update_benefit_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_benefit_application_resource_input() :: %{
        required("BenefitApplicationIdentifier") => String.t() | atom(),
        required("Catalog") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type associate_benefit_application_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_benefit_input() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => [String.t() | atom()]
      }
      
  """
  @type get_benefit_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_benefit_application_input() :: %{
        optional("Reason") => [String.t() | atom()],
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => [String.t() | atom()],
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type cancel_benefit_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()],
        "QuotaCode" => [String.t() | atom()],
        "ResourceId" => [String.t() | atom()],
        "ResourceType" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      amendment() :: %{
        "FieldPath" => [String.t() | atom()],
        "NewValue" => [String.t() | atom()]
      }
      
  """
  @type amendment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Code" => list(any()),
        "Message" => [String.t() | atom()],
        "Name" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      consumable_details() :: %{
        "AllocatedAmount" => monetary_value(),
        "IssuanceDetails" => issuance_detail(),
        "RemainingAmount" => monetary_value(),
        "UtilizedAmount" => monetary_value()
      }
      
  """
  @type consumable_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      amend_benefit_application_input() :: %{
        required("AmendmentReason") => [String.t() | atom()],
        required("Amendments") => list(amendment()),
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => [String.t() | atom()],
        required("Identifier") => String.t() | atom(),
        required("Revision") => [String.t() | atom()]
      }
      
  """
  @type amend_benefit_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "BusinessTitle" => [String.t() | atom()],
        "Email" => String.t() | atom(),
        "FirstName" => String.t() | atom(),
        "LastName" => String.t() | atom(),
        "Phone" => String.t() | atom()
      }
      
  """
  @type contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_details() :: %{
        "Description" => [String.t() | atom()]
      }
      
  """
  @type access_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      file_detail() :: %{
        "BusinessUseCase" => [String.t() | atom()],
        "CreatedAt" => non_neg_integer(),
        "CreatedBy" => [String.t() | atom()],
        "FileName" => [String.t() | atom()],
        "FileStatus" => [String.t() | atom()],
        "FileStatusReason" => [String.t() | atom()],
        "FileType" => list(any()),
        "FileURI" => String.t() | atom()
      }
      
  """
  @type file_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_benefit_application_input() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_benefit_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_benefit_applications_input() :: %{
        optional("AssociatedResourceArns") => list(String.t() | atom()),
        optional("AssociatedResources") => list(associated_resource()),
        optional("BenefitIdentifiers") => list(String.t() | atom()),
        optional("FulfillmentTypes") => list(list(any())()),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()],
        optional("Programs") => list(String.t() | atom()),
        optional("Stages") => list(String.t() | atom()),
        optional("Status") => list(list(any())()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_benefit_applications_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_benefit_applications_output() :: %{
        "BenefitApplicationSummaries" => list(benefit_application_summary()),
        "NextToken" => [String.t() | atom()]
      }
      
  """
  @type list_benefit_applications_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_benefit_application_output() :: %{}
      
  """
  @type submit_benefit_application_output() :: %{}

  @typedoc """

  ## Example:
      
      list_benefits_output() :: %{
        "BenefitSummaries" => list(benefit_summary()),
        "NextToken" => [String.t() | atom()]
      }
      
  """
  @type list_benefits_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      submit_benefit_application_input() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type submit_benefit_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recall_benefit_application_input() :: %{
        optional("ClientToken") => [String.t() | atom()],
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom(),
        required("Reason") => [String.t() | atom()]
      }
      
  """
  @type recall_benefit_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_benefit_application_output() :: %{}
      
  """
  @type cancel_benefit_application_output() :: %{}

  @typedoc """

  ## Example:
      
      list_benefits_input() :: %{
        optional("FulfillmentTypes") => list(list(any())()),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | atom()],
        optional("Programs") => list(String.t() | atom()),
        optional("Status") => list(list(any())()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_benefits_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      benefit_allocation_summary() :: %{
        "ApplicableBenefitIds" => list(String.t() | atom()),
        "Arn" => [String.t() | atom()],
        "BenefitApplicationId" => String.t() | atom(),
        "BenefitId" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "ExpiresAt" => non_neg_integer(),
        "FulfillmentTypes" => list(list(any())()),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => [String.t() | atom()]
      }
      
  """
  @type benefit_allocation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_benefit_application_resource_input() :: %{
        required("BenefitApplicationIdentifier") => String.t() | atom(),
        required("Catalog") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type disassociate_benefit_application_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associated_resource() :: %{
        "ResourceArn" => String.t() | atom(),
        "ResourceIdentifier" => [String.t() | atom()],
        "ResourceType" => list(any())
      }
      
  """
  @type associated_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      benefit_application_summary() :: %{
        "Arn" => [String.t() | atom()],
        "AssociatedResources" => list(String.t() | atom()),
        "BenefitApplicationDetails" => map(),
        "BenefitId" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "FulfillmentTypes" => list(list(any())()),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Programs" => list(String.t() | atom()),
        "Stage" => String.t() | atom(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type benefit_application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_benefit_allocation_input() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_benefit_allocation_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      amend_benefit_application_output() :: %{}
      
  """
  @type amend_benefit_application_output() :: %{}

  @typedoc """

  ## Example:
      
      disbursement_details() :: %{
        "DisbursedAmount" => monetary_value(),
        "IssuanceDetails" => issuance_detail()
      }
      
  """
  @type disbursement_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      issuance_detail() :: %{
        "IssuanceAmount" => monetary_value(),
        "IssuanceId" => [String.t() | atom()],
        "IssuedAt" => non_neg_integer()
      }
      
  """
  @type issuance_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monetary_value() :: %{
        "Amount" => [String.t() | atom()],
        "CurrencyCode" => list(any())
      }
      
  """
  @type monetary_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_benefit_allocations_output() :: %{
        "BenefitAllocationSummaries" => list(benefit_allocation_summary()),
        "NextToken" => [String.t() | atom()]
      }
      
  """
  @type list_benefit_allocations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_benefit_allocation_output() :: %{
        "ApplicableBenefitIds" => list(String.t() | atom()),
        "Arn" => String.t() | atom(),
        "BenefitApplicationId" => String.t() | atom(),
        "BenefitId" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Description" => [String.t() | atom()],
        "ExpiresAt" => non_neg_integer(),
        "FulfillmentDetail" => list(),
        "FulfillmentType" => list(any()),
        "Id" => String.t() | atom(),
        "Name" => [String.t() | atom()],
        "StartsAt" => non_neg_integer(),
        "Status" => list(any()),
        "StatusReason" => [String.t() | atom()],
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type get_benefit_allocation_output() :: %{(String.t() | atom()) => any()}

  @type amend_benefit_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_benefit_application_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_benefit_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_benefit_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_benefit_application_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_benefit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_benefit_allocation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_benefit_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_benefit_allocations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_benefit_applications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_benefits_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type recall_benefit_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type submit_benefit_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_benefit_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "partnercentral-benefits",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "PartnerCentral Benefits",
      signature_version: "v4",
      signing_name: "partnercentral-benefits",
      target_prefix: "PartnerCentralBenefitsService"
    }
  end

  @doc """
  Modifies an existing benefit application by applying amendments to specific
  fields while maintaining revision control.
  """
  @spec amend_benefit_application(map(), amend_benefit_application_input(), list()) ::
          {:ok, amend_benefit_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, amend_benefit_application_errors()}
  def amend_benefit_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AmendBenefitApplication", input, options)
  end

  @doc """
  Links an AWS resource to an existing benefit application for tracking and
  management purposes.
  """
  @spec associate_benefit_application_resource(
          map(),
          associate_benefit_application_resource_input(),
          list()
        ) ::
          {:ok, associate_benefit_application_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_benefit_application_resource_errors()}
  def associate_benefit_application_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateBenefitApplicationResource", input, options)
  end

  @doc """
  Cancels a benefit application that is currently in progress, preventing further
  processing.
  """
  @spec cancel_benefit_application(map(), cancel_benefit_application_input(), list()) ::
          {:ok, cancel_benefit_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_benefit_application_errors()}
  def cancel_benefit_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelBenefitApplication", input, options)
  end

  @doc """
  Creates a new benefit application for a partner to request access to AWS
  benefits and programs.
  """
  @spec create_benefit_application(map(), create_benefit_application_input(), list()) ::
          {:ok, create_benefit_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_benefit_application_errors()}
  def create_benefit_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBenefitApplication", input, options)
  end

  @doc """
  Removes the association between an AWS resource and a benefit application.
  """
  @spec disassociate_benefit_application_resource(
          map(),
          disassociate_benefit_application_resource_input(),
          list()
        ) ::
          {:ok, disassociate_benefit_application_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_benefit_application_resource_errors()}
  def disassociate_benefit_application_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateBenefitApplicationResource", input, options)
  end

  @doc """
  Retrieves detailed information about a specific benefit available in the partner
  catalog.
  """
  @spec get_benefit(map(), get_benefit_input(), list()) ::
          {:ok, get_benefit_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_benefit_errors()}
  def get_benefit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBenefit", input, options)
  end

  @doc """
  Retrieves detailed information about a specific benefit allocation that has been
  granted to a partner.
  """
  @spec get_benefit_allocation(map(), get_benefit_allocation_input(), list()) ::
          {:ok, get_benefit_allocation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_benefit_allocation_errors()}
  def get_benefit_allocation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBenefitAllocation", input, options)
  end

  @doc """
  Retrieves detailed information about a specific benefit application.
  """
  @spec get_benefit_application(map(), get_benefit_application_input(), list()) ::
          {:ok, get_benefit_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_benefit_application_errors()}
  def get_benefit_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBenefitApplication", input, options)
  end

  @doc """
  Retrieves a paginated list of benefit allocations based on specified filter
  criteria.
  """
  @spec list_benefit_allocations(map(), list_benefit_allocations_input(), list()) ::
          {:ok, list_benefit_allocations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_benefit_allocations_errors()}
  def list_benefit_allocations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBenefitAllocations", input, options)
  end

  @doc """
  Retrieves a paginated list of benefit applications based on specified filter
  criteria.
  """
  @spec list_benefit_applications(map(), list_benefit_applications_input(), list()) ::
          {:ok, list_benefit_applications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_benefit_applications_errors()}
  def list_benefit_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBenefitApplications", input, options)
  end

  @doc """
  Retrieves a paginated list of available benefits based on specified filter
  criteria.
  """
  @spec list_benefits(map(), list_benefits_input(), list()) ::
          {:ok, list_benefits_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_benefits_errors()}
  def list_benefits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBenefits", input, options)
  end

  @doc """
  Retrieves all tags associated with a specific resource.
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
  Recalls a submitted benefit application, returning it to draft status for
  further modifications.
  """
  @spec recall_benefit_application(map(), recall_benefit_application_input(), list()) ::
          {:ok, recall_benefit_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, recall_benefit_application_errors()}
  def recall_benefit_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RecallBenefitApplication", input, options)
  end

  @doc """
  Submits a benefit application for review and processing by AWS.
  """
  @spec submit_benefit_application(map(), submit_benefit_application_input(), list()) ::
          {:ok, submit_benefit_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, submit_benefit_application_errors()}
  def submit_benefit_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SubmitBenefitApplication", input, options)
  end

  @doc """
  Adds or updates tags for a specified resource.
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
  Removes specified tags from a resource.
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

  @doc """
  Updates an existing benefit application with new information while maintaining
  revision control.
  """
  @spec update_benefit_application(map(), update_benefit_application_input(), list()) ::
          {:ok, update_benefit_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_benefit_application_errors()}
  def update_benefit_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBenefitApplication", input, options)
  end
end
