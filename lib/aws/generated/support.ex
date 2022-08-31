# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Support do
  @moduledoc """
  Amazon Web Services Support

  The *Amazon Web Services Support API Reference* is intended for programmers who
  need detailed information about the Amazon Web Services Support operations and
  data types.

  You can use the API to manage your support cases programmatically. The Amazon
  Web Services Support API uses HTTP methods that return results in JSON format.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

  The Amazon Web Services Support service also exposes a set of [Trusted Advisor](http://aws.amazon.com/premiumsupport/trustedadvisor/) features. You can
  retrieve a list of checks and their descriptions, get check results, specify
  checks to refresh, and get the refresh status of checks.

  The following list describes the Amazon Web Services Support case management
  operations:

    * Service names, issue categories, and available severity levels -
  The `DescribeServices` and `DescribeSeverityLevels` operations return Amazon Web
  Services service names, service codes, service categories, and problem severity
  levels. You use these values when you call the `CreateCase` operation.

    * Case creation, case details, and case resolution - The
  `CreateCase`, `DescribeCases`, `DescribeAttachment`, and `ResolveCase`
  operations create Amazon Web Services Support cases, retrieve information about
  cases, and resolve cases.

    * Case communication - The `DescribeCommunications`,
  `AddCommunicationToCase`, and `AddAttachmentsToSet` operations retrieve and add
  communications and attachments to Amazon Web Services Support cases.

  The following list describes the operations available from the Amazon Web
  Services Support service for Trusted Advisor:

    * `DescribeTrustedAdvisorChecks` returns the list of checks that run
  against your Amazon Web Services resources.

    * Using the `checkId` for a specific check returned by
  `DescribeTrustedAdvisorChecks`, you can call `DescribeTrustedAdvisorCheckResult`
  to obtain the results for the check that you specified.

    * `DescribeTrustedAdvisorCheckSummaries` returns summarized results
  for one or more Trusted Advisor checks.

    * `RefreshTrustedAdvisorCheck` requests that Trusted Advisor rerun a
  specified check.

    * `DescribeTrustedAdvisorCheckRefreshStatuses` reports the refresh
  status of one or more checks.

  For authentication of requests, Amazon Web Services Support uses [Signature Version 4 Signing
  Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  See [About the Amazon Web Services Support API](https://docs.aws.amazon.com/awssupport/latest/user/Welcome.html) in the
  *Amazon Web Services Support User Guide* for information about how to use this
  service to create and manage your support cases, and how to call Trusted Advisor
  for results of checks on your resources.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2013-04-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "support",
      global?: false,
      protocol: "json",
      service_id: "Support",
      signature_version: "v4",
      signing_name: "support",
      target_prefix: "AWSSupport_20130415"
    }
  end

  @doc """
  Adds one or more attachments to an attachment set.

  An attachment set is a temporary container for attachments that you add to a
  case or case communication. The set is available for 1 hour after it's created.
  The `expiryTime` returned in the response is when the set expires.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def add_attachments_to_set(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddAttachmentsToSet", input, options)
  end

  @doc """
  Adds additional customer communication to an Amazon Web Services Support case.

  Use the `caseId` parameter to identify the case to which to add communication.
  You can list a set of email addresses to copy on the communication by using the
  `ccEmailAddresses` parameter. The `communicationBody` value contains the text of
  the communication.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def add_communication_to_case(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddCommunicationToCase", input, options)
  end

  @doc """
  Creates a case in the Amazon Web Services Support Center.

  This operation is similar to how you create a case in the Amazon Web Services
  Support Center [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.

  The Amazon Web Services Support API doesn't support requesting service limit
  increases. You can submit a service limit increase in the following ways:

    * Submit a request from the Amazon Web Services Support Center
  [Create Case](https://console.aws.amazon.com/support/home#/case/create) page.     * Use the Service Quotas
  [RequestServiceQuotaIncrease](https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html)
  operation.

  A successful `CreateCase` request returns an Amazon Web Services Support case
  number. You can use the `DescribeCases` operation and specify the case number to
  get existing Amazon Web Services Support cases. After you create a case, use the
  `AddCommunicationToCase` operation to add additional communication or
  attachments to an existing case.

  The `caseId` is separate from the `displayId` that appears in the [Amazon Web Services Support Center](https://console.aws.amazon.com/support). Use the
  `DescribeCases` operation to get the `displayId`.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def create_case(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateCase", input, options)
  end

  @doc """
  Returns the attachment that has the specified ID.

  Attachments can include screenshots, error logs, or other files that describe
  your issue. Attachment IDs are generated by the case management system when you
  add an attachment to a case or case communication. Attachment IDs are returned
  in the `AttachmentDetails` objects that are returned by the
  `DescribeCommunications` operation.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def describe_attachment(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAttachment", input, options)
  end

  @doc """
  Returns a list of cases that you specify by passing one or more case IDs.

  You can use the `afterTime` and `beforeTime` parameters to filter the cases by
  date. You can set values for the `includeResolvedCases` and
  `includeCommunications` parameters to specify how much information to return.

  The response returns the following in JSON format:

    * One or more
  [CaseDetails](https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html) data types.

    * One or more `nextToken` values, which specify where to paginate
  the returned records represented by the `CaseDetails` objects.

  Case data is available for 12 months after creation. If a case was created more
  than 12 months ago, a request might return an error.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services
  Support](http://aws.amazon.com/premiumsupport/).
  """
  def describe_cases(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCases", input, options)
  end

  @doc """
  Returns communications and attachments for one or more support cases.

  Use the `afterTime` and `beforeTime` parameters to filter by date. You can use
  the `caseId` parameter to restrict the results to a specific case.

  Case data is available for 12 months after creation. If a case was created more
  than 12 months ago, a request for data might cause an error.

  You can use the `maxResults` and `nextToken` parameters to control the
  pagination of the results. Set `maxResults` to the number of cases that you want
  to display on each page, and use `nextToken` to specify the resumption of
  pagination.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def describe_communications(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCommunications", input, options)
  end

  @doc """
  Returns the current list of Amazon Web Services services and a list of service
  categories for each service.

  You then use service names and categories in your `CreateCase` requests. Each
  Amazon Web Services service has its own set of categories.

  The service codes and category codes correspond to the values that appear in the
  **Service** and **Category** lists on the Amazon Web Services Support Center
  [Create Case](https://console.aws.amazon.com/support/home#/case/create) page. The values in those fields don't necessarily match the service codes and
  categories returned by the `DescribeServices` operation. Always use the service
  codes and categories that the `DescribeServices` operation returns, so that you
  have the most recent set of service and category codes.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services
  Support](http://aws.amazon.com/premiumsupport/).
  """
  def describe_services(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeServices", input, options)
  end

  @doc """
  Returns the list of severity levels that you can assign to a support case.

  The severity level for a case is also a field in the `CaseDetails` data type
  that you include for a `CreateCase` request.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def describe_severity_levels(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSeverityLevels", input, options)
  end

  @doc """
  Returns the refresh status of the Trusted Advisor checks that have the specified
  check IDs.

  You can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  Some checks are refreshed automatically, and you can't return their refresh
  statuses by using the `DescribeTrustedAdvisorCheckRefreshStatuses` operation. If
  you call this operation for these checks, you might see an
  `InvalidParameterValue` error.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def describe_trusted_advisor_check_refresh_statuses(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeTrustedAdvisorCheckRefreshStatuses",
      input,
      options
    )
  end

  @doc """
  Returns the results of the Trusted Advisor check that has the specified check
  ID.

  You can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  The response contains a `TrustedAdvisorCheckResult` object, which contains these
  three objects:

    * `TrustedAdvisorCategorySpecificSummary`

    * `TrustedAdvisorResourceDetail`

    * `TrustedAdvisorResourcesSummary`

  In addition, the response contains these fields:

    * **status** - The alert status of the check can be `ok` (green),
  `warning` (yellow), `error` (red), or `not_available`.

    * **timestamp** - The time of the last refresh of the check.

    * **checkId** - The unique identifier for the check.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def describe_trusted_advisor_check_result(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTrustedAdvisorCheckResult", input, options)
  end

  @doc """
  Returns the results for the Trusted Advisor check summaries for the check IDs
  that you specified.

  You can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  The response contains an array of `TrustedAdvisorCheckSummary` objects.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def describe_trusted_advisor_check_summaries(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeTrustedAdvisorCheckSummaries",
      input,
      options
    )
  end

  @doc """
  Returns information about all available Trusted Advisor checks, including the
  name, ID, category, description, and metadata.

  You must specify a language code. The Amazon Web Services Support API currently
  supports English ("en") and Japanese ("ja"). The response contains a
  `TrustedAdvisorCheckDescription` object for each check. You must set the Amazon
  Web Services Region to us-east-1.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).

     The names and descriptions for Trusted Advisor checks are subject
  to change. We recommend that you specify the check ID in your code to uniquely
  identify a check.
  """
  def describe_trusted_advisor_checks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTrustedAdvisorChecks", input, options)
  end

  @doc """
  Refreshes the Trusted Advisor check that you specify using the check ID.

  You can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  Some checks are refreshed automatically. If you call the
  `RefreshTrustedAdvisorCheck` operation to refresh them, you might see the
  `InvalidParameterValue` error.

  The response contains a `TrustedAdvisorCheckRefreshStatus` object.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def refresh_trusted_advisor_check(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RefreshTrustedAdvisorCheck", input, options)
  end

  @doc """
  Resolves a support case.

  This operation takes a `caseId` and returns the initial and final state of the
  case.

     You must have a Business, Enterprise On-Ramp, or Enterprise Support
  plan to use the Amazon Web Services Support API.

     If you call the Amazon Web Services Support API from an account
  that does not have a Business, Enterprise On-Ramp, or Enterprise Support plan,
  the `SubscriptionRequiredException` error message appears. For information about
  changing your support plan, see [Amazon Web Services Support](http://aws.amazon.com/premiumsupport/).
  """
  def resolve_case(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResolveCase", input, options)
  end
end
