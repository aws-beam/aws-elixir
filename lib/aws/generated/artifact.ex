# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Artifact do
  @moduledoc """
  This reference provides descriptions of the low-level AWS Artifact Service API.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_compliance_inquiry_metadata_request() :: %{
        required("complianceInquiryId") => String.t() | atom()
      }

  """
  @type get_compliance_inquiry_metadata_request() :: %{(String.t() | atom()) => any()}

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

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_customer_agreements_response() :: %{
        "customerAgreements" => list(customer_agreement_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_customer_agreements_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inquiry_file_content() :: %{
        "content" => [binary()],
        "fileSections" => list(String.t() | atom())
      }

  """
  @type inquiry_file_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_compliance_inquiry_response() :: %{
        "documentPresignedUrl" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type export_compliance_inquiry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_compliance_inquiry_queries_request() :: %{
        required("complianceInquiryId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_compliance_inquiry_queries_request() :: %{(String.t() | atom()) => any()}

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
        "message" => [String.t() | atom()],
        "reason" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_settings_response() :: %{
        "accountSettings" => account_settings()
      }

  """
  @type get_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      report_detail() :: %{
        "acceptanceType" => list(any()),
        "arn" => String.t() | atom(),
        "category" => String.t() | atom(),
        "companyName" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "deletedAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "lastModifiedAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "periodEnd" => non_neg_integer(),
        "periodStart" => non_neg_integer(),
        "productName" => String.t() | atom(),
        "sequenceNumber" => float(),
        "series" => String.t() | atom(),
        "state" => list(any()),
        "statusMessage" => String.t() | atom(),
        "termArn" => String.t() | atom(),
        "uploadState" => list(any()),
        "version" => float()
      }

  """
  @type report_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_report_metadata_request() :: %{
        required("reportId") => String.t() | atom(),
        optional("reportVersion") => float()
      }

  """
  @type get_report_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      customer_agreement_summary() :: %{
        "acceptanceTerms" => list(String.t() | atom()),
        "agreementArn" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "awsAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "effectiveEnd" => non_neg_integer(),
        "effectiveStart" => non_neg_integer(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "organizationArn" => String.t() | atom(),
        "state" => list(any()),
        "terminateTerms" => list(String.t() | atom()),
        "type" => list(any())
      }

  """
  @type customer_agreement_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_report_versions_response() :: %{
        "nextToken" => String.t() | atom(),
        "reports" => list(report_summary())
      }

  """
  @type list_report_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inquiry_summary() :: %{
        "arn" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "id" => String.t() | atom(),
        "inputSource" => list(any()),
        "name" => [String.t() | atom()],
        "status" => list(any()),
        "statusMessage" => list(any())
      }

  """
  @type inquiry_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inquiry_detail() :: %{
        "arn" => [String.t() | atom()],
        "createdAt" => non_neg_integer(),
        "id" => String.t() | atom(),
        "inputSource" => list(any()),
        "name" => [String.t() | atom()],
        "status" => list(any()),
        "statusMessage" => list(any()),
        "supportMode" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type inquiry_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_account_settings_request() :: %{
        optional("notificationSubscriptionStatus") => list(any())
      }

  """
  @type put_account_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_report_response() :: %{
        "documentPresignedUrl" => [String.t() | atom()]
      }

  """
  @type get_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_compliance_inquiry_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("inquiryContent") => list(),
        required("name") => [String.t() | atom()],
        optional("supportMode") => list(any()),
        optional("tags") => map()
      }

  """
  @type create_compliance_inquiry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_reports_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_reports_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_term_for_report_request() :: %{
        required("reportId") => String.t() | atom(),
        optional("reportVersion") => float()
      }

  """
  @type get_term_for_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      report_summary() :: %{
        "acceptanceType" => list(any()),
        "arn" => String.t() | atom(),
        "category" => String.t() | atom(),
        "companyName" => String.t() | atom(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "periodEnd" => non_neg_integer(),
        "periodStart" => non_neg_integer(),
        "productName" => String.t() | atom(),
        "series" => String.t() | atom(),
        "state" => list(any()),
        "statusMessage" => String.t() | atom(),
        "uploadState" => list(any()),
        "version" => float()
      }

  """
  @type report_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_compliance_inquiries_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_compliance_inquiries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_report_request() :: %{
        required("reportId") => String.t() | atom(),
        optional("reportVersion") => float(),
        required("termToken") => String.t() | atom()
      }

  """
  @type get_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_settings_request() :: %{}

  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_report_metadata_response() :: %{
        "reportDetails" => report_detail()
      }

  """
  @type get_report_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_compliance_inquiry_response() :: %{
        "complianceInquirySummary" => inquiry_summary(),
        "tags" => map()
      }

  """
  @type create_compliance_inquiry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      citation() :: %{
        "sourceContent" => String.t() | atom(),
        "sourceLabel" => String.t() | atom(),
        "sourceLink" => String.t() | atom()
      }

  """
  @type citation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_summary() :: %{
        "citations" => list(citation()),
        "createdAt" => non_neg_integer(),
        "query" => String.t() | atom(),
        "queryIdentifier" => [integer()],
        "response" => String.t() | atom(),
        "reviewType" => list(any()),
        "status" => list(any()),
        "statusMessage" => list(any()),
        "updatedResponseVersions" => list(response_version())
      }

  """
  @type query_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      response_version() :: %{
        "responseText" => String.t() | atom(),
        "timestamp" => non_neg_integer()
      }

  """
  @type response_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_report_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("reportId") => String.t() | atom()
      }

  """
  @type list_report_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

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

      list_reports_response() :: %{
        "nextToken" => String.t() | atom(),
        "reports" => list(report_summary())
      }

  """
  @type list_reports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_term_for_report_response() :: %{
        "documentPresignedUrl" => [String.t() | atom()],
        "termToken" => [String.t() | atom()]
      }

  """
  @type get_term_for_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_customer_agreements_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_customer_agreements_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        "notificationSubscriptionStatus" => list(any())
      }

  """
  @type account_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_account_settings_response() :: %{
        "accountSettings" => account_settings()
      }

  """
  @type put_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_compliance_inquiries_response() :: %{
        "complianceInquiries" => list(inquiry_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_compliance_inquiries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_compliance_inquiry_metadata_response() :: %{
        "complianceInquiryDetail" => inquiry_detail(),
        "tags" => map()
      }

  """
  @type get_compliance_inquiry_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_compliance_inquiry_request() :: %{
        required("complianceInquiryId") => String.t() | atom(),
        optional("includeCitations") => [boolean()],
        optional("queryIdentifiers") => list([integer()]())
      }

  """
  @type export_compliance_inquiry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_compliance_inquiry_queries_response() :: %{
        "nextToken" => String.t() | atom(),
        "queries" => list(query_summary())
      }

  """
  @type list_compliance_inquiry_queries_response() :: %{(String.t() | atom()) => any()}

  @type create_compliance_inquiry_errors() ::
          conflict_exception()
          | access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type export_compliance_inquiry_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type get_account_settings_errors() ::
          resource_not_found_exception()
          | conflict_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type get_compliance_inquiry_metadata_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type get_report_errors() ::
          resource_not_found_exception()
          | conflict_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type get_report_metadata_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type get_term_for_report_errors() ::
          resource_not_found_exception()
          | conflict_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type list_compliance_inquiries_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type list_compliance_inquiry_queries_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type list_customer_agreements_errors() ::
          access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type list_report_versions_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type list_reports_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type put_account_settings_errors() ::
          resource_not_found_exception()
          | conflict_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type tag_resource_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  @type untag_resource_errors() ::
          resource_not_found_exception()
          | access_denied_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "artifact",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Artifact",
      signature_version: "v4",
      signing_name: "artifact",
      target_prefix: nil
    }
  end

  @doc """
  Create a new compliance inquiry.
  """
  @spec create_compliance_inquiry(map(), create_compliance_inquiry_request(), list()) ::
          {:ok, create_compliance_inquiry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_compliance_inquiry_errors()}
  def create_compliance_inquiry(%Client{} = client, input, options \\ []) do
    url_path = "/v1/compliance-inquiry/create"
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
  Export a compliance inquiry report.
  """
  @spec export_compliance_inquiry(map(), export_compliance_inquiry_request(), list()) ::
          {:ok, export_compliance_inquiry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_compliance_inquiry_errors()}
  def export_compliance_inquiry(%Client{} = client, input, options \\ []) do
    url_path = "/v1/compliance-inquiry/export"
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
  Get the account settings for Artifact.
  """
  @spec get_account_settings(map(), list()) ::
          {:ok, get_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, options \\ []) do
    url_path = "/v1/account-settings/get"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the metadata for a single compliance inquiry.
  """
  @spec get_compliance_inquiry_metadata(map(), String.t() | atom(), list()) ::
          {:ok, get_compliance_inquiry_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_compliance_inquiry_metadata_errors()}
  def get_compliance_inquiry_metadata(%Client{} = client, compliance_inquiry_id, options \\ []) do
    url_path = "/v1/compliance-inquiry/getMetadata"
    headers = []
    query_params = []

    query_params =
      if !is_nil(compliance_inquiry_id) do
        [{"complianceInquiryId", compliance_inquiry_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the content for a single report.
  """
  @spec get_report(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_report_errors()}
  def get_report(%Client{} = client, term_token, report_version \\ nil, report_id, options \\ []) do
    url_path = "/v1/report/get"
    headers = []
    query_params = []

    query_params =
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(report_version) do
        [{"reportVersion", report_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(term_token) do
        [{"termToken", term_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the metadata for a single report.
  """
  @spec get_report_metadata(map(), String.t() | atom() | nil, String.t() | atom(), list()) ::
          {:ok, get_report_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_report_metadata_errors()}
  def get_report_metadata(%Client{} = client, report_version \\ nil, report_id, options \\ []) do
    url_path = "/v1/report/getMetadata"
    headers = []
    query_params = []

    query_params =
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(report_version) do
        [{"reportVersion", report_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the Term content associated with a single report.
  """
  @spec get_term_for_report(map(), String.t() | atom() | nil, String.t() | atom(), list()) ::
          {:ok, get_term_for_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_term_for_report_errors()}
  def get_term_for_report(%Client{} = client, report_version \\ nil, report_id, options \\ []) do
    url_path = "/v1/report/getTermForReport"
    headers = []
    query_params = []

    query_params =
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(report_version) do
        [{"reportVersion", report_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List available compliance inquiries.
  """
  @spec list_compliance_inquiries(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_compliance_inquiries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_compliance_inquiries_errors()}
  def list_compliance_inquiries(
        %Client{} = client,
        next_token \\ nil,
        max_results \\ nil,
        options \\ []
      ) do
    url_path = "/v1/compliance-inquiry/list"
    headers = []
    query_params = []

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

  @doc """
  List queries within a compliance inquiry.
  """
  @spec list_compliance_inquiry_queries(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_compliance_inquiry_queries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_compliance_inquiry_queries_errors()}
  def list_compliance_inquiry_queries(
        %Client{} = client,
        next_token \\ nil,
        max_results \\ nil,
        compliance_inquiry_id,
        options \\ []
      ) do
    url_path = "/v1/compliance-inquiry/listQueries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(compliance_inquiry_id) do
        [{"complianceInquiryId", compliance_inquiry_id} | query_params]
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

  @doc """
  List active customer-agreements applicable to calling identity.
  """
  @spec list_customer_agreements(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_customer_agreements_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_customer_agreements_errors()}
  def list_customer_agreements(
        %Client{} = client,
        next_token \\ nil,
        max_results \\ nil,
        options \\ []
      ) do
    url_path = "/v1/customer-agreement/list"
    headers = []
    query_params = []

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

  @doc """
  List available report versions for a given report.
  """
  @spec list_report_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_report_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_report_versions_errors()}
  def list_report_versions(
        %Client{} = client,
        report_id,
        next_token \\ nil,
        max_results \\ nil,
        options \\ []
      ) do
    url_path = "/v1/report/listVersions"
    headers = []
    query_params = []

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

    query_params =
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List available reports.
  """
  @spec list_reports(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reports_errors()}
  def list_reports(%Client{} = client, next_token \\ nil, max_results \\ nil, options \\ []) do
    url_path = "/v1/report/list"
    headers = []
    query_params = []

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

  @doc """
  List tags for a resource.
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
  Put the account settings for Artifact.
  """
  @spec put_account_settings(map(), put_account_settings_request(), list()) ::
          {:ok, put_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_account_settings_errors()}
  def put_account_settings(%Client{} = client, input, options \\ []) do
    url_path = "/v1/account-settings/put"
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

  @doc """
  Add tags to a resource.
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
  Remove tags from a resource.
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
end
