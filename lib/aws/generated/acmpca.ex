# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ACMPCA do
  @moduledoc """
  This is the *Amazon Web Services Private Certificate Authority API Reference*.

  It provides descriptions, syntax, and usage examples for each of the actions and
  data types involved in creating and managing a private certificate authority
  (CA) for your organization.

  The documentation for each action shows the API request parameters and the JSON
  response. Alternatively, you can use one of the Amazon Web Services SDKs to
  access an API that is tailored to the programming language or platform that you
  prefer. For more information, see [Amazon Web Services SDKs](https://aws.amazon.com/tools/#SDKs).

  Each Amazon Web Services Private CA API operation has a quota that determines
  the number of times the operation can be called per second. Amazon Web Services
  Private CA throttles API requests at different rates depending on the operation.
  Throttling means that Amazon Web Services Private CA rejects an otherwise valid
  request because the request exceeds the operation's quota for the number of
  requests per second. When a request is throttled, Amazon Web Services Private CA
  returns a
  [ThrottlingException](https://docs.aws.amazon.com/privateca/latest/APIReference/CommonErrors.html) error. Amazon Web Services Private CA does not guarantee a minimum request rate
  for APIs.

  To see an up-to-date list of your Amazon Web Services Private CA quotas, or to
  request a quota increase, log into your Amazon Web Services account and visit
  the [Service Quotas](https://console.aws.amazon.com/servicequotas/) console.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "ACM-PCA",
      api_version: "2017-08-22",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "acm-pca",
      global?: false,
      protocol: "json",
      service_id: "ACM PCA",
      signature_version: "v4",
      signing_name: "acm-pca",
      target_prefix: "ACMPrivateCA"
    }
  end

  @doc """
  Creates a root or subordinate private certificate authority (CA).

  You must specify the CA configuration, an optional configuration for Online
  Certificate Status Protocol (OCSP) and/or a certificate revocation list (CRL),
  the CA type, and an optional idempotency token to avoid accidental creation of
  multiple CAs. The CA configuration specifies the name of the algorithm and key
  size to be used to create the CA private key, the type of signing algorithm that
  the CA uses, and X.500 subject information. The OCSP configuration can
  optionally specify a custom URL for the OCSP responder. The CRL configuration
  specifies the CRL expiration period in days (the validity period of the CRL),
  the Amazon S3 bucket that will contain the CRL, and a CNAME alias for the S3
  bucket that is included in certificates issued by the CA. If successful, this
  action returns the Amazon Resource Name (ARN) of the CA.

  Both Amazon Web Services Private CA and the IAM principal must have permission
  to write to the S3 bucket that you specify. If the IAM principal making the call
  does not have permission to write to the bucket, then an exception is thrown.
  For more information, see [Access policies for CRLs in Amazon S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).

  Amazon Web Services Private CA assets that are stored in Amazon S3 can be
  protected with encryption. For more information, see [Encrypting Your CRLs](https://docs.aws.amazon.com/privateca/latest/userguide/PcaCreateCa.html#crl-encryption).
  """
  def create_certificate_authority(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCertificateAuthority", input, options)
  end

  @doc """
  Creates an audit report that lists every time that your CA private key is used.

  The report is saved in the Amazon S3 bucket that you specify on input. The
  [IssueCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html) and
  [RevokeCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html)
  actions use the private key.

  Both Amazon Web Services Private CA and the IAM principal must have permission
  to write to the S3 bucket that you specify. If the IAM principal making the call
  does not have permission to write to the bucket, then an exception is thrown.
  For more information, see [Access policies for CRLs in Amazon S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).

  Amazon Web Services Private CA assets that are stored in Amazon S3 can be
  protected with encryption. For more information, see [Encrypting Your Audit Reports](https://docs.aws.amazon.com/privateca/latest/userguide/PcaAuditReport.html#audit-report-encryption).

  You can generate a maximum of one report every 30 minutes.
  """
  def create_certificate_authority_audit_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCertificateAuthorityAuditReport", input, options)
  end

  @doc """
  Grants one or more permissions on a private CA to the Certificate Manager (ACM)
  service principal (`acm.amazonaws.com`).

  These permissions allow ACM to issue and renew ACM certificates that reside in
  the same Amazon Web Services account as the CA.

  You can list current permissions with the
  [ListPermissions](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html) action and revoke them with the
  [DeletePermission](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html)
  action.

  ## About Permissions

    * If the private CA and the certificates it issues reside in the
  same account, you can use `CreatePermission` to grant permissions for ACM to
  carry out automatic certificate renewals.

    * For automatic certificate renewal to succeed, the ACM service
  principal needs permissions to create, retrieve, and list certificates.

    * If the private CA and the ACM certificates reside in different
  accounts, then permissions cannot be used to enable automatic renewals. Instead,
  the ACM certificate owner must set up a resource-based policy to enable
  cross-account issuance and renewals. For more information, see [Using a Resource Based Policy with Amazon Web Services Private
  CA](https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html).
  """
  def create_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePermission", input, options)
  end

  @doc """
  Deletes a private certificate authority (CA).

  You must provide the Amazon Resource Name (ARN) of the private CA that you want
  to delete. You can find the ARN by calling the
  [ListCertificateAuthorities](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html) action.

  Deleting a CA will invalidate other CAs and certificates below it in your CA
  hierarchy.

  Before you can delete a CA that you have created and activated, you must disable
  it. To do this, call the
  [UpdateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html)
  action and set the **CertificateAuthorityStatus** parameter to `DISABLED`.

  Additionally, you can delete a CA if you are waiting for it to be created (that
  is, the status of the CA is `CREATING`). You can also delete it if the CA has
  been created but you haven't yet imported the signed certificate into Amazon Web
  Services Private CA (that is, the status of the CA is `PENDING_CERTIFICATE`).

  When you successfully call
  [DeleteCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html), the CA's status changes to `DELETED`. However, the CA won't be permanently
  deleted until the restoration period has passed. By default, if you do not set
  the `PermanentDeletionTimeInDays` parameter, the CA remains restorable for 30
  days. You can set the parameter from 7 to 30 days. The
  [DescribeCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html)
  action returns the time remaining in the restoration window of a private CA in
  the `DELETED` state. To restore an eligible CA, call the
  [RestoreCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_RestoreCertificateAuthority.html)
  action.
  """
  def delete_certificate_authority(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCertificateAuthority", input, options)
  end

  @doc """
  Revokes permissions on a private CA granted to the Certificate Manager (ACM)
  service principal (acm.amazonaws.com).

  These permissions allow ACM to issue and renew ACM certificates that reside in
  the same Amazon Web Services account as the CA. If you revoke these permissions,
  ACM will no longer renew the affected certificates automatically.

  Permissions can be granted with the
  [CreatePermission](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreatePermission.html) action and listed with the
  [ListPermissions](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListPermissions.html)
  action.

  ## About Permissions

    * If the private CA and the certificates it issues reside in the
  same account, you can use `CreatePermission` to grant permissions for ACM to
  carry out automatic certificate renewals.

    * For automatic certificate renewal to succeed, the ACM service
  principal needs permissions to create, retrieve, and list certificates.

    * If the private CA and the ACM certificates reside in different
  accounts, then permissions cannot be used to enable automatic renewals. Instead,
  the ACM certificate owner must set up a resource-based policy to enable
  cross-account issuance and renewals. For more information, see [Using a Resource Based Policy with Amazon Web Services Private
  CA](https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html).
  """
  def delete_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePermission", input, options)
  end

  @doc """
  Deletes the resource-based policy attached to a private CA.

  Deletion will remove any access that the policy has granted. If there is no
  policy attached to the private CA, this action will return successful.

  If you delete a policy that was applied through Amazon Web Services Resource
  Access Manager (RAM), the CA will be removed from all shares in which it was
  included.

  The Certificate Manager Service Linked Role that the policy supports is not
  affected when you delete the policy.

  The current policy can be shown with
  [GetPolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html) and updated with
  [PutPolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html).

  ## About Policies

    * A policy grants access on a private CA to an Amazon Web Services
  customer account, to Amazon Web Services Organizations, or to an Amazon Web
  Services Organizations unit. Policies are under the control of a CA
  administrator. For more information, see [Using a Resource Based Policy with Amazon Web Services Private
  CA](https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html).

    * A policy permits a user of Certificate Manager (ACM) to issue ACM
  certificates signed by a CA in another account.

    * For ACM to manage automatic renewal of these certificates, the ACM
  user must configure a Service Linked Role (SLR). The SLR allows the ACM service
  to assume the identity of the user, subject to confirmation against the Amazon
  Web Services Private CA policy. For more information, see [Using a Service Linked Role with
  ACM](https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html).

    * Updates made in Amazon Web Services Resource Manager (RAM) are
  reflected in policies. For more information, see [Attach a Policy for Cross-Account
  Access](https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html).
  """
  def delete_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePolicy", input, options)
  end

  @doc """
  Lists information about your private certificate authority (CA) or one that has
  been shared with you.

  You specify the private CA on input by its ARN (Amazon Resource Name). The
  output contains the status of your CA. This can be any of the following:

    * `CREATING` - Amazon Web Services Private CA is creating your
  private certificate authority.

    * `PENDING_CERTIFICATE` - The certificate is pending. You must use
  your Amazon Web Services Private CA-hosted or on-premises root or subordinate CA
  to sign your private CA CSR and then import it into Amazon Web Services Private
  CA.

    * `ACTIVE` - Your private CA is active.

    * `DISABLED` - Your private CA has been disabled.

    * `EXPIRED` - Your private CA certificate has expired.

    * `FAILED` - Your private CA has failed. Your CA can fail because of
  problems such a network outage or back-end Amazon Web Services failure or other
  errors. A failed CA can never return to the pending state. You must create a new
  CA.

    * `DELETED` - Your private CA is within the restoration period,
  after which it is permanently deleted. The length of time remaining in the CA's
  restoration period is also included in this action's output.
  """
  def describe_certificate_authority(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCertificateAuthority", input, options)
  end

  @doc """
  Lists information about a specific audit report created by calling the
  [CreateCertificateAuthorityAuditReport](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html) action.

  Audit information is created every time the certificate authority (CA) private
  key is used. The private key is used when you call the
  [IssueCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html)
  action or the
  [RevokeCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_RevokeCertificate.html)
  action.
  """
  def describe_certificate_authority_audit_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCertificateAuthorityAuditReport", input, options)
  end

  @doc """
  Retrieves a certificate from your private CA or one that has been shared with
  you.

  The ARN of the certificate is returned when you call the
  [IssueCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_IssueCertificate.html) action. You must specify both the ARN of your private CA and the ARN of the
  issued certificate when calling the **GetCertificate** action. You can retrieve
  the certificate if it is in the **ISSUED** state. You can call the
  [CreateCertificateAuthorityAuditReport](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html)
  action to create a report that contains information about all of the
  certificates issued and revoked by your private CA.
  """
  def get_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCertificate", input, options)
  end

  @doc """
  Retrieves the certificate and certificate chain for your private certificate
  authority (CA) or one that has been shared with you.

  Both the certificate and the chain are base64 PEM-encoded. The chain does not
  include the CA certificate. Each certificate in the chain signs the one before
  it.
  """
  def get_certificate_authority_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCertificateAuthorityCertificate", input, options)
  end

  @doc """
  Retrieves the certificate signing request (CSR) for your private certificate
  authority (CA).

  The CSR is created when you call the
  [CreateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html) action. Sign the CSR with your Amazon Web Services Private CA-hosted or
  on-premises root or subordinate CA. Then import the signed certificate back into
  Amazon Web Services Private CA by calling the
  [ImportCertificateAuthorityCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html)
  action. The CSR is returned as a base64 PEM-encoded string.
  """
  def get_certificate_authority_csr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCertificateAuthorityCsr", input, options)
  end

  @doc """
  Retrieves the resource-based policy attached to a private CA.

  If either the private CA resource or the policy cannot be found, this action
  returns a `ResourceNotFoundException`.

  The policy can be attached or updated with
  [PutPolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_PutPolicy.html) and removed with
  [DeletePolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html).

  ## About Policies

    * A policy grants access on a private CA to an Amazon Web Services
  customer account, to Amazon Web Services Organizations, or to an Amazon Web
  Services Organizations unit. Policies are under the control of a CA
  administrator. For more information, see [Using a Resource Based Policy with Amazon Web Services Private
  CA](https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html).

    * A policy permits a user of Certificate Manager (ACM) to issue ACM
  certificates signed by a CA in another account.

    * For ACM to manage automatic renewal of these certificates, the ACM
  user must configure a Service Linked Role (SLR). The SLR allows the ACM service
  to assume the identity of the user, subject to confirmation against the Amazon
  Web Services Private CA policy. For more information, see [Using a Service Linked Role with
  ACM](https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html).

    * Updates made in Amazon Web Services Resource Manager (RAM) are
  reflected in policies. For more information, see [Attach a Policy for Cross-Account
  Access](https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html).
  """
  def get_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPolicy", input, options)
  end

  @doc """
  Imports a signed private CA certificate into Amazon Web Services Private CA.

  This action is used when you are using a chain of trust whose root is located
  outside Amazon Web Services Private CA. Before you can call this action, the
  following preparations must in place:

    1. In Amazon Web Services Private CA, call the
  [CreateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html) action to create the private CA that you plan to back with the imported
  certificate.

    2. Call the
  [GetCertificateAuthorityCsr](https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificateAuthorityCsr.html)
  action to generate a certificate signing request (CSR).

    3. Sign the CSR using a root or intermediate CA hosted by either an
  on-premises PKI hierarchy or by a commercial CA.

    4. Create a certificate chain and copy the signed certificate and
  the certificate chain to your working directory.

  Amazon Web Services Private CA supports three scenarios for installing a CA
  certificate:

    * Installing a certificate for a root CA hosted by Amazon Web
  Services Private CA.

    * Installing a subordinate CA certificate whose parent authority is
  hosted by Amazon Web Services Private CA.

    * Installing a subordinate CA certificate whose parent authority is
  externally hosted.

  The following additional requirements apply when you import a CA certificate.

    * Only a self-signed certificate can be imported as a root CA.

    * A self-signed certificate cannot be imported as a subordinate CA.

    * Your certificate chain must not include the private CA certificate
  that you are importing.

    * Your root CA must be the last certificate in your chain. The
  subordinate certificate, if any, that your root CA signed must be next to last.
  The subordinate certificate signed by the preceding subordinate CA must come
  next, and so on until your chain is built.

    * The chain must be PEM-encoded.

    * The maximum allowed size of a certificate is 32 KB.

    * The maximum allowed size of a certificate chain is 2 MB.

  *Enforcement of Critical Constraints*

  Amazon Web Services Private CA allows the following extensions to be marked
  critical in the imported CA certificate or chain.

    * Basic constraints (*must* be marked critical)

    * Subject alternative names

    * Key usage

    * Extended key usage

    * Authority key identifier

    * Subject key identifier

    * Issuer alternative name

    * Subject directory attributes

    * Subject information access

    * Certificate policies

    * Policy mappings

    * Inhibit anyPolicy

  Amazon Web Services Private CA rejects the following extensions when they are
  marked critical in an imported CA certificate or chain.

    * Name constraints

    * Policy constraints

    * CRL distribution points

    * Authority information access

    * Freshest CRL

    * Any other extension
  """
  def import_certificate_authority_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportCertificateAuthorityCertificate", input, options)
  end

  @doc """
  Uses your private certificate authority (CA), or one that has been shared with
  you, to issue a client certificate.

  This action returns the Amazon Resource Name (ARN) of the certificate. You can
  retrieve the certificate by calling the
  [GetCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetCertificate.html)
  action and specifying the ARN.

  You cannot use the ACM **ListCertificateAuthorities** action to retrieve the
  ARNs of the certificates that you issue by using Amazon Web Services Private CA.
  """
  def issue_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "IssueCertificate", input, options)
  end

  @doc """
  Lists the private certificate authorities that you created by using the
  [CreateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthority.html)
  action.
  """
  def list_certificate_authorities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCertificateAuthorities", input, options)
  end

  @doc """
  List all permissions on a private CA, if any, granted to the Certificate Manager
  (ACM) service principal (acm.amazonaws.com).

  These permissions allow ACM to issue and renew ACM certificates that reside in
  the same Amazon Web Services account as the CA.

  Permissions can be granted with the
  [CreatePermission](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreatePermission.html) action and revoked with the
  [DeletePermission](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePermission.html)
  action.

  ## About Permissions

    * If the private CA and the certificates it issues reside in the
  same account, you can use `CreatePermission` to grant permissions for ACM to
  carry out automatic certificate renewals.

    * For automatic certificate renewal to succeed, the ACM service
  principal needs permissions to create, retrieve, and list certificates.

    * If the private CA and the ACM certificates reside in different
  accounts, then permissions cannot be used to enable automatic renewals. Instead,
  the ACM certificate owner must set up a resource-based policy to enable
  cross-account issuance and renewals. For more information, see [Using a Resource Based Policy with Amazon Web Services Private
  CA](https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html).
  """
  def list_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPermissions", input, options)
  end

  @doc """
  Lists the tags, if any, that are associated with your private CA or one that has
  been shared with you.

  Tags are labels that you can use to identify and organize your CAs. Each tag
  consists of a key and an optional value. Call the
  [TagCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html) action to add one or more tags to your CA. Call the
  [UntagCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html)
  action to remove tags.
  """
  def list_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Attaches a resource-based policy to a private CA.

  A policy can also be applied by sharing a private CA through Amazon Web Services
  Resource Access Manager (RAM). For more information, see [Attach a Policy for Cross-Account
  Access](https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html).

  The policy can be displayed with
  [GetPolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_GetPolicy.html) and removed with
  [DeletePolicy](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeletePolicy.html).

  ## About Policies

    * A policy grants access on a private CA to an Amazon Web Services
  customer account, to Amazon Web Services Organizations, or to an Amazon Web
  Services Organizations unit. Policies are under the control of a CA
  administrator. For more information, see [Using a Resource Based Policy with Amazon Web Services Private
  CA](https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html).

    * A policy permits a user of Certificate Manager (ACM) to issue ACM
  certificates signed by a CA in another account.

    * For ACM to manage automatic renewal of these certificates, the ACM
  user must configure a Service Linked Role (SLR). The SLR allows the ACM service
  to assume the identity of the user, subject to confirmation against the Amazon
  Web Services Private CA policy. For more information, see [Using a Service Linked Role with
  ACM](https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html).

    * Updates made in Amazon Web Services Resource Manager (RAM) are
  reflected in policies. For more information, see [Attach a Policy for Cross-Account
  Access](https://docs.aws.amazon.com/privateca/latest/userguide/pca-ram.html).
  """
  def put_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutPolicy", input, options)
  end

  @doc """
  Restores a certificate authority (CA) that is in the `DELETED` state.

  You can restore a CA during the period that you defined in the
  **PermanentDeletionTimeInDays** parameter of the
  [DeleteCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DeleteCertificateAuthority.html) action. Currently, you can specify 7 to 30 days. If you did not specify a
  **PermanentDeletionTimeInDays** value, by default you can restore the CA at any
  time in a 30 day period. You can check the time remaining in the restoration
  period of a private CA in the `DELETED` state by calling the
  [DescribeCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_DescribeCertificateAuthority.html)
  or
  [ListCertificateAuthorities](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListCertificateAuthorities.html) actions. The status of a restored CA is set to its pre-deletion status when the
  **RestoreCertificateAuthority** action returns. To change its status to
  `ACTIVE`, call the
  [UpdateCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_UpdateCertificateAuthority.html)
  action. If the private CA was in the `PENDING_CERTIFICATE` state at deletion,
  you must use the
  [ImportCertificateAuthorityCertificate](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html)
  action to import a certificate authority into the private CA before it can be
  activated. You cannot restore a CA after the restoration period has ended.
  """
  def restore_certificate_authority(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreCertificateAuthority", input, options)
  end

  @doc """
  Revokes a certificate that was issued inside Amazon Web Services Private CA.

  If you enable a certificate revocation list (CRL) when you create or update your
  private CA, information about the revoked certificates will be included in the
  CRL. Amazon Web Services Private CA writes the CRL to an S3 bucket that you
  specify. A CRL is typically updated approximately 30 minutes after a certificate
  is revoked. If for any reason the CRL update fails, Amazon Web Services Private
  CA attempts makes further attempts every 15 minutes. With Amazon CloudWatch, you
  can create alarms for the metrics `CRLGenerated` and `MisconfiguredCRLBucket`.
  For more information, see [Supported CloudWatch Metrics](https://docs.aws.amazon.com/privateca/latest/userguide/PcaCloudWatch.html).

  Both Amazon Web Services Private CA and the IAM principal must have permission
  to write to the S3 bucket that you specify. If the IAM principal making the call
  does not have permission to write to the bucket, then an exception is thrown.
  For more information, see [Access policies for CRLs in Amazon S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).

  Amazon Web Services Private CA also writes revocation information to the audit
  report. For more information, see
  [CreateCertificateAuthorityAuditReport](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html).

  You cannot revoke a root CA self-signed certificate.
  """
  def revoke_certificate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeCertificate", input, options)
  end

  @doc """
  Adds one or more tags to your private CA.

  Tags are labels that you can use to identify and organize your Amazon Web
  Services resources. Each tag consists of a key and an optional value. You
  specify the private CA on input by its Amazon Resource Name (ARN). You specify
  the tag by using a key-value pair. You can apply a tag to just one private CA if
  you want to identify a specific characteristic of that CA, or you can apply the
  same tag to multiple private CAs if you want to filter for a common relationship
  among those CAs. To remove one or more tags, use the
  [UntagCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_UntagCertificateAuthority.html) action. Call the
  [ListTags](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html)
  action to see what tags are associated with your CA.

  To attach tags to a private CA during the creation procedure, a CA administrator
  must first associate an inline IAM policy with the `CreateCertificateAuthority`
  action and explicitly allow tagging. For more information, see [Attaching tags to a CA at the time of
  creation](https://docs.aws.amazon.com/privateca/latest/userguide/auth-InlinePolicies.html#policy-tag-ca).
  """
  def tag_certificate_authority(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagCertificateAuthority", input, options)
  end

  @doc """
  Remove one or more tags from your private CA.

  A tag consists of a key-value pair. If you do not specify the value portion of
  the tag when calling this action, the tag will be removed regardless of value.
  If you specify a value, the tag is removed only if it is associated with the
  specified value. To add tags to a private CA, use the
  [TagCertificateAuthority](https://docs.aws.amazon.com/privateca/latest/APIReference/API_TagCertificateAuthority.html). Call the
  [ListTags](https://docs.aws.amazon.com/privateca/latest/APIReference/API_ListTags.html)
  action to see what tags are associated with your CA.
  """
  def untag_certificate_authority(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagCertificateAuthority", input, options)
  end

  @doc """
  Updates the status or configuration of a private certificate authority (CA).

  Your private CA must be in the `ACTIVE` or `DISABLED` state before you can
  update it. You can disable a private CA that is in the `ACTIVE` state or make a
  CA that is in the `DISABLED` state active again.

  Both Amazon Web Services Private CA and the IAM principal must have permission
  to write to the S3 bucket that you specify. If the IAM principal making the call
  does not have permission to write to the bucket, then an exception is thrown.
  For more information, see [Access policies for CRLs in Amazon S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).
  """
  def update_certificate_authority(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCertificateAuthority", input, options)
  end
end
