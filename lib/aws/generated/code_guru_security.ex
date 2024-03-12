# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeGuruSecurity do
  @moduledoc """

  Amazon CodeGuru Security is in preview release and is subject to
  change.

  This section provides documentation for the Amazon CodeGuru Security API
  operations.
  CodeGuru Security is a service that uses program analysis and machine learning
  to detect
  security policy violations and vulnerabilities, and recommends ways to address
  these security
  risks.

  By proactively detecting and providing recommendations for addressing security
  risks,
  CodeGuru Security improves the overall security of your application code. For
  more information
  about CodeGuru Security, see the
  [Amazon CodeGuru Security User Guide](https://docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  list_scans_response() :: %{
    "nextToken" => String.t(),
    "summaries" => list(scan_summary()())
  }
  """
  @type list_scans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_scans_request() :: %{
    optional("maxResults") => [integer()],
    optional("nextToken") => String.t()
  }
  """
  @type list_scans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  finding_identifier() :: %{
    "findingId" => [String.t()],
    "scanName" => [String.t()]
  }
  """
  @type finding_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  encryption_config() :: %{
    "kmsKeyArn" => String.t()
  }
  """
  @type encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  suggested_fix() :: %{
    "code" => [String.t()],
    "description" => [String.t()]
  }
  """
  @type suggested_fix() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  vulnerability() :: %{
    "filePath" => file_path(),
    "id" => [String.t()],
    "itemCount" => [integer()],
    "referenceUrls" => list([String.t()]()),
    "relatedVulnerabilities" => list([String.t()]())
  }
  """
  @type vulnerability() :: %{String.t() => any()}

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
  @type finding_metrics_value_per_severity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_scan_response() :: %{
    "analysisType" => list(any()),
    "createdAt" => [non_neg_integer()],
    "numberOfRevisions" => [float()],
    "runId" => String.t(),
    "scanName" => String.t(),
    "scanNameArn" => String.t(),
    "scanState" => list(any()),
    "updatedAt" => [non_neg_integer()]
  }
  """
  @type get_scan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remediation() :: %{
    "recommendation" => recommendation(),
    "suggestedFixes" => list(suggested_fix()())
  }
  """
  @type remediation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  category_with_finding_num() :: %{
    "categoryName" => [String.t()],
    "findingNumber" => [integer()]
  }
  """
  @type category_with_finding_num() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_scan_response() :: %{
    "resourceId" => list(),
    "runId" => String.t(),
    "scanName" => String.t(),
    "scanNameArn" => String.t(),
    "scanState" => list(any())
  }
  """
  @type create_scan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_upload_url_response() :: %{
    "codeArtifactId" => String.t(),
    "requestHeaders" => map(),
    "s3Url" => String.t()
  }
  """
  @type create_upload_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_scan_request() :: %{
    optional("runId") => String.t()
  }
  """
  @type get_scan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_findings_request() :: %{
    optional("maxResults") => [integer()],
    optional("nextToken") => String.t(),
    optional("status") => list(any())
  }
  """
  @type get_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  metrics_summary() :: %{
    "categoriesWithMostFindings" => list(category_with_finding_num()()),
    "date" => [non_neg_integer()],
    "openFindings" => finding_metrics_value_per_severity(),
    "scansWithMostOpenCriticalFindings" => list(scan_name_with_finding_num()()),
    "scansWithMostOpenFindings" => list(scan_name_with_finding_num()())
  }
  """
  @type metrics_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_metrics_summary_response() :: %{
    "metricsSummary" => metrics_summary()
  }
  """
  @type get_metrics_summary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("tagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  scan_name_with_finding_num() :: %{
    "findingNumber" => [integer()],
    "scanName" => [String.t()]
  }
  """
  @type scan_name_with_finding_num() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_findings_metrics_response() :: %{
    "findingsMetrics" => list(account_findings_metric()()),
    "nextToken" => String.t()
  }
  """
  @type list_findings_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_findings_response() :: %{
    "failedFindings" => list(batch_get_findings_error()()),
    "findings" => list(finding()())
  }
  """
  @type batch_get_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "errorCode" => [String.t()],
    "message" => [String.t()],
    "resourceId" => [String.t()],
    "resourceType" => [String.t()]
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "errorCode" => [String.t()],
    "message" => [String.t()],
    "resourceId" => [String.t()],
    "resourceType" => [String.t()]
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_findings_error() :: %{
    "errorCode" => list(any()),
    "findingId" => [String.t()],
    "message" => [String.t()],
    "scanName" => String.t()
  }
  """
  @type batch_get_findings_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_findings_response() :: %{
    "findings" => list(finding()()),
    "nextToken" => String.t()
  }
  """
  @type get_findings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_findings_metrics_request() :: %{
    optional("maxResults") => [integer()],
    optional("nextToken") => String.t(),
    required("endDate") => [non_neg_integer()],
    required("startDate") => [non_neg_integer()]
  }
  """
  @type list_findings_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  code_line() :: %{
    "content" => [String.t()],
    "number" => [integer()]
  }
  """
  @type code_line() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  recommendation() :: %{
    "text" => [String.t()],
    "url" => [String.t()]
  }
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_metrics_summary_request() :: %{
    required("date") => [non_neg_integer()]
  }
  """
  @type get_metrics_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_account_configuration_response() :: %{
    "encryptionConfig" => encryption_config()
  }
  """
  @type get_account_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  finding() :: %{
    "createdAt" => [non_neg_integer()],
    "description" => [String.t()],
    "detectorId" => [String.t()],
    "detectorName" => [String.t()],
    "detectorTags" => list([String.t()]()),
    "generatorId" => [String.t()],
    "id" => [String.t()],
    "remediation" => remediation(),
    "resource" => resource(),
    "ruleId" => [String.t()],
    "severity" => list(any()),
    "status" => list(any()),
    "title" => [String.t()],
    "type" => [String.t()],
    "updatedAt" => [non_neg_integer()],
    "vulnerability" => vulnerability()
  }
  """
  @type finding() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_upload_url_request() :: %{
    required("scanName") => String.t()
  }
  """
  @type create_upload_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_findings_request() :: %{
    required("findingIdentifiers") => list(finding_identifier()())
  }
  """
  @type batch_get_findings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception_field() :: %{
    "message" => [String.t()],
    "name" => [String.t()]
  }
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "error" => [String.t()],
    "message" => [String.t()]
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_scan_request() :: %{
    optional("analysisType") => list(any()),
    optional("clientToken") => String.t(),
    optional("scanType") => list(any()),
    optional("tags") => map(),
    required("resourceId") => list(),
    required("scanName") => String.t()
  }
  """
  @type create_scan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "errorCode" => [String.t()],
    "message" => [String.t()],
    "resourceId" => [String.t()],
    "resourceType" => [String.t()]
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "errorCode" => [String.t()],
    "fieldList" => list(validation_exception_field()()),
    "message" => [String.t()],
    "reason" => list(any())
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  file_path() :: %{
    "codeSnippet" => list(code_line()()),
    "endLine" => [integer()],
    "name" => [String.t()],
    "path" => [String.t()],
    "startLine" => [integer()]
  }
  """
  @type file_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "errorCode" => [String.t()],
    "message" => [String.t()],
    "quotaCode" => [String.t()],
    "serviceCode" => [String.t()]
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  scan_summary() :: %{
    "createdAt" => [non_neg_integer()],
    "runId" => String.t(),
    "scanName" => String.t(),
    "scanNameArn" => String.t(),
    "scanState" => list(any()),
    "updatedAt" => [non_neg_integer()]
  }
  """
  @type scan_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_account_configuration_response() :: %{
    "encryptionConfig" => encryption_config()
  }
  """
  @type update_account_configuration_response() :: %{String.t() => any()}

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
  @type account_findings_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_account_configuration_request() :: %{
    required("encryptionConfig") => encryption_config()
  }
  """
  @type update_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_account_configuration_request() :: %{

  }
  """
  @type get_account_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource() :: %{
    "id" => [String.t()],
    "subResourceId" => [String.t()]
  }
  """
  @type resource() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codeguru-security",
      global?: false,
      protocol: "rest-json",
      service_id: "CodeGuru Security",
      signature_version: "v4",
      signing_name: "codeguru-security",
      target_prefix: nil
    }
  end

  @doc """
  Returns a list of all requested findings.
  """
  @spec batch_get_findings(map(), batch_get_findings_request(), list()) ::
          {:ok, batch_get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def batch_get_findings(%Client{} = client, input, options \\ []) do
    url_path = "/batchGetFindings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use to create a scan using code uploaded to an S3 bucket.
  """
  @spec create_scan(map(), create_scan_request(), list()) ::
          {:ok, create_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_scan(%Client{} = client, input, options \\ []) do
    url_path = "/scans"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Generates a pre-signed URL and request headers used to upload a code resource.

  You can upload your code resource to the URL and add the request headers using
  any HTTP
  client.
  """
  @spec create_upload_url(map(), create_upload_url_request(), list()) ::
          {:ok, create_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def create_upload_url(%Client{} = client, input, options \\ []) do
    url_path = "/uploadUrl"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Use to get account level configuration.
  """
  @spec get_account_configuration(map(), list()) ::
          {:ok, get_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  Returns top level metrics about an account from a specified date, including
  number of open
  findings, the categories with most findings, the scans with most open findings,
  and scans with
  most open critical findings.
  """
  @spec get_metrics_summary(map(), String.t(), list()) ::
          {:ok, get_metrics_summary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec get_scan(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_scan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_findings_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  Returns a list of all the standard scans in an account.

  Does not return express
  scans.
  """
  @spec list_scans(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_scans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
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
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Use to remove one or more tags from an existing scan.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Use to update account-level configuration with an encryption key.
  """
  @spec update_account_configuration(map(), update_account_configuration_request(), list()) ::
          {:ok, update_account_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, throttling_exception()}
          | {:error, validation_exception()}
  def update_account_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateAccountConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
