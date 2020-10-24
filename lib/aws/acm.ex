# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ACM do
  @moduledoc """
  AWS Certificate Manager

  Welcome to the AWS Certificate Manager (ACM) API documentation.

  You can use ACM to manage SSL/TLS certificates for your AWS-based websites
  and applications. For general information about using ACM, see the [ *AWS
  Certificate Manager User Guide*
  ](https://docs.aws.amazon.com/acm/latest/userguide/).
  """

  @doc """
  Adds one or more tags to an ACM certificate. Tags are labels that you can
  use to identify and organize your AWS resources. Each tag consists of a
  `key` and an optional `value`. You specify the certificate on input by its
  Amazon Resource Name (ARN). You specify the tag by using a key-value pair.

  You can apply a tag to just one certificate if you want to identify a
  specific characteristic of that certificate, or you can apply the same tag
  to multiple certificates if you want to filter for a common relationship
  among those certificates. Similarly, you can apply the same tag to multiple
  resources if you want to specify a relationship among those resources. For
  example, you can add the same tag to an ACM certificate and an Elastic Load
  Balancing load balancer to indicate that they are both used by the same
  website. For more information, see [Tagging ACM
  certificates](https://docs.aws.amazon.com/acm/latest/userguide/tags.html).

  To remove one or more tags, use the `RemoveTagsFromCertificate` action. To
  view all of the tags that have been applied to the certificate, use the
  `ListTagsForCertificate` action.
  """
  def add_tags_to_certificate(client, input, options \\ []) do
    request(client, "AddTagsToCertificate", input, options)
  end

  @doc """
  Deletes a certificate and its associated private key. If this action
  succeeds, the certificate no longer appears in the list that can be
  displayed by calling the `ListCertificates` action or be retrieved by
  calling the `GetCertificate` action. The certificate will not be available
  for use by AWS services integrated with ACM.

  <note> You cannot delete an ACM certificate that is being used by another
  AWS service. To delete a certificate that is in use, the certificate
  association must first be removed.

  </note>
  """
  def delete_certificate(client, input, options \\ []) do
    request(client, "DeleteCertificate", input, options)
  end

  @doc """
  Returns detailed metadata about the specified ACM certificate.
  """
  def describe_certificate(client, input, options \\ []) do
    request(client, "DescribeCertificate", input, options)
  end

  @doc """
  Exports a private certificate issued by a private certificate authority
  (CA) for use anywhere. The exported file contains the certificate, the
  certificate chain, and the encrypted private 2048-bit RSA key associated
  with the public key that is embedded in the certificate. For security, you
  must assign a passphrase for the private key when exporting it.

  For information about exporting and formatting a certificate using the ACM
  console or CLI, see [Export a Private
  Certificate](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-export-private.html).
  """
  def export_certificate(client, input, options \\ []) do
    request(client, "ExportCertificate", input, options)
  end

  @doc """
  Retrieves an Amazon-issued certificate and its certificate chain. The chain
  consists of the certificate of the issuing CA and the intermediate
  certificates of any other subordinate CAs. All of the certificates are
  base64 encoded. You can use
  [OpenSSL](https://wiki.openssl.org/index.php/Command_Line_Utilities) to
  decode the certificates and inspect individual fields.
  """
  def get_certificate(client, input, options \\ []) do
    request(client, "GetCertificate", input, options)
  end

  @doc """
  Imports a certificate into AWS Certificate Manager (ACM) to use with
  services that are integrated with ACM. Note that [integrated
  services](https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html)
  allow only certificate types and keys they support to be associated with
  their resources. Further, their support differs depending on whether the
  certificate is imported into IAM or into ACM. For more information, see the
  documentation for each service. For more information about importing
  certificates into ACM, see [Importing
  Certificates](https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
  in the *AWS Certificate Manager User Guide*.

  <note> ACM does not provide [managed
  renewal](https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html)
  for certificates that you import.

  </note> Note the following guidelines when importing third party
  certificates:

  <ul> <li> You must enter the private key that matches the certificate you
  are importing.

  </li> <li> The private key must be unencrypted. You cannot import a private
  key that is protected by a password or a passphrase.

  </li> <li> If the certificate you are importing is not self-signed, you
  must enter its certificate chain.

  </li> <li> If a certificate chain is included, the issuer must be the
  subject of one of the certificates in the chain.

  </li> <li> The certificate, private key, and certificate chain must be
  PEM-encoded.

  </li> <li> The current time must be between the `Not Before` and `Not
  After` certificate fields.

  </li> <li> The `Issuer` field must not be empty.

  </li> <li> The OCSP authority URL, if present, must not exceed 1000
  characters.

  </li> <li> To import a new certificate, omit the `CertificateArn` argument.
  Include this argument only when you want to replace a previously imported
  certifica

  </li> <li> When you import a certificate by using the CLI, you must specify
  the certificate, the certificate chain, and the private key by their file
  names preceded by `file://`. For example, you can specify a certificate
  saved in the `C:\temp` folder as
  `file://C:\temp\certificate_to_import.pem`. If you are making an HTTP or
  HTTPS Query request, include these arguments as BLOBs.

  </li> <li> When you import a certificate by using an SDK, you must specify
  the certificate, the certificate chain, and the private key files in the
  manner required by the programming language you're using.

  </li> <li> The cryptographic algorithm of an imported certificate must
  match the algorithm of the signing CA. For example, if the signing CA key
  type is RSA, then the certificate key type must also be RSA.

  </li> </ul> This operation returns the [Amazon Resource Name
  (ARN)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of the imported certificate.
  """
  def import_certificate(client, input, options \\ []) do
    request(client, "ImportCertificate", input, options)
  end

  @doc """
  Retrieves a list of certificate ARNs and domain names. You can request that
  only certificates that match a specific status be listed. You can also
  filter by specific attributes of the certificate. Default filtering returns
  only `RSA_2048` certificates. For more information, see `Filters`.
  """
  def list_certificates(client, input, options \\ []) do
    request(client, "ListCertificates", input, options)
  end

  @doc """
  Lists the tags that have been applied to the ACM certificate. Use the
  certificate's Amazon Resource Name (ARN) to specify the certificate. To add
  a tag to an ACM certificate, use the `AddTagsToCertificate` action. To
  delete a tag, use the `RemoveTagsFromCertificate` action.
  """
  def list_tags_for_certificate(client, input, options \\ []) do
    request(client, "ListTagsForCertificate", input, options)
  end

  @doc """
  Remove one or more tags from an ACM certificate. A tag consists of a
  key-value pair. If you do not specify the value portion of the tag when
  calling this function, the tag will be removed regardless of value. If you
  specify a value, the tag is removed only if it is associated with the
  specified value.

  To add tags to a certificate, use the `AddTagsToCertificate` action. To
  view all of the tags that have been applied to a specific ACM certificate,
  use the `ListTagsForCertificate` action.
  """
  def remove_tags_from_certificate(client, input, options \\ []) do
    request(client, "RemoveTagsFromCertificate", input, options)
  end

  @doc """
  Renews an eligable ACM certificate. At this time, only exported private
  certificates can be renewed with this operation. In order to renew your ACM
  PCA certificates with ACM, you must first [grant the ACM service principal
  permission to do
  so](https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaPermissions.html).
  For more information, see [Testing Managed
  Renewal](https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html)
  in the ACM User Guide.
  """
  def renew_certificate(client, input, options \\ []) do
    request(client, "RenewCertificate", input, options)
  end

  @doc """
  Requests an ACM certificate for use with other AWS services. To request an
  ACM certificate, you must specify a fully qualified domain name (FQDN) in
  the `DomainName` parameter. You can also specify additional FQDNs in the
  `SubjectAlternativeNames` parameter.

  If you are requesting a private certificate, domain validation is not
  required. If you are requesting a public certificate, each domain name that
  you specify must be validated to verify that you own or control the domain.
  You can use [DNS
  validation](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html)
  or [email
  validation](https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html).
  We recommend that you use DNS validation. ACM issues public certificates
  after receiving approval from the domain owner.
  """
  def request_certificate(client, input, options \\ []) do
    request(client, "RequestCertificate", input, options)
  end

  @doc """
  Resends the email that requests domain ownership validation. The domain
  owner or an authorized representative must approve the ACM certificate
  before it can be issued. The certificate can be approved by clicking a link
  in the mail to navigate to the Amazon certificate approval website and then
  clicking **I Approve**. However, the validation email can be blocked by
  spam filters. Therefore, if you do not receive the original mail, you can
  request that the mail be resent within 72 hours of requesting the ACM
  certificate. If more than 72 hours have elapsed since your original request
  or since your last attempt to resend validation mail, you must request a
  new certificate. For more information about setting up your contact email
  addresses, see [Configure Email for your
  Domain](https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).
  """
  def resend_validation_email(client, input, options \\ []) do
    request(client, "ResendValidationEmail", input, options)
  end

  @doc """
  Updates a certificate. Currently, you can use this function to specify
  whether to opt in to or out of recording your certificate in a certificate
  transparency log. For more information, see [ Opting Out of Certificate
  Transparency
  Logging](https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency).
  """
  def update_certificate_options(client, input, options \\ []) do
    request(client, "UpdateCertificateOptions", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "acm"}
    host = build_host("acm", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "CertificateManager.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: 200, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
