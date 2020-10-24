# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SESv2 do
  @moduledoc """
  Amazon SES API v2

  Welcome to the Amazon SES API v2 Reference. This guide provides information
  about the Amazon SES API v2, including supported operations, data types,
  parameters, and schemas.

  [Amazon SES](https://aws.amazon.com/pinpoint) is an AWS service that you
  can use to send email messages to your customers.

  If you're new to Amazon SES API v2, you might find it helpful to also
  review the [Amazon Simple Email Service Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/). The *Amazon
  SES Developer Guide* provides information and code samples that demonstrate
  how to use Amazon SES API v2 features programmatically.

  The Amazon SES API v2 is available in several AWS Regions and it provides
  an endpoint for each of these Regions. For a list of all the Regions and
  endpoints where the API is currently available, see [AWS Service
  Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#ses_region)
  in the *Amazon Web Services General Reference*. To learn more about AWS
  Regions, see [Managing AWS
  Regions](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html)
  in the *Amazon Web Services General Reference*.

  In each Region, AWS maintains multiple Availability Zones. These
  Availability Zones are physically isolated from each other, but are united
  by private, low-latency, high-throughput, and highly redundant network
  connections. These Availability Zones enable us to provide very high levels
  of availability and redundancy, while also minimizing latency. To learn
  more about the number of Availability Zones that are available in each
  Region, see [AWS Global
  Infrastructure](http://aws.amazon.com/about-aws/global-infrastructure/).
  """

  @doc """
  Create a configuration set. *Configuration sets* are groups of rules that
  you can apply to the emails that you send. You apply a configuration set to
  an email by specifying the name of the configuration set when you call the
  Amazon SES API v2. When you apply a configuration set to an email, all of
  the rules in that configuration set are applied to the email.
  """
  def create_configuration_set(client, input, options \\ []) do
    path_ = "/v2/email/configuration-sets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Create an event destination. *Events* include message sends, deliveries,
  opens, clicks, bounces, and complaints. *Event destinations* are places
  that you can send information about these events to. For example, you can
  send event data to Amazon SNS to receive notifications when you receive
  bounces or complaints, or you can use Amazon Kinesis Data Firehose to
  stream data to Amazon S3 for long-term storage.

  A single configuration set can include more than one event destination.
  """
  def create_configuration_set_event_destination(client, configuration_set_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new custom verification email template.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def create_custom_verification_email_template(client, input, options \\ []) do
    path_ = "/v2/email/custom-verification-email-templates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Create a new pool of dedicated IP addresses. A pool can include one or more
  dedicated IP addresses that are associated with your AWS account. You can
  associate a pool with a configuration set. When you send an email that uses
  that configuration set, the message is sent from one of the addresses in
  the associated pool.
  """
  def create_dedicated_ip_pool(client, input, options \\ []) do
    path_ = "/v2/email/dedicated-ip-pools"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Create a new predictive inbox placement test. Predictive inbox placement
  tests can help you predict how your messages will be handled by various
  email providers around the world. When you perform a predictive inbox
  placement test, you provide a sample message that contains the content that
  you plan to send to your customers. Amazon SES then sends that message to
  special email addresses spread across several major email providers. After
  about 24 hours, the test is complete, and you can use the
  `GetDeliverabilityTestReport` operation to view the results of the test.
  """
  def create_deliverability_test_report(client, input, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard/test"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Starts the process of verifying an email identity. An *identity* is an
  email address or domain that you use when you send email. Before you can
  use an identity to send email, you first have to verify it. By verifying an
  identity, you demonstrate that you're the owner of the identity, and that
  you've given Amazon SES API v2 permission to send email from the identity.

  When you verify an email address, Amazon SES sends an email to the address.
  Your email address is verified as soon as you follow the link in the
  verification email.

  When you verify a domain without specifying the `DkimSigningAttributes`
  object, this operation provides a set of DKIM tokens. You can convert these
  tokens into CNAME records, which you then add to the DNS configuration for
  your domain. Your domain is verified when Amazon SES detects these records
  in the DNS configuration for your domain. This verification method is known
  as [Easy
  DKIM](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).

  Alternatively, you can perform the verification process by providing your
  own public-private key pair. This verification method is known as Bring
  Your Own DKIM (BYODKIM). To use BYODKIM, your call to the
  `CreateEmailIdentity` operation has to include the `DkimSigningAttributes`
  object. When you specify this object, you provide a selector (a component
  of the DNS record name that identifies the public key that you want to use
  for DKIM authentication) and a private key.
  """
  def create_email_identity(client, input, options \\ []) do
    path_ = "/v2/email/identities"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates the specified sending authorization policy for the given identity
  (an email address or a domain).

  <note> This API is for the identity owner only. If you have not verified
  the identity, this API will return an error.

  </note> Sending authorization is a feature that enables an identity owner
  to authorize other senders to use its identities. For information about
  using sending authorization, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

  You can execute this operation no more than once per second.
  """
  def create_email_identity_policy(client, email_identity, policy_name, input, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}/policies/#{URI.encode(policy_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an email template. Email templates enable you to send personalized
  email to one or more destinations in a single API operation. For more
  information, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html).

  You can execute this operation no more than once per second.
  """
  def create_email_template(client, input, options \\ []) do
    path_ = "/v2/email/templates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates an import job for a data destination.
  """
  def create_import_job(client, input, options \\ []) do
    path_ = "/v2/email/import-jobs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Delete an existing configuration set.

  *Configuration sets* are groups of rules that you can apply to the emails
  you send. You apply a configuration set to an email by including a
  reference to the configuration set in the headers of the email. When you
  apply a configuration set to an email, all of the rules in that
  configuration set are applied to the email.
  """
  def delete_configuration_set(client, configuration_set_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Delete an event destination.

  *Events* include message sends, deliveries, opens, clicks, bounces, and
  complaints. *Event destinations* are places that you can send information
  about these events to. For example, you can send event data to Amazon SNS
  to receive notifications when you receive bounces or complaints, or you can
  use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term
  storage.
  """
  def delete_configuration_set_event_destination(client, configuration_set_name, event_destination_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations/#{URI.encode(event_destination_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an existing custom verification email template.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/es/latest/DeveloperGuide/send-email-verify-address-custom.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def delete_custom_verification_email_template(client, template_name, input, options \\ []) do
    path_ = "/v2/email/custom-verification-email-templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Delete a dedicated IP pool.
  """
  def delete_dedicated_ip_pool(client, pool_name, input, options \\ []) do
    path_ = "/v2/email/dedicated-ip-pools/#{URI.encode(pool_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an email identity. An identity can be either an email address or a
  domain name.
  """
  def delete_email_identity(client, email_identity, input, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
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
  def delete_email_identity_policy(client, email_identity, policy_name, input, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}/policies/#{URI.encode(policy_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes an email template.

  You can execute this operation no more than once per second.
  """
  def delete_email_template(client, template_name, input, options \\ []) do
    path_ = "/v2/email/templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes an email address from the suppression list for your account.
  """
  def delete_suppressed_destination(client, email_address, input, options \\ []) do
    path_ = "/v2/email/suppression/addresses/#{URI.encode(email_address)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Obtain information about the email-sending status and capabilities of your
  Amazon SES account in the current AWS Region.
  """
  def get_account(client, options \\ []) do
    path_ = "/v2/email/account"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieve a list of the blacklists that your dedicated IP addresses appear
  on.
  """
  def get_blacklist_reports(client, blacklist_item_names, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard/blacklist-report"
    headers = []
    query_ = []
    query_ = if !is_nil(blacklist_item_names) do
      [{"BlacklistItemNames", blacklist_item_names} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Get information about an existing configuration set, including the
  dedicated IP pool that it's associated with, whether or not it's enabled
  for sending email, and more.

  *Configuration sets* are groups of rules that you can apply to the emails
  you send. You apply a configuration set to an email by including a
  reference to the configuration set in the headers of the email. When you
  apply a configuration set to an email, all of the rules in that
  configuration set are applied to the email.
  """
  def get_configuration_set(client, configuration_set_name, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieve a list of event destinations that are associated with a
  configuration set.

  *Events* include message sends, deliveries, opens, clicks, bounces, and
  complaints. *Event destinations* are places that you can send information
  about these events to. For example, you can send event data to Amazon SNS
  to receive notifications when you receive bounces or complaints, or you can
  use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term
  storage.
  """
  def get_configuration_set_event_destinations(client, configuration_set_name, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the custom email verification template for the template name you
  specify.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def get_custom_verification_email_template(client, template_name, options \\ []) do
    path_ = "/v2/email/custom-verification-email-templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Get information about a dedicated IP address, including the name of the
  dedicated IP pool that it's associated with, as well information about the
  automatic warm-up process for the address.
  """
  def get_dedicated_ip(client, ip, options \\ []) do
    path_ = "/v2/email/dedicated-ips/#{URI.encode(ip)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List the dedicated IP addresses that are associated with your AWS account.
  """
  def get_dedicated_ips(client, next_token \\ nil, page_size \\ nil, pool_name \\ nil, options \\ []) do
    path_ = "/v2/email/dedicated-ips"
    headers = []
    query_ = []
    query_ = if !is_nil(pool_name) do
      [{"PoolName", pool_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieve information about the status of the Deliverability dashboard for
  your account. When the Deliverability dashboard is enabled, you gain access
  to reputation, deliverability, and other metrics for the domains that you
  use to send email. You also gain the ability to perform predictive inbox
  placement tests.

  When you use the Deliverability dashboard, you pay a monthly subscription
  charge, in addition to any other fees that you accrue by using Amazon SES
  and other AWS services. For more information about the features and cost of
  a Deliverability dashboard subscription, see [Amazon SES
  Pricing](http://aws.amazon.com/ses/pricing/).
  """
  def get_deliverability_dashboard_options(client, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieve the results of a predictive inbox placement test.
  """
  def get_deliverability_test_report(client, report_id, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard/test-reports/#{URI.encode(report_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieve all the deliverability data for a specific campaign. This data is
  available for a campaign only if the campaign sent email by using a domain
  that the Deliverability dashboard is enabled for.
  """
  def get_domain_deliverability_campaign(client, campaign_id, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard/campaigns/#{URI.encode(campaign_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieve inbox placement and engagement rates for the domains that you use
  to send email.
  """
  def get_domain_statistics_report(client, domain, end_date, start_date, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard/statistics-report/#{URI.encode(domain)}"
    headers = []
    query_ = []
    query_ = if !is_nil(start_date) do
      [{"StartDate", start_date} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_date) do
      [{"EndDate", end_date} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides information about a specific identity, including the identity's
  verification status, sending authorization policies, its DKIM
  authentication status, and its custom Mail-From settings.
  """
  def get_email_identity(client, email_identity, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
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
  def get_email_identity_policies(client, email_identity, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}/policies"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Displays the template object (which includes the subject line, HTML part
  and text part) for the template you specify.

  You can execute this operation no more than once per second.
  """
  def get_email_template(client, template_name, options \\ []) do
    path_ = "/v2/email/templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides information about an import job.
  """
  def get_import_job(client, job_id, options \\ []) do
    path_ = "/v2/email/import-jobs/#{URI.encode(job_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a specific email address that's on the
  suppression list for your account.
  """
  def get_suppressed_destination(client, email_address, options \\ []) do
    path_ = "/v2/email/suppression/addresses/#{URI.encode(email_address)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List all of the configuration sets associated with your account in the
  current region.

  *Configuration sets* are groups of rules that you can apply to the emails
  you send. You apply a configuration set to an email by including a
  reference to the configuration set in the headers of the email. When you
  apply a configuration set to an email, all of the rules in that
  configuration set are applied to the email.
  """
  def list_configuration_sets(client, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v2/email/configuration-sets"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the existing custom verification email templates for your account in
  the current AWS Region.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def list_custom_verification_email_templates(client, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v2/email/custom-verification-email-templates"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List all of the dedicated IP pools that exist in your AWS account in the
  current Region.
  """
  def list_dedicated_ip_pools(client, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v2/email/dedicated-ip-pools"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Show a list of the predictive inbox placement tests that you've performed,
  regardless of their statuses. For predictive inbox placement tests that are
  complete, you can use the `GetDeliverabilityTestReport` operation to view
  the results.
  """
  def list_deliverability_test_reports(client, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard/test-reports"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieve deliverability data for all the campaigns that used a specific
  domain to send email during a specified time range. This data is available
  for a domain only if you enabled the Deliverability dashboard for the
  domain.
  """
  def list_domain_deliverability_campaigns(client, subscribed_domain, end_date, next_token \\ nil, page_size \\ nil, start_date, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard/domains/#{URI.encode(subscribed_domain)}/campaigns"
    headers = []
    query_ = []
    query_ = if !is_nil(start_date) do
      [{"StartDate", start_date} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_date) do
      [{"EndDate", end_date} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns a list of all of the email identities that are associated with your
  AWS account. An identity can be either an email address or a domain. This
  operation returns identities that are verified as well as those that
  aren't. This operation returns identities that are associated with Amazon
  SES and Amazon Pinpoint.
  """
  def list_email_identities(client, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v2/email/identities"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the email templates present in your Amazon SES account in the current
  AWS Region.

  You can execute this operation no more than once per second.
  """
  def list_email_templates(client, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v2/email/templates"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all of the import jobs.
  """
  def list_import_jobs(client, next_token \\ nil, page_size \\ nil, options \\ []) do
    path_ = "/v2/email/import-jobs"
    headers = []
    query_ = []
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of email addresses that are on the suppression list for
  your account.
  """
  def list_suppressed_destinations(client, end_date \\ nil, next_token \\ nil, page_size \\ nil, reasons \\ nil, start_date \\ nil, options \\ []) do
    path_ = "/v2/email/suppression/addresses"
    headers = []
    query_ = []
    query_ = if !is_nil(start_date) do
      [{"StartDate", start_date} | query_]
    else
      query_
    end
    query_ = if !is_nil(reasons) do
      [{"Reason", reasons} | query_]
    else
      query_
    end
    query_ = if !is_nil(page_size) do
      [{"PageSize", page_size} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"NextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(end_date) do
      [{"EndDate", end_date} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieve a list of the tags (keys and values) that are associated with a
  specified resource. A *tag* is a label that you optionally define and
  associate with a resource. Each tag consists of a required *tag key* and an
  optional associated *tag value*. A tag key is a general label that acts as
  a category for more specific tag values. A tag value acts as a descriptor
  within a tag key.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/v2/email/tags"
    headers = []
    query_ = []
    query_ = if !is_nil(resource_arn) do
      [{"ResourceArn", resource_arn} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Enable or disable the automatic warm-up feature for dedicated IP addresses.
  """
  def put_account_dedicated_ip_warmup_attributes(client, input, options \\ []) do
    path_ = "/v2/email/account/dedicated-ips/warmup"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Update your Amazon SES account details.
  """
  def put_account_details(client, input, options \\ []) do
    path_ = "/v2/email/account/details"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enable or disable the ability of your account to send email.
  """
  def put_account_sending_attributes(client, input, options \\ []) do
    path_ = "/v2/email/account/sending"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Change the settings for the account-level suppression list.
  """
  def put_account_suppression_attributes(client, input, options \\ []) do
    path_ = "/v2/email/account/suppression"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associate a configuration set with a dedicated IP pool. You can use
  dedicated IP pools to create groups of dedicated IP addresses for sending
  specific types of email.
  """
  def put_configuration_set_delivery_options(client, configuration_set_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/delivery-options"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enable or disable collection of reputation metrics for emails that you send
  using a particular configuration set in a specific AWS Region.
  """
  def put_configuration_set_reputation_options(client, configuration_set_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/reputation-options"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enable or disable email sending for messages that use a particular
  configuration set in a specific AWS Region.
  """
  def put_configuration_set_sending_options(client, configuration_set_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/sending"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Specify the account suppression list preferences for a configuration set.
  """
  def put_configuration_set_suppression_options(client, configuration_set_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/suppression-options"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Specify a custom domain to use for open and click tracking elements in
  email that you send.
  """
  def put_configuration_set_tracking_options(client, configuration_set_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/tracking-options"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Move a dedicated IP address to an existing dedicated IP pool.

  <note> The dedicated IP address that you specify must already exist, and
  must be associated with your AWS account.

  The dedicated IP pool you specify must already exist. You can create a new
  pool by using the `CreateDedicatedIpPool` operation.

  </note>
  """
  def put_dedicated_ip_in_pool(client, ip, input, options \\ []) do
    path_ = "/v2/email/dedicated-ips/#{URI.encode(ip)}/pool"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  <p/>
  """
  def put_dedicated_ip_warmup_attributes(client, ip, input, options \\ []) do
    path_ = "/v2/email/dedicated-ips/#{URI.encode(ip)}/warmup"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Enable or disable the Deliverability dashboard. When you enable the
  Deliverability dashboard, you gain access to reputation, deliverability,
  and other metrics for the domains that you use to send email. You also gain
  the ability to perform predictive inbox placement tests.

  When you use the Deliverability dashboard, you pay a monthly subscription
  charge, in addition to any other fees that you accrue by using Amazon SES
  and other AWS services. For more information about the features and cost of
  a Deliverability dashboard subscription, see [Amazon SES
  Pricing](http://aws.amazon.com/ses/pricing/).
  """
  def put_deliverability_dashboard_option(client, input, options \\ []) do
    path_ = "/v2/email/deliverability-dashboard"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Used to enable or disable DKIM authentication for an email identity.
  """
  def put_email_identity_dkim_attributes(client, email_identity, input, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}/dkim"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Used to configure or change the DKIM authentication settings for an email
  domain identity. You can use this operation to do any of the following:

  <ul> <li> Update the signing attributes for an identity that uses Bring
  Your Own DKIM (BYODKIM).

  </li> <li> Change from using no DKIM authentication to using Easy DKIM.

  </li> <li> Change from using no DKIM authentication to using BYODKIM.

  </li> <li> Change from using Easy DKIM to using BYODKIM.

  </li> <li> Change from using BYODKIM to using Easy DKIM.

  </li> </ul>
  """
  def put_email_identity_dkim_signing_attributes(client, email_identity, input, options \\ []) do
    path_ = "/v1/email/identities/#{URI.encode(email_identity)}/dkim/signing"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Used to enable or disable feedback forwarding for an identity. This setting
  determines what happens when an identity is used to send an email that
  results in a bounce or complaint event.

  If the value is `true`, you receive email notifications when bounce or
  complaint events occur. These notifications are sent to the address that
  you specified in the `Return-Path` header of the original email.

  You're required to have a method of tracking bounces and complaints. If you
  haven't set up another mechanism for receiving bounce or complaint
  notifications (for example, by setting up an event destination), you
  receive an email notification when these events occur (even if this setting
  is disabled).
  """
  def put_email_identity_feedback_attributes(client, email_identity, input, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}/feedback"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Used to enable or disable the custom Mail-From domain configuration for an
  email identity.
  """
  def put_email_identity_mail_from_attributes(client, email_identity, input, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}/mail-from"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds an email address to the suppression list for your account.
  """
  def put_suppressed_destination(client, input, options \\ []) do
    path_ = "/v2/email/suppression/addresses"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Composes an email message to multiple destinations.
  """
  def send_bulk_email(client, input, options \\ []) do
    path_ = "/v2/email/outbound-bulk-emails"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds an email address to the list of identities for your Amazon SES account
  in the current AWS Region and attempts to verify it. As a result of
  executing this operation, a customized verification email is sent to the
  specified address.

  To use this operation, you must first create a custom verification email
  template. For more information about creating and using custom verification
  email templates, see [Using Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def send_custom_verification_email(client, input, options \\ []) do
    path_ = "/v2/email/outbound-custom-verification-emails"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Sends an email message. You can use the Amazon SES API v2 to send two types
  of messages:

  <ul> <li> **Simple** – A standard email message. When you create this type
  of message, you specify the sender, the recipient, and the message body,
  and Amazon SES assembles the message for you.

  </li> <li> **Raw** – A raw, MIME-formatted email message. When you send
  this type of email, you have to specify all of the message headers, as well
  as the message body. You can use this message type to send messages that
  contain attachments. The message that you specify has to be a valid MIME
  message.

  </li> <li> **Templated** – A message that contains personalization tags.
  When you send this type of email, Amazon SES API v2 automatically replaces
  the tags with values that you specify.

  </li> </ul>
  """
  def send_email(client, input, options \\ []) do
    path_ = "/v2/email/outbound-emails"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Add one or more tags (keys and values) to a specified resource. A *tag* is
  a label that you optionally define and associate with a resource. Tags can
  help you categorize and manage resources in different ways, such as by
  purpose, owner, environment, or other criteria. A resource can have as many
  as 50 tags.

  Each tag consists of a required *tag key* and an associated *tag value*,
  both of which you define. A tag key is a general label that acts as a
  category for more specific tag values. A tag value acts as a descriptor
  within a tag key.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/v2/email/tags"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a preview of the MIME content of an email when provided with a
  template and a set of replacement data.

  You can execute this operation no more than once per second.
  """
  def test_render_email_template(client, template_name, input, options \\ []) do
    path_ = "/v2/email/templates/#{URI.encode(template_name)}/render"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Remove one or more tags (keys and values) from a specified resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/v2/email/tags"
    headers = []
    {query_, input} =
      [
        {"ResourceArn", "ResourceArn"},
        {"TagKeys", "TagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Update the configuration of an event destination for a configuration set.

  *Events* include message sends, deliveries, opens, clicks, bounces, and
  complaints. *Event destinations* are places that you can send information
  about these events to. For example, you can send event data to Amazon SNS
  to receive notifications when you receive bounces or complaints, or you can
  use Amazon Kinesis Data Firehose to stream data to Amazon S3 for long-term
  storage.
  """
  def update_configuration_set_event_destination(client, configuration_set_name, event_destination_name, input, options \\ []) do
    path_ = "/v2/email/configuration-sets/#{URI.encode(configuration_set_name)}/event-destinations/#{URI.encode(event_destination_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an existing custom verification email template.

  For more information about custom verification email templates, see [Using
  Custom Verification Email
  Templates](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-verify-address-custom.html)
  in the *Amazon SES Developer Guide*.

  You can execute this operation no more than once per second.
  """
  def update_custom_verification_email_template(client, template_name, input, options \\ []) do
    path_ = "/v2/email/custom-verification-email-templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the specified sending authorization policy for the given identity
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
  def update_email_identity_policy(client, email_identity, policy_name, input, options \\ []) do
    path_ = "/v2/email/identities/#{URI.encode(email_identity)}/policies/#{URI.encode(policy_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates an email template. Email templates enable you to send personalized
  email to one or more destinations in a single API operation. For more
  information, see the [Amazon SES Developer
  Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html).

  You can execute this operation no more than once per second.
  """
  def update_email_template(client, template_name, input, options \\ []) do
    path_ = "/v2/email/templates/#{URI.encode(template_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "ses"}
    host = build_host("email", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
