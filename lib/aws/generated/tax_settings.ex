# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TaxSettings do
  @moduledoc """
  You can use the tax setting API to programmatically set, modify, and delete the
  tax
  registration number (TRN), associated business legal name, and address
  (Collectively referred
  to as "TRN information").

  You can also programmatically view TRN information and tax addresses
  ("Tax profiles").

  You can use this API to automate your TRN information settings instead of
  manually using
  the console.

  Service Endpoint

    *
  https://tax.us-east-1.amazonaws.com
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_tax_registration_document_request() :: %{
        optional("destinationS3Location") => destination_s3_location(),
        required("taxDocumentMetadata") => tax_document_metadata()
      }

  """
  @type get_tax_registration_document_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      south_korea_additional_info() :: %{
        "businessRepresentativeName" => String.t() | atom(),
        "itemOfBusiness" => String.t() | atom(),
        "lineOfBusiness" => String.t() | atom()
      }

  """
  @type south_korea_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_s3_location() :: %{
        "bucket" => String.t() | atom(),
        "key" => String.t() | atom()
      }

  """
  @type source_s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_response() :: %{
        "errors" => list(batch_delete_tax_registration_error())
      }

  """
  @type batch_delete_tax_registration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tax_exemptions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_tax_exemptions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      additional_info_response() :: %{
        "brazilAdditionalInfo" => brazil_additional_info(),
        "canadaAdditionalInfo" => canada_additional_info(),
        "egyptAdditionalInfo" => egypt_additional_info(),
        "estoniaAdditionalInfo" => estonia_additional_info(),
        "georgiaAdditionalInfo" => georgia_additional_info(),
        "greeceAdditionalInfo" => greece_additional_info(),
        "indiaAdditionalInfo" => india_additional_info(),
        "indonesiaAdditionalInfo" => indonesia_additional_info(),
        "israelAdditionalInfo" => israel_additional_info(),
        "italyAdditionalInfo" => italy_additional_info(),
        "kenyaAdditionalInfo" => kenya_additional_info(),
        "malaysiaAdditionalInfo" => malaysia_additional_info(),
        "polandAdditionalInfo" => poland_additional_info(),
        "romaniaAdditionalInfo" => romania_additional_info(),
        "saudiArabiaAdditionalInfo" => saudi_arabia_additional_info(),
        "southKoreaAdditionalInfo" => south_korea_additional_info(),
        "spainAdditionalInfo" => spain_additional_info(),
        "turkeyAdditionalInfo" => turkey_additional_info(),
        "ukraineAdditionalInfo" => ukraine_additional_info(),
        "uzbekistanAdditionalInfo" => uzbekistan_additional_info(),
        "vietnamAdditionalInfo" => vietnam_additional_info()
      }

  """
  @type additional_info_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ukraine_additional_info() :: %{
        "ukraineTrnType" => list(any())
      }

  """
  @type ukraine_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      italy_additional_info() :: %{
        "cigNumber" => String.t() | atom(),
        "cupNumber" => String.t() | atom(),
        "sdiAccountId" => String.t() | atom(),
        "taxCode" => String.t() | atom()
      }

  """
  @type italy_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attachment_upload_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type attachment_upload_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tax_inheritance_details() :: %{
        "inheritanceObtainedReason" => String.t() | atom(),
        "parentEntityId" => String.t() | atom()
      }

  """
  @type tax_inheritance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tax_exemption() :: %{
        "authority" => authority(),
        "effectiveDate" => [non_neg_integer()],
        "expirationDate" => [non_neg_integer()],
        "status" => list(any()),
        "systemEffectiveDate" => [non_neg_integer()],
        "taxExemptionType" => tax_exemption_type()
      }

  """
  @type tax_exemption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      malaysia_additional_info() :: %{
        "businessRegistrationNumber" => String.t() | atom(),
        "serviceTaxCodes" => list(list(any())()),
        "taxInformationNumber" => String.t() | atom()
      }

  """
  @type malaysia_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kenya_additional_info() :: %{
        "personType" => list(any())
      }

  """
  @type kenya_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      greece_additional_info() :: %{
        "contractingAuthorityCode" => String.t() | atom()
      }

  """
  @type greece_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tax_registration_response() :: %{
        "taxRegistration" => tax_registration()
      }

  """
  @type get_tax_registration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tax_registration_doc_file() :: %{
        "fileContent" => binary(),
        "fileName" => String.t() | atom()
      }

  """
  @type tax_registration_doc_file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      india_additional_info() :: %{
        "pan" => String.t() | atom()
      }

  """
  @type india_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      poland_additional_info() :: %{
        "individualRegistrationNumber" => String.t() | atom(),
        "isGroupVatEnabled" => boolean()
      }

  """
  @type poland_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_tax_exemptions_response() :: %{
        "failedAccounts" => list(String.t() | atom()),
        "taxExemptionDetailsMap" => map()
      }

  """
  @type batch_get_tax_exemptions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_supplemental_tax_registration_request() :: %{
        required("taxRegistrationEntry") => supplemental_tax_registration_entry()
      }

  """
  @type put_supplemental_tax_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_tax_registration_request() :: %{
        required("accountIds") => list(String.t() | atom()),
        required("taxRegistrationEntry") => tax_registration_entry()
      }

  """
  @type batch_put_tax_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      egypt_additional_info() :: %{
        "uniqueIdentificationNumber" => String.t() | atom(),
        "uniqueIdentificationNumberExpirationDate" => String.t() | atom()
      }

  """
  @type egypt_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      case_creation_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type case_creation_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_supplemental_tax_registration_request() :: %{
        required("authorityId") => String.t() | atom()
      }

  """
  @type delete_supplemental_tax_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tax_exemption_types_request() :: %{}

  """
  @type get_tax_exemption_types_request() :: %{}

  @typedoc """

  ## Example:

      get_tax_registration_request() :: %{
        optional("accountId") => String.t() | atom()
      }

  """
  @type get_tax_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tax_inheritance_response() :: %{
        "heritageStatus" => list(any())
      }

  """
  @type get_tax_inheritance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      romania_additional_info() :: %{
        "taxRegistrationNumberType" => list(any())
      }

  """
  @type romania_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      brazil_additional_info() :: %{
        "ccmCode" => String.t() | atom(),
        "legalNatureCode" => String.t() | atom()
      }

  """
  @type brazil_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      additional_info_request() :: %{
        "canadaAdditionalInfo" => canada_additional_info(),
        "egyptAdditionalInfo" => egypt_additional_info(),
        "estoniaAdditionalInfo" => estonia_additional_info(),
        "georgiaAdditionalInfo" => georgia_additional_info(),
        "greeceAdditionalInfo" => greece_additional_info(),
        "indonesiaAdditionalInfo" => indonesia_additional_info(),
        "israelAdditionalInfo" => israel_additional_info(),
        "italyAdditionalInfo" => italy_additional_info(),
        "kenyaAdditionalInfo" => kenya_additional_info(),
        "malaysiaAdditionalInfo" => malaysia_additional_info(),
        "polandAdditionalInfo" => poland_additional_info(),
        "romaniaAdditionalInfo" => romania_additional_info(),
        "saudiArabiaAdditionalInfo" => saudi_arabia_additional_info(),
        "southKoreaAdditionalInfo" => south_korea_additional_info(),
        "spainAdditionalInfo" => spain_additional_info(),
        "turkeyAdditionalInfo" => turkey_additional_info(),
        "ukraineAdditionalInfo" => ukraine_additional_info(),
        "uzbekistanAdditionalInfo" => uzbekistan_additional_info(),
        "vietnamAdditionalInfo" => vietnam_additional_info()
      }

  """
  @type additional_info_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      supplemental_tax_registration_entry() :: %{
        "address" => address(),
        "legalName" => String.t() | atom(),
        "registrationId" => String.t() | atom(),
        "registrationType" => list(any())
      }

  """
  @type supplemental_tax_registration_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_tax_registration_response() :: %{}

  """
  @type delete_tax_registration_response() :: %{}

  @typedoc """

  ## Example:

      tax_exemption_type() :: %{
        "applicableJurisdictions" => list(authority()),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom()
      }

  """
  @type tax_exemption_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      indonesia_additional_info() :: %{
        "decisionNumber" => String.t() | atom(),
        "ppnExceptionDesignationCode" => String.t() | atom(),
        "taxRegistrationNumberType" => list(any())
      }

  """
  @type indonesia_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authority() :: %{
        "country" => String.t() | atom(),
        "state" => String.t() | atom()
      }

  """
  @type authority() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tax_exemption_types_response() :: %{
        "taxExemptionTypes" => list(tax_exemption_type())
      }

  """
  @type get_tax_exemption_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_tax_registration_response() :: %{
        "errors" => list(batch_put_tax_registration_error()),
        "status" => list(any())
      }

  """
  @type batch_put_tax_registration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tax_document_metadata() :: %{
        "taxDocumentAccessToken" => String.t() | atom(),
        "taxDocumentName" => String.t() | atom()
      }

  """
  @type tax_document_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      estonia_additional_info() :: %{
        "registryCommercialCode" => String.t() | atom()
      }

  """
  @type estonia_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tax_registrations_response() :: %{
        "accountDetails" => list(account_details()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_tax_registrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tax_registrations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_tax_registrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      spain_additional_info() :: %{
        "registrationType" => list(any())
      }

  """
  @type spain_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_supplemental_tax_registration_response() :: %{
        "authorityId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type put_supplemental_tax_registration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      georgia_additional_info() :: %{
        "personType" => list(any())
      }

  """
  @type georgia_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_tax_inheritance_response() :: %{}

  """
  @type put_tax_inheritance_response() :: %{}

  @typedoc """

  ## Example:

      list_tax_exemptions_response() :: %{
        "nextToken" => String.t() | atom(),
        "taxExemptionDetailsMap" => map()
      }

  """
  @type list_tax_exemptions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_details() :: %{
        "accountId" => String.t() | atom(),
        "accountMetaData" => account_meta_data(),
        "taxInheritanceDetails" => tax_inheritance_details(),
        "taxRegistration" => tax_registration_with_jurisdiction()
      }

  """
  @type account_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_tax_exemption_response() :: %{
        "caseId" => String.t() | atom()
      }

  """
  @type put_tax_exemption_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tax_registration_document() :: %{
        "file" => tax_registration_doc_file(),
        "s3Location" => source_s3_location()
      }

  """
  @type tax_registration_document() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_s3_location() :: %{
        "bucket" => String.t() | atom(),
        "prefix" => String.t() | atom()
      }

  """
  @type destination_s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "name" => String.t() | atom()
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_error() :: %{
        "accountId" => String.t() | atom(),
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type batch_delete_tax_registration_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      saudi_arabia_additional_info() :: %{
        "taxRegistrationNumberType" => list(any())
      }

  """
  @type saudi_arabia_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canada_additional_info() :: %{
        "canadaQuebecSalesTaxNumber" => String.t() | atom(),
        "canadaRetailSalesTaxNumber" => String.t() | atom(),
        "isResellerAccount" => boolean(),
        "provincialSalesTaxId" => String.t() | atom()
      }

  """
  @type canada_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      uzbekistan_additional_info() :: %{
        "taxRegistrationNumberType" => list(any()),
        "vatRegistrationNumber" => String.t() | atom()
      }

  """
  @type uzbekistan_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_tax_registration_request() :: %{
        optional("accountId") => String.t() | atom(),
        required("taxRegistrationEntry") => tax_registration_entry()
      }

  """
  @type put_tax_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      verification_details() :: %{
        "dateOfBirth" => String.t() | atom(),
        "taxRegistrationDocuments" => list(tax_registration_document())
      }

  """
  @type verification_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_tax_registration_request() :: %{
        optional("accountId") => String.t() | atom()
      }

  """
  @type delete_tax_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tax_registration() :: %{
        "additionalTaxInformation" => additional_info_response(),
        "certifiedEmailId" => String.t() | atom(),
        "legalAddress" => address(),
        "legalName" => String.t() | atom(),
        "registrationId" => String.t() | atom(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "status" => list(any()),
        "taxDocumentMetadatas" => list(tax_document_metadata())
      }

  """
  @type tax_registration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      turkey_additional_info() :: %{
        "industries" => list(any()),
        "kepEmailId" => String.t() | atom(),
        "secondaryTaxId" => String.t() | atom(),
        "taxOffice" => String.t() | atom()
      }

  """
  @type turkey_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vietnam_additional_info() :: %{
        "electronicTransactionCodeNumber" => String.t() | atom(),
        "enterpriseIdentificationNumber" => String.t() | atom(),
        "paymentVoucherNumber" => String.t() | atom(),
        "paymentVoucherNumberDate" => String.t() | atom()
      }

  """
  @type vietnam_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tax_registration_entry() :: %{
        "additionalTaxInformation" => additional_info_request(),
        "certifiedEmailId" => String.t() | atom(),
        "legalAddress" => address(),
        "legalName" => String.t() | atom(),
        "registrationId" => String.t() | atom(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "verificationDetails" => verification_details()
      }

  """
  @type tax_registration_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_tax_exemption_request() :: %{
        required("accountIds") => list(String.t() | atom()),
        required("authority") => authority(),
        required("exemptionCertificate") => exemption_certificate(),
        required("exemptionType") => String.t() | atom()
      }

  """
  @type put_tax_exemption_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_supplemental_tax_registrations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_supplemental_tax_registrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tax_registration_with_jurisdiction() :: %{
        "additionalTaxInformation" => additional_info_response(),
        "certifiedEmailId" => String.t() | atom(),
        "jurisdiction" => jurisdiction(),
        "legalName" => String.t() | atom(),
        "registrationId" => String.t() | atom(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "status" => list(any()),
        "taxDocumentMetadatas" => list(tax_document_metadata())
      }

  """
  @type tax_registration_with_jurisdiction() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_supplemental_tax_registration_response() :: %{}

  """
  @type delete_supplemental_tax_registration_response() :: %{}

  @typedoc """

  ## Example:

      tax_exemption_details() :: %{
        "heritageObtainedDetails" => boolean(),
        "heritageObtainedParentEntity" => String.t() | atom(),
        "heritageObtainedReason" => String.t() | atom(),
        "taxExemptions" => list(tax_exemption())
      }

  """
  @type tax_exemption_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "errorCode" => list(any()),
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_supplemental_tax_registrations_response() :: %{
        "nextToken" => String.t() | atom(),
        "taxRegistrations" => list(supplemental_tax_registration())
      }

  """
  @type list_supplemental_tax_registrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tax_inheritance_request() :: %{}

  """
  @type get_tax_inheritance_request() :: %{}

  @typedoc """

  ## Example:

      batch_put_tax_registration_error() :: %{
        "accountId" => String.t() | atom(),
        "code" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type batch_put_tax_registration_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_tax_inheritance_request() :: %{
        optional("heritageStatus") => list(any())
      }

  """
  @type put_tax_inheritance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      exemption_certificate() :: %{
        "documentFile" => binary(),
        "documentName" => String.t() | atom()
      }

  """
  @type exemption_certificate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "addressLine1" => String.t() | atom(),
        "addressLine2" => String.t() | atom(),
        "addressLine3" => String.t() | atom(),
        "city" => String.t() | atom(),
        "countryCode" => String.t() | atom(),
        "districtOrCounty" => String.t() | atom(),
        "postalCode" => String.t() | atom(),
        "stateOrRegion" => String.t() | atom()
      }

  """
  @type address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      israel_additional_info() :: %{
        "customerType" => list(any()),
        "dealerType" => list(any())
      }

  """
  @type israel_additional_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      supplemental_tax_registration() :: %{
        "address" => address(),
        "authorityId" => String.t() | atom(),
        "legalName" => String.t() | atom(),
        "registrationId" => String.t() | atom(),
        "registrationType" => list(any()),
        "status" => list(any())
      }

  """
  @type supplemental_tax_registration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      jurisdiction() :: %{
        "countryCode" => String.t() | atom(),
        "stateOrRegion" => String.t() | atom()
      }

  """
  @type jurisdiction() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_tax_exemptions_request() :: %{
        required("accountIds") => list(String.t() | atom())
      }

  """
  @type batch_get_tax_exemptions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_meta_data() :: %{
        "accountName" => String.t() | atom(),
        "address" => address(),
        "addressRoleMap" => map(),
        "addressType" => list(any()),
        "seller" => String.t() | atom()
      }

  """
  @type account_meta_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_request() :: %{
        required("accountIds") => list(String.t() | atom())
      }

  """
  @type batch_delete_tax_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_tax_registration_response() :: %{
        "status" => list(any())
      }

  """
  @type put_tax_registration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_tax_registration_document_response() :: %{
        "destinationFilePath" => String.t() | atom(),
        "presignedS3Url" => String.t() | atom()
      }

  """
  @type get_tax_registration_document_response() :: %{(String.t() | atom()) => any()}

  @type batch_delete_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type batch_get_tax_exemptions_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type batch_put_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type delete_supplemental_tax_registration_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_tax_registration_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_tax_exemption_types_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_tax_inheritance_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_tax_registration_document_errors() ::
          validation_exception() | internal_server_exception()

  @type list_supplemental_tax_registrations_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tax_exemptions_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tax_registrations_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_supplemental_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type put_tax_exemption_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | case_creation_limit_exceeded_exception()
          | attachment_upload_exception()

  @type put_tax_inheritance_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_tax_registration_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "tax",
      global?: true,
      hostname: "tax.us-east-1.amazonaws.com",
      protocol: "rest-json",
      service_id: "TaxSettings",
      signature_version: "v4",
      signing_name: "tax",
      target_prefix: nil
    }
  end

  @doc """
  Deletes tax registration for multiple accounts in batch.

  This can be used to delete tax
  registrations for up to five accounts in one batch.

  This API operation can't be used to delete your tax registration in Brazil. Use
  the [Payment preferences](https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods)
  page in the Billing and Cost Management console instead.
  """
  @spec batch_delete_tax_registration(map(), batch_delete_tax_registration_request(), list()) ::
          {:ok, batch_delete_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_tax_registration_errors()}
  def batch_delete_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/BatchDeleteTaxRegistration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get the active tax exemptions for a given list of accounts.

  The IAM action is `tax:GetExemptions`.
  """
  @spec batch_get_tax_exemptions(map(), batch_get_tax_exemptions_request(), list()) ::
          {:ok, batch_get_tax_exemptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_tax_exemptions_errors()}
  def batch_get_tax_exemptions(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetTaxExemptions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or updates tax registration for multiple accounts in batch.

  This can be used to add
  or update tax registrations for up to five accounts in one batch. You can't set
  a TRN if there's a pending TRN. You'll need to delete the pending TRN first.

  To call this API operation for specific countries, see the following
  country-specific
  requirements.

  ## Bangladesh

    *
  You must specify the tax registration certificate document in the
  `taxRegistrationDocuments` field of the `VerificationDetails`
  object.

  ## Brazil

    *
  You must complete the tax registration process in the [Payment preferences](https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods)
  page in the Billing and Cost Management console. After your TRN and billing
  address are verified, you can call this API operation.

    *
  For Amazon Web Services accounts created through Organizations, you can call
  this API operation when you don't have a billing address.

  ## Georgia

    *
  The valid `personType` values are `Physical Person` and `Business`.

  ## Indonesia

    *

  `PutTaxRegistration`: The use of this operation to submit tax information is
  subject to the [Amazon Web Services service terms](http://aws.amazon.com/service-terms/). By submitting, you’re providing
  consent for Amazon Web Services to validate NIK, NPWP, and NITKU data, provided
  by you with the Directorate General of Taxes of Indonesia in accordance with the
  Minister of Finance Regulation (PMK) Number 112/PMK.03/2022.

    *

  `BatchPutTaxRegistration`: The use of this operation to submit tax information
  is subject to the [Amazon Web Services service terms](http://aws.amazon.com/service-terms/). By submitting, you’re providing
  consent for Amazon Web Services to validate NIK, NPWP, and NITKU data, provided
  by you with the Directorate General of Taxes of Indonesia in accordance with the
  Minister of Finance Regulation (PMK) Number 112/PMK.03/2022, through our
  third-party partner PT Achilles Advanced Management (OnlinePajak).

    *
  You must specify the `taxRegistrationNumberType` in the
  `indonesiaAdditionalInfo` field of the `additionalTaxInformation` object.

    *
  If you specify `decisionNumber`, you must specify the
  `ppnExceptionDesignationCode` in the `indonesiaAdditionalInfo` field of the
  `additionalTaxInformation` object. If the `taxRegistrationNumberType` is set to
  NPWP or NITKU, valid values for `ppnExceptionDesignationCode` are either `01`,
  `02`, `03`, `07`, or `08`.

  For other `taxRegistrationNumberType` values, `ppnExceptionDesignationCode` must
  be either `01`, `07`, or `08`.

    *
  If `ppnExceptionDesignationCode` is `07`, you must specify the `decisionNumber`
  in the `indonesiaAdditionalInfo` field of the `additionalTaxInformation` object.

  ## Kenya

    *
  You must specify the `personType` in the `kenyaAdditionalInfo`
  field of the `additionalTaxInformation` object.

    *
  If the `personType` is `Physical Person`, you must specify the
  tax registration certificate document in the `taxRegistrationDocuments` field
  of the `VerificationDetails` object.

  ## Malaysia

    *
  The sector valid values are `Business` and `Individual`.

    *

  `RegistrationType` valid values are `NRIC` for individual, and TIN and sales and
  service tax (SST) for Business.

    *
  For individual, you can specify the `taxInformationNumber` in
  `MalaysiaAdditionalInfo` with NRIC type, and a valid `MyKad` or NRIC number.

    *
  For business, you must specify a `businessRegistrationNumber` in
  `MalaysiaAdditionalInfo` with a TIN type and tax identification number.

    *
  For business resellers, you must specify a `businessRegistrationNumber` and
  `taxInformationNumber` in `MalaysiaAdditionalInfo` with a sales and service tax
  (SST) type and a valid SST number.

    *
  For business resellers with service codes, you must specify
  `businessRegistrationNumber`, `taxInformationNumber`, and distinct
  `serviceTaxCodes` in `MalaysiaAdditionalInfo` with a SST type and valid sales
  and service tax (SST) number. By using this API operation, Amazon Web Services
  registers your self-declaration that you’re an authorized business reseller
  registered with the Royal Malaysia Customs Department (RMCD), and have a valid
  SST number.

    *
  Amazon Web Services reserves the right to seek additional information and/or
  take other actions to
  support your self-declaration as appropriate.

    *
  Amazon Web Services is currently registered under the following service tax
  codes. You must include
  at least one of the service tax codes in the service tax code strings to declare
  yourself
  as an authorized registered business reseller.

  Taxable service and service tax codes:

  Consultancy - 9907061674

  Training or coaching service - 9907071685

  IT service - 9907101676

  Digital services and electronic medium - 9907121690

  ## Nepal

    *
  The sector valid values are `Business` and `Individual`.

  ## Saudi Arabia

    *
  For `address`, you must specify `addressLine3`.

  ## South Korea

    *
  You must specify the `certifiedEmailId` and `legalName` in the
  `TaxRegistrationEntry` object. Use Korean characters for
  `legalName`.

    *
  You must specify the `businessRepresentativeName`,
  `itemOfBusiness`, and `lineOfBusiness` in the
  `southKoreaAdditionalInfo` field of the `additionalTaxInformation`
  object. Use Korean characters for these fields.

    *
  You must specify the tax registration certificate document in the
  `taxRegistrationDocuments` field of the `VerificationDetails`
  object.

    *
  For the `address` object, use Korean characters for `addressLine1`,
  `addressLine2`
  `city`, `postalCode`, and `stateOrRegion`.

  ## Spain

    *
  You must specify the `registrationType` in the
  `spainAdditionalInfo` field of the `additionalTaxInformation`
  object.

    *
  If the `registrationType` is `Local`, you must specify the tax
  registration certificate document in the `taxRegistrationDocuments` field of
  the `VerificationDetails` object.

  ## Turkey

    *
  You must specify the `sector` in the `taxRegistrationEntry` object.

    *
  If your `sector` is `Business`, `Individual`, or
  `Government`:

      *
  Specify the `taxOffice`. If your
  `sector` is `Individual`, don't enter this value.

      *
  (Optional) Specify the `kepEmailId`. If your
  `sector` is `Individual`, don't enter this value.

      *

  **Note:** In the **Tax Settings** page of the Billing console, `Government`
  appears as ## Public institutions

    *
  If your `sector` is `Business` and you're subject to KDV tax,
  you must specify your industry in the `industries` field.

    *
  For `address`, you must specify `districtOrCounty`.

  ## Ukraine

    *
  The sector valid values are `Business` and `Individual`.
  """
  @spec batch_put_tax_registration(map(), batch_put_tax_registration_request(), list()) ::
          {:ok, batch_put_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_put_tax_registration_errors()}
  def batch_put_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/BatchPutTaxRegistration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes a supplemental tax registration for a single account.
  """
  @spec delete_supplemental_tax_registration(
          map(),
          delete_supplemental_tax_registration_request(),
          list()
        ) ::
          {:ok, delete_supplemental_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_supplemental_tax_registration_errors()}
  def delete_supplemental_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteSupplementalTaxRegistration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes tax registration for a single account.

  This API operation can't be used to delete your tax registration in Brazil. Use
  the [Payment preferences](https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods)
  page in the Billing and Cost Management console instead.
  """
  @spec delete_tax_registration(map(), delete_tax_registration_request(), list()) ::
          {:ok, delete_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_tax_registration_errors()}
  def delete_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteTaxRegistration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get supported tax exemption types.

  The IAM action is `tax:GetExemptions`.
  """
  @spec get_tax_exemption_types(map(), get_tax_exemption_types_request(), list()) ::
          {:ok, get_tax_exemption_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tax_exemption_types_errors()}
  def get_tax_exemption_types(%Client{} = client, input, options \\ []) do
    url_path = "/GetTaxExemptionTypes"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  The get account tax inheritance status.
  """
  @spec get_tax_inheritance(map(), get_tax_inheritance_request(), list()) ::
          {:ok, get_tax_inheritance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tax_inheritance_errors()}
  def get_tax_inheritance(%Client{} = client, input, options \\ []) do
    url_path = "/GetTaxInheritance"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves tax registration for a single account.
  """
  @spec get_tax_registration(map(), get_tax_registration_request(), list()) ::
          {:ok, get_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tax_registration_errors()}
  def get_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/GetTaxRegistration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Downloads your tax documents to the Amazon S3 bucket that you specify in your
  request.
  """
  @spec get_tax_registration_document(map(), get_tax_registration_document_request(), list()) ::
          {:ok, get_tax_registration_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tax_registration_document_errors()}
  def get_tax_registration_document(%Client{} = client, input, options \\ []) do
    url_path = "/GetTaxRegistrationDocument"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Retrieves supplemental tax registrations for a single account.
  """
  @spec list_supplemental_tax_registrations(
          map(),
          list_supplemental_tax_registrations_request(),
          list()
        ) ::
          {:ok, list_supplemental_tax_registrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_supplemental_tax_registrations_errors()}
  def list_supplemental_tax_registrations(%Client{} = client, input, options \\ []) do
    url_path = "/ListSupplementalTaxRegistrations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the tax exemption of accounts listed in a consolidated billing family.

  The IAM action is `tax:GetExemptions`.
  """
  @spec list_tax_exemptions(map(), list_tax_exemptions_request(), list()) ::
          {:ok, list_tax_exemptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tax_exemptions_errors()}
  def list_tax_exemptions(%Client{} = client, input, options \\ []) do
    url_path = "/ListTaxExemptions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the tax registration of accounts listed in a consolidated billing
  family.

  This
  can be used to retrieve up to 100 accounts' tax registrations in one call
  (default 50).
  """
  @spec list_tax_registrations(map(), list_tax_registrations_request(), list()) ::
          {:ok, list_tax_registrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tax_registrations_errors()}
  def list_tax_registrations(%Client{} = client, input, options \\ []) do
    url_path = "/ListTaxRegistrations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Stores supplemental tax registration for a single account.
  """
  @spec put_supplemental_tax_registration(
          map(),
          put_supplemental_tax_registration_request(),
          list()
        ) ::
          {:ok, put_supplemental_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_supplemental_tax_registration_errors()}
  def put_supplemental_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/PutSupplementalTaxRegistration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds the tax exemption for a single account or all accounts listed in a
  consolidated billing family.

  The IAM action is `tax:UpdateExemptions`.
  """
  @spec put_tax_exemption(map(), put_tax_exemption_request(), list()) ::
          {:ok, put_tax_exemption_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_tax_exemption_errors()}
  def put_tax_exemption(%Client{} = client, input, options \\ []) do
    url_path = "/PutTaxExemption"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  The updated tax inheritance status.
  """
  @spec put_tax_inheritance(map(), put_tax_inheritance_request(), list()) ::
          {:ok, put_tax_inheritance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_tax_inheritance_errors()}
  def put_tax_inheritance(%Client{} = client, input, options \\ []) do
    url_path = "/PutTaxInheritance"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or updates tax registration for a single account.

  You can't set a TRN if there's a pending TRN. You'll need to delete the pending
  TRN first.

  To call this API operation for specific countries, see the following
  country-specific
  requirements.

  ## Bangladesh

    *
  You must specify the tax registration certificate document in the
  `taxRegistrationDocuments` field of the `VerificationDetails`
  object.

  ## Brazil

    *
  You must complete the tax registration process in the [Payment preferences](https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods)
  page in the Billing and Cost Management console. After your TRN and billing
  address are verified, you can call this API operation.

    *
  For Amazon Web Services accounts created through Organizations, you can call
  this API operation when you don't have a billing address.

  ## Georgia

    *
  The valid `personType` values are `Physical Person` and `Business`.

  ## Indonesia

    *

  `PutTaxRegistration`: The use of this operation to submit tax information is
  subject to the [Amazon Web Services service terms](http://aws.amazon.com/service-terms/). By submitting, you’re providing
  consent for Amazon Web Services to validate NIK, NPWP, and NITKU data, provided
  by you with the Directorate General of Taxes of Indonesia in accordance with the
  Minister of Finance Regulation (PMK) Number 112/PMK.03/2022.

    *

  `BatchPutTaxRegistration`: The use of this operation to submit tax information
  is subject to the [Amazon Web Services service terms](http://aws.amazon.com/service-terms/). By submitting, you’re providing
  consent for Amazon Web Services to validate NIK, NPWP, and NITKU data, provided
  by you with the Directorate General of Taxes of Indonesia in accordance with the
  Minister of Finance Regulation (PMK) Number 112/PMK.03/2022, through our
  third-party partner PT Achilles Advanced Management (OnlinePajak).

    *
  You must specify the `taxRegistrationNumberType` in the
  `indonesiaAdditionalInfo` field of the `additionalTaxInformation` object.

    *
  If you specify `decisionNumber`, you must specify the
  `ppnExceptionDesignationCode` in the `indonesiaAdditionalInfo` field of the
  `additionalTaxInformation` object. If the `taxRegistrationNumberType` is set to
  NPWP or NITKU, valid values for `ppnExceptionDesignationCode` are either `01`,
  `02`, `03`, `07`, or `08`.

  For other `taxRegistrationNumberType` values, `ppnExceptionDesignationCode` must
  be either `01`, `07`, or `08`.

    *
  If `ppnExceptionDesignationCode` is `07`, you must specify the `decisionNumber`
  in the `indonesiaAdditionalInfo` field of the `additionalTaxInformation` object.

  ## Kenya

    *
  You must specify the `personType` in the `kenyaAdditionalInfo`
  field of the `additionalTaxInformation` object.

    *
  If the `personType` is `Physical Person`, you must specify the
  tax registration certificate document in the `taxRegistrationDocuments` field
  of the `VerificationDetails` object.

  ## Malaysia

    *
  The sector valid values are `Business` and `Individual`.

    *

  `RegistrationType` valid values are `NRIC` for individual, and TIN and sales and
  service tax (SST) for Business.

    *
  For individual, you can specify the `taxInformationNumber` in
  `MalaysiaAdditionalInfo` with NRIC type, and a valid `MyKad` or NRIC number.

    *
  For business, you must specify a `businessRegistrationNumber` in
  `MalaysiaAdditionalInfo` with a TIN type and tax identification number.

    *
  For business resellers, you must specify a `businessRegistrationNumber` and
  `taxInformationNumber` in `MalaysiaAdditionalInfo` with a sales and service tax
  (SST) type and a valid SST number.

    *
  For business resellers with service codes, you must specify
  `businessRegistrationNumber`, `taxInformationNumber`, and distinct
  `serviceTaxCodes` in `MalaysiaAdditionalInfo` with a SST type and valid sales
  and service tax (SST) number. By using this API operation, Amazon Web Services
  registers your self-declaration that you’re an authorized business reseller
  registered with the Royal Malaysia Customs Department (RMCD), and have a valid
  SST number.

    *
  Amazon Web Services reserves the right to seek additional information and/or
  take other actions to
  support your self-declaration as appropriate.

    *
  Amazon Web Services is currently registered under the following service tax
  codes. You must include
  at least one of the service tax codes in the service tax code strings to declare
  yourself
  as an authorized registered business reseller.

  Taxable service and service tax codes:

  Consultancy - 9907061674

  Training or coaching service - 9907071685

  IT service - 9907101676

  Digital services and electronic medium - 9907121690

  ## Nepal

    *
  The sector valid values are `Business` and `Individual`.

  ## Saudi Arabia

    *
  For `address`, you must specify `addressLine3`.

  ## South Korea

    *
  You must specify the `certifiedEmailId` and `legalName` in the
  `TaxRegistrationEntry` object. Use Korean characters for
  `legalName`.

    *
  You must specify the `businessRepresentativeName`,
  `itemOfBusiness`, and `lineOfBusiness` in the
  `southKoreaAdditionalInfo` field of the `additionalTaxInformation`
  object. Use Korean characters for these fields.

    *
  You must specify the tax registration certificate document in the
  `taxRegistrationDocuments` field of the `VerificationDetails`
  object.

    *
  For the `address` object, use Korean characters for `addressLine1`,
  `addressLine2`
  `city`, `postalCode`, and `stateOrRegion`.

  ## Spain

    *
  You must specify the `registrationType` in the
  `spainAdditionalInfo` field of the `additionalTaxInformation`
  object.

    *
  If the `registrationType` is `Local`, you must specify the tax
  registration certificate document in the `taxRegistrationDocuments` field of
  the `VerificationDetails` object.

  ## Turkey

    *
  You must specify the `sector` in the `taxRegistrationEntry` object.

    *
  If your `sector` is `Business`, `Individual`, or
  `Government`:

      *
  Specify the `taxOffice`. If your
  `sector` is `Individual`, don't enter this value.

      *
  (Optional) Specify the `kepEmailId`. If your
  `sector` is `Individual`, don't enter this value.

      *

  **Note:** In the **Tax Settings** page of the Billing console, `Government`
  appears as ## Public institutions

    *
  If your `sector` is `Business` and you're subject to KDV tax,
  you must specify your industry in the `industries` field.

    *
  For `address`, you must specify `districtOrCounty`.

  ## Ukraine

    *
  The sector valid values are `Business` and `Individual`.
  """
  @spec put_tax_registration(map(), put_tax_registration_request(), list()) ::
          {:ok, put_tax_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_tax_registration_errors()}
  def put_tax_registration(%Client{} = client, input, options \\ []) do
    url_path = "/PutTaxRegistration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
