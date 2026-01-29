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

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        "notificationSubscriptionStatus" => list(any())
      }

  """
  @type account_settings() :: %{(String.t() | atom()) => any()}

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

      get_account_settings_request() :: %{}

  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_account_settings_response() :: %{
        "accountSettings" => account_settings()
      }

  """
  @type get_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_report_metadata_request() :: %{
        optional("reportVersion") => float(),
        required("reportId") => String.t() | atom()
      }

  """
  @type get_report_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_report_metadata_response() :: %{
        "reportDetails" => report_detail()
      }

  """
  @type get_report_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_report_request() :: %{
        optional("reportVersion") => float(),
        required("reportId") => String.t() | atom(),
        required("termToken") => String.t() | atom()
      }

  """
  @type get_report_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_report_response() :: %{
        "documentPresignedUrl" => [String.t() | atom()]
      }

  """
  @type get_report_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_term_for_report_request() :: %{
        optional("reportVersion") => float(),
        required("reportId") => String.t() | atom()
      }

  """
  @type get_term_for_report_request() :: %{(String.t() | atom()) => any()}

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

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

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

      list_customer_agreements_response() :: %{
        "customerAgreements" => list(customer_agreement_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_customer_agreements_response() :: %{(String.t() | atom()) => any()}

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

      list_report_versions_response() :: %{
        "nextToken" => String.t() | atom(),
        "reports" => list(report_summary())
      }

  """
  @type list_report_versions_response() :: %{(String.t() | atom()) => any()}

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

      list_reports_response() :: %{
        "nextToken" => String.t() | atom(),
        "reports" => list(report_summary())
      }

  """
  @type list_reports_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_account_settings_request() :: %{
        optional("notificationSubscriptionStatus") => list(any())
      }

  """
  @type put_account_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_account_settings_response() :: %{
        "accountSettings" => account_settings()
      }

  """
  @type put_account_settings_response() :: %{(String.t() | atom()) => any()}

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

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

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

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type get_account_settings_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_report_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_report_metadata_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_term_for_report_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type list_customer_agreements_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_report_versions_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_reports_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_account_settings_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

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
  def get_report(%Client{} = client, report_id, report_version \\ nil, term_token, options \\ []) do
    url_path = "/v1/report/get"
    headers = []
    query_params = []

    query_params =
      if !is_nil(term_token) do
        [{"termToken", term_token} | query_params]
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
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the metadata for a single report.
  """
  @spec get_report_metadata(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_report_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_report_metadata_errors()}
  def get_report_metadata(%Client{} = client, report_id, report_version \\ nil, options \\ []) do
    url_path = "/v1/report/getMetadata"
    headers = []
    query_params = []

    query_params =
      if !is_nil(report_version) do
        [{"reportVersion", report_version} | query_params]
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
  Get the Term content associated with a single report.
  """
  @spec get_term_for_report(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_term_for_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_term_for_report_errors()}
  def get_term_for_report(%Client{} = client, report_id, report_version \\ nil, options \\ []) do
    url_path = "/v1/report/getTermForReport"
    headers = []
    query_params = []

    query_params =
      if !is_nil(report_version) do
        [{"reportVersion", report_version} | query_params]
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
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/customer-agreement/list"
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
  List available report versions for a given report.
  """
  @spec list_report_versions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_report_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_report_versions_errors()}
  def list_report_versions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        report_id,
        options \\ []
      ) do
    url_path = "/v1/report/listVersions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(report_id) do
        [{"reportId", report_id} | query_params]
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
  List available reports.
  """
  @spec list_reports(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reports_errors()}
  def list_reports(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/report/list"
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
end
