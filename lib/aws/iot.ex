# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.IoT do
  @moduledoc """
  AWS IoT

  AWS IoT provides secure, bi-directional communication between
  Internet-connected things (such as sensors, actuators, embedded devices, or
  smart appliances) and the AWS cloud. You can discover your custom IoT-Data
  endpoint to communicate with, configure rules for data processing and
  integration with other services, organize resources associated with each
  thing (Thing Registry), configure logging, and create and manage policies
  and credentials to authenticate things.

  For more information about how AWS IoT works, see the [Developer
  Guide](http://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html).
  """

  @doc """
  Accepts a pending certificate transfer. The default state of the
  certificate is INACTIVE.

  To check for pending certificate transfers, call `ListCertificates` to
  enumerate your certificates.
  """
  def accept_certificate_transfer(client, certificate_id, input, options \\ []) do
    url = "/accept-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Attaches the specified policy to the specified principal (certificate or
  other credential).
  """
  def attach_principal_policy(client, policy_name, input, options \\ []) do
    url = "/principal-policies/#{URI.encode(policy_name)}"
    headers = []
    if Dict.has_key?(input, "principal") do
      headers = [{"x-amzn-iot-principal", input["principal"]}|headers]
      input = Dict.delete(input, "principal")
    end
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Attaches the specified principal to the specified thing.
  """
  def attach_thing_principal(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/principals"
    headers = []
    if Dict.has_key?(input, "principal") do
      headers = [{"x-amzn-principal", input["principal"]}|headers]
      input = Dict.delete(input, "principal")
    end
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Cancels a pending transfer for the specified certificate.

  **Note** Only the transfer source account can use this operation to cancel
  a transfer. (Transfer destinations can use `RejectCertificateTransfer`
  instead.) After transfer, AWS IoT returns the certificate to the source
  account in the INACTIVE state. After the destination account has accepted
  the transfer, the transfer cannot be cancelled.

  After a certificate transfer is cancelled, the status of the certificate
  changes from PENDING_TRANSFER to INACTIVE.
  """
  def cancel_certificate_transfer(client, certificate_id, input, options \\ []) do
    url = "/cancel-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Creates an X.509 certificate using the specified certificate signing
  request.

  **Note** Reusing the same certificate signing request (CSR) results in a
  distinct certificate.

  You can create multiple certificates in a batch by creating a directory,
  copying multiple .csr files into that directory, and then specifying that
  directory on the command line. The following commands show how to create a
  batch of certificates given a batch of CSRs.

  Assuming a set of CSRs are located inside of the directory
  my-csr-directory:

  On Linux and OS X, the command is:

  $ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/{}

  This command lists all of the CSRs in my-csr-directory and pipes each CSR
  file name to the aws iot create-certificate-from-csr AWS CLI command to
  create a certificate for the corresponding CSR.

  The aws iot create-certificate-from-csr part of the command can also be run
  in parallel to speed up the certificate creation process:

  $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot
  create-certificate-from-csr --certificate-signing-request
  file://my-csr-directory/{}

  On Windows PowerShell, the command to create certificates for all CSRs in
  my-csr-directory is:

  &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr
  --certificate-signing-request file://my-csr-directory/$_}

  On a Windows command prompt, the command to create certificates for all
  CSRs in my-csr-directory is:

  &gt; forfiles /p my-csr-directory /c "cmd /c aws iot
  create-certificate-from-csr --certificate-signing-request file://@path"
  """
  def create_certificate_from_csr(client, input, options \\ []) do
    url = "/certificates"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a 2048-bit RSA key pair and issues an X.509 certificate using the
  issued public key.

  **Note** This is the only time AWS IoT issues the private key for this
  certificate, so it is important to keep it in a secure location.
  """
  def create_keys_and_certificate(client, input, options \\ []) do
    url = "/keys-and-certificate"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates an AWS IoT policy.

  The created policy is the default version for the policy. This operation
  creates a policy version with a version identifier of **1** and sets **1**
  as the policy's default version.
  """
  def create_policy(client, policy_name, input, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a new version of the specified AWS IoT policy. To update a policy,
  create a new policy version. A managed policy can have up to five versions.
  If the policy has five versions, you must use `DeletePolicyVersion` to
  delete an existing version before you create a new one.

  Optionally, you can set the new version as the policy's default version.
  The default version is the operative version (that is, the version that is
  in effect for the certificates to which the policy is attached).
  """
  def create_policy_version(client, policy_name, input, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a thing in the Thing Registry.
  """
  def create_thing(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Creates a rule. Creating rules is an administrator-level action. Any user
  who has permission to create rules will be able to access data processed by
  the rule.
  """
  def create_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Deletes a registered CA certificate.
  """
  def delete_c_a_certificate(client, certificate_id, input, options \\ []) do
    url = "/cacertificate/{caCertificateId}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified certificate.

  A certificate cannot be deleted if it has a policy attached to it or if its
  status is set to ACTIVE. To delete a certificate, first use the
  `DetachPrincipalPolicy` API to detach all policies. Next, use the
  `UpdateCertificate` API to set the certificate to the INACTIVE status.
  """
  def delete_certificate(client, certificate_id, input, options \\ []) do
    url = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified policy.

  A policy cannot be deleted if it has non-default versions or it is attached
  to any certificate.

  To delete a policy, use the DeletePolicyVersion API to delete all
  non-default versions of the policy; use the DetachPrincipalPolicy API to
  detach the policy from any certificate; and then use the DeletePolicy API
  to delete the policy.

  When a policy is deleted using DeletePolicy, its default version is deleted
  with it.
  """
  def delete_policy(client, policy_name, input, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified version of the specified policy. You cannot delete
  the default version of a policy using this API. To delete the default
  version of a policy, use `DeletePolicy`. To find out which version of a
  policy is marked as the default version, use ListPolicyVersions.
  """
  def delete_policy_version(client, policy_name, policy_version_id, input, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes a CA certificate registration code.
  """
  def delete_registration_code(client, input, options \\ []) do
    url = "/registrationcode"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified thing from the Thing Registry.
  """
  def delete_thing(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Deletes the specified rule.
  """
  def delete_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Describes a registered CA certificate.
  """
  def describe_c_a_certificate(client, certificate_id, options \\ []) do
    url = "/cacertificate/{caCertificateId}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified certificate.
  """
  def describe_certificate(client, certificate_id, options \\ []) do
    url = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Returns a unique endpoint specific to the AWS account making the call.
  """
  def describe_endpoint(client, options \\ []) do
    url = "/endpoint"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified thing.
  """
  def describe_thing(client, thing_name, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Removes the specified policy from the specified certificate.
  """
  def detach_principal_policy(client, policy_name, input, options \\ []) do
    url = "/principal-policies/#{URI.encode(policy_name)}"
    headers = []
    if Dict.has_key?(input, "principal") do
      headers = [{"x-amzn-iot-principal", input["principal"]}|headers]
      input = Dict.delete(input, "principal")
    end
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Detaches the specified principal from the specified thing.
  """
  def detach_thing_principal(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/principals"
    headers = []
    if Dict.has_key?(input, "principal") do
      headers = [{"x-amzn-principal", input["principal"]}|headers]
      input = Dict.delete(input, "principal")
    end
    request(client, :delete, url, headers, input, options, nil)
  end

  @doc """
  Disables the specified rule.
  """
  def disable_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}/disable"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Enables the specified rule.
  """
  def enable_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}/enable"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Gets the logging options.
  """
  def get_logging_options(client, options \\ []) do
    url = "/loggingOptions"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified policy with the policy document of the
  default version.
  """
  def get_policy(client, policy_name, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified policy version.
  """
  def get_policy_version(client, policy_name, policy_version_id, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets a registration code used to register a CA certificate with AWS IoT.
  """
  def get_registration_code(client, options \\ []) do
    url = "/registrationcode"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Gets information about the specified rule.
  """
  def get_topic_rule(client, rule_name, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the CA certificates registered for your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_c_a_certificates(client, options \\ []) do
    url = "/cacertificates"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the certificates registered in your AWS account.

  The results are paginated with a default page size of 25. You can use the
  returned marker to retrieve additional results.
  """
  def list_certificates(client, options \\ []) do
    url = "/certificates"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  List the device certificates signed by the specified CA certificate.
  """
  def list_certificates_by_c_a(client, ca_certificate_id, options \\ []) do
    url = "/certificates-by-ca/#{URI.encode(ca_certificate_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists your policies.
  """
  def list_policies(client, options \\ []) do
    url = "/policies"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the principals associated with the specified policy.
  """
  def list_policy_principals(client, policy_name \\ nil, options \\ []) do
    url = "/policy-principals"
    headers = []
    if !is_nil(policy_name) do
      headers = [{"x-amzn-iot-policy", policy_name}|headers]
    end
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the versions of the specified policy and identifies the default
  version.
  """
  def list_policy_versions(client, policy_name, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the policies attached to the specified principal. If you use an
  Cognito identity, the ID must be in [AmazonCognito Identity
  format](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax).
  """
  def list_principal_policies(client, principal \\ nil, options \\ []) do
    url = "/principal-policies"
    headers = []
    if !is_nil(principal) do
      headers = [{"x-amzn-iot-principal", principal}|headers]
    end
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the things associated with the specified principal.
  """
  def list_principal_things(client, principal \\ nil, options \\ []) do
    url = "/principals/things"
    headers = []
    if !is_nil(principal) do
      headers = [{"x-amzn-principal", principal}|headers]
    end
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the principals associated with the specified thing.
  """
  def list_thing_principals(client, thing_name, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}/principals"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists your things. You can pass an AttributeName or AttributeValue to
  filter your things (for example, "ListThings where AttributeName=Color and
  AttributeValue=Red").
  """
  def list_things(client, options \\ []) do
    url = "/things"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Lists the rules for the specific topic.
  """
  def list_topic_rules(client, options \\ []) do
    url = "/rules"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  Registers a CA certificate with AWS IoT. This CA certificate can then be
  used to sign device certificates, which can be then registered with AWS
  IoT. You can register up to 10 CA certificates per AWS account that have
  the same subject field and public key. This enables you to have up to 10
  certificate authorities sign your device certificates. If you have more
  than one CA certificate registered, make sure you pass the CA certificate
  when you register your device certificates with the RegisterCertificate
  API.
  """
  def register_c_a_certificate(client, input, options \\ []) do
    url = "/cacertificate"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Registers a device certificate with AWS IoT. If you have more than one CA
  certificate that has the same subject field, you must specify the CA
  certificate that was used to sign the device certificate being registered.
  """
  def register_certificate(client, input, options \\ []) do
    url = "/certificate/register"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Rejects a pending certificate transfer. After AWS IoT rejects a certificate
  transfer, the certificate status changes from **PENDING_TRANSFER** to
  **INACTIVE**.

  To check for pending certificate transfers, call `ListCertificates` to
  enumerate your certificates.

  This operation can only be called by the transfer destination. After it is
  called, the certificate will be returned to the source's account in the
  INACTIVE state.
  """
  def reject_certificate_transfer(client, certificate_id, input, options \\ []) do
    url = "/reject-certificate-transfer/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Replaces the specified rule. You must specify all parameters for the new
  rule. Creating rules is an administrator-level action. Any user who has
  permission to create rules will be able to access data processed by the
  rule.
  """
  def replace_topic_rule(client, rule_name, input, options \\ []) do
    url = "/rules/#{URI.encode(rule_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Sets the specified version of the specified policy as the policy's default
  (operative) version. This action affects all certificates to which the
  policy is attached. To list the principals the policy is attached to, use
  the ListPrincipalPolicy API.
  """
  def set_default_policy_version(client, policy_name, policy_version_id, input, options \\ []) do
    url = "/policies/#{URI.encode(policy_name)}/version/#{URI.encode(policy_version_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Sets the logging options.
  """
  def set_logging_options(client, input, options \\ []) do
    url = "/loggingOptions"
    headers = []
    request(client, :post, url, headers, input, options, nil)
  end

  @doc """
  Transfers the specified certificate to the specified AWS account.

  You can cancel the transfer until it is acknowledged by the recipient.

  No notification is sent to the transfer destination's account. It is up to
  the caller to notify the transfer target.

  The certificate being transferred must not be in the ACTIVE state. You can
  use the UpdateCertificate API to deactivate it.

  The certificate must not have any policies attached to it. You can use the
  DetachPrincipalPolicy API to detach them.
  """
  def transfer_certificate(client, certificate_id, input, options \\ []) do
    url = "/transfer-certificate/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  @doc """
  Updates a registered CA certificate.
  """
  def update_c_a_certificate(client, certificate_id, input, options \\ []) do
    url = "/cacertificate/{caCertificateId}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Updates the status of the specified certificate. This operation is
  idempotent.

  Moving a certificate from the ACTIVE state (including REVOKED) will not
  disconnect currently connected devices, but these devices will be unable to
  reconnect.

  The ACTIVE state is required to authenticate devices connecting to AWS IoT
  using a certificate.
  """
  def update_certificate(client, certificate_id, input, options \\ []) do
    url = "/certificates/#{URI.encode(certificate_id)}"
    headers = []
    request(client, :put, url, headers, input, options, nil)
  end

  @doc """
  Updates the data for a thing.
  """
  def update_thing(client, thing_name, input, options \\ []) do
    url = "/things/#{URI.encode(thing_name)}"
    headers = []
    request(client, :patch, url, headers, input, options, nil)
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "execute-api"}
    host = get_host("iot", client)
    url = get_url(host, url, client)
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
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

  defp get_url(host, url, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{url}/"
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
