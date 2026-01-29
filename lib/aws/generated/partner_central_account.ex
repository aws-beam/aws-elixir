# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PartnerCentralAccount do
  @moduledoc """
  AWS Partner Central Account service provides APIs for managing partner accounts,
  connections, and profiles within the AWS Partner Network.

  This service enables partners to create and manage their partner profiles,
  establish connections with other partners, and maintain their account
  information.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_profile_update_task_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_profile_update_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connection_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_connection_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("ConnectionType") => list(any()),
        required("Identifier") => String.t() | atom(),
        required("Reason") => [String.t() | atom()]
      }
      
  """
  @type cancel_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_verification_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("VerificationDetails") => list()
      }
      
  """
  @type start_verification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_profile_visibility_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "Visibility" => list(any())
      }
      
  """
  @type put_profile_visibility_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partner_summary() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LegalName" => String.t() | atom()
      }
      
  """
  @type partner_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_connection_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionTypes" => map(),
        "Id" => String.t() | atom(),
        "OtherParticipantAccountId" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type get_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_connection_invitation_response() :: %{
        "Connection" => connection()
      }
      
  """
  @type accept_connection_invitation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      business_verification_details() :: %{
        "CountryCode" => String.t() | atom(),
        "JurisdictionOfIncorporation" => String.t() | atom(),
        "LegalName" => String.t() | atom(),
        "RegistrationId" => String.t() | atom()
      }
      
  """
  @type business_verification_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_connection_invitations_response() :: %{
        "ConnectionInvitationSummaries" => list(connection_invitation_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_connection_invitations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_connections_response() :: %{
        "ConnectionSummaries" => list(connection_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_connections_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_partner_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("AllianceLeadContact") => alliance_lead_contact(),
        required("Catalog") => String.t() | atom(),
        required("EmailVerificationCode") => String.t() | atom(),
        required("LegalName") => String.t() | atom(),
        required("PrimarySolutionType") => list(any())
      }
      
  """
  @type create_partner_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connection_invitation_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_connection_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_type_summary() :: %{
        "OtherParticipant" => list(),
        "Status" => list(any())
      }
      
  """
  @type connection_type_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_type_detail() :: %{
        "CanceledAt" => non_neg_integer(),
        "CanceledBy" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "InviterEmail" => String.t() | atom(),
        "InviterName" => String.t() | atom(),
        "OtherParticipant" => list(),
        "Status" => list(any())
      }
      
  """
  @type connection_type_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_aws_training_certification_email_domain_response() :: %{}
      
  """
  @type disassociate_aws_training_certification_email_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      associate_aws_training_certification_email_domain_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Catalog") => String.t() | atom(),
        required("Email") => String.t() | atom(),
        required("EmailVerificationCode") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type associate_aws_training_certification_email_domain_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_partners_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_partners_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partner_profile() :: %{
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IndustrySegments" => list(list(any())()),
        "LocalizedContents" => list(localized_content()),
        "LogoUrl" => String.t() | atom(),
        "PrimarySolutionType" => list(any()),
        "ProfileId" => String.t() | atom(),
        "TranslationSourceLocale" => String.t() | atom(),
        "WebsiteUrl" => String.t() | atom()
      }
      
  """
  @type partner_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connection_preferences_request() :: %{
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type get_connection_preferences_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      business_validation_error() :: %{
        "Code" => list(any()),
        "Message" => [String.t() | atom()]
      }
      
  """
  @type business_validation_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      business_verification_response() :: %{
        "BusinessVerificationDetails" => business_verification_details()
      }
      
  """
  @type business_verification_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_profile_visibility_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom(),
        required("Visibility") => list(any())
      }
      
  """
  @type put_profile_visibility_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_partners_response() :: %{
        "NextToken" => String.t() | atom(),
        "PartnerSummaryList" => list(partner_summary())
      }
      
  """
  @type list_partners_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_profile_update_task_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom(),
        required("TaskDetails") => task_details()
      }
      
  """
  @type start_profile_update_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_connection_invitation_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type accept_connection_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reject_connection_invitation_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "ExpiresAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "InvitationMessage" => String.t() | atom(),
        "InviterEmail" => String.t() | atom(),
        "InviterName" => String.t() | atom(),
        "OtherParticipantIdentifier" => String.t() | atom(),
        "ParticipantType" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type reject_connection_invitation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      registrant_verification_details() :: %{}
      
  """
  @type registrant_verification_details() :: %{}

  @typedoc """

  ## Example:
      
      create_connection_invitation_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "ExpiresAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "InvitationMessage" => String.t() | atom(),
        "InviterEmail" => String.t() | atom(),
        "InviterName" => String.t() | atom(),
        "OtherParticipantIdentifier" => String.t() | atom(),
        "ParticipantType" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type create_connection_invitation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_connections_request() :: %{
        optional("ConnectionType") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("OtherParticipantIdentifiers") => list(String.t() | atom()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_connections_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partner_domain() :: %{
        "DomainName" => String.t() | atom(),
        "RegisteredAt" => non_neg_integer()
      }
      
  """
  @type partner_domain() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_alliance_lead_contact_request() :: %{
        optional("EmailVerificationCode") => String.t() | atom(),
        required("AllianceLeadContact") => alliance_lead_contact(),
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type put_alliance_lead_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
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
      
      cancel_connection_invitation_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "ExpiresAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "InvitationMessage" => String.t() | atom(),
        "InviterEmail" => String.t() | atom(),
        "InviterName" => String.t() | atom(),
        "OtherParticipantIdentifier" => String.t() | atom(),
        "ParticipantType" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type cancel_connection_invitation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_connection_invitation_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("ConnectionType") => list(any()),
        required("Email") => String.t() | atom(),
        required("Message") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("ReceiverIdentifier") => String.t() | atom()
      }
      
  """
  @type create_connection_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_email_verification_code_response() :: %{}
      
  """
  @type send_email_verification_code_response() :: %{}

  @typedoc """

  ## Example:
      
      connection() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionTypes" => map(),
        "Id" => String.t() | atom(),
        "OtherParticipantAccountId" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partner_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_partner_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_profile_update_task_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom(),
        required("TaskId") => String.t() | atom()
      }
      
  """
  @type cancel_profile_update_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_partner_response() :: %{
        "AllianceLeadContact" => alliance_lead_contact(),
        "Arn" => String.t() | atom(),
        "AwsTrainingCertificationEmailDomains" => list(partner_domain()),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LegalName" => String.t() | atom(),
        "Profile" => partner_profile()
      }
      
  """
  @type create_partner_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      partner_profile_summary() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type partner_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_profile_update_task_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "EndedAt" => non_neg_integer(),
        "ErrorDetailList" => list(error_detail()),
        "Id" => String.t() | atom(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TaskDetails" => task_details(),
        "TaskId" => String.t() | atom()
      }
      
  """
  @type get_profile_update_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connection_invitation_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "ExpiresAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "InvitationMessage" => String.t() | atom(),
        "InviterEmail" => String.t() | atom(),
        "InviterName" => String.t() | atom(),
        "OtherParticipantIdentifier" => String.t() | atom(),
        "ParticipantType" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type get_connection_invitation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      alliance_lead_contact() :: %{
        "BusinessTitle" => String.t() | atom(),
        "Email" => String.t() | atom(),
        "FirstName" => String.t() | atom(),
        "LastName" => String.t() | atom()
      }
      
  """
  @type alliance_lead_contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_aws_training_certification_email_domain_response() :: %{}
      
  """
  @type associate_aws_training_certification_email_domain_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "ResourceArn" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_alliance_lead_contact_response() :: %{
        "AllianceLeadContact" => alliance_lead_contact(),
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "Id" => String.t() | atom()
      }
      
  """
  @type put_alliance_lead_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_profile_visibility_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "Visibility" => list(any())
      }
      
  """
  @type get_profile_visibility_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_profile_update_task_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "EndedAt" => non_neg_integer(),
        "ErrorDetailList" => list(error_detail()),
        "Id" => String.t() | atom(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TaskDetails" => task_details(),
        "TaskId" => String.t() | atom()
      }
      
  """
  @type start_profile_update_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      account_summary() :: %{
        "Name" => String.t() | atom()
      }
      
  """
  @type account_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_aws_training_certification_email_domain_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Catalog") => String.t() | atom(),
        required("DomainName") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type disassociate_aws_training_certification_email_domain_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_profile_visibility_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_profile_visibility_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      localized_content() :: %{
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "Locale" => String.t() | atom(),
        "LogoUrl" => String.t() | atom(),
        "WebsiteUrl" => String.t() | atom()
      }
      
  """
  @type localized_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      registrant_verification_response() :: %{
        "CompletionUrl" => String.t() | atom(),
        "CompletionUrlExpiresAt" => non_neg_integer()
      }
      
  """
  @type registrant_verification_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_profile_update_task_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "EndedAt" => non_neg_integer(),
        "ErrorDetailList" => list(error_detail()),
        "Id" => String.t() | atom(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TaskDetails" => task_details(),
        "TaskId" => String.t() | atom()
      }
      
  """
  @type cancel_profile_update_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reject_connection_invitation_request() :: %{
        optional("Reason") => [String.t() | atom()],
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type reject_connection_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_verification_response() :: %{
        "CompletedAt" => non_neg_integer(),
        "StartedAt" => non_neg_integer(),
        "VerificationResponseDetails" => list(),
        "VerificationStatus" => list(any()),
        "VerificationStatusReason" => String.t() | atom(),
        "VerificationType" => list(any())
      }
      
  """
  @type start_verification_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_detail() :: %{
        "Locale" => [String.t() | atom()],
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }
      
  """
  @type error_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_alliance_lead_contact_response() :: %{
        "AllianceLeadContact" => alliance_lead_contact(),
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "Id" => String.t() | atom()
      }
      
  """
  @type get_alliance_lead_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_verification_response() :: %{
        "CompletedAt" => non_neg_integer(),
        "StartedAt" => non_neg_integer(),
        "VerificationResponseDetails" => list(),
        "VerificationStatus" => list(any()),
        "VerificationStatusReason" => String.t() | atom(),
        "VerificationType" => list(any())
      }
      
  """
  @type get_verification_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_summary() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionTypes" => map(),
        "Id" => String.t() | atom(),
        "OtherParticipantAccountId" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type connection_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_alliance_lead_contact_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type get_alliance_lead_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      field_validation_error() :: %{
        "Code" => list(any()),
        "Message" => [String.t() | atom()],
        "Name" => [String.t() | atom()]
      }
      
  """
  @type field_validation_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "ErrorDetails" => list(list()),
        "Message" => [String.t() | atom()],
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => [String.t() | atom()],
        "QuotaCode" => [String.t() | atom()],
        "ServiceCode" => [String.t() | atom()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      seller_profile_summary() :: %{
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type seller_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_verification_request() :: %{
        required("VerificationType") => list(any())
      }
      
  """
  @type get_verification_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_connection_invitation_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("ClientToken") => String.t() | atom(),
        required("Identifier") => String.t() | atom()
      }
      
  """
  @type cancel_connection_invitation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connection_preferences_request() :: %{
        optional("ExcludedParticipantIdentifiers") => list(String.t() | atom()),
        required("AccessType") => list(any()),
        required("Catalog") => String.t() | atom(),
        required("Revision") => float()
      }
      
  """
  @type update_connection_preferences_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_connection_response() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionTypes" => map(),
        "Id" => String.t() | atom(),
        "OtherParticipantAccountId" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type cancel_connection_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_partner_response() :: %{
        "Arn" => String.t() | atom(),
        "AwsTrainingCertificationEmailDomains" => list(partner_domain()),
        "Catalog" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LegalName" => String.t() | atom(),
        "Profile" => partner_profile()
      }
      
  """
  @type get_partner_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_email_verification_code_request() :: %{
        required("Catalog") => String.t() | atom(),
        required("Email") => String.t() | atom()
      }
      
  """
  @type send_email_verification_code_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      connection_invitation_summary() :: %{
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ConnectionId" => String.t() | atom(),
        "ConnectionType" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "ExpiresAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "OtherParticipantIdentifier" => String.t() | atom(),
        "ParticipantType" => list(any()),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type connection_invitation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_connection_invitations_request() :: %{
        optional("ConnectionType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("OtherParticipantIdentifiers") => list(String.t() | atom()),
        optional("ParticipantType") => list(any()),
        optional("Status") => list(any()),
        required("Catalog") => String.t() | atom()
      }
      
  """
  @type list_connection_invitations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_connection_preferences_response() :: %{
        "AccessType" => list(any()),
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ExcludedParticipantIds" => list(String.t() | atom()),
        "Revision" => float(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type get_connection_preferences_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      task_details() :: %{
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IndustrySegments" => list(list(any())()),
        "LocalizedContents" => list(localized_content()),
        "LogoUrl" => String.t() | atom(),
        "PrimarySolutionType" => list(any()),
        "TranslationSourceLocale" => String.t() | atom(),
        "WebsiteUrl" => String.t() | atom()
      }
      
  """
  @type task_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_connection_preferences_response() :: %{
        "AccessType" => list(any()),
        "Arn" => String.t() | atom(),
        "Catalog" => String.t() | atom(),
        "ExcludedParticipantIds" => list(String.t() | atom()),
        "Revision" => float(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type update_connection_preferences_response() :: %{(String.t() | atom()) => any()}

  @type accept_connection_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_aws_training_certification_email_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_connection_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type cancel_profile_update_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_connection_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_partner_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type disassociate_aws_training_certification_email_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_alliance_lead_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connection_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_connection_preferences_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_partner_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_update_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_visibility_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_verification_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_connection_invitations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_connections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_partners_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_alliance_lead_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_profile_visibility_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reject_connection_invitation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type send_email_verification_code_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type start_profile_update_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_verification_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_connection_preferences_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2025-04-04",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "partnercentral-account",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "PartnerCentral Account",
      signature_version: "v4",
      signing_name: "partnercentral-account",
      target_prefix: "PartnerCentralAccount"
    }
  end

  @doc """
  Accepts a connection invitation from another partner, establishing a formal
  partnership connection between the two parties.
  """
  @spec accept_connection_invitation(map(), accept_connection_invitation_request(), list()) ::
          {:ok, accept_connection_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_connection_invitation_errors()}
  def accept_connection_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptConnectionInvitation", input, options)
  end

  @doc """
  Associates an email domain with AWS training and certification for the partner
  account, enabling automatic verification of employee certifications.
  """
  @spec associate_aws_training_certification_email_domain(
          map(),
          associate_aws_training_certification_email_domain_request(),
          list()
        ) ::
          {:ok, associate_aws_training_certification_email_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_aws_training_certification_email_domain_errors()}
  def associate_aws_training_certification_email_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AssociateAwsTrainingCertificationEmailDomain",
      input,
      options
    )
  end

  @doc """
  Cancels an existing connection between partners, terminating the partnership
  relationship.
  """
  @spec cancel_connection(map(), cancel_connection_request(), list()) ::
          {:ok, cancel_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_connection_errors()}
  def cancel_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelConnection", input, options)
  end

  @doc """
  Cancels a pending connection invitation before it has been accepted or rejected.
  """
  @spec cancel_connection_invitation(map(), cancel_connection_invitation_request(), list()) ::
          {:ok, cancel_connection_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_connection_invitation_errors()}
  def cancel_connection_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelConnectionInvitation", input, options)
  end

  @doc """
  Cancels an in-progress profile update task, stopping any pending changes to the
  partner profile.
  """
  @spec cancel_profile_update_task(map(), cancel_profile_update_task_request(), list()) ::
          {:ok, cancel_profile_update_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_profile_update_task_errors()}
  def cancel_profile_update_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelProfileUpdateTask", input, options)
  end

  @doc """
  Creates a new connection invitation to establish a partnership with another
  organization.
  """
  @spec create_connection_invitation(map(), create_connection_invitation_request(), list()) ::
          {:ok, create_connection_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connection_invitation_errors()}
  def create_connection_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnectionInvitation", input, options)
  end

  @doc """
  Creates a new partner account in the AWS Partner Network with the specified
  details and configuration.
  """
  @spec create_partner(map(), create_partner_request(), list()) ::
          {:ok, create_partner_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_partner_errors()}
  def create_partner(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePartner", input, options)
  end

  @doc """
  Removes the association between an email domain and AWS training and
  certification for the partner account.
  """
  @spec disassociate_aws_training_certification_email_domain(
          map(),
          disassociate_aws_training_certification_email_domain_request(),
          list()
        ) ::
          {:ok, disassociate_aws_training_certification_email_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_aws_training_certification_email_domain_errors()}
  def disassociate_aws_training_certification_email_domain(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DisassociateAwsTrainingCertificationEmailDomain",
      input,
      options
    )
  end

  @doc """
  Retrieves the alliance lead contact information for a partner account.
  """
  @spec get_alliance_lead_contact(map(), get_alliance_lead_contact_request(), list()) ::
          {:ok, get_alliance_lead_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_alliance_lead_contact_errors()}
  def get_alliance_lead_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAllianceLeadContact", input, options)
  end

  @doc """
  Retrieves detailed information about a specific connection between partners.
  """
  @spec get_connection(map(), get_connection_request(), list()) ::
          {:ok, get_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_errors()}
  def get_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnection", input, options)
  end

  @doc """
  Retrieves detailed information about a specific connection invitation.
  """
  @spec get_connection_invitation(map(), get_connection_invitation_request(), list()) ::
          {:ok, get_connection_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_invitation_errors()}
  def get_connection_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnectionInvitation", input, options)
  end

  @doc """
  Retrieves the connection preferences for a partner account, including access
  settings and exclusions.
  """
  @spec get_connection_preferences(map(), get_connection_preferences_request(), list()) ::
          {:ok, get_connection_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connection_preferences_errors()}
  def get_connection_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConnectionPreferences", input, options)
  end

  @doc """
  Retrieves detailed information about a specific partner account.
  """
  @spec get_partner(map(), get_partner_request(), list()) ::
          {:ok, get_partner_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_partner_errors()}
  def get_partner(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPartner", input, options)
  end

  @doc """
  Retrieves information about a specific profile update task.
  """
  @spec get_profile_update_task(map(), get_profile_update_task_request(), list()) ::
          {:ok, get_profile_update_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_update_task_errors()}
  def get_profile_update_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProfileUpdateTask", input, options)
  end

  @doc """
  Retrieves the visibility settings for a partner profile, determining who can see
  the profile information.
  """
  @spec get_profile_visibility(map(), get_profile_visibility_request(), list()) ::
          {:ok, get_profile_visibility_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_visibility_errors()}
  def get_profile_visibility(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProfileVisibility", input, options)
  end

  @doc """
  Retrieves the current status and details of a verification process for a partner
  account.

  This operation allows partners to check the progress and results of business or
  registrant verification processes.
  """
  @spec get_verification(map(), get_verification_request(), list()) ::
          {:ok, get_verification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_verification_errors()}
  def get_verification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVerification", input, options)
  end

  @doc """
  Lists connection invitations for the partner account, with optional filtering by
  status, type, and other criteria.
  """
  @spec list_connection_invitations(map(), list_connection_invitations_request(), list()) ::
          {:ok, list_connection_invitations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connection_invitations_errors()}
  def list_connection_invitations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConnectionInvitations", input, options)
  end

  @doc """
  Lists active connections for the partner account, with optional filtering by
  connection type and participant.
  """
  @spec list_connections(map(), list_connections_request(), list()) ::
          {:ok, list_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connections_errors()}
  def list_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConnections", input, options)
  end

  @doc """
  Lists partner accounts in the catalog, providing a summary view of all partners.
  """
  @spec list_partners(map(), list_partners_request(), list()) ::
          {:ok, list_partners_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_partners_errors()}
  def list_partners(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPartners", input, options)
  end

  @doc """
  Lists all tags associated with a specific AWS Partner Central Account resource.
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
  Creates or updates the alliance lead contact information for a partner account.
  """
  @spec put_alliance_lead_contact(map(), put_alliance_lead_contact_request(), list()) ::
          {:ok, put_alliance_lead_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_alliance_lead_contact_errors()}
  def put_alliance_lead_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAllianceLeadContact", input, options)
  end

  @doc """
  Sets the visibility level for a partner profile, controlling who can view the
  profile information.
  """
  @spec put_profile_visibility(map(), put_profile_visibility_request(), list()) ::
          {:ok, put_profile_visibility_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_profile_visibility_errors()}
  def put_profile_visibility(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutProfileVisibility", input, options)
  end

  @doc """
  Rejects a connection invitation from another partner, declining the partnership
  request.
  """
  @spec reject_connection_invitation(map(), reject_connection_invitation_request(), list()) ::
          {:ok, reject_connection_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reject_connection_invitation_errors()}
  def reject_connection_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectConnectionInvitation", input, options)
  end

  @doc """
  Sends an email verification code to the specified email address for account
  verification purposes.
  """
  @spec send_email_verification_code(map(), send_email_verification_code_request(), list()) ::
          {:ok, send_email_verification_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_email_verification_code_errors()}
  def send_email_verification_code(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendEmailVerificationCode", input, options)
  end

  @doc """
  Initiates a profile update task to modify partner profile information
  asynchronously.
  """
  @spec start_profile_update_task(map(), start_profile_update_task_request(), list()) ::
          {:ok, start_profile_update_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_profile_update_task_errors()}
  def start_profile_update_task(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartProfileUpdateTask", input, options)
  end

  @doc """
  Initiates a new verification process for a partner account.

  This operation begins the verification workflow for either business registration
  or individual registrant identity verification as required by AWS Partner
  Central.
  """
  @spec start_verification(map(), start_verification_request(), list()) ::
          {:ok, start_verification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_verification_errors()}
  def start_verification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartVerification", input, options)
  end

  @doc """
  Adds or updates tags for a specified AWS Partner Central Account resource.
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
  Removes specified tags from an AWS Partner Central Account resource.
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
  Updates the connection preferences for a partner account, modifying access
  settings and exclusions.
  """
  @spec update_connection_preferences(map(), update_connection_preferences_request(), list()) ::
          {:ok, update_connection_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_connection_preferences_errors()}
  def update_connection_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnectionPreferences", input, options)
  end
end
