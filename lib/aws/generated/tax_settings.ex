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
  @type get_tax_registration_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      south_korea_additional_info() :: %{
        "businessRepresentativeName" => String.t(),
        "itemOfBusiness" => String.t(),
        "lineOfBusiness" => String.t()
      }

  """
  @type south_korea_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_s3_location() :: %{
        "bucket" => String.t(),
        "key" => String.t()
      }

  """
  @type source_s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_response() :: %{
        "errors" => list(batch_delete_tax_registration_error()())
      }

  """
  @type batch_delete_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tax_exemptions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_tax_exemptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      additional_info_response() :: %{
        "brazilAdditionalInfo" => brazil_additional_info(),
        "canadaAdditionalInfo" => canada_additional_info(),
        "estoniaAdditionalInfo" => estonia_additional_info(),
        "georgiaAdditionalInfo" => georgia_additional_info(),
        "indiaAdditionalInfo" => india_additional_info(),
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
        "ukraineAdditionalInfo" => ukraine_additional_info()
      }

  """
  @type additional_info_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ukraine_additional_info() :: %{
        "ukraineTrnType" => list(any())
      }

  """
  @type ukraine_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      italy_additional_info() :: %{
        "cigNumber" => String.t(),
        "cupNumber" => String.t(),
        "sdiAccountId" => String.t(),
        "taxCode" => String.t()
      }

  """
  @type italy_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachment_upload_exception() :: %{
        "message" => String.t()
      }

  """
  @type attachment_upload_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_inheritance_details() :: %{
        "inheritanceObtainedReason" => String.t(),
        "parentEntityId" => String.t()
      }

  """
  @type tax_inheritance_details() :: %{String.t() => any()}

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
  @type tax_exemption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      malaysia_additional_info() :: %{
        "businessRegistrationNumber" => String.t(),
        "serviceTaxCodes" => list(list(any())()),
        "taxInformationNumber" => String.t()
      }

  """
  @type malaysia_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kenya_additional_info() :: %{
        "personType" => list(any())
      }

  """
  @type kenya_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_registration_response() :: %{
        "taxRegistration" => tax_registration()
      }

  """
  @type get_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration_doc_file() :: %{
        "fileContent" => binary(),
        "fileName" => String.t()
      }

  """
  @type tax_registration_doc_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      india_additional_info() :: %{
        "pan" => String.t()
      }

  """
  @type india_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      poland_additional_info() :: %{
        "individualRegistrationNumber" => String.t(),
        "isGroupVatEnabled" => boolean()
      }

  """
  @type poland_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_tax_exemptions_response() :: %{
        "failedAccounts" => list(String.t()()),
        "taxExemptionDetailsMap" => map()
      }

  """
  @type batch_get_tax_exemptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_supplemental_tax_registration_request() :: %{
        required("taxRegistrationEntry") => supplemental_tax_registration_entry()
      }

  """
  @type put_supplemental_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_tax_registration_request() :: %{
        required("accountIds") => list(String.t()()),
        required("taxRegistrationEntry") => tax_registration_entry()
      }

  """
  @type batch_put_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      case_creation_limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type case_creation_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_supplemental_tax_registration_request() :: %{
        required("authorityId") => String.t()
      }

  """
  @type delete_supplemental_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_exemption_types_request() :: %{}

  """
  @type get_tax_exemption_types_request() :: %{}

  @typedoc """

  ## Example:

      get_tax_registration_request() :: %{
        optional("accountId") => String.t()
      }

  """
  @type get_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_inheritance_response() :: %{
        "heritageStatus" => list(any())
      }

  """
  @type get_tax_inheritance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      romania_additional_info() :: %{
        "taxRegistrationNumberType" => list(any())
      }

  """
  @type romania_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      brazil_additional_info() :: %{
        "ccmCode" => String.t(),
        "legalNatureCode" => String.t()
      }

  """
  @type brazil_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      additional_info_request() :: %{
        "canadaAdditionalInfo" => canada_additional_info(),
        "estoniaAdditionalInfo" => estonia_additional_info(),
        "georgiaAdditionalInfo" => georgia_additional_info(),
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
        "ukraineAdditionalInfo" => ukraine_additional_info()
      }

  """
  @type additional_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      supplemental_tax_registration_entry() :: %{
        "address" => address(),
        "legalName" => String.t(),
        "registrationId" => String.t(),
        "registrationType" => list(any())
      }

  """
  @type supplemental_tax_registration_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_tax_registration_response() :: %{}

  """
  @type delete_tax_registration_response() :: %{}

  @typedoc """

  ## Example:

      tax_exemption_type() :: %{
        "applicableJurisdictions" => list(authority()()),
        "description" => String.t(),
        "displayName" => String.t()
      }

  """
  @type tax_exemption_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authority() :: %{
        "country" => String.t(),
        "state" => String.t()
      }

  """
  @type authority() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_exemption_types_response() :: %{
        "taxExemptionTypes" => list(tax_exemption_type()())
      }

  """
  @type get_tax_exemption_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_tax_registration_response() :: %{
        "errors" => list(batch_put_tax_registration_error()()),
        "status" => list(any())
      }

  """
  @type batch_put_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_document_metadata() :: %{
        "taxDocumentAccessToken" => String.t(),
        "taxDocumentName" => String.t()
      }

  """
  @type tax_document_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "errorCode" => String.t(),
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "errorCode" => String.t(),
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      estonia_additional_info() :: %{
        "registryCommercialCode" => String.t()
      }

  """
  @type estonia_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tax_registrations_response() :: %{
        "accountDetails" => list(account_details()()),
        "nextToken" => String.t()
      }

  """
  @type list_tax_registrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tax_registrations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_tax_registrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      spain_additional_info() :: %{
        "registrationType" => list(any())
      }

  """
  @type spain_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_supplemental_tax_registration_response() :: %{
        "authorityId" => String.t(),
        "status" => list(any())
      }

  """
  @type put_supplemental_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      georgia_additional_info() :: %{
        "personType" => list(any())
      }

  """
  @type georgia_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_tax_inheritance_response() :: %{}

  """
  @type put_tax_inheritance_response() :: %{}

  @typedoc """

  ## Example:

      list_tax_exemptions_response() :: %{
        "nextToken" => String.t(),
        "taxExemptionDetailsMap" => map()
      }

  """
  @type list_tax_exemptions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_details() :: %{
        "accountId" => String.t(),
        "accountMetaData" => account_meta_data(),
        "taxInheritanceDetails" => tax_inheritance_details(),
        "taxRegistration" => tax_registration_with_jurisdiction()
      }

  """
  @type account_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_tax_exemption_response() :: %{
        "caseId" => String.t()
      }

  """
  @type put_tax_exemption_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration_document() :: %{
        "file" => tax_registration_doc_file(),
        "s3Location" => source_s3_location()
      }

  """
  @type tax_registration_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_s3_location() :: %{
        "bucket" => String.t(),
        "prefix" => String.t()
      }

  """
  @type destination_s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_error() :: %{
        "accountId" => String.t(),
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type batch_delete_tax_registration_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saudi_arabia_additional_info() :: %{
        "taxRegistrationNumberType" => list(any())
      }

  """
  @type saudi_arabia_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      canada_additional_info() :: %{
        "canadaQuebecSalesTaxNumber" => String.t(),
        "canadaRetailSalesTaxNumber" => String.t(),
        "isResellerAccount" => boolean(),
        "provincialSalesTaxId" => String.t()
      }

  """
  @type canada_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_tax_registration_request() :: %{
        optional("accountId") => String.t(),
        required("taxRegistrationEntry") => tax_registration_entry()
      }

  """
  @type put_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verification_details() :: %{
        "dateOfBirth" => String.t(),
        "taxRegistrationDocuments" => list(tax_registration_document()())
      }

  """
  @type verification_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_tax_registration_request() :: %{
        optional("accountId") => String.t()
      }

  """
  @type delete_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "errorCode" => String.t(),
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration() :: %{
        "additionalTaxInformation" => additional_info_response(),
        "certifiedEmailId" => String.t(),
        "legalAddress" => address(),
        "legalName" => String.t(),
        "registrationId" => String.t(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "status" => list(any()),
        "taxDocumentMetadatas" => list(tax_document_metadata()())
      }

  """
  @type tax_registration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      turkey_additional_info() :: %{
        "industries" => list(any()),
        "kepEmailId" => String.t(),
        "secondaryTaxId" => String.t(),
        "taxOffice" => String.t()
      }

  """
  @type turkey_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration_entry() :: %{
        "additionalTaxInformation" => additional_info_request(),
        "certifiedEmailId" => String.t(),
        "legalAddress" => address(),
        "legalName" => String.t(),
        "registrationId" => String.t(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "verificationDetails" => verification_details()
      }

  """
  @type tax_registration_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_tax_exemption_request() :: %{
        required("accountIds") => list(String.t()()),
        required("authority") => authority(),
        required("exemptionCertificate") => exemption_certificate(),
        required("exemptionType") => String.t()
      }

  """
  @type put_tax_exemption_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_supplemental_tax_registrations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_supplemental_tax_registrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tax_registration_with_jurisdiction() :: %{
        "additionalTaxInformation" => additional_info_response(),
        "certifiedEmailId" => String.t(),
        "jurisdiction" => jurisdiction(),
        "legalName" => String.t(),
        "registrationId" => String.t(),
        "registrationType" => list(any()),
        "sector" => list(any()),
        "status" => list(any()),
        "taxDocumentMetadatas" => list(tax_document_metadata()())
      }

  """
  @type tax_registration_with_jurisdiction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_supplemental_tax_registration_response() :: %{}

  """
  @type delete_supplemental_tax_registration_response() :: %{}

  @typedoc """

  ## Example:

      tax_exemption_details() :: %{
        "heritageObtainedDetails" => boolean(),
        "heritageObtainedParentEntity" => String.t(),
        "heritageObtainedReason" => String.t(),
        "taxExemptions" => list(tax_exemption()())
      }

  """
  @type tax_exemption_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "errorCode" => list(any()),
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_supplemental_tax_registrations_response() :: %{
        "nextToken" => String.t(),
        "taxRegistrations" => list(supplemental_tax_registration()())
      }

  """
  @type list_supplemental_tax_registrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_inheritance_request() :: %{}

  """
  @type get_tax_inheritance_request() :: %{}

  @typedoc """

  ## Example:

      batch_put_tax_registration_error() :: %{
        "accountId" => String.t(),
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type batch_put_tax_registration_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_tax_inheritance_request() :: %{
        optional("heritageStatus") => list(any())
      }

  """
  @type put_tax_inheritance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exemption_certificate() :: %{
        "documentFile" => binary(),
        "documentName" => String.t()
      }

  """
  @type exemption_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "addressLine1" => String.t(),
        "addressLine2" => String.t(),
        "addressLine3" => String.t(),
        "city" => String.t(),
        "countryCode" => String.t(),
        "districtOrCounty" => String.t(),
        "postalCode" => String.t(),
        "stateOrRegion" => String.t()
      }

  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      israel_additional_info() :: %{
        "customerType" => list(any()),
        "dealerType" => list(any())
      }

  """
  @type israel_additional_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      supplemental_tax_registration() :: %{
        "address" => address(),
        "authorityId" => String.t(),
        "legalName" => String.t(),
        "registrationId" => String.t(),
        "registrationType" => list(any()),
        "status" => list(any())
      }

  """
  @type supplemental_tax_registration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      jurisdiction() :: %{
        "countryCode" => String.t(),
        "stateOrRegion" => String.t()
      }

  """
  @type jurisdiction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_tax_exemptions_request() :: %{
        required("accountIds") => list(String.t()())
      }

  """
  @type batch_get_tax_exemptions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_meta_data() :: %{
        "accountName" => String.t(),
        "address" => address(),
        "addressRoleMap" => map(),
        "addressType" => list(any()),
        "seller" => String.t()
      }

  """
  @type account_meta_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_tax_registration_request() :: %{
        required("accountIds") => list(String.t()())
      }

  """
  @type batch_delete_tax_registration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_tax_registration_response() :: %{
        "status" => list(any())
      }

  """
  @type put_tax_registration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tax_registration_document_response() :: %{
        "destinationFilePath" => String.t(),
        "presignedS3Url" => String.t()
      }

  """
  @type get_tax_registration_document_response() :: %{String.t() => any()}

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
  """
  @spec batch_get_tax_exemptions(map(), batch_get_tax_exemptions_request(), list()) ::
          {:ok, batch_get_tax_exemptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  """
  @spec get_tax_exemption_types(map(), get_tax_exemption_types_request(), list()) ::
          {:ok, get_tax_exemption_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  """
  @spec list_tax_exemptions(map(), list_tax_exemptions_request(), list()) ::
          {:ok, list_tax_exemptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  """
  @spec put_tax_exemption(map(), put_tax_exemption_request(), list()) ::
          {:ok, put_tax_exemption_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
