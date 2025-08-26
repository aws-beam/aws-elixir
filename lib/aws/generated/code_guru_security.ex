# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruSecurity do
  @moduledoc """
  On November 20, 2025, AWS will discontinue support for Amazon CodeGuru Security.

  After November 20, 2025, you will no longer be able to access the
  /codeguru/security console, service resources, or documentation. For more
  information, see
  [https://docs.aws.amazon.com/codeguru/latest/security-ug/end-of-support.html](https://docs.aws.amazon.com/codeguru/latest/security-ug/end-of-support.html). 
  This section provides documentation for the Amazon CodeGuru Security API
  operations. CodeGuru Security is a service that uses program analysis and
  machine learning to detect security policy violations and vulnerabilities, and
  recommends ways to address these security risks.

  By proactively detecting and providing recommendations for addressing security
  risks, CodeGuru Security improves the overall security of your application code.
  For more information about CodeGuru Security, see the [Amazon CodeGuru Security
  User
  Guide](https://docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_scans_response() :: %{
        "nextToken" => String.t() | atom(),
        "summaries" => list(scan_summary())
      }

  """
  @type list_scans_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_scans_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_scans_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_identifier() :: %{
        "findingId" => [String.t() | atom()],
        "scanName" => [String.t() | atom()]
      }

  """
  @type finding_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_config() :: %{
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type encryption_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suggested_fix() :: %{
        "code" => [String.t() | atom()],
        "description" => [String.t() | atom()]
      }

  """
  @type suggested_fix() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vulnerability() :: %{
        "filePath" => file_path(),
        "id" => [String.t() | atom()],
        "itemCount" => [integer()],
        "referenceUrls" => list([String.t() | atom()]()),
        "relatedVulnerabilities" => list([String.t() | atom()]())
      }

  """
  @type vulnerability() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding_metrics_value_per_severity() :: %{
        "critical" => [float()],
        "high" => [float()],
        "info" => [float()],
        "low" => [float()],
        "medium" => [float()]
      }

  """
  @type finding_metrics_value_per_severity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_scan_response() :: %{
        "analysisType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "errorMessage" => String.t() | atom(),
        "numberOfRevisions" => [float()],
        "runId" => String.t() | atom(),
        "scanName" => String.t() | atom(),
        "scanNameArn" => String.t() | atom(),
        "scanState" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_scan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remediation() :: %{
        "recommendation" => recommendation(),
        "suggestedFixes" => list(suggested_fix())
      }

  """
  @type remediation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      category_with_finding_num() :: %{
        "categoryName" => [String.t() | atom()],
        "findingNumber" => [integer()]
      }

  """
  @type category_with_finding_num() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scan_response() :: %{
        "resourceId" => list(),
        "runId" => String.t() | atom(),
        "scanName" => String.t() | atom(),
        "scanNameArn" => String.t() | atom(),
        "scanState" => list(any())
      }

  """
  @type create_scan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_upload_url_response() :: %{
        "codeArtifactId" => String.t() | atom(),
        "requestHeaders" => map(),
        "s3Url" => String.t() | atom()
      }

  """
  @type create_upload_url_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_scan_request() :: %{
        optional("runId") => String.t() | atom()
      }

  """
  @type get_scan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type get_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metrics_summary() :: %{
        "categoriesWithMostFindings" => list(category_with_finding_num()),
        "date" => [non_neg_integer()],
        "openFindings" => finding_metrics_value_per_severity(),
        "scansWithMostOpenCriticalFindings" => list(scan_name_with_finding_num()),
        "scansWithMostOpenFindings" => list(scan_name_with_finding_num())
      }

  """
  @type metrics_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_metrics_summary_response() :: %{
        "metricsSummary" => metrics_summary()
      }

  """
  @type get_metrics_summary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_name_with_finding_num() :: %{
        "findingNumber" => [integer()],
        "scanName" => [String.t() | atom()]
      }

  """
  @type scan_name_with_finding_num() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_metrics_response() :: %{
        "findingsMetrics" => list(account_findings_metric()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_findings_metrics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_findings_response() :: %{
        "failedFindings" => list(batch_get_findings_error()),
        "findings" => list(finding())
      }

  """
  @type batch_get_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "errorCode" => [String.t() | atom()],
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "errorCode" => [String.t() | atom()],
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_findings_error() :: %{
        "errorCode" => list(any()),
        "findingId" => [String.t() | atom()],
        "message" => [String.t() | atom()],
        "scanName" => String.t() | atom()
      }

  """
  @type batch_get_findings_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_findings_response() :: %{
        "findings" => list(finding()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_findings_metrics_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("endDate") => [non_neg_integer()],
        required("startDate") => [non_neg_integer()]
      }

  """
  @type list_findings_metrics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_line() :: %{
        "content" => [String.t() | atom()],
        "number" => [integer()]
      }

  """
  @type code_line() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "text" => [String.t() | atom()],
        "url" => [String.t() | atom()]
      }

  """
  @type recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_metrics_summary_request() :: %{
        required("date") => [non_neg_integer()]
      }

  """
  @type get_metrics_summary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_configuration_response() :: %{
        "encryptionConfig" => encryption_config()
      }

  """
  @type get_account_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      finding() :: %{
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "detectorId" => [String.t() | atom()],
        "detectorName" => [String.t() | atom()],
        "detectorTags" => list([String.t() | atom()]()),
        "generatorId" => [String.t() | atom()],
        "id" => [String.t() | atom()],
        "remediation" => remediation(),
        "resource" => resource(),
        "ruleId" => [String.t() | atom()],
        "severity" => list(any()),
        "status" => list(any()),
        "title" => [String.t() | atom()],
        "type" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()],
        "vulnerability" => vulnerability()
      }

  """
  @type finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_upload_url_request() :: %{
        required("scanName") => String.t() | atom()
      }

  """
  @type create_upload_url_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_findings_request() :: %{
        required("findingIdentifiers") => list(finding_identifier())
      }

  """
  @type batch_get_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "error" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_scan_request() :: %{
        optional("analysisType") => list(any()),
        optional("clientToken") => String.t() | atom(),
        optional("scanType") => list(any()),
        optional("tags") => map(),
        required("resourceId") => list(),
        required("scanName") => String.t() | atom()
      }

  """
  @type create_scan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "errorCode" => [String.t() | atom()],
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "errorCode" => [String.t() | atom()],
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      file_path() :: %{
        "codeSnippet" => list(code_line()),
        "endLine" => [integer()],
        "name" => [String.t() | atom()],
        "path" => [String.t() | atom()],
        "startLine" => [integer()]
      }

  """
  @type file_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "errorCode" => [String.t() | atom()],
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scan_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "runId" => String.t() | atom(),
        "scanName" => String.t() | atom(),
        "scanNameArn" => String.t() | atom(),
        "scanState" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type scan_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_configuration_response() :: %{
        "encryptionConfig" => encryption_config()
      }

  """
  @type update_account_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_findings_metric() :: %{
        "closedFindings" => finding_metrics_value_per_severity(),
        "date" => [non_neg_integer()],
        "meanTimeToClose" => finding_metrics_value_per_severity(),
        "newFindings" => finding_metrics_value_per_severity(),
        "openFindings" => finding_metrics_value_per_severity()
      }

  """
  @type account_findings_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_account_configuration_request() :: %{
        required("encryptionConfig") => encryption_config()
      }

  """
  @type update_account_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_configuration_request() :: %{}

  """
  @type get_account_configuration_request() :: %{}

  @typedoc """

  ## Example:

      resource() :: %{
        "id" => [String.t() | atom()],
        "subResourceId" => [String.t() | atom()]
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @type batch_get_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type create_scan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_upload_url_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_account_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_findings_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_metrics_summary_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_scan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_findings_metrics_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_scans_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_account_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-security",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "CodeGuru Security",
      signature_version: "v4",
      signing_name: "codeguru-security",
      target_prefix: nil
    }
  end

  @doc """
  Returns a list of requested findings from standard scans.
  """
  @spec batch_get_findings(map(), batch_get_findings_request(), list()) ::
          {:ok, batch_get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_findings_errors()}
  def batch_get_findings(%Client{} = client, input, options \\ []) do
    url_path = "/batchGetFindings"
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
      200
    )
  end

  @doc """
  Use to create a scan using code uploaded to an Amazon S3 bucket.
  """
  @spec create_scan(map(), create_scan_request(), list()) ::
          {:ok, create_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_scan_errors()}
  def create_scan(%Client{} = client, input, options \\ []) do
    url_path = "/scans"
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
      200
    )
  end

  @doc """
  Generates a pre-signed URL, request headers used to upload a code resource, and
  code artifact identifier for the uploaded resource.

  You can upload your code resource to the URL with the request headers using any
  HTTP client.
  """
  @spec create_upload_url(map(), create_upload_url_request(), list()) ::
          {:ok, create_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_upload_url_errors()}
  def create_upload_url(%Client{} = client, input, options \\ []) do
    url_path = "/uploadUrl"
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
      200
    )
  end

  @doc """
  Use to get the encryption configuration for an account.
  """
  @spec get_account_configuration(map(), list()) ::
          {:ok, get_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_configuration_errors()}
  def get_account_configuration(%Client{} = client, options \\ []) do
    url_path = "/accountConfiguration/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all findings generated by a particular scan.
  """
  @spec get_findings(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_findings_errors()}
  def get_findings(
        %Client{} = client,
        scan_name,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/findings/#{AWS.Util.encode_uri(scan_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a summary of metrics for an account from a specified date, including
  number of open findings, the categories with most findings, the scans with most
  open findings, and scans with most open critical findings.
  """
  @spec get_metrics_summary(map(), String.t() | atom(), list()) ::
          {:ok, get_metrics_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_metrics_summary_errors()}
  def get_metrics_summary(%Client{} = client, date, options \\ []) do
    url_path = "/metrics/summary"
    headers = []
    query_params = []

    query_params =
      if !is_nil(date) do
        [{"date", date} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a scan, including whether or not a scan has completed.
  """
  @spec get_scan(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_scan_errors()}
  def get_scan(%Client{} = client, scan_name, run_id \\ nil, options \\ []) do
    url_path = "/scans/#{AWS.Util.encode_uri(scan_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(run_id) do
        [{"runId", run_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metrics about all findings in an account within a specified time range.
  """
  @spec list_findings_metrics(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_findings_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_findings_metrics_errors()}
  def list_findings_metrics(
        %Client{} = client,
        end_date,
        max_results \\ nil,
        next_token \\ nil,
        start_date,
        options \\ []
      ) do
    url_path = "/metrics/findings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(start_date) do
        [{"startDate", start_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
      if !is_nil(end_date) do
        [{"endDate", end_date} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all scans in an account.

  Does not return `EXPRESS` scans.
  """
  @spec list_scans(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_scans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_scans_errors()}
  def list_scans(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/scans"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all tags associated with a scan.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use to add one or more tags to an existing scan.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Use to remove one or more tags from an existing scan.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Use to update the encryption configuration for an account.
  """
  @spec update_account_configuration(map(), update_account_configuration_request(), list()) ::
          {:ok, update_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_account_configuration_errors()}
  def update_account_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateAccountConfiguration"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
