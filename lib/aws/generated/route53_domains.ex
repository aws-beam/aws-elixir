# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Route53Domains do
  @moduledoc """
  Amazon Route 53 API actions let you register domain names and perform related
  operations.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2014-05-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "route53domains",
      global?: false,
      protocol: "json",
      service_id: "Route 53 Domains",
      signature_version: "v4",
      signing_name: "route53domains",
      target_prefix: "Route53Domains_v20140515"
    }
  end

  @doc """
  Accepts the transfer of a domain from another Amazon Web Services account to the
  currentAmazon Web Services account.

  You initiate a transfer between Amazon Web Services accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).  If you use the CLI command at
  [accept-domain-transfer-from-another-aws-account](https://docs.aws.amazon.com/cli/latest/reference/route53domains/accept-domain-transfer-from-another-aws-account.html),
  use JSON format as input instead of text because otherwise CLI will throw an
  error from domain transfer input that includes single quotes.

  Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html) or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws Account
  111122223333 has been cancelled`.
  """
  def accept_domain_transfer_from_another_aws_account(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "AcceptDomainTransferFromAnotherAwsAccount",
      input,
      options
    )
  end

  @doc """
  Cancels the transfer of a domain from the current Amazon Web Services account to
  another Amazon Web Services account.

  You initiate a transfer betweenAmazon Web Services accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).  You must cancel the transfer before the other Amazon Web Services account
  accepts the transfer using
  [AcceptDomainTransferFromAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html).

  Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html) or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws Account
  111122223333 has been cancelled`.
  """
  def cancel_domain_transfer_to_another_aws_account(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "CancelDomainTransferToAnotherAwsAccount",
      input,
      options
    )
  end

  @doc """
  This operation checks the availability of one domain name.

  Note that if the availability status of a domain is pending, you must submit
  another request to determine the availability of the domain name.
  """
  def check_domain_availability(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CheckDomainAvailability", input, options)
  end

  @doc """
  Checks whether a domain name can be transferred to Amazon Route 53.
  """
  def check_domain_transferability(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CheckDomainTransferability", input, options)
  end

  @doc """
  This operation deletes the specified domain.

  This action is permanent. For more information, see [Deleting a domain name registration](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-delete.html).

  To transfer the domain registration to another registrar, use the transfer
  process that’s provided by the registrar to which you want to transfer the
  registration. Otherwise, the following apply:

    1. You can’t get a refund for the cost of a deleted domain
  registration.

    2. The registry for the top-level domain might hold the domain name
  for a brief time before releasing it for other users to register (varies by
  registry).

    3. When the registration has been deleted, we'll send you a
  confirmation to the registrant contact. The email will come from
  `noreply@domainnameverification.net` or `noreply@registrar.amazon.com`.
  """
  def delete_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDomain", input, options)
  end

  @doc """
  This operation deletes the specified tags for a domain.

  All tag operations are eventually consistent; subsequent operations might not
  immediately represent all issued operations.
  """
  def delete_tags_for_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTagsForDomain", input, options)
  end

  @doc """
  This operation disables automatic renewal of domain registration for the
  specified domain.
  """
  def disable_domain_auto_renew(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableDomainAutoRenew", input, options)
  end

  @doc """
  This operation removes the transfer lock on the domain (specifically the
  `clientTransferProhibited` status) to allow domain transfers.

  We recommend you refrain from performing this action unless you intend to
  transfer the domain to a different registrar. Successful submission returns an
  operation ID that you can use to track the progress and completion of the
  action. If the request is not completed successfully, the domain registrant will
  be notified by email.
  """
  def disable_domain_transfer_lock(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableDomainTransferLock", input, options)
  end

  @doc """
  This operation configures Amazon Route 53 to automatically renew the specified
  domain before the domain registration expires.

  The cost of renewing your domain registration is billed to your Amazon Web
  Services account.

  The period during which you can renew a domain name varies by TLD. For a list of
  TLDs and their renewal policies, see [Domains That You Can Register with Amazon Route
  53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html)
  in the *Amazon Route 53 Developer Guide*. Route 53 requires that you renew
  before the end of the renewal period so we can complete processing before the
  deadline.
  """
  def enable_domain_auto_renew(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableDomainAutoRenew", input, options)
  end

  @doc """
  This operation sets the transfer lock on the domain (specifically the
  `clientTransferProhibited` status) to prevent domain transfers.

  Successful submission returns an operation ID that you can use to track the
  progress and completion of the action. If the request is not completed
  successfully, the domain registrant will be notified by email.
  """
  def enable_domain_transfer_lock(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableDomainTransferLock", input, options)
  end

  @doc """
  For operations that require confirmation that the email address for the
  registrant contact is valid, such as registering a new domain, this operation
  returns information about whether the registrant contact has responded.

  If you want us to resend the email, use the `ResendContactReachabilityEmail`
  operation.
  """
  def get_contact_reachability_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetContactReachabilityStatus", input, options)
  end

  @doc """
  This operation returns detailed information about a specified domain that is
  associated with the current Amazon Web Services account.

  Contact information for the domain is also returned as part of the output.
  """
  def get_domain_detail(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDomainDetail", input, options)
  end

  @doc """
  The GetDomainSuggestions operation returns a list of suggested domain names.
  """
  def get_domain_suggestions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDomainSuggestions", input, options)
  end

  @doc """
  This operation returns the current status of an operation that is not completed.
  """
  def get_operation_detail(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetOperationDetail", input, options)
  end

  @doc """
  This operation returns all the domain names registered with Amazon Route 53 for
  the current Amazon Web Services account if no filtering conditions are used.
  """
  def list_domains(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDomains", input, options)
  end

  @doc """
  Returns information about all of the operations that return an operation ID and
  that have ever been performed on domains that were registered by the current
  account.

  This command runs only in the us-east-1 Region.
  """
  def list_operations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOperations", input, options)
  end

  @doc """
  Lists the following prices for either all the TLDs supported by Route 53, or the
  specified TLD:

    * Registration

    * Transfer

    * Owner change

    * Domain renewal

    * Domain restoration
  """
  def list_prices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPrices", input, options)
  end

  @doc """
  This operation returns all of the tags that are associated with the specified
  domain.

  All tag operations are eventually consistent; subsequent operations might not
  immediately represent all issued operations.
  """
  def list_tags_for_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForDomain", input, options)
  end

  @doc """
  This operation registers a domain.

  Domains are registered either by Amazon Registrar (for .com, .net, and .org
  domains) or by our registrar associate, Gandi (for all other domains). For some
  top-level domains (TLDs), this operation requires extra parameters.

  When you register a domain, Amazon Route 53 does the following:

    * Creates a Route 53 hosted zone that has the same name as the
  domain. Route 53 assigns four name servers to your hosted zone and automatically
  updates your domain registration with the names of these name servers.

    * Enables autorenew, so your domain registration will renew
  automatically each year. We'll notify you in advance of the renewal date so you
  can choose whether to renew the registration.

    * Optionally enables privacy protection, so WHOIS queries return
  contact information either for Amazon Registrar (for .com, .net, and .org
  domains) or for our registrar associate, Gandi (for all other TLDs). If you
  don't enable privacy protection, WHOIS queries return the information that you
  entered for the administrative, registrant, and technical contacts.

  You must specify the same privacy setting for the administrative, registrant,
  and technical contacts.

    * If registration is successful, returns an operation ID that you
  can use to track the progress and completion of the action. If the request is
  not completed successfully, the domain registrant is notified by email.

    * Charges your Amazon Web Services account an amount based on the
  top-level domain. For more information, see [Amazon Route 53 Pricing](http://aws.amazon.com/route53/pricing/).
  """
  def register_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterDomain", input, options)
  end

  @doc """
  Rejects the transfer of a domain from another Amazon Web Services account to the
  current Amazon Web Services account.

  You initiate a transfer betweenAmazon Web Services accounts using
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).  Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
  or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html) to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws Account
  111122223333 has been cancelled`.
  """
  def reject_domain_transfer_from_another_aws_account(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "RejectDomainTransferFromAnotherAwsAccount",
      input,
      options
    )
  end

  @doc """
  This operation renews a domain for the specified number of years.

  The cost of renewing your domain is billed to your Amazon Web Services account.

  We recommend that you renew your domain several weeks before the expiration
  date. Some TLD registries delete domains before the expiration date if you
  haven't renewed far enough in advance. For more information about renewing
  domain registration, see [Renewing Registration for a Domain](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html)
  in the *Amazon Route 53 Developer Guide*.
  """
  def renew_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RenewDomain", input, options)
  end

  @doc """
  For operations that require confirmation that the email address for the
  registrant contact is valid, such as registering a new domain, this operation
  resends the confirmation email to the current email address for the registrant
  contact.
  """
  def resend_contact_reachability_email(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResendContactReachabilityEmail", input, options)
  end

  @doc """
  This operation returns the AuthCode for the domain.

  To transfer a domain to another registrar, you provide this value to the new
  registrar.
  """
  def retrieve_domain_auth_code(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RetrieveDomainAuthCode", input, options)
  end

  @doc """
  Transfers a domain from another registrar to Amazon Route 53.

  When the transfer is complete, the domain is registered either with Amazon
  Registrar (for .com, .net, and .org domains) or with our registrar associate,
  Gandi (for all other TLDs).

  For more information about transferring domains, see the following topics:

    * For transfer requirements, a detailed procedure, and information
  about viewing the status of a domain that you're transferring to Route 53, see
  [Transferring Registration for a Domain to Amazon Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html)
  in the *Amazon Route 53 Developer Guide*.

    * For information about how to transfer a domain from one Amazon Web
  Services account to another, see
  [TransferDomainToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).     * For information about how to transfer a domain to another domain
  registrar, see [Transferring a Domain from Amazon Route 53 to Another
  Registrar](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html)
  in the *Amazon Route 53 Developer Guide*.

  If the registrar for your domain is also the DNS service provider for the
  domain, we highly recommend that you transfer your DNS service to Route 53 or to
  another DNS service provider before you transfer your registration. Some
  registrars provide free DNS service when you purchase a domain registration.
  When you transfer the registration, the previous registrar will not renew your
  domain registration and could end your DNS service at any time.

  If the registrar for your domain is also the DNS service provider for the domain
  and you don't transfer DNS service to another provider, your website, email, and
  the web applications associated with the domain might become unavailable.

  If the transfer is successful, this method returns an operation ID that you can
  use to track the progress and completion of the action. If the transfer doesn't
  complete successfully, the domain registrant will be notified by email.
  """
  def transfer_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TransferDomain", input, options)
  end

  @doc """
  Transfers a domain from the current Amazon Web Services account to another
  Amazon Web Services account.

  Note the following:

    * The Amazon Web Services account that you're transferring the
  domain to must accept the transfer. If the other account doesn't accept the
  transfer within 3 days, we cancel the transfer. See
  [AcceptDomainTransferFromAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html).     * You can cancel the transfer before the other account accepts it.
  See
  [CancelDomainTransferToAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_CancelDomainTransferToAnotherAwsAccount.html).

    * The other account can reject the transfer. See
  [RejectDomainTransferFromAnotherAwsAccount](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_RejectDomainTransferFromAnotherAwsAccount.html). 

  When you transfer a domain from one Amazon Web Services account to another,
  Route 53 doesn't transfer the hosted zone that is associated with the domain.
  DNS resolution isn't affected if the domain and the hosted zone are owned by
  separate accounts, so transferring the hosted zone is optional. For information
  about transferring the hosted zone to another Amazon Web Services account, see
  [Migrating a Hosted Zone to a Different Amazon Web Services
  Account](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html)
  in the *Amazon Route 53 Developer Guide*.

  Use either
  [ListOperations](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html) or
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  to determine whether the operation succeeded.
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
  provides additional information, for example, `Domain Transfer from Aws Account
  111122223333 has been cancelled`.
  """
  def transfer_domain_to_another_aws_account(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TransferDomainToAnotherAwsAccount", input, options)
  end

  @doc """
  This operation updates the contact information for a particular domain.

  You must specify information for at least one contact: registrant,
  administrator, or technical.

  If the update is successful, this method returns an operation ID that you can
  use to track the progress and completion of the action. If the request is not
  completed successfully, the domain registrant will be notified by email.
  """
  def update_domain_contact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDomainContact", input, options)
  end

  @doc """
  This operation updates the specified domain contact's privacy setting.

  When privacy protection is enabled, contact information such as email address is
  replaced either with contact information for Amazon Registrar (for .com, .net,
  and .org domains) or with contact information for our registrar associate,
  Gandi.

  You must specify the same privacy setting for the administrative, registrant,
  and technical contacts.

  This operation affects only the contact information for the specified contact
  type (administrative, registrant, or technical). If the request succeeds, Amazon
  Route 53 returns an operation ID that you can use with
  [GetOperationDetail](https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html) to track the progress and completion of the action. If the request doesn't
  complete successfully, the domain registrant will be notified by email.

  By disabling the privacy service via API, you consent to the publication of the
  contact information provided for this domain via the public WHOIS database. You
  certify that you are the registrant of this domain name and have the authority
  to make this decision. You may withdraw your consent at any time by enabling
  privacy protection using either `UpdateDomainContactPrivacy` or the Route 53
  console. Enabling privacy protection removes the contact information provided
  for this domain from the WHOIS database. For more information on our privacy
  practices, see
  [https://aws.amazon.com/privacy/](https://aws.amazon.com/privacy/).
  """
  def update_domain_contact_privacy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDomainContactPrivacy", input, options)
  end

  @doc """
  This operation replaces the current set of name servers for the domain with the
  specified set of name servers.

  If you use Amazon Route 53 as your DNS service, specify the four name servers in
  the delegation set for the hosted zone for the domain.

  If successful, this operation returns an operation ID that you can use to track
  the progress and completion of the action. If the request is not completed
  successfully, the domain registrant will be notified by email.
  """
  def update_domain_nameservers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDomainNameservers", input, options)
  end

  @doc """
  This operation adds or updates tags for a specified domain.

  All tag operations are eventually consistent; subsequent operations might not
  immediately represent all issued operations.
  """
  def update_tags_for_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTagsForDomain", input, options)
  end

  @doc """
  Returns all the domain-related billing records for the current Amazon Web
  Services account for a specified period
  """
  def view_billing(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ViewBilling", input, options)
  end
end
