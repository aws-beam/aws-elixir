# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CertificateManager do
  @moduledoc """
  AWS Certificate Manager

  Welcome to the AWS Certificate Manager (ACM) Command Reference. This guide
  provides descriptions, syntax, and usage examples for each ACM command. You
  can use AWS Certificate Manager to request ACM Certificates for your
  AWS-based websites and applications. For general information about using
  ACM and for more information about using the console, see the [AWS
  Certificate Manager User
  Guide](http://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html).
  For more information about using the ACM API, see the [AWS Certificate
  Manager API
  Reference](http://docs.aws.amazon.com/acm/latest/APIReference/Welcome.html).
  """

  @doc """
  Adds one or more tags to an ACM Certificate. Tags are labels that you can
  use to identify and organize your AWS resources. Each tag consists of a
  `key` and an optional `value`. You specify the certificate on input by its
  Amazon Resource Name (ARN). You specify the tag by using a key-value pair.

  You can apply a tag to just one certificate if you want to identify a
  specific characteristic of that certificate, or you can apply the same tag
  to multiple certificates if you want to filter for a common relationship
  among those certificates. Similarly, you can apply the same tag to multiple
  resources if you want to specify a relationship among those resources. For
  example, you can add the same tag to an ACM Certificate and an Elastic Load
  Balancing load balancer to indicate that they are both used by the same
  website. For more information, see [Tagging ACM
  Certificates](http://docs.aws.amazon.com/acm/latest/userguide/tags.html).

  To remove one or more tags, use the `RemoveTagsFromCertificate` action. To
  view all of the tags that have been applied to the certificate, use the
  `ListTagsForCertificate` action.
  """
  def add_tags_to_certificate(client, input, options \\ []) do
    request(client, "AddTagsToCertificate", input, options)
  end

  @doc """
  Deletes an ACM Certificate and its associated private key. If this action
  succeeds, the certificate no longer appears in the list of ACM Certificates
  that can be displayed by calling the `ListCertificates` action or be
  retrieved by calling the `GetCertificate` action. The certificate will not
  be available for use by other AWS services.

  <note> You cannot delete an ACM Certificate that is being used by another
  AWS service. To delete a certificate that is in use, the certificate
  association must first be removed.

  </note>
  """
  def delete_certificate(client, input, options \\ []) do
    request(client, "DeleteCertificate", input, options)
  end

  @doc """
  Returns a list of the fields contained in the specified ACM Certificate.
  For example, this action returns the certificate status, a flag that
  indicates whether the certificate is associated with any other AWS service,
  and the date at which the certificate request was created. You specify the
  ACM Certificate on input by its Amazon Resource Name (ARN).
  """
  def describe_certificate(client, input, options \\ []) do
    request(client, "DescribeCertificate", input, options)
  end

  @doc """
  Retrieves an ACM Certificate and certificate chain for the certificate
  specified by an ARN. The chain is an ordered list of certificates that
  contains the root certificate, intermediate certificates of subordinate
  CAs, and the ACM Certificate. The certificate and certificate chain are
  base64 encoded. If you want to decode the certificate chain to see the
  individual certificate fields, you can use OpenSSL.

  <note> Currently, ACM Certificates can be used only with Elastic Load
  Balancing and Amazon CloudFront.

  </note>
  """
  def get_certificate(client, input, options \\ []) do
    request(client, "GetCertificate", input, options)
  end

  @doc """
  Retrieves a list of ACM Certificates and the domain name for each. You can
  optionally filter the list to return only the certificates that match the
  specified status.
  """
  def list_certificates(client, input, options \\ []) do
    request(client, "ListCertificates", input, options)
  end

  @doc """
  Lists the tags that have been applied to the ACM Certificate. Use the
  certificate ARN to specify the certificate. To add a tag to an ACM
  Certificate, use the `AddTagsToCertificate` action. To delete a tag, use
  the `RemoveTagsFromCertificate` action.
  """
  def list_tags_for_certificate(client, input, options \\ []) do
    request(client, "ListTagsForCertificate", input, options)
  end

  @doc """
  Remove one or more tags from an ACM Certificate. A tag consists of a
  key-value pair. If you do not specify the value portion of the tag when
  calling this function, the tag will be removed regardless of value. If you
  specify a value, the tag is removed only if it is associated with the
  specified value.

  To add tags to a certificate, use the `AddTagsToCertificate` action. To
  view all of the tags that have been applied to a specific ACM Certificate,
  use the `ListTagsForCertificate` action.
  """
  def remove_tags_from_certificate(client, input, options \\ []) do
    request(client, "RemoveTagsFromCertificate", input, options)
  end

  @doc """
  Requests an ACM Certificate for use with other AWS services. To request an
  ACM Certificate, you must specify the fully qualified domain name (FQDN)
  for your site. You can also specify additional FQDNs if users can reach
  your site by using other names. For each domain name you specify, email is
  sent to the domain owner to request approval to issue the certificate.
  After receiving approval from the domain owner, the ACM Certificate is
  issued. For more information, see the [AWS Certificate Manager User Guide
  ](http://docs.aws.amazon.com/acm/latest/userguide/overview.html).
  """
  def request_certificate(client, input, options \\ []) do
    request(client, "RequestCertificate", input, options)
  end

  @doc """
  Resends the email that requests domain ownership validation. The domain
  owner or an authorized representative must approve the ACM Certificate
  before it can be issued. The certificate can be approved by clicking a link
  in the mail to navigate to the Amazon certificate approval website and then
  clicking **I Approve**. However, the validation email can be blocked by
  spam filters. Therefore, if you do not receive the original mail, you can
  request that the mail be resent within 72 hours of requesting the ACM
  Certificate. If more than 72 hours have elapsed since your original request
  or since your last attempt to resend validation mail, you must request a
  new certificate.
  """
  def resend_validation_email(client, input, options \\ []) do
    request(client, "ResendValidationEmail", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "acm"}
    host = get_host("acm", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "CertificateManager.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
