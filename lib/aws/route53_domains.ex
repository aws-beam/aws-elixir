# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Route53.Domains do
  @moduledoc """

  """

  @doc """
  This operation checks the availability of one domain name. Note that if the
  availability status of a domain is pending, you must submit another request
  to determine the availability of the domain name.
  """
  def check_domain_availability(client, input, options \\ []) do
    request(client, "CheckDomainAvailability", input, options)
  end

  @doc """
  This operation deletes the specified tags for a domain.

  All tag operations are eventually consistent; subsequent operations may not
  immediately represent all issued operations.
  """
  def delete_tags_for_domain(client, input, options \\ []) do
    request(client, "DeleteTagsForDomain", input, options)
  end

  @doc """
  This operation disables automatic renewal of domain registration for the
  specified domain.
  """
  def disable_domain_auto_renew(client, input, options \\ []) do
    request(client, "DisableDomainAutoRenew", input, options)
  end

  @doc """
  This operation removes the transfer lock on the domain (specifically the
  `clientTransferProhibited` status) to allow domain transfers. We recommend
  you refrain from performing this action unless you intend to transfer the
  domain to a different registrar. Successful submission returns an operation
  ID that you can use to track the progress and completion of the action. If
  the request is not completed successfully, the domain registrant will be
  notified by email.
  """
  def disable_domain_transfer_lock(client, input, options \\ []) do
    request(client, "DisableDomainTransferLock", input, options)
  end

  @doc """
  This operation configures Amazon Route 53 to automatically renew the
  specified domain before the domain registration expires. The cost of
  renewing your domain registration is billed to your AWS account.

  The period during which you can renew a domain name varies by TLD. For a
  list of TLDs and their renewal policies, see ["Renewal, restoration, and
  deletion
  times"](http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times)
  on the website for our registrar partner, Gandi. Route 53 requires that you
  renew before the end of the renewal period that is listed on the Gandi
  website so we can complete processing before the deadline.
  """
  def enable_domain_auto_renew(client, input, options \\ []) do
    request(client, "EnableDomainAutoRenew", input, options)
  end

  @doc """
  This operation sets the transfer lock on the domain (specifically the
  `clientTransferProhibited` status) to prevent domain transfers. Successful
  submission returns an operation ID that you can use to track the progress
  and completion of the action. If the request is not completed successfully,
  the domain registrant will be notified by email.
  """
  def enable_domain_transfer_lock(client, input, options \\ []) do
    request(client, "EnableDomainTransferLock", input, options)
  end

  @doc """
  For operations that require confirmation that the email address for the
  registrant contact is valid, such as registering a new domain, this
  operation returns information about whether the registrant contact has
  responded.

  If you want us to resend the email, use the
  `ResendContactReachabilityEmail` operation.
  """
  def get_contact_reachability_status(client, input, options \\ []) do
    request(client, "GetContactReachabilityStatus", input, options)
  end

  @doc """
  This operation returns detailed information about the domain. The domain's
  contact information is also returned as part of the output.
  """
  def get_domain_detail(client, input, options \\ []) do
    request(client, "GetDomainDetail", input, options)
  end

  @doc """
  The GetDomainSuggestions operation returns a list of suggested domain names
  given a string, which can either be a domain name or simply a word or
  phrase (without spaces).

  Parameters: <ul><li>DomainName (string): The basis for your domain
  suggestion search, a string with (or without) top-level domain
  specified.</li> <li>SuggestionCount (int): The number of domain suggestions
  to be returned, maximum 50, minimum 1.</li> <li>OnlyAvailable (bool): If
  true, availability check will be performed on suggestion results, and only
  available domains will be returned. If false, suggestions will be returned
  without checking whether the domain is actually available, and caller will
  have to call checkDomainAvailability for each suggestion to determine
  availability for registration.</li> </ul>
  """
  def get_domain_suggestions(client, input, options \\ []) do
    request(client, "GetDomainSuggestions", input, options)
  end

  @doc """
  This operation returns the current status of an operation that is not
  completed.
  """
  def get_operation_detail(client, input, options \\ []) do
    request(client, "GetOperationDetail", input, options)
  end

  @doc """
  This operation returns all the domain names registered with Amazon Route 53
  for the current AWS account.
  """
  def list_domains(client, input, options \\ []) do
    request(client, "ListDomains", input, options)
  end

  @doc """
  This operation returns the operation IDs of operations that are not yet
  complete.
  """
  def list_operations(client, input, options \\ []) do
    request(client, "ListOperations", input, options)
  end

  @doc """
  This operation returns all of the tags that are associated with the
  specified domain.

  All tag operations are eventually consistent; subsequent operations may not
  immediately represent all issued operations.
  """
  def list_tags_for_domain(client, input, options \\ []) do
    request(client, "ListTagsForDomain", input, options)
  end

  @doc """
  This operation registers a domain. Domains are registered by the AWS
  registrar partner, Gandi. For some top-level domains (TLDs), this operation
  requires extra parameters.

  When you register a domain, Amazon Route 53 does the following:

  <ul> <li>Creates a Amazon Route 53 hosted zone that has the same name as
  the domain. Amazon Route 53 assigns four name servers to your hosted zone
  and automatically updates your domain registration with the names of these
  name servers.</li> <li>Enables autorenew, so your domain registration will
  renew automatically each year. We'll notify you in advance of the renewal
  date so you can choose whether to renew the registration.</li>
  <li>Optionally enables privacy protection, so WHOIS queries return contact
  information for our registrar partner, Gandi, instead of the information
  you entered for registrant, admin, and tech contacts.</li> <li>If
  registration is successful, returns an operation ID that you can use to
  track the progress and completion of the action. If the request is not
  completed successfully, the domain registrant is notified by email.</li>
  <li>Charges your AWS account an amount based on the top-level domain. For
  more information, see [Amazon Route 53
  Pricing](http://aws.amazon.com/route53/pricing/).</li> </ul>
  """
  def register_domain(client, input, options \\ []) do
    request(client, "RegisterDomain", input, options)
  end

  @doc """
  This operation renews a domain for the specified number of years. The cost
  of renewing your domain is billed to your AWS account.

  We recommend that you renew your domain several weeks before the expiration
  date. Some TLD registries delete domains before the expiration date if you
  haven't renewed far enough in advance. For more information about renewing
  domain registration, see [Renewing Registration for a
  Domain](http://docs.aws.amazon.com/console/route53/domain-renew) in the
  Amazon Route 53 documentation.
  """
  def renew_domain(client, input, options \\ []) do
    request(client, "RenewDomain", input, options)
  end

  @doc """
  For operations that require confirmation that the email address for the
  registrant contact is valid, such as registering a new domain, this
  operation resends the confirmation email to the current email address for
  the registrant contact.
  """
  def resend_contact_reachability_email(client, input, options \\ []) do
    request(client, "ResendContactReachabilityEmail", input, options)
  end

  @doc """
  This operation returns the AuthCode for the domain. To transfer a domain to
  another registrar, you provide this value to the new registrar.
  """
  def retrieve_domain_auth_code(client, input, options \\ []) do
    request(client, "RetrieveDomainAuthCode", input, options)
  end

  @doc """
  This operation transfers a domain from another registrar to Amazon Route
  53. When the transfer is complete, the domain is registered with the AWS
  registrar partner, Gandi.

  For transfer requirements, a detailed procedure, and information about
  viewing the status of a domain transfer, see [Transferring Registration for
  a Domain to Amazon Route
  53](http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html)
  in the Amazon Route 53 Developer Guide.

  If the registrar for your domain is also the DNS service provider for the
  domain, we highly recommend that you consider transferring your DNS service
  to Amazon Route 53 or to another DNS service provider before you transfer
  your registration. Some registrars provide free DNS service when you
  purchase a domain registration. When you transfer the registration, the
  previous registrar will not renew your domain registration and could end
  your DNS service at any time.

  <note>Caution! If the registrar for your domain is also the DNS service
  provider for the domain and you don't transfer DNS service to another
  provider, your website, email, and the web applications associated with the
  domain might become unavailable.</note> If the transfer is successful, this
  method returns an operation ID that you can use to track the progress and
  completion of the action. If the transfer doesn't complete successfully,
  the domain registrant will be notified by email.
  """
  def transfer_domain(client, input, options \\ []) do
    request(client, "TransferDomain", input, options)
  end

  @doc """
  This operation updates the contact information for a particular domain.
  Information for at least one contact (registrant, administrator, or
  technical) must be supplied for update.

  If the update is successful, this method returns an operation ID that you
  can use to track the progress and completion of the action. If the request
  is not completed successfully, the domain registrant will be notified by
  email.
  """
  def update_domain_contact(client, input, options \\ []) do
    request(client, "UpdateDomainContact", input, options)
  end

  @doc """
  This operation updates the specified domain contact's privacy setting. When
  the privacy option is enabled, personal information such as postal or email
  address is hidden from the results of a public WHOIS query. The privacy
  services are provided by the AWS registrar, Gandi. For more information,
  see the [Gandi privacy
  features](http://www.gandi.net/domain/whois/?currency=USD&amp;amp;lang=en).

  This operation only affects the privacy of the specified contact type
  (registrant, administrator, or tech). Successful acceptance returns an
  operation ID that you can use with GetOperationDetail to track the progress
  and completion of the action. If the request is not completed successfully,
  the domain registrant will be notified by email.
  """
  def update_domain_contact_privacy(client, input, options \\ []) do
    request(client, "UpdateDomainContactPrivacy", input, options)
  end

  @doc """
  This operation replaces the current set of name servers for the domain with
  the specified set of name servers. If you use Amazon Route 53 as your DNS
  service, specify the four name servers in the delegation set for the hosted
  zone for the domain.

  If successful, this operation returns an operation ID that you can use to
  track the progress and completion of the action. If the request is not
  completed successfully, the domain registrant will be notified by email.
  """
  def update_domain_nameservers(client, input, options \\ []) do
    request(client, "UpdateDomainNameservers", input, options)
  end

  @doc """
  This operation adds or updates tags for a specified domain.

  All tag operations are eventually consistent; subsequent operations may not
  immediately represent all issued operations.
  """
  def update_tags_for_domain(client, input, options \\ []) do
    request(client, "UpdateTagsForDomain", input, options)
  end

  @doc """
  This operation returns all the domain-related billing records for the
  current AWS account for a specified period
  """
  def view_billing(client, input, options \\ []) do
    request(client, "ViewBilling", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "route53domains"}
    host = get_host("route53domains", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "Route53Domains_v20140515.#{action}"}]
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
