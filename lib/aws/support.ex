# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Support do
  @moduledoc """
  AWS Support

  The AWS Support API reference is intended for programmers who need detailed
  information about the AWS Support operations and data types. This service
  enables you to manage your AWS Support cases programmatically. It uses HTTP
  methods that return results in JSON format.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note> The AWS Support service also exposes a set of [AWS
  Trusted Advisor](http://aws.amazon.com/premiumsupport/trustedadvisor/)
  features. You can retrieve a list of checks and their descriptions, get
  check results, specify checks to refresh, and get the refresh status of
  checks.

  The following list describes the AWS Support case management operations:

  <ul> <li> **Service names, issue categories, and available severity levels.
  **The `DescribeServices` and `DescribeSeverityLevels` operations return AWS
  service names, service codes, service categories, and problem severity
  levels. You use these values when you call the `CreateCase` operation.

  </li> <li> **Case creation, case details, and case resolution.** The
  `CreateCase`, `DescribeCases`, `DescribeAttachment`, and `ResolveCase`
  operations create AWS Support cases, retrieve information about cases, and
  resolve cases.

  </li> <li> **Case communication.** The `DescribeCommunications`,
  `AddCommunicationToCase`, and `AddAttachmentsToSet` operations retrieve and
  add communications and attachments to AWS Support cases.

  </li> </ul> The following list describes the operations available from the
  AWS Support service for Trusted Advisor:

  <ul> <li> `DescribeTrustedAdvisorChecks` returns the list of checks that
  run against your AWS resources.

  </li> <li> Using the `checkId` for a specific check returned by
  `DescribeTrustedAdvisorChecks`, you can call
  `DescribeTrustedAdvisorCheckResult` to obtain the results for the check
  that you specified.

  </li> <li> `DescribeTrustedAdvisorCheckSummaries` returns summarized
  results for one or more Trusted Advisor checks.

  </li> <li> `RefreshTrustedAdvisorCheck` requests that Trusted Advisor rerun
  a specified check.

  </li> <li> `DescribeTrustedAdvisorCheckRefreshStatuses` reports the refresh
  status of one or more checks.

  </li> </ul> For authentication of requests, AWS Support uses [Signature
  Version 4 Signing
  Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

  See [About the AWS Support
  API](https://docs.aws.amazon.com/awssupport/latest/user/Welcome.html) in
  the *AWS Support User Guide* for information about how to use this service
  to create and manage your support cases, and how to call Trusted Advisor
  for results of checks on your resources.
  """

  @doc """
  Adds one or more attachments to an attachment set.

  An attachment set is a temporary container for attachments that you add to
  a case or case communication. The set is available for 1 hour after it's
  created. The `expiryTime` returned in the response is when the set expires.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def add_attachments_to_set(client, input, options \\ []) do
    request(client, "AddAttachmentsToSet", input, options)
  end

  @doc """
  Adds additional customer communication to an AWS Support case. Use the
  `caseId` parameter to identify the case to which to add communication. You
  can list a set of email addresses to copy on the communication by using the
  `ccEmailAddresses` parameter. The `communicationBody` value contains the
  text of the communication.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def add_communication_to_case(client, input, options \\ []) do
    request(client, "AddCommunicationToCase", input, options)
  end

  @doc """
  Creates a case in the AWS Support Center. This operation is similar to how
  you create a case in the AWS Support Center [Create
  Case](https://console.aws.amazon.com/support/home#/case/create) page.

  The AWS Support API doesn't support requesting service limit increases. You
  can submit a service limit increase in the following ways:

  <ul> <li> Submit a request from the AWS Support Center [Create
  Case](https://console.aws.amazon.com/support/home#/case/create) page.

  </li> <li> Use the Service Quotas
  [RequestServiceQuotaIncrease](https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_RequestServiceQuotaIncrease.html)
  operation.

  </li> </ul> A successful `CreateCase` request returns an AWS Support case
  number. You can use the `DescribeCases` operation and specify the case
  number to get existing AWS Support cases. After you create a case, use the
  `AddCommunicationToCase` operation to add additional communication or
  attachments to an existing case.

  The `caseId` is separate from the `displayId` that appears in the [AWS
  Support Center](https://console.aws.amazon.com/support). Use the
  `DescribeCases` operation to get the `displayId`.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def create_case(client, input, options \\ []) do
    request(client, "CreateCase", input, options)
  end

  @doc """
  Returns the attachment that has the specified ID. Attachments can include
  screenshots, error logs, or other files that describe your issue.
  Attachment IDs are generated by the case management system when you add an
  attachment to a case or case communication. Attachment IDs are returned in
  the `AttachmentDetails` objects that are returned by the
  `DescribeCommunications` operation.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_attachment(client, input, options \\ []) do
    request(client, "DescribeAttachment", input, options)
  end

  @doc """
  Returns a list of cases that you specify by passing one or more case IDs.
  You can use the `afterTime` and `beforeTime` parameters to filter the cases
  by date. You can set values for the `includeResolvedCases` and
  `includeCommunications` parameters to specify how much information to
  return.

  The response returns the following in JSON format:

  <ul> <li> One or more
  [CaseDetails](https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html)
  data types.

  </li> <li> One or more `nextToken` values, which specify where to paginate
  the returned records represented by the `CaseDetails` objects.

  </li> </ul> Case data is available for 12 months after creation. If a case
  was created more than 12 months ago, a request might return an error.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_cases(client, input, options \\ []) do
    request(client, "DescribeCases", input, options)
  end

  @doc """
  Returns communications and attachments for one or more support cases. Use
  the `afterTime` and `beforeTime` parameters to filter by date. You can use
  the `caseId` parameter to restrict the results to a specific case.

  Case data is available for 12 months after creation. If a case was created
  more than 12 months ago, a request for data might cause an error.

  You can use the `maxResults` and `nextToken` parameters to control the
  pagination of the results. Set `maxResults` to the number of cases that you
  want to display on each page, and use `nextToken` to specify the resumption
  of pagination.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_communications(client, input, options \\ []) do
    request(client, "DescribeCommunications", input, options)
  end

  @doc """
  Returns the current list of AWS services and a list of service categories
  for each service. You then use service names and categories in your
  `CreateCase` requests. Each AWS service has its own set of categories.

  The service codes and category codes correspond to the values that appear
  in the **Service** and **Category** lists on the AWS Support Center [Create
  Case](https://console.aws.amazon.com/support/home#/case/create) page. The
  values in those fields don't necessarily match the service codes and
  categories returned by the `DescribeServices` operation. Always use the
  service codes and categories that the `DescribeServices` operation returns,
  so that you have the most recent set of service and category codes.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_services(client, input, options \\ []) do
    request(client, "DescribeServices", input, options)
  end

  @doc """
  Returns the list of severity levels that you can assign to an AWS Support
  case. The severity level for a case is also a field in the `CaseDetails`
  data type that you include for a `CreateCase` request.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_severity_levels(client, input, options \\ []) do
    request(client, "DescribeSeverityLevels", input, options)
  end

  @doc """
  Returns the refresh status of the AWS Trusted Advisor checks that have the
  specified check IDs. You can get the check IDs by calling the
  `DescribeTrustedAdvisorChecks` operation.

  Some checks are refreshed automatically, and you can't return their refresh
  statuses by using the `DescribeTrustedAdvisorCheckRefreshStatuses`
  operation. If you call this operation for these checks, you might see an
  `InvalidParameterValue` error.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_trusted_advisor_check_refresh_statuses(client, input, options \\ []) do
    request(client, "DescribeTrustedAdvisorCheckRefreshStatuses", input, options)
  end

  @doc """
  Returns the results of the AWS Trusted Advisor check that has the specified
  check ID. You can get the check IDs by calling the
  `DescribeTrustedAdvisorChecks` operation.

  The response contains a `TrustedAdvisorCheckResult` object, which contains
  these three objects:

  <ul> <li> `TrustedAdvisorCategorySpecificSummary`

  </li> <li> `TrustedAdvisorResourceDetail`

  </li> <li> `TrustedAdvisorResourcesSummary`

  </li> </ul> In addition, the response contains these fields:

  <ul> <li> **status** - The alert status of the check: "ok" (green),
  "warning" (yellow), "error" (red), or "not_available".

  </li> <li> **timestamp** - The time of the last refresh of the check.

  </li> <li> **checkId** - The unique identifier for the check.

  </li> </ul> <note> <ul> <li> You must have a Business or Enterprise support
  plan to use the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_trusted_advisor_check_result(client, input, options \\ []) do
    request(client, "DescribeTrustedAdvisorCheckResult", input, options)
  end

  @doc """
  Returns the results for the AWS Trusted Advisor check summaries for the
  check IDs that you specified. You can get the check IDs by calling the
  `DescribeTrustedAdvisorChecks` operation.

  The response contains an array of `TrustedAdvisorCheckSummary` objects.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_trusted_advisor_check_summaries(client, input, options \\ []) do
    request(client, "DescribeTrustedAdvisorCheckSummaries", input, options)
  end

  @doc """
  Returns information about all available AWS Trusted Advisor checks,
  including the name, ID, category, description, and metadata. You must
  specify a language code. The AWS Support API currently supports English
  ("en") and Japanese ("ja"). The response contains a
  `TrustedAdvisorCheckDescription` object for each check. You must set the
  AWS Region to us-east-1.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def describe_trusted_advisor_checks(client, input, options \\ []) do
    request(client, "DescribeTrustedAdvisorChecks", input, options)
  end

  @doc """
  Refreshes the AWS Trusted Advisor check that you specify using the check
  ID. You can get the check IDs by calling the `DescribeTrustedAdvisorChecks`
  operation.

  <note> Some checks are refreshed automatically. If you call the
  `RefreshTrustedAdvisorCheck` operation to refresh them, you might see the
  `InvalidParameterValue` error.

  </note> The response contains a `TrustedAdvisorCheckRefreshStatus` object.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def refresh_trusted_advisor_check(client, input, options \\ []) do
    request(client, "RefreshTrustedAdvisorCheck", input, options)
  end

  @doc """
  Resolves a support case. This operation takes a `caseId` and returns the
  initial and final state of the case.

  <note> <ul> <li> You must have a Business or Enterprise support plan to use
  the AWS Support API.

  </li> <li> If you call the AWS Support API from an account that does not
  have a Business or Enterprise support plan, the
  `SubscriptionRequiredException` error message appears. For information
  about changing your support plan, see [AWS
  Support](http://aws.amazon.com/premiumsupport/).

  </li> </ul> </note>
  """
  def resolve_case(client, input, options \\ []) do
    request(client, "ResolveCase", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "support"}
    host = get_host("support", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSSupport_20130415.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
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
