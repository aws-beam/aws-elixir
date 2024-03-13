# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ACM do
  @moduledoc """
  Certificate Manager

  You can use Certificate Manager (ACM) to manage SSL/TLS certificates for your
  Amazon Web Services-based websites
  and applications.

  For more information about using ACM, see the [Certificate Manager User Guide](https://docs.aws.amazon.com/acm/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_certificate_options_request() :: %{
        required("CertificateArn") => String.t(),
        required("Options") => certificate_options()
      }
      
  """
  @type update_certificate_options_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_validation_option() :: %{
        "DomainName" => String.t(),
        "ValidationDomain" => String.t()
      }
      
  """
  @type domain_validation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_in_progress_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type request_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_certificate_response() :: %{
        "Certificate" => String.t(),
        "CertificateChain" => String.t(),
        "PrivateKey" => String.t()
      }
      
  """
  @type export_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_certificate_response() :: %{
        "CertificateArn" => String.t()
      }
      
  """
  @type import_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_certificate_request() :: %{
        required("CertificateArn") => String.t(),
        required("Passphrase") => binary()
      }
      
  """
  @type export_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_policy_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type tag_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renewal_summary() :: %{
        "DomainValidationOptions" => list(domain_validation()()),
        "RenewalStatus" => list(any()),
        "RenewalStatusReason" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type renewal_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_certificates_request() :: %{
        optional("CertificateStatuses") => list(list(any())()),
        optional("Includes") => filters(),
        optional("MaxItems") => integer(),
        optional("NextToken") => String.t(),
        optional("SortBy") => list(any()),
        optional("SortOrder") => list(any())
      }
      
  """
  @type list_certificates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_certificate_request() :: %{
        optional("CertificateAuthorityArn") => String.t(),
        optional("DomainValidationOptions") => list(domain_validation_option()()),
        optional("IdempotencyToken") => String.t(),
        optional("KeyAlgorithm") => list(any()),
        optional("Options") => certificate_options(),
        optional("SubjectAlternativeNames") => list(String.t()()),
        optional("Tags") => list(tag()()),
        optional("ValidationMethod") => list(any()),
        required("DomainName") => String.t()
      }
      
  """
  @type request_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_certificate_request() :: %{
        required("CertificateArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type remove_tags_from_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_args_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_args_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_summary() :: %{
        "CertificateArn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t(),
        "Exported" => boolean(),
        "ExtendedKeyUsages" => list(list(any())()),
        "HasAdditionalSubjectAlternativeNames" => boolean(),
        "ImportedAt" => non_neg_integer(),
        "InUse" => boolean(),
        "IssuedAt" => non_neg_integer(),
        "KeyAlgorithm" => list(any()),
        "KeyUsages" => list(list(any())()),
        "NotAfter" => non_neg_integer(),
        "NotBefore" => non_neg_integer(),
        "RenewalEligibility" => list(any()),
        "RevokedAt" => non_neg_integer(),
        "Status" => list(any()),
        "SubjectAlternativeNameSummaries" => list(String.t()()),
        "Type" => list(any())
      }
      
  """
  @type certificate_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renew_certificate_request() :: %{
        required("CertificateArn") => String.t()
      }
      
  """
  @type renew_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_options() :: %{
        "CertificateTransparencyLoggingPreference" => list(any())
      }
      
  """
  @type certificate_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_certificate_request() :: %{
        required("CertificateArn") => String.t()
      }
      
  """
  @type list_tags_for_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expiry_events_configuration() :: %{
        "DaysBeforeExpiry" => integer()
      }
      
  """
  @type expiry_events_configuration() :: %{String.t() => any()}

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
      
      put_account_configuration_request() :: %{
        optional("ExpiryEvents") => expiry_events_configuration(),
        required("IdempotencyToken") => String.t()
      }
      
  """
  @type put_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_certificate_request() :: %{
        required("CertificateArn") => String.t()
      }
      
  """
  @type get_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_request() :: %{
        required("CertificateArn") => String.t()
      }
      
  """
  @type describe_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_certificate_response() :: %{
        "CertificateArn" => String.t()
      }
      
  """
  @type request_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_configuration_response() :: %{
        "ExpiryEvents" => expiry_events_configuration()
      }
      
  """
  @type get_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resend_validation_email_request() :: %{
        required("CertificateArn") => String.t(),
        required("Domain") => String.t(),
        required("ValidationDomain") => String.t()
      }
      
  """
  @type resend_validation_email_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_certificate_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_domain_validation_options_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_domain_validation_options_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_certificate_request() :: %{
        required("CertificateArn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type add_tags_to_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_certificate_request() :: %{
        optional("CertificateArn") => String.t(),
        optional("CertificateChain") => binary(),
        optional("Tags") => list(tag()()),
        required("Certificate") => binary(),
        required("PrivateKey") => binary()
      }
      
  """
  @type import_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_certificate_request() :: %{
        required("CertificateArn") => String.t()
      }
      
  """
  @type delete_certificate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_certificate_response() :: %{
        "Certificate" => certificate_detail()
      }
      
  """
  @type describe_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filters() :: %{
        "extendedKeyUsage" => list(list(any())()),
        "keyTypes" => list(list(any())()),
        "keyUsage" => list(list(any())())
      }
      
  """
  @type filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      extended_key_usage() :: %{
        "Name" => list(any()),
        "OID" => String.t()
      }
      
  """
  @type extended_key_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      domain_validation() :: %{
        "DomainName" => String.t(),
        "ResourceRecord" => resource_record(),
        "ValidationDomain" => String.t(),
        "ValidationEmails" => list(String.t()()),
        "ValidationMethod" => list(any()),
        "ValidationStatus" => list(any())
      }
      
  """
  @type domain_validation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_record() :: %{
        "Name" => String.t(),
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type resource_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tag_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_certificate_response() :: %{
        "Certificate" => String.t(),
        "CertificateChain" => String.t()
      }
      
  """
  @type get_certificate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      key_usage() :: %{
        "Name" => list(any())
      }
      
  """
  @type key_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_certificates_response() :: %{
        "CertificateSummaryList" => list(certificate_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_certificates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_detail() :: %{
        "CertificateArn" => String.t(),
        "CertificateAuthorityArn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t(),
        "DomainValidationOptions" => list(domain_validation()()),
        "ExtendedKeyUsages" => list(extended_key_usage()()),
        "FailureReason" => list(any()),
        "ImportedAt" => non_neg_integer(),
        "InUseBy" => list(String.t()()),
        "IssuedAt" => non_neg_integer(),
        "Issuer" => String.t(),
        "KeyAlgorithm" => list(any()),
        "KeyUsages" => list(key_usage()()),
        "NotAfter" => non_neg_integer(),
        "NotBefore" => non_neg_integer(),
        "Options" => certificate_options(),
        "RenewalEligibility" => list(any()),
        "RenewalSummary" => renewal_summary(),
        "RevocationReason" => list(any()),
        "RevokedAt" => non_neg_integer(),
        "Serial" => String.t(),
        "SignatureAlgorithm" => String.t(),
        "Status" => list(any()),
        "Subject" => String.t(),
        "SubjectAlternativeNames" => list(String.t()()),
        "Type" => list(any())
      }
      
  """
  @type certificate_detail() :: %{String.t() => any()}

  @type add_tags_to_certificate_errors() ::
          too_many_tags_exception()
          | invalid_tag_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | tag_policy_exception()

  @type delete_certificate_errors() ::
          throttling_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_arn_exception()
          | resource_in_use_exception()

  @type describe_certificate_errors() :: resource_not_found_exception() | invalid_arn_exception()

  @type export_certificate_errors() ::
          resource_not_found_exception()
          | invalid_arn_exception()
          | request_in_progress_exception()

  @type get_account_configuration_errors() :: throttling_exception() | access_denied_exception()

  @type get_certificate_errors() ::
          resource_not_found_exception()
          | invalid_arn_exception()
          | request_in_progress_exception()

  @type import_certificate_errors() ::
          too_many_tags_exception()
          | invalid_tag_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | tag_policy_exception()

  @type list_certificates_errors() :: validation_exception() | invalid_args_exception()

  @type list_tags_for_certificate_errors() ::
          resource_not_found_exception() | invalid_arn_exception()

  @type put_account_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | conflict_exception()

  @type remove_tags_from_certificate_errors() ::
          invalid_tag_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | tag_policy_exception()

  @type renew_certificate_errors() :: resource_not_found_exception() | invalid_arn_exception()

  @type request_certificate_errors() ::
          too_many_tags_exception()
          | invalid_tag_exception()
          | limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_domain_validation_options_exception()
          | invalid_arn_exception()
          | tag_policy_exception()

  @type resend_validation_email_errors() ::
          invalid_domain_validation_options_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()

  @type update_certificate_options_errors() ::
          limit_exceeded_exception()
          | resource_not_found_exception()
          | invalid_arn_exception()
          | invalid_state_exception()

  def metadata do
    %{
      api_version: "2015-12-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "acm",
      global?: false,
      protocol: "json",
      service_id: "ACM",
      signature_version: "v4",
      signing_name: "acm",
      target_prefix: "CertificateManager"
    }
  end

  @doc """
  Adds one or more tags to an ACM certificate.

  Tags are labels that you can use to
  identify and organize your Amazon Web Services resources. Each tag consists of a
  `key` and an
  optional `value`. You specify the certificate on input by its Amazon Resource
  Name
  (ARN). You specify the tag by using a key-value pair.

  You can apply a tag to just one certificate if you want to identify a specific
  characteristic of that certificate, or you can apply the same tag to multiple
  certificates if
  you want to filter for a common relationship among those certificates.
  Similarly, you can
  apply the same tag to multiple resources if you want to specify a relationship
  among those
  resources. For example, you can add the same tag to an ACM certificate and an
  Elastic Load
  Balancing load balancer to indicate that they are both used by the same website.
  For more
  information, see [Tagging ACM certificates](https://docs.aws.amazon.com/acm/latest/userguide/tags.html).

  To remove one or more tags, use the `RemoveTagsFromCertificate` action. To
  view all of the tags that have been applied to the certificate, use the
  `ListTagsForCertificate` action.
  """
  @spec add_tags_to_certificate(map(), add_tags_to_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_tags_to_certificate_errors()}
  def add_tags_to_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTagsToCertificate", input, options)
  end

  @doc """
  Deletes a certificate and its associated private key.

  If this action succeeds, the
  certificate no longer appears in the list that can be displayed by calling the
  `ListCertificates` action or be retrieved by calling the `GetCertificate`
  action. The certificate will not be available for use by Amazon Web Services
  services integrated with ACM.

  You cannot delete an ACM certificate that is being used by another Amazon Web
  Services service. To
  delete a certificate that is in use, the certificate association must first be
  removed.
  """
  @spec delete_certificate(map(), delete_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_certificate_errors()}
  def delete_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCertificate", input, options)
  end

  @doc """
  Returns detailed metadata about the specified ACM certificate.

  If you have just created a certificate using the `RequestCertificate` action,
  there is a delay of several seconds before you can retrieve information about
  it.
  """
  @spec describe_certificate(map(), describe_certificate_request(), list()) ::
          {:ok, describe_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_certificate_errors()}
  def describe_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCertificate", input, options)
  end

  @doc """
  Exports a private certificate issued by a private certificate authority (CA) for
  use
  anywhere.

  The exported file contains the certificate, the certificate chain, and the
  encrypted
  private 2048-bit RSA key associated with the public key that is embedded in the
  certificate.
  For security, you must assign a passphrase for the private key when exporting
  it.

  For information about exporting and formatting a certificate using the ACM
  console or
  CLI, see [Export a Private
  Certificate](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-export-private.html).
  """
  @spec export_certificate(map(), export_certificate_request(), list()) ::
          {:ok, export_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_certificate_errors()}
  def export_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ExportCertificate", input, options)
  end

  @doc """
  Returns the account configuration options associated with an Amazon Web Services
  account.
  """
  @spec get_account_configuration(map(), %{}, list()) ::
          {:ok, get_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_configuration_errors()}
  def get_account_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountConfiguration", input, options)
  end

  @doc """
  Retrieves an Amazon-issued certificate and its certificate chain.

  The chain consists of
  the certificate of the issuing CA and the intermediate certificates of any other
  subordinate
  CAs. All of the certificates are base64 encoded. You can use
  [OpenSSL](https://wiki.openssl.org/index.php/Command_Line_Utilities) to decode
  the certificates and inspect individual fields.
  """
  @spec get_certificate(map(), get_certificate_request(), list()) ::
          {:ok, get_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_certificate_errors()}
  def get_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCertificate", input, options)
  end

  @doc """
  Imports a certificate into Certificate Manager (ACM) to use with services that
  are integrated with
  ACM.

  Note that [integrated services](https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html)
  allow only certificate types and keys they support to be associated with
  their resources. Further, their support differs depending on whether the
  certificate is
  imported into IAM or into ACM. For more information, see the documentation for
  each
  service. For more information about importing certificates into ACM, see
  [Importing Certificates](https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
  in the *Certificate Manager User Guide*.

  ACM does not provide [managed renewal](https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for
  certificates that you import.

  Note the following guidelines when importing third party certificates:

    *
  You must enter the private key that matches the certificate you are importing.

    *
  The private key must be unencrypted. You cannot import a private key that is
  protected
  by a password or a passphrase.

    *
  The private key must be no larger than 5 KB (5,120 bytes).

    *
  If the certificate you are importing is not self-signed, you must enter its
  certificate chain.

    *
  If a certificate chain is included, the issuer must be the subject of one of the
  certificates in the chain.

    *
  The certificate, private key, and certificate chain must be PEM-encoded.

    *
  The current time must be between the `Not Before` and

  ```
  Not
  After
  ```

  certificate fields.

    *
  The `Issuer` field must not be empty.

    *
  The OCSP authority URL, if present, must not exceed 1000 characters.

    *
  To import a new certificate, omit the `CertificateArn` argument. Include
  this argument only when you want to replace a previously imported certificate.

    *
  When you import a certificate by using the CLI, you must specify the
  certificate, the
  certificate chain, and the private key by their file names preceded by
  `fileb://`. For example, you can specify a certificate saved in the
  `C:\temp` folder as `fileb://C:\temp\certificate_to_import.pem`.
  If you are making an HTTP or HTTPS Query request, include these arguments as
  BLOBs.

    *
  When you import a certificate by using an SDK, you must specify the certificate,
  the
  certificate chain, and the private key files in the manner required by the
  programming
  language you're using.

    *
  The cryptographic algorithm of an imported certificate must match the algorithm
  of the
  signing CA. For example, if the signing CA key type is RSA, then the certificate
  key type
  must also be RSA.

  This operation returns the [Amazon Resource Name
  (ARN)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of the imported certificate.
  """
  @spec import_certificate(map(), import_certificate_request(), list()) ::
          {:ok, import_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_certificate_errors()}
  def import_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportCertificate", input, options)
  end

  @doc """
  Retrieves a list of certificate ARNs and domain names.

  You can request that only
  certificates that match a specific status be listed. You can also filter by
  specific
  attributes of the certificate. Default filtering returns only `RSA_2048`
  certificates. For more information, see `Filters`.
  """
  @spec list_certificates(map(), list_certificates_request(), list()) ::
          {:ok, list_certificates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_certificates_errors()}
  def list_certificates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCertificates", input, options)
  end

  @doc """
  Lists the tags that have been applied to the ACM certificate.

  Use the certificate's
  Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM
  certificate,
  use the `AddTagsToCertificate` action. To delete a tag, use the
  `RemoveTagsFromCertificate` action.
  """
  @spec list_tags_for_certificate(map(), list_tags_for_certificate_request(), list()) ::
          {:ok, list_tags_for_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_certificate_errors()}
  def list_tags_for_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForCertificate", input, options)
  end

  @doc """
  Adds or modifies account-level configurations in ACM.

  The supported configuration option is `DaysBeforeExpiry`. This option specifies
  the number of days prior to certificate expiration when ACM starts generating
  `EventBridge` events. ACM sends one event per day per certificate until the
  certificate expires. By default, accounts receive events starting 45 days before
  certificate
  expiration.
  """
  @spec put_account_configuration(map(), put_account_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_account_configuration_errors()}
  def put_account_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutAccountConfiguration", input, options)
  end

  @doc """
  Remove one or more tags from an ACM certificate.

  A tag consists of a key-value pair. If
  you do not specify the value portion of the tag when calling this function, the
  tag will be
  removed regardless of value. If you specify a value, the tag is removed only if
  it is
  associated with the specified value.

  To add tags to a certificate, use the `AddTagsToCertificate` action. To
  view all of the tags that have been applied to a specific ACM certificate, use
  the `ListTagsForCertificate` action.
  """
  @spec remove_tags_from_certificate(map(), remove_tags_from_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_tags_from_certificate_errors()}
  def remove_tags_from_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTagsFromCertificate", input, options)
  end

  @doc """
  Renews an eligible ACM certificate.

  At this time, only exported private certificates can
  be renewed with this operation. In order to renew your Amazon Web Services
  Private CA certificates with ACM, you
  must first [grant the ACM service principal permission to do
  so](https://docs.aws.amazon.com/privateca/latest/userguide/PcaPermissions.html).
  For more information, see [Testing Managed Renewal](https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html)
  in the ACM User Guide.
  """
  @spec renew_certificate(map(), renew_certificate_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, renew_certificate_errors()}
  def renew_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RenewCertificate", input, options)
  end

  @doc """
  Requests an ACM certificate for use with other Amazon Web Services services.

  To request an ACM
  certificate, you must specify a fully qualified domain name (FQDN) in the
  `DomainName` parameter. You can also specify additional FQDNs in the
  `SubjectAlternativeNames` parameter.

  If you are requesting a private certificate, domain validation is not required.
  If you are
  requesting a public certificate, each domain name that you specify must be
  validated to verify
  that you own or control the domain. You can use [DNS validation](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html)
  or [email validation](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html).
  We recommend that you use DNS validation. ACM issues public certificates after
  receiving
  approval from the domain owner.

  ACM behavior differs from the [RFC 6125](https://datatracker.ietf.org/doc/html/rfc6125#appendix-B.2)
  specification of the certificate validation process. ACM first checks for a
  Subject
  Alternative Name, and, if it finds one, ignores the common name (CN).

  After successful completion of the `RequestCertificate` action, there is a
  delay of several seconds before you can retrieve information about the new
  certificate.
  """
  @spec request_certificate(map(), request_certificate_request(), list()) ::
          {:ok, request_certificate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, request_certificate_errors()}
  def request_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RequestCertificate", input, options)
  end

  @doc """
  Resends the email that requests domain ownership validation.

  The domain owner or an
  authorized representative must approve the ACM certificate before it can be
  issued. The
  certificate can be approved by clicking a link in the mail to navigate to the
  Amazon
  certificate approval website and then clicking **I Approve**.
  However, the validation email can be blocked by spam filters. Therefore, if you
  do not receive
  the original mail, you can request that the mail be resent within 72 hours of
  requesting the
  ACM certificate. If more than 72 hours have elapsed since your original request
  or since
  your last attempt to resend validation mail, you must request a new certificate.
  For more
  information about setting up your contact email addresses, see [Configure Email for your
  Domain](https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).
  """
  @spec resend_validation_email(map(), resend_validation_email_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resend_validation_email_errors()}
  def resend_validation_email(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResendValidationEmail", input, options)
  end

  @doc """
  Updates a certificate.

  Currently, you can use this function to specify whether to opt in
  to or out of recording your certificate in a certificate transparency log. For
  more
  information, see [ Opting Out of Certificate Transparency
  Logging](https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency).
  """
  @spec update_certificate_options(map(), update_certificate_options_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_certificate_options_errors()}
  def update_certificate_options(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCertificateOptions", input, options)
  end
end
