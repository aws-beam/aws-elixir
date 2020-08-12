# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Email do
  @moduledoc """
  Amazon Simple Email Service

  This document contains reference information for the [Amazon Simple Email
  Service](https://aws.amazon.com/ses/) (Amazon SES) API, version 2010-12-01.
  This document is best used in conjunction with the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).

  <note> For a list of Amazon SES endpoints to use in service requests, see
  [Regions and Amazon
  SES](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html) in
  the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).

  </note>
  """

  @doc """
  Creates a receipt rule set by cloning an existing one. All receipt rules
  and configurations are copied to the new receipt rule set and are
  completely independent of the source rule set.

  For information about setting up rule sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

  You can execute this operation no more than once per second.
  """
  def clone_receipt_rule_set(client, input, options \\ []) do
    request(client, "CloneReceiptRuleSet", input, options)
  end

  @doc """
  Creates a configuration set.

  Configuration sets enable you to publish email sending events. For
  information about using configuration sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def create_configuration_set(client, input, options \\ []) do
    request(client, "CreateConfigurationSet", input, options)
  end

  @doc """
  Creates a configuration set event destination.

  <note> When you create or update an event destination, you must provide
  one, and only one, destination. The destination can be CloudWatch, Amazon
  Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).

  </note> An event destination is the AWS service to which Amazon SES
  publishes the email sending events associated with a configuration set. For
  information about using configuration sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def create_configuration_set_event_destination(client, input, options \\ []) do
    request(client, "CreateConfigurationSetEventDestination", input, options)
  end

  @doc """
  Creates an association between a configuration set and a custom domain for
  open and click event tracking.

  By default, images and links used for tracking open and click events are
  hosted on domains operated by Amazon SES. You can configure a subdomain of
  your own to handle these events. For information about using custom
  domains, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html).
  """
  def create_configuration_set_tracking_options(client, input, options \\ []) do
    request(client, "CreateConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Creates a new custom verification email template.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def create_custom_verification_email_template(client, input, options \\ []) do
    request(client, "CreateCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Creates a new IP address filter.

  For information about setting up IP address filters, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html).

  You can execute this operation no more than once per second.
  """
  def create_receipt_filter(client, input, options \\ []) do
    request(client, "CreateReceiptFilter", input, options)
  end

  @doc """
  Creates a receipt rule.

  For information about setting up receipt rules, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

  You can execute this operation no more than once per second.
  """
  def create_receipt_rule(client, input, options \\ []) do
    request(client, "CreateReceiptRule", input, options)
  end

  @doc """
  Creates an empty receipt rule set.

  For information about setting up receipt rule sets, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

  You can execute this operation no more than once per second.
  """
  def create_receipt_rule_set(client, input, options \\ []) do
    request(client, "CreateReceiptRuleSet", input, options)
  end

  @doc """
  Creates an email template. Email templates enable you to send personalized
  email to one or more destinations in a single API operation. For more
  information, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html).

  You can execute this operation no more than once per second.
  """
  def create_template(client, input, options \\ []) do
    request(client, "CreateTemplate", input, options)
  end

  @doc """
  Deletes a configuration set. Configuration sets enable you to publish email
  sending events. For information about using configuration sets, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def delete_configuration_set(client, input, options \\ []) do
    request(client, "DeleteConfigurationSet", input, options)
  end

  @doc """
  Deletes a configuration set event destination. Configuration set event
  destinations are associated with configuration sets, which enable you to
  publish email sending events. For information about using configuration
  sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def delete_configuration_set_event_destination(client, input, options \\ []) do
    request(client, "DeleteConfigurationSetEventDestination", input, options)
  end

  @doc """
  Deletes an association between a configuration set and a custom domain for
  open and click event tracking.

  By default, images and links used for tracking open and click events are
  hosted on domains operated by Amazon SES. You can configure a subdomain of
  your own to handle these events. For information about using custom
  domains, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html).

  <note> Deleting this kind of association will result in emails sent using
  the specified configuration set to capture open and click events using the
  standard, Amazon SES-operated domains.

  </note>
  """
  def delete_configuration_set_tracking_options(client, input, options \\ []) do
    request(client, "DeleteConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Deletes an existing custom verification email template.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def delete_custom_verification_email_template(client, input, options \\ []) do
    request(client, "DeleteCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Deletes the specified identity (an email address or a domain) from the list
  of verified identities.

  You can execute this operation no more than once per second.
  """
  def delete_identity(client, input, options \\ []) do
    request(client, "DeleteIdentity", input, options)
  end

  @doc """
  Deletes the specified sending authorization policy for the given identity
  (an email address or a domain). This API returns successfully even if a
  policy with the specified name does not exist.

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def delete_identity_policy(client, input, options \\ []) do
    request(client, "DeleteIdentityPolicy", input, options)
  end

  @doc """
  Deletes the specified IP address filter.

  For information about managing IP address filters, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html).

  You can execute this operation no more than once per second.
  """
  def delete_receipt_filter(client, input, options \\ []) do
    request(client, "DeleteReceiptFilter", input, options)
  end

  @doc """
  Deletes the specified receipt rule.

  For information about managing receipt rules, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

  You can execute this operation no more than once per second.
  """
  def delete_receipt_rule(client, input, options \\ []) do
    request(client, "DeleteReceiptRule", input, options)
  end

  @doc """
  Deletes the specified receipt rule set and all of the receipt rules it
  contains.

  <note> The currently active rule set cannot be deleted.

  </note> For information about managing receipt rule sets, see the [Amazon
  SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  You can execute this operation no more than once per second.
  """
  def delete_receipt_rule_set(client, input, options \\ []) do
    request(client, "DeleteReceiptRuleSet", input, options)
  end

  @doc """
  Deletes an email template.

  You can execute this operation no more than once per second.
  """
  def delete_template(client, input, options \\ []) do
    request(client, "DeleteTemplate", input, options)
  end

  @doc """
  Deprecated. Use the `DeleteIdentity` operation to delete email addresses
  and domains.
  """
  def delete_verified_email_address(client, input, options \\ []) do
    request(client, "DeleteVerifiedEmailAddress", input, options)
  end

  @doc """
  Returns the metadata and receipt rules for the receipt rule set that is
  currently active.

  For information about setting up receipt rule sets, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

  You can execute this operation no more than once per second.
  """
  def describe_active_receipt_rule_set(client, input, options \\ []) do
    request(client, "DescribeActiveReceiptRuleSet", input, options)
  end

  @doc """
  Returns the details of the specified configuration set. For information
  about using configuration sets, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

  You can execute this operation no more than once per second.
  """
  def describe_configuration_set(client, input, options \\ []) do
    request(client, "DescribeConfigurationSet", input, options)
  end

  @doc """
  Returns the details of the specified receipt rule.

  For information about setting up receipt rules, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

  You can execute this operation no more than once per second.
  """
  def describe_receipt_rule(client, input, options \\ []) do
    request(client, "DescribeReceiptRule", input, options)
  end

  @doc """
  Returns the details of the specified receipt rule set.

  For information about managing receipt rule sets, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  You can execute this operation no more than once per second.
  """
  def describe_receipt_rule_set(client, input, options \\ []) do
    request(client, "DescribeReceiptRuleSet", input, options)
  end

  @doc """
  Returns the email sending status of the Amazon SES account for the current
  region.

  You can execute this operation no more than once per second.
  """
  def get_account_sending_enabled(client, input, options \\ []) do
    request(client, "GetAccountSendingEnabled", input, options)
  end

  @doc """
  Returns the custom email verification template for the template name you
  specify.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def get_custom_verification_email_template(client, input, options \\ []) do
    request(client, "GetCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Returns the current status of Easy DKIM signing for an entity. For domain
  name identities, this operation also returns the DKIM tokens that are
  required for Easy DKIM signing, and whether Amazon SES has successfully
  verified that these tokens have been published.

  This operation takes a list of identities as input and returns the
  following information for each:

  <ul> <li> Whether Easy DKIM signing is enabled or disabled.

  </li> <li> A set of DKIM tokens that represent the identity. If the
  identity is an email address, the tokens represent the domain of that
  address.

  </li> <li> Whether Amazon SES has successfully verified the DKIM tokens
  published in the domain's DNS. This information is only returned for domain
  name identities, not for email addresses.

  </li> </ul> This operation is throttled at one request per second and can
  only get DKIM attributes for up to 100 identities at a time.

  For more information about creating DNS records using DKIM tokens, go to
  the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html).
  """
  def get_identity_dkim_attributes(client, input, options \\ []) do
    request(client, "GetIdentityDkimAttributes", input, options)
  end

  @doc """
  Returns the custom MAIL FROM attributes for a list of identities (email
  addresses : domains).

  This operation is throttled at one request per second and can only get
  custom MAIL FROM attributes for up to 100 identities at a time.
  """
  def get_identity_mail_from_domain_attributes(client, input, options \\ []) do
    request(client, "GetIdentityMailFromDomainAttributes", input, options)
  end

  @doc """
  Given a list of verified identities (email addresses and/or domains),
  returns a structure describing identity notification attributes.

  This operation is throttled at one request per second and can only get
  notification attributes for up to 100 identities at a time.

  For more information about using notifications with Amazon SES, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).
  """
  def get_identity_notification_attributes(client, input, options \\ []) do
    request(client, "GetIdentityNotificationAttributes", input, options)
  end

  @doc """
  Returns the requested sending authorization policies for the given identity
  (an email address or a domain). The policies are returned as a map of
  policy names to policy contents. You can retrieve a maximum of 20 policies
  at a time.

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def get_identity_policies(client, input, options \\ []) do
    request(client, "GetIdentityPolicies", input, options)
  end

  @doc """
  Given a list of identities (email addresses and/or domains), returns the
  verification status and (for domain identities) the verification token for
  each identity.

  The verification status of an email address is "Pending" until the email
  address owner clicks the link within the verification email that Amazon SES
  sent to that address. If the email address owner clicks the link within 24
  hours, the verification status of the email address changes to "Success".
  If the link is not clicked within 24 hours, the verification status changes
  to "Failed." In that case, if you still want to verify the email address,
  you must restart the verification process from the beginning.

  For domain identities, the domain's verification status is "Pending" as
  Amazon SES searches for the required TXT record in the DNS settings of the
  domain. When Amazon SES detects the record, the domain's verification
  status changes to "Success". If Amazon SES is unable to detect the record
  within 72 hours, the domain's verification status changes to "Failed." In
  that case, if you still want to verify the domain, you must restart the
  verification process from the beginning.

  This operation is throttled at one request per second and can only get
  verification attributes for up to 100 identities at a time.
  """
  def get_identity_verification_attributes(client, input, options \\ []) do
    request(client, "GetIdentityVerificationAttributes", input, options)
  end

  @doc """
  Provides the sending limits for the Amazon SES account.

  You can execute this operation no more than once per second.
  """
  def get_send_quota(client, input, options \\ []) do
    request(client, "GetSendQuota", input, options)
  end

  @doc """
  Provides sending statistics for the current AWS Region. The result is a
  list of data points, representing the last two weeks of sending activity.
  Each data point in the list contains statistics for a 15-minute period of
  time.

  You can execute this operation no more than once per second.
  """
  def get_send_statistics(client, input, options \\ []) do
    request(client, "GetSendStatistics", input, options)
  end

  @doc """
  Displays the template object (which includes the Subject line, HTML part
  and text part) for the template you specify.

  You can execute this operation no more than once per second.
  """
  def get_template(client, input, options \\ []) do
    request(client, "GetTemplate", input, options)
  end

  @doc """
  Provides a list of the configuration sets associated with your Amazon SES
  account in the current AWS Region. For information about using
  configuration sets, see [Monitoring Your Amazon SES Sending
  Activity](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html)
  in the *Amazon SES Developer Guide.*

  You can execute this operation no more than once per second. This operation
  will return up to 1,000 configuration sets each time it is run. If your
  Amazon SES account has more than 1,000 configuration sets, this operation
  will also return a NextToken element. You can then execute the
  `ListConfigurationSets` operation again, passing the `NextToken` parameter
  and the value of the NextToken element to retrieve additional results.
  """
  def list_configuration_sets(client, input, options \\ []) do
    request(client, "ListConfigurationSets", input, options)
  end

  @doc """
  Lists the existing custom verification email templates for your account in
  the current AWS Region.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def list_custom_verification_email_templates(client, input, options \\ []) do
    request(client, "ListCustomVerificationEmailTemplates", input, options)
  end

  @doc """
  Returns a list containing all of the identities (email addresses and
  domains) for your AWS account in the current AWS Region, regardless of
  verification status.

  You can execute this operation no more than once per second.
  """
  def list_identities(client, input, options \\ []) do
    request(client, "ListIdentities", input, options)
  end

  @doc """
  Returns a list of sending authorization policies that are attached to the
  given identity (an email address or a domain). This API returns only a
  list. If you want the actual policy content, you can use
  `GetIdentityPolicies`.

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def list_identity_policies(client, input, options \\ []) do
    request(client, "ListIdentityPolicies", input, options)
  end

  @doc """
  Lists the IP address filters associated with your AWS account in the
  current AWS Region.

  For information about managing IP address filters, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html).

  You can execute this operation no more than once per second.
  """
  def list_receipt_filters(client, input, options \\ []) do
    request(client, "ListReceiptFilters", input, options)
  end

  @doc """
  Lists the receipt rule sets that exist under your AWS account in the
  current AWS Region. If there are additional receipt rule sets to be
  retrieved, you will receive a `NextToken` that you can provide to the next
  call to `ListReceiptRuleSets` to retrieve the additional entries.

  For information about managing receipt rule sets, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  You can execute this operation no more than once per second.
  """
  def list_receipt_rule_sets(client, input, options \\ []) do
    request(client, "ListReceiptRuleSets", input, options)
  end

  @doc """
  Lists the email templates present in your Amazon SES account in the current
  AWS Region.

  You can execute this operation no more than once per second.
  """
  def list_templates(client, input, options \\ []) do
    request(client, "ListTemplates", input, options)
  end

  @doc """
  Deprecated. Use the `ListIdentities` operation to list the email addresses
  and domains associated with your account.
  """
  def list_verified_email_addresses(client, input, options \\ []) do
    request(client, "ListVerifiedEmailAddresses", input, options)
  end

  @doc """
  Adds or updates the delivery options for a configuration set.
  """
  def put_configuration_set_delivery_options(client, input, options \\ []) do
    request(client, "PutConfigurationSetDeliveryOptions", input, options)
  end

  @doc """
  Adds or updates a sending authorization policy for the specified identity
  (an email address or a domain).

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def put_identity_policy(client, input, options \\ []) do
    request(client, "PutIdentityPolicy", input, options)
  end

  @doc """
  Reorders the receipt rules within a receipt rule set.

  <note> All of the rules in the rule set must be represented in this
  request. That is, this API will return an error if the reorder request
  doesn't explicitly position all of the rules.

  </note> For information about managing receipt rule sets, see the [Amazon
  SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  You can execute this operation no more than once per second.
  """
  def reorder_receipt_rule_set(client, input, options \\ []) do
    request(client, "ReorderReceiptRuleSet", input, options)
  end

  @doc """
  Generates and sends a bounce message to the sender of an email you received
  through Amazon SES. You can only use this API on an email up to 24 hours
  after you receive it.

  <note> You cannot use this API to send generic bounces for mail that was
  not received by Amazon SES.

  </note> For information about receiving email through Amazon SES, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html).

  You can execute this operation no more than once per second.
  """
  def send_bounce(client, input, options \\ []) do
    request(client, "SendBounce", input, options)
  end

  @doc """
  Composes an email message to multiple destinations. The message body is
  created using an email template.

  In order to send email using the `SendBulkTemplatedEmail` operation, your
  call to the API must meet the following requirements:

  <ul> <li> The call must refer to an existing email template. You can create
  email templates using the `CreateTemplate` operation.

  </li> <li> The message must be sent from a verified email address or
  domain.

  </li> <li> If your account is still in the Amazon SES sandbox, you may only
  send to verified addresses or domains, or to email addresses associated
  with the Amazon SES Mailbox Simulator. For more information, see [Verifying
  Email Addresses and
  Domains](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

  </li> <li> The maximum message size is 10 MB.

  </li> <li> Each `Destination` parameter must include at least one recipient
  email address. The recipient address can be a To: address, a CC: address,
  or a BCC: address. If a recipient email address is invalid (that is, it is
  not in the format *UserName@[SubDomain.]Domain.TopLevelDomain*), the entire
  message will be rejected, even if the message contains other recipients
  that are valid.

  </li> <li> The message may not include more than 50 recipients, across the
  To:, CC: and BCC: fields. If you need to send an email message to a larger
  audience, you can divide your recipient list into groups of 50 or fewer,
  and then call the `SendBulkTemplatedEmail` operation several times to send
  the message to each group.

  </li> <li> The number of destinations you can contact in a single call to
  the API may be limited by your account's maximum sending rate.

  </li> </ul>
  """
  def send_bulk_templated_email(client, input, options \\ []) do
    request(client, "SendBulkTemplatedEmail", input, options)
  end

  @doc """
  Adds an email address to the list of identities for your Amazon SES account
  in the current AWS Region and attempts to verify it. As a result of
  executing this operation, a customized verification email is sent to the
  specified address.

  To use this operation, you must first create a custom verification email
  template. For more information about creating and using custom verification
  email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def send_custom_verification_email(client, input, options \\ []) do
    request(client, "SendCustomVerificationEmail", input, options)
  end

  @doc """
  Composes an email message and immediately queues it for sending. In order
  to send email using the `SendEmail` operation, your message must meet the
  following requirements:

  <ul> <li> The message must be sent from a verified email address or domain.
  If you attempt to send email using a non-verified address or domain, the
  operation will result in an "Email address not verified" error.

  </li> <li> If your account is still in the Amazon SES sandbox, you may only
  send to verified addresses or domains, or to email addresses associated
  with the Amazon SES Mailbox Simulator. For more information, see [Verifying
  Email Addresses and
  Domains](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

  </li> <li> The maximum message size is 10 MB.

  </li> <li> The message must include at least one recipient email address.
  The recipient address can be a To: address, a CC: address, or a BCC:
  address. If a recipient email address is invalid (that is, it is not in the
  format *UserName@[SubDomain.]Domain.TopLevelDomain*), the entire message
  will be rejected, even if the message contains other recipients that are
  valid.

  </li> <li> The message may not include more than 50 recipients, across the
  To:, CC: and BCC: fields. If you need to send an email message to a larger
  audience, you can divide your recipient list into groups of 50 or fewer,
  and then call the `SendEmail` operation several times to send the message
  to each group.

  </li> </ul> <important> For every message that you send, the total number
  of recipients (including each recipient in the To:, CC: and BCC: fields) is
  counted against the maximum number of emails you can send in a 24-hour
  period (your *sending quota*). For more information about sending quotas in
  Amazon SES, see [Managing Your Amazon SES Sending
  Limits](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html)
  in the *Amazon SES Developer Guide.*

  </important>
  """
  def send_email(client, input, options \\ []) do
    request(client, "SendEmail", input, options)
  end

  @doc """
  Composes an email message and immediately queues it for sending.

  This operation is more flexible than the `SendEmail` API operation. When
  you use the `SendRawEmail` operation, you can specify the headers of the
  message as well as its content. This flexibility is useful, for example,
  when you want to send a multipart MIME email (such a message that contains
  both a text and an HTML version). You can also use this operation to send
  messages that include attachments.

  The `SendRawEmail` operation has the following requirements:

  <ul> <li> You can only send email from [verified email addresses or
  domains](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).
  If you try to send email from an address that isn't verified, the operation
  results in an "Email address not verified" error.

  </li> <li> If your account is still in the [Amazon SES
  sandbox](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/request-production-access.html),
  you can only send email to other verified addresses in your account, or to
  addresses that are associated with the [Amazon SES mailbox
  simulator](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mailbox-simulator.html).

  </li> <li> The maximum message size, including attachments, is 10 MB.

  </li> <li> Each message has to include at least one recipient address. A
  recipient address includes any address on the To:, CC:, or BCC: lines.

  </li> <li> If you send a single message to more than one recipient address,
  and one of the recipient addresses isn't in a valid format (that is, it's
  not in the format *UserName@[SubDomain.]Domain.TopLevelDomain*), Amazon SES
  rejects the entire message, even if the other addresses are valid.

  </li> <li> Each message can include up to 50 recipient addresses across the
  To:, CC:, or BCC: lines. If you need to send a single message to more than
  50 recipients, you have to split the list of recipient addresses into
  groups of less than 50 recipients, and send separate messages to each
  group.

  </li> <li> Amazon SES allows you to specify 8-bit Content-Transfer-Encoding
  for MIME message parts. However, if Amazon SES has to modify the contents
  of your message (for example, if you use open and click tracking), 8-bit
  content isn't preserved. For this reason, we highly recommend that you
  encode all content that isn't 7-bit ASCII. For more information, see [MIME
  Encoding](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html#send-email-mime-encoding)
  in the *Amazon SES Developer Guide*.

  </li> </ul> Additionally, keep the following considerations in mind when
  using the `SendRawEmail` operation:

  <ul> <li> Although you can customize the message headers when using the
  `SendRawEmail` operation, Amazon SES will automatically apply its own
  `Message-ID` and `Date` headers; if you passed these headers when creating
  the message, they will be overwritten by the values that Amazon SES
  provides.

  </li> <li> If you are using sending authorization to send on behalf of
  another user, `SendRawEmail` enables you to specify the cross-account
  identity for the email's Source, From, and Return-Path parameters in one of
  two ways: you can pass optional parameters `SourceArn`, `FromArn`, and/or
  `ReturnPathArn` to the API, or you can include the following X-headers in
  the header of your raw email:

  <ul> <li> `X-SES-SOURCE-ARN`

  </li> <li> `X-SES-FROM-ARN`

  </li> <li> `X-SES-RETURN-PATH-ARN`

  </li> </ul> <important> Don't include these X-headers in the DKIM
  signature. Amazon SES removes these before it sends the email.

  </important> If you only specify the `SourceIdentityArn` parameter, Amazon
  SES sets the From and Return-Path addresses to the same identity that you
  specified.

  For more information about sending authorization, see the [Using Sending
  Authorization with Amazon
  SES](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html)
  in the *Amazon SES Developer Guide.*

  </li> <li> For every message that you send, the total number of recipients
  (including each recipient in the To:, CC: and BCC: fields) is counted
  against the maximum number of emails you can send in a 24-hour period (your
  *sending quota*). For more information about sending quotas in Amazon SES,
  see [Managing Your Amazon SES Sending
  Limits](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html)
  in the *Amazon SES Developer Guide.*

  </li> </ul>
  """
  def send_raw_email(client, input, options \\ []) do
    request(client, "SendRawEmail", input, options)
  end

  @doc """
  Composes an email message using an email template and immediately queues it
  for sending.

  In order to send email using the `SendTemplatedEmail` operation, your call
  to the API must meet the following requirements:

  <ul> <li> The call must refer to an existing email template. You can create
  email templates using the `CreateTemplate` operation.

  </li> <li> The message must be sent from a verified email address or
  domain.

  </li> <li> If your account is still in the Amazon SES sandbox, you may only
  send to verified addresses or domains, or to email addresses associated
  with the Amazon SES Mailbox Simulator. For more information, see [Verifying
  Email Addresses and
  Domains](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

  </li> <li> The maximum message size is 10 MB.

  </li> <li> Calls to the `SendTemplatedEmail` operation may only include one
  `Destination` parameter. A destination is a set of recipients who will
  receive the same version of the email. The `Destination` parameter can
  include up to 50 recipients, across the To:, CC: and BCC: fields.

  </li> <li> The `Destination` parameter must include at least one recipient
  email address. The recipient address can be a To: address, a CC: address,
  or a BCC: address. If a recipient email address is invalid (that is, it is
  not in the format *UserName@[SubDomain.]Domain.TopLevelDomain*), the entire
  message will be rejected, even if the message contains other recipients
  that are valid.

  </li> </ul> <important> If your call to the `SendTemplatedEmail` operation
  includes all of the required parameters, Amazon SES accepts it and returns
  a Message ID. However, if Amazon SES can't render the email because the
  template contains errors, it doesn't send the email. Additionally, because
  it already accepted the message, Amazon SES doesn't return a message
  stating that it was unable to send the email.

  For these reasons, we highly recommend that you set up Amazon SES to send
  you notifications when Rendering Failure events occur. For more
  information, see [Sending Personalized Email Using the Amazon SES
  API](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html)
  in the *Amazon Simple Email Service Developer Guide*.

  </important>
  """
  def send_templated_email(client, input, options \\ []) do
    request(client, "SendTemplatedEmail", input, options)
  end

  @doc """
  Sets the specified receipt rule set as the active receipt rule set.

  <note> To disable your email-receiving through Amazon SES completely, you
  can call this API with RuleSetName set to null.

  </note> For information about managing receipt rule sets, see the [Amazon
  SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

  You can execute this operation no more than once per second.
  """
  def set_active_receipt_rule_set(client, input, options \\ []) do
    request(client, "SetActiveReceiptRuleSet", input, options)
  end

  @doc """
  Enables or disables Easy DKIM signing of email sent from an identity. If
  Easy DKIM signing is enabled for a domain, then Amazon SES uses DKIM to
  sign all email that it sends from addresses on that domain. If Easy DKIM
  signing is enabled for an email address, then Amazon SES uses DKIM to sign
  all email it sends from that address.

  <note> For email addresses (for example, `user@example.com`), you can only
  enable DKIM signing if the corresponding domain (in this case,
  `example.com`) has been set up to use Easy DKIM.

  </note> You can enable DKIM signing for an identity at any time after you
  start the verification process for the identity, even if the verification
  process isn't complete.

  You can execute this operation no more than once per second.

  For more information about Easy DKIM signing, go to the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).
  """
  def set_identity_dkim_enabled(client, input, options \\ []) do
    request(client, "SetIdentityDkimEnabled", input, options)
  end

  @doc """
  Given an identity (an email address or a domain), enables or disables
  whether Amazon SES forwards bounce and complaint notifications as email.
  Feedback forwarding can only be disabled when Amazon Simple Notification
  Service (Amazon SNS) topics are specified for both bounces and complaints.

  <note> Feedback forwarding does not apply to delivery notifications.
  Delivery notifications are only available through Amazon SNS.

  </note> You can execute this operation no more than once per second.

  For more information about using notifications with Amazon SES, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).
  """
  def set_identity_feedback_forwarding_enabled(client, input, options \\ []) do
    request(client, "SetIdentityFeedbackForwardingEnabled", input, options)
  end

  @doc """
  Given an identity (an email address or a domain), sets whether Amazon SES
  includes the original email headers in the Amazon Simple Notification
  Service (Amazon SNS) notifications of a specified type.

  You can execute this operation no more than once per second.

  For more information about using notifications with Amazon SES, see the
  [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).
  """
  def set_identity_headers_in_notifications_enabled(client, input, options \\ []) do
    request(client, "SetIdentityHeadersInNotificationsEnabled", input, options)
  end

  @doc """
  Enables or disables the custom MAIL FROM domain setup for a verified
  identity (an email address or a domain).

  <important> To send emails using the specified MAIL FROM domain, you must
  add an MX record to your MAIL FROM domain's DNS settings. If you want your
  emails to pass Sender Policy Framework (SPF) checks, you must also add or
  update an SPF record. For more information, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html).

  </important> You can execute this operation no more than once per second.
  """
  def set_identity_mail_from_domain(client, input, options \\ []) do
    request(client, "SetIdentityMailFromDomain", input, options)
  end

  @doc """
  Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when
  delivering notifications. When you use this operation, you specify a
  verified identity, such as an email address or domain. When you send an
  email that uses the chosen identity in the Source field, Amazon SES sends
  notifications to the topic you specified. You can send bounce, complaint,
  or delivery notifications (or any combination of the three) to the Amazon
  SNS topic that you specify.

  You can execute this operation no more than once per second.

  For more information about feedback notification, see the [Amazon SES
  Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).
  """
  def set_identity_notification_topic(client, input, options \\ []) do
    request(client, "SetIdentityNotificationTopic", input, options)
  end

  @doc """
  Sets the position of the specified receipt rule in the receipt rule set.

  For information about managing receipt rules, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

  You can execute this operation no more than once per second.
  """
  def set_receipt_rule_position(client, input, options \\ []) do
    request(client, "SetReceiptRulePosition", input, options)
  end

  @doc """
  Creates a preview of the MIME content of an email when provided with a
  template and a set of replacement data.

  You can execute this operation no more than once per second.
  """
  def test_render_template(client, input, options \\ []) do
    request(client, "TestRenderTemplate", input, options)
  end

  @doc """
  Enables or disables email sending across your entire Amazon SES account in
  the current AWS Region. You can use this operation in conjunction with
  Amazon CloudWatch alarms to temporarily pause email sending across your
  Amazon SES account in a given AWS Region when reputation metrics (such as
  your bounce or complaint rates) reach certain thresholds.

  You can execute this operation no more than once per second.
  """
  def update_account_sending_enabled(client, input, options \\ []) do
    request(client, "UpdateAccountSendingEnabled", input, options)
  end

  @doc """
  Updates the event destination of a configuration set. Event destinations
  are associated with configuration sets, which enable you to publish email
  sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon
  Simple Notification Service (Amazon SNS). For information about using
  configuration sets, see [Monitoring Your Amazon SES Sending
  Activity](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html)
  in the *Amazon SES Developer Guide.*

  <note> When you create or update an event destination, you must provide
  one, and only one, destination. The destination can be Amazon CloudWatch,
  Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon
  SNS).

  </note> You can execute this operation no more than once per second.
  """
  def update_configuration_set_event_destination(client, input, options \\ []) do
    request(client, "UpdateConfigurationSetEventDestination", input, options)
  end

  @doc """
  Enables or disables the publishing of reputation metrics for emails sent
  using a specific configuration set in a given AWS Region. Reputation
  metrics include bounce and complaint rates. These metrics are published to
  Amazon CloudWatch. By using CloudWatch, you can create alarms when bounce
  or complaint rates exceed certain thresholds.

  You can execute this operation no more than once per second.
  """
  def update_configuration_set_reputation_metrics_enabled(client, input, options \\ []) do
    request(client, "UpdateConfigurationSetReputationMetricsEnabled", input, options)
  end

  @doc """
  Enables or disables email sending for messages sent using a specific
  configuration set in a given AWS Region. You can use this operation in
  conjunction with Amazon CloudWatch alarms to temporarily pause email
  sending for a configuration set when the reputation metrics for that
  configuration set (such as your bounce on complaint rate) exceed certain
  thresholds.

  You can execute this operation no more than once per second.
  """
  def update_configuration_set_sending_enabled(client, input, options \\ []) do
    request(client, "UpdateConfigurationSetSendingEnabled", input, options)
  end

  @doc """
  Modifies an association between a configuration set and a custom domain for
  open and click event tracking.

  By default, images and links used for tracking open and click events are
  hosted on domains operated by Amazon SES. You can configure a subdomain of
  your own to handle these events. For information about using custom
  domains, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-custom-open-click-domains.html).
  """
  def update_configuration_set_tracking_options(client, input, options \\ []) do
    request(client, "UpdateConfigurationSetTrackingOptions", input, options)
  end

  @doc """
  Updates an existing custom verification email template.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def update_custom_verification_email_template(client, input, options \\ []) do
    request(client, "UpdateCustomVerificationEmailTemplate", input, options)
  end

  @doc """
  Updates a receipt rule.

  For information about managing receipt rules, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

  You can execute this operation no more than once per second.
  """
  def update_receipt_rule(client, input, options \\ []) do
    request(client, "UpdateReceiptRule", input, options)
  end

  @doc """
  Updates an email template. Email templates enable you to send personalized
  email to one or more destinations in a single API operation. For more
  information, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html).

  You can execute this operation no more than once per second.
  """
  def update_template(client, input, options \\ []) do
    request(client, "UpdateTemplate", input, options)
  end

  @doc """
  Returns a set of DKIM tokens for a domain identity.

  <important> When you execute the `VerifyDomainDkim` operation, the domain
  that you specify is added to the list of identities that are associated
  with your account. This is true even if you haven't already associated the
  domain with your account by using the `VerifyDomainIdentity` operation.
  However, you can't send email from the domain until you either successfully
  [verify
  it](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html)
  or you successfully [set up DKIM for
  it](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).

  </important> You use the tokens that are generated by this operation to
  create CNAME records. When Amazon SES detects that you've added these
  records to the DNS configuration for a domain, you can start sending email
  from that domain. You can start sending email even if you haven't added the
  TXT record provided by the VerifyDomainIdentity operation to the DNS
  configuration for your domain. All email that you send from the domain is
  authenticated using DKIM.

  To create the CNAME records for DKIM authentication, use the following
  values:

  <ul> <li> **Name**: *token*._domainkey.*example.com*

  </li> <li> **Type**: CNAME

  </li> <li> **Value**: *token*.dkim.amazonses.com

  </li> </ul> In the preceding example, replace *token* with one of the
  tokens that are generated when you execute this operation. Replace
  *example.com* with your domain. Repeat this process for each token that's
  generated by this operation.

  You can execute this operation no more than once per second.
  """
  def verify_domain_dkim(client, input, options \\ []) do
    request(client, "VerifyDomainDkim", input, options)
  end

  @doc """
  Adds a domain to the list of identities for your Amazon SES account in the
  current AWS Region and attempts to verify it. For more information about
  verifying domains, see [Verifying Email Addresses and
  Domains](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html)
  in the *Amazon SES Developer Guide.*

  You can execute this operation no more than once per second.
  """
  def verify_domain_identity(client, input, options \\ []) do
    request(client, "VerifyDomainIdentity", input, options)
  end

  @doc """
  Deprecated. Use the `VerifyEmailIdentity` operation to verify a new email
  address.
  """
  def verify_email_address(client, input, options \\ []) do
    request(client, "VerifyEmailAddress", input, options)
  end

  @doc """
  Adds an email address to the list of identities for your Amazon SES account
  in the current AWS region and attempts to verify it. As a result of
  executing this operation, a verification email is sent to the specified
  address.

  You can execute this operation no more than once per second.
  """
  def verify_email_identity(client, input, options \\ []) do
    request(client, "VerifyEmailIdentity", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "ses"}
    host = get_host("email", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2010-12-01"})
    payload = :uri_string.compose_query(Map.to_list(input))
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = AWS.Util.decode_xml(body)
        exception = error["ErrorResponse"]["Error"]["Code"]
        message = error["ErrorResponse"]["Error"]["Message"]
        {:error, {exception, message}}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
