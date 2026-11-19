# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AbuseSignal do
  @moduledoc """
  Amazon Web Services Abuse Signal

  Amazon Web Services Abuse Signal API provides programmatic means to report
  suspected abuse of Amazon Web Services resources.

  You can use the API to submit abuse reports about Amazon Web Services resources
  and to track the status of your reports. Amazon Web Services Trust & Safety uses
  the information that you provide to investigate and try to resolve the incident
  that you reported.

  You submit reports in the eXtended Abuse Reporting Format (XARF), an open
  standard for structured abuse reporting. For more information, see [XARF on the XARF website](https://xarf.org/docs/introduction/). Reports can cover a wide
  range of abuse categories, including spam, phishing, distributed denial of
  service (DDoS), malware distribution, and copyright infringement.

  With the Amazon Web Services Abuse Signal API, you can:

    * **Submit abuse reports** – Create structured abuse reports by
  using the XARF format, with full support for all XARF v4 report types.

    * **Track report status** – Monitor the processing status of
  submitted reports, from submission through resolution.

    * **List and filter reports** – Retrieve the status of all reports,
  with optional filtering by correlation ID.

    * **Retry submissions safely** – Safely retry report submissions
  without creating duplicates by using client tokens.

  **Cross-Region data residency:** By submitting a report, you instruct Amazon Web
  Services to store it in all supported Regions (`us-east-1`, `us-west-2`, and
  `eu-west-2`), including across the United States and Europe. If data must remain
  in a single Region, do not include it in the report.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_abuse_report_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("correlationId") => String.t() | atom(),
        required("report") => list()
      }

  """
  @type create_abuse_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_abuse_report_response() :: %{
        "correlationId" => String.t() | atom(),
        "reportId" => String.t() | atom()
      }

  """
  @type create_abuse_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_abuse_report_status_request() :: %{}

  """
  @type get_abuse_report_status_request() :: %{}

  @typedoc """

  ## Example:

      get_abuse_report_status_response() :: %{
        "correlationId" => String.t() | atom(),
        "description" => [String.t() | atom()],
        "lastUpdatedAt" => [non_neg_integer()],
        "reasonCode" => list(any()),
        "reportId" => String.t() | atom(),
        "status" => list(any()),
        "submittedAt" => [non_neg_integer()]
      }

  """
  @type get_abuse_report_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_abuse_report_statuses_request() :: %{
        optional("correlationId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_abuse_report_statuses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_abuse_report_statuses_response() :: %{
        "nextToken" => String.t() | atom(),
        "reports" => list(report_status_list_item())
      }

  """
  @type list_abuse_report_statuses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      report_status_list_item() :: %{
        "correlationId" => String.t() | atom(),
        "description" => [String.t() | atom()],
        "reasonCode" => list(any()),
        "reportId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type report_status_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      submission_requirement() :: %{
        "code" => [String.t() | atom()],
        "message" => [String.t() | atom()],
        "path" => [String.t() | atom()]
      }

  """
  @type submission_requirement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      submission_requirement_exception() :: %{
        "message" => [String.t() | atom()],
        "unmetRequirements" => list(submission_requirement())
      }

  """
  @type submission_requirement_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "path" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type create_abuse_report_errors() :: submission_requirement_exception() | conflict_exception()

  @type get_abuse_report_status_errors() :: resource_not_found_exception()

  def metadata do
    %{
      api_version: "2026-01-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "abuse",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Abuse Signal",
      signature_version: "aws.auth#sigv4",
      signing_name: "abuse",
      target_prefix: nil
    }
  end

  @doc """
  Submits a structured report.

  Amazon Web Services validates it and returns a report ID. A successful response
  confirms that Amazon Web Services received your report. It doesn't mean that
  Amazon Web Services has reached an outcome. Use `GetAbuseReportStatus` with the
  report ID to check the report's status and outcome.

  This operation is idempotent within a time window. If you provide a
  `clientToken`, duplicate requests within 24 hours return the existing report ID.
  If you omit it, the service generates a token scoped to 5 minutes.

  **Cross-Region data residency:** By submitting a report, you instruct Amazon Web
  Services to store it in all supported Regions (`us-east-1`, `us-west-2`, and
  `eu-west-2`), including across the United States and Europe. If data must remain
  in a single Region, do not include it in the report.
  """
  @spec create_abuse_report(map(), create_abuse_report_request(), list()) ::
          {:ok, create_abuse_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_abuse_report_errors()}
  def create_abuse_report(%Client{} = client, input, options \\ []) do
    url_path = "/v1/abuse"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Retrieves the current processing status of a previously submitted abuse report,
  including the status, submission timestamp, and last-update time.

  You can poll this operation to track the report's status. `PROCESSING` confirms
  that Amazon Web Services received your report and is processing it. `COMPLETED`
  means Amazon Web Services finished resolving the report, and the response
  includes a `reasonCode`. The time to reach `COMPLETED` may vary and can take up
  to several days depending on the scope and complexity of the suspected abuse.

  `COMPLETED` is the only terminal status. To wait for a report, use the
  `ReportProcessing` waiter, which succeeds when the report reaches `PROCESSING`
  or `COMPLETED`. If you poll this operation yourself, wait 1–5 seconds between
  calls.
  """
  @spec get_abuse_report_status(map(), String.t() | atom(), list()) ::
          {:ok, get_abuse_report_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_abuse_report_status_errors()}
  def get_abuse_report_status(%Client{} = client, report_id, options \\ []) do
    url_path = "/v1/abuse/#{AWS.Util.encode_uri(report_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists abuse report statuses for the calling account, ordered by submission time,
  with optional filtering and pagination.

  Use the `correlationId` parameter to filter results by the reporter-provided
  correlation ID that was specified during report submission.

  Results are paginated. Use `nextToken` to retrieve additional results.
  """
  @spec list_abuse_report_statuses(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_abuse_report_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_abuse_report_statuses(
        %Client{} = client,
        correlation_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/abusestatuses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(correlation_id) do
        [{"correlationId", correlation_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end
end
