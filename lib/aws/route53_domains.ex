# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53Domains do
  @moduledoc """
  Amazon Route 53 API actions let you register domain names and perform
  related operations.
  """

  @doc """
  Accepts the transfer of a domain from another AWS account to the current
  AWS account. You initiate a transfer between AWS accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).

  Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
  or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws
  Account 111122223333 has been cancelled`.
  """
  def accept_domain_transfer_from_another_aws_account(client, input, options \\ []) do
    request(client, "AcceptDomainTransferFromAnotherAwsAccount", input, options)
  end

  @doc """
  Cancels the transfer of a domain from the current AWS account to another
  AWS account. You initiate a transfer between AWS accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).

  <important> You must cancel the transfer before the other AWS account
  accepts the transfer using
  [AcceptDomainTransferFromAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html).

  </important> Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
  or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws
  Account 111122223333 has been cancelled`.
  """
  def cancel_domain_transfer_to_another_aws_account(client, input, options \\ []) do
    request(client, "CancelDomainTransferToAnotherAwsAccount", input, options)
  end

  @doc """
  This operation checks the availability of one domain name. Note that if the
  availability status of a domain is pending, you must submit another request
  to determine the availability of the domain name.
  """
  def check_domain_availability(client, input, options \\ []) do
    request(client, "CheckDomainAvailability", input, options)
  end

  @doc """
  Checks whether a domain name can be transferred to Amazon Route 53.
  """
  def check_domain_transferability(client, input, options \\ []) do
    request(client, "CheckDomainTransferability", input, options)
  end

  @doc """
  This operation deletes the specified tags for a domain.

  All tag operations are eventually consistent; subsequent operations might
  not immediately represent all issued operations.
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
  list of TLDs and their renewal policies, see [Domains That You Can Register
  with Amazon Route
  53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html)
  in the *Amazon Route 53 Developer Guide*. Route 53 requires that you renew
  before the end of the renewal period so we can complete processing before
  the deadline.
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
  This operation returns detailed information about a specified domain that
  is associated with the current AWS account. Contact information for the
  domain is also returned as part of the output.
  """
  def get_domain_detail(client, input, options \\ []) do
    request(client, "GetDomainDetail", input, options)
  end

  @doc """
  The GetDomainSuggestions operation returns a list of suggested domain
  names.
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
  Returns information about all of the operations that return an operation ID
  and that have ever been performed on domains that were registered by the
  current account.
  """
  def list_operations(client, input, options \\ []) do
    request(client, "ListOperations", input, options)
  end

  @doc """
  This operation returns all of the tags that are associated with the
  specified domain.

  All tag operations are eventually consistent; subsequent operations might
  not immediately represent all issued operations.
  """
  def list_tags_for_domain(client, input, options \\ []) do
    request(client, "ListTagsForDomain", input, options)
  end

  @doc """
  This operation registers a domain. Domains are registered either by Amazon
  Registrar (for .com, .net, and .org domains) or by our registrar associate,
  Gandi (for all other domains). For some top-level domains (TLDs), this
  operation requires extra parameters.

  When you register a domain, Amazon Route 53 does the following:

  <ul> <li> Creates a Route 53 hosted zone that has the same name as the
  domain. Route 53 assigns four name servers to your hosted zone and
  automatically updates your domain registration with the names of these name
  servers.

  </li> <li> Enables autorenew, so your domain registration will renew
  automatically each year. We'll notify you in advance of the renewal date so
  you can choose whether to renew the registration.

  </li> <li> Optionally enables privacy protection, so WHOIS queries return
  contact information either for Amazon Registrar (for .com, .net, and .org
  domains) or for our registrar associate, Gandi (for all other TLDs). If you
  don't enable privacy protection, WHOIS queries return the information that
  you entered for the registrant, admin, and tech contacts.

  </li> <li> If registration is successful, returns an operation ID that you
  can use to track the progress and completion of the action. If the request
  is not completed successfully, the domain registrant is notified by email.

  </li> <li> Charges your AWS account an amount based on the top-level
  domain. For more information, see [Amazon Route 53
  Pricing](http://aws.amazon.com/route53/pricing/).

  </li> </ul>
  """
  def register_domain(client, input, options \\ []) do
    request(client, "RegisterDomain", input, options)
  end

  @doc """
  Rejects the transfer of a domain from another AWS account to the current
  AWS account. You initiate a transfer between AWS accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).

  Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
  or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws
  Account 111122223333 has been cancelled`.
  """
  def reject_domain_transfer_from_another_aws_account(client, input, options \\ []) do
    request(client, "RejectDomainTransferFromAnotherAwsAccount", input, options)
  end

  @doc """
  This operation renews a domain for the specified number of years. The cost
  of renewing your domain is billed to your AWS account.

  We recommend that you renew your domain several weeks before the expiration
  date. Some TLD registries delete domains before the expiration date if you
  haven't renewed far enough in advance. For more information about renewing
  domain registration, see [Renewing Registration for a
  Domain](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html)
  in the *Amazon Route 53 Developer Guide*.
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
  Transfers a domain from another registrar to Amazon Route 53. When the
  transfer is complete, the domain is registered either with Amazon Registrar
  (for .com, .net, and .org domains) or with our registrar associate, Gandi
  (for all other TLDs).

  For more information about transferring domains, see the following topics:

  <ul> <li> For transfer requirements, a detailed procedure, and information
  about viewing the status of a domain that you're transferring to Route 53,
  see [Transferring Registration for a Domain to Amazon Route
  53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html)
  in the *Amazon Route 53 Developer Guide*.

  </li> <li> For information about how to transfer a domain from one AWS
  account to another, see
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).

  </li> <li> For information about how to transfer a domain to another domain
  registrar, see [Transferring a Domain from Amazon Route 53 to Another
  Registrar](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html)
  in the *Amazon Route 53 Developer Guide*.

  </li> </ul> If the registrar for your domain is also the DNS service
  provider for the domain, we highly recommend that you transfer your DNS
  service to Route 53 or to another DNS service provider before you transfer
  your registration. Some registrars provide free DNS service when you
  purchase a domain registration. When you transfer the registration, the
  previous registrar will not renew your domain registration and could end
  your DNS service at any time.

  <important> If the registrar for your domain is also the DNS service
  provider for the domain and you don't transfer DNS service to another
  provider, your website, email, and the web applications associated with the
  domain might become unavailable.

  </important> If the transfer is successful, this method returns an
  operation ID that you can use to track the progress and completion of the
  action. If the transfer doesn't complete successfully, the domain
  registrant will be notified by email.
  """
  def transfer_domain(client, input, options \\ []) do
    request(client, "TransferDomain", input, options)
  end

  @doc """
  Transfers a domain from the current AWS account to another AWS account.
  Note the following:

  <ul> <li> The AWS account that you're transferring the domain to must
  accept the transfer. If the other account doesn't accept the transfer
  within 3 days, we cancel the transfer. See
  [AcceptDomainTransferFromAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html).

  </li> <li> You can cancel the transfer before the other account accepts it.
  See
  [CancelDomainTransferToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_CancelDomainTransferToAnotherAwsAccount.html).

  </li> <li> The other account can reject the transfer. See
  [RejectDomainTransferFromAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_RejectDomainTransferFromAnotherAwsAccount.html).

  </li> </ul> <important> When you transfer a domain from one AWS account to
  another, Route 53 doesn't transfer the hosted zone that is associated with
  the domain. DNS resolution isn't affected if the domain and the hosted zone
  are owned by separate accounts, so transferring the hosted zone is
  optional. For information about transferring the hosted zone to another AWS
  account, see [Migrating a Hosted Zone to a Different AWS
  Account](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html)
  in the *Amazon Route 53 Developer Guide*.

  </important> Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
  or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws
  Account 111122223333 has been cancelled`.
  """
  def transfer_domain_to_another_aws_account(client, input, options \\ []) do
    request(client, "TransferDomainToAnotherAwsAccount", input, options)
  end

  @doc """
  This operation updates the contact information for a particular domain. You
  must specify information for at least one contact: registrant,
  administrator, or technical.

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
  privacy protection is enabled, contact information such as email address is
  replaced either with contact information for Amazon Registrar (for .com,
  .net, and .org domains) or with contact information for our registrar
  associate, Gandi.

  This operation affects only the contact information for the specified
  contact type (registrant, administrator, or tech). If the request succeeds,
  Amazon Route 53 returns an operation ID that you can use with
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to track the progress and completion of the action. If the request doesn't
  complete successfully, the domain registrant will be notified by email.

  <important> By disabling the privacy service via API, you consent to the
  publication of the contact information provided for this domain via the
  public WHOIS database. You certify that you are the registrant of this
  domain name and have the authority to make this decision. You may withdraw
  your consent at any time by enabling privacy protection using either
  `UpdateDomainContactPrivacy` or the Route 53 console. Enabling privacy
  protection removes the contact information provided for this domain from
  the WHOIS database. For more information on our privacy practices, see
  [https://aws.amazon.com/privacy/](https://aws.amazon.com/privacy/).

  </important>
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

  All tag operations are eventually consistent; subsequent operations might
  not immediately represent all issued operations.
  """
  def update_tags_for_domain(client, input, options \\ []) do
    request(client, "UpdateTagsForDomain", input, options)
  end

  @doc """
  Returns all the domain-related billing records for the current AWS account
  for a specified period
  """
  def view_billing(client, input, options \\ []) do
    request(client, "ViewBilling", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "route53domains"}
    host = build_host("route53domains", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "Route53Domains_v20140515.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
