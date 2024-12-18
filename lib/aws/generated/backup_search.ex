# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BackupSearch do
  @moduledoc """
  Backup Search

  Backup Search is the recovery point and item level search for Backup.

  For additional information, see:

    *

  [Backup API Reference](https://docs.aws.amazon.com/aws-backup/latest/devguide/api-reference.html)

    *

  [Backup Developer
  Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      current_search_progress() :: %{
        "ItemsMatchedCount" => [float()],
        "ItemsScannedCount" => [float()],
        "RecoveryPointsScannedCount" => [integer()]
      }

  """
  @type current_search_progress() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      ebs_item_filter() :: %{
        "CreationTimes" => list(time_condition()()),
        "FilePaths" => list(string_condition()()),
        "LastModificationTimes" => list(time_condition()()),
        "Sizes" => list(long_condition()())
      }

  """
  @type ebs_item_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_search_job_backups_output() :: %{
        "NextToken" => [String.t()],
        "Results" => list(search_job_backups_result()())
      }

  """
  @type list_search_job_backups_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_search_job_results_output() :: %{
        "NextToken" => [String.t()],
        "Results" => list(list()())
      }

  """
  @type list_search_job_results_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_search_jobs_input() :: %{
        optional("ByStatus") => list(any()),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()]
      }

  """
  @type list_search_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_search_job_output() :: %{
        "CreationTime" => [non_neg_integer()],
        "SearchJobArn" => String.t(),
        "SearchJobIdentifier" => String.t()
      }

  """
  @type start_search_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_search_job_output() :: %{}

  """
  @type stop_search_job_output() :: %{}

  @typedoc """

  ## Example:

      list_search_result_export_jobs_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()],
        optional("SearchJobIdentifier") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_search_result_export_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_search_job_input() :: %{}

  """
  @type stop_search_job_input() :: %{}

  @typedoc """

  ## Example:

      search_scope_summary() :: %{
        "TotalItemsToScanCount" => [float()],
        "TotalRecoveryPointsToScanCount" => [integer()]
      }

  """
  @type search_scope_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_search_jobs_output() :: %{
        "NextToken" => [String.t()],
        "SearchJobs" => list(search_job_summary()())
      }

  """
  @type list_search_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_item_filter() :: %{
        "CreationTimes" => list(time_condition()()),
        "ETags" => list(string_condition()()),
        "ObjectKeys" => list(string_condition()()),
        "Sizes" => list(long_condition()()),
        "VersionIds" => list(string_condition()())
      }

  """
  @type s3_item_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_result_item() :: %{
        "BackupResourceArn" => [String.t()],
        "BackupVaultName" => [String.t()],
        "CreationTime" => [non_neg_integer()],
        "ETag" => [String.t()],
        "ObjectKey" => String.t(),
        "ObjectSize" => [float()],
        "SourceResourceArn" => [String.t()],
        "VersionId" => [String.t()]
      }

  """
  @type s3_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      backup_creation_time_filter() :: %{
        "CreatedAfter" => [non_neg_integer()],
        "CreatedBefore" => [non_neg_integer()]
      }

  """
  @type backup_creation_time_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_condition() :: %{
        "Operator" => list(any()),
        "Value" => [non_neg_integer()]
      }

  """
  @type time_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_search_job_output() :: %{
        "CompletionTime" => [non_neg_integer()],
        "CreationTime" => [non_neg_integer()],
        "CurrentSearchProgress" => current_search_progress(),
        "EncryptionKeyArn" => String.t(),
        "ItemFilters" => item_filters(),
        "Name" => [String.t()],
        "SearchJobArn" => String.t(),
        "SearchJobIdentifier" => String.t(),
        "SearchScope" => search_scope(),
        "SearchScopeSummary" => search_scope_summary(),
        "Status" => list(any()),
        "StatusMessage" => [String.t()]
      }

  """
  @type get_search_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_search_result_export_job_input() :: %{}

  """
  @type get_search_result_export_job_input() :: %{}

  @typedoc """

  ## Example:

      search_job_summary() :: %{
        "CompletionTime" => [non_neg_integer()],
        "CreationTime" => [non_neg_integer()],
        "Name" => [String.t()],
        "SearchJobArn" => String.t(),
        "SearchJobIdentifier" => String.t(),
        "SearchScopeSummary" => search_scope_summary(),
        "Status" => list(any()),
        "StatusMessage" => [String.t()]
      }

  """
  @type search_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_job_backups_result() :: %{
        "BackupCreationTime" => [non_neg_integer()],
        "BackupResourceArn" => [String.t()],
        "IndexCreationTime" => [non_neg_integer()],
        "ResourceType" => list(any()),
        "SourceResourceArn" => [String.t()],
        "Status" => list(any()),
        "StatusMessage" => [String.t()]
      }

  """
  @type search_job_backups_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_search_job_results_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()]
      }

  """
  @type list_search_job_results_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_search_result_export_jobs_output() :: %{
        "ExportJobs" => list(export_job_summary()()),
        "NextToken" => [String.t()]
      }

  """
  @type list_search_result_export_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_search_result_export_job_output() :: %{
        "CompletionTime" => [non_neg_integer()],
        "CreationTime" => [non_neg_integer()],
        "ExportJobArn" => String.t(),
        "ExportJobIdentifier" => String.t(),
        "ExportSpecification" => list(),
        "SearchJobArn" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => [String.t()]
      }

  """
  @type get_search_result_export_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_job_summary() :: %{
        "CompletionTime" => [non_neg_integer()],
        "CreationTime" => [non_neg_integer()],
        "ExportJobArn" => String.t(),
        "ExportJobIdentifier" => String.t(),
        "SearchJobArn" => String.t(),
        "Status" => list(any()),
        "StatusMessage" => [String.t()]
      }

  """
  @type export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_search_job_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("EncryptionKeyArn") => String.t(),
        optional("ItemFilters") => item_filters(),
        optional("Name") => [String.t()],
        optional("Tags") => map(),
        required("SearchScope") => search_scope()
      }

  """
  @type start_search_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_condition() :: %{
        "Operator" => list(any()),
        "Value" => [String.t()]
      }

  """
  @type string_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_export_specification() :: %{
        "DestinationBucket" => [String.t()],
        "DestinationPrefix" => [String.t()]
      }

  """
  @type s3_export_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_search_job_backups_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t()]
      }

  """
  @type list_search_job_backups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_search_result_export_job_output() :: %{
        "ExportJobArn" => String.t(),
        "ExportJobIdentifier" => String.t()
      }

  """
  @type start_search_result_export_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      search_scope() :: %{
        "BackupResourceArns" => list(String.t()()),
        "BackupResourceCreationTime" => backup_creation_time_filter(),
        "BackupResourceTags" => map(),
        "BackupResourceTypes" => list(list(any())()),
        "SourceResourceArns" => list([String.t()]())
      }

  """
  @type search_scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebs_result_item() :: %{
        "BackupResourceArn" => [String.t()],
        "BackupVaultName" => [String.t()],
        "CreationTime" => [non_neg_integer()],
        "FilePath" => String.t(),
        "FileSize" => [float()],
        "FileSystemIdentifier" => [String.t()],
        "LastModifiedTime" => [non_neg_integer()],
        "SourceResourceArn" => [String.t()]
      }

  """
  @type ebs_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_search_job_input() :: %{}

  """
  @type get_search_job_input() :: %{}

  @typedoc """

  ## Example:

      item_filters() :: %{
        "EBSItemFilters" => list(ebs_item_filter()()),
        "S3ItemFilters" => list(s3_item_filter()())
      }

  """
  @type item_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_search_result_export_job_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("RoleArn") => String.t(),
        optional("Tags") => map(),
        required("ExportSpecification") => list(),
        required("SearchJobIdentifier") => String.t()
      }

  """
  @type start_search_result_export_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      long_condition() :: %{
        "Operator" => list(any()),
        "Value" => [float()]
      }

  """
  @type long_condition() :: %{String.t() => any()}

  @type get_search_job_errors() :: resource_not_found_exception()

  @type get_search_result_export_job_errors() :: resource_not_found_exception()

  @type list_search_job_backups_errors() :: resource_not_found_exception()

  @type list_search_job_results_errors() :: resource_not_found_exception()

  @type list_search_result_export_jobs_errors() ::
          service_quota_exceeded_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type start_search_job_errors() :: service_quota_exceeded_exception() | conflict_exception()

  @type start_search_result_export_job_errors() ::
          service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_search_job_errors() :: resource_not_found_exception() | conflict_exception()

  @type tag_resource_errors() :: resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "backup-search",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "BackupSearch",
      signature_version: "v4",
      signing_name: "backup-search",
      target_prefix: nil
    }
  end

  @doc """
  This operation retrieves metadata of a search job,
  including its progress.
  """
  @spec get_search_job(map(), String.t(), list()) ::
          {:ok, get_search_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_search_job_errors()}
  def get_search_job(%Client{} = client, search_job_identifier, options \\ []) do
    url_path = "/search-jobs/#{AWS.Util.encode_uri(search_job_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation retrieves the metadata of an export job.

  An export job is an operation that transmits the results
  of a search job to a specified S3 bucket in a
  .csv file.

  An export job allows you to retain results of a search
  beyond the search job's scheduled retention of 7 days.
  """
  @spec get_search_result_export_job(map(), String.t(), list()) ::
          {:ok, get_search_result_export_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_search_result_export_job_errors()}
  def get_search_result_export_job(%Client{} = client, export_job_identifier, options \\ []) do
    url_path = "/export-search-jobs/#{AWS.Util.encode_uri(export_job_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation returns a list of all backups (recovery
  points) in a paginated format that were included in
  the search job.

  If a search does not display an expected backup in
  the results, you can call this operation to display each
  backup included in the search. Any backups that were not
  included because they have a `FAILED` status
  from a permissions issue will be displayed, along with a
  status message.

  Only recovery points with a backup index that has
  a status of `ACTIVE` will be included in search results.
  If the index has any other status, its status will be
  displayed along with a status message.
  """
  @spec list_search_job_backups(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_search_job_backups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_search_job_backups_errors()}
  def list_search_job_backups(
        %Client{} = client,
        search_job_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/search-jobs/#{AWS.Util.encode_uri(search_job_identifier)}/backups"
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
  This operation returns a list of a specified search job.
  """
  @spec list_search_job_results(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_search_job_results_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_search_job_results_errors()}
  def list_search_job_results(
        %Client{} = client,
        search_job_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/search-jobs/#{AWS.Util.encode_uri(search_job_identifier)}/search-results"
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
  This operation returns a list of search jobs belonging
  to an account.
  """
  @spec list_search_jobs(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_search_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_search_jobs(
        %Client{} = client,
        by_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/search-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(by_status) do
        [{"Status", by_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation exports search results of a search job
  to a specified destination S3 bucket.
  """
  @spec list_search_result_export_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_search_result_export_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_search_result_export_jobs_errors()}
  def list_search_result_export_jobs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        search_job_identifier \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/export-search-jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(search_job_identifier) do
        [{"SearchJobIdentifier", search_job_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation returns the tags for a resource type.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation creates a search job which returns
  recovery points filtered by SearchScope and items
  filtered by ItemFilters.

  You can optionally include ClientToken,
  EncryptionKeyArn, Name, and/or Tags.
  """
  @spec start_search_job(map(), start_search_job_input(), list()) ::
          {:ok, start_search_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_search_job_errors()}
  def start_search_job(%Client{} = client, input, options \\ []) do
    url_path = "/search-jobs"
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
  This operations starts a job to export the results
  of search job to a designated S3 bucket.
  """
  @spec start_search_result_export_job(map(), start_search_result_export_job_input(), list()) ::
          {:ok, start_search_result_export_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_search_result_export_job_errors()}
  def start_search_result_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/export-search-jobs"
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
  This operations ends a search job.

  Only a search job with a status of `RUNNING`
  can be stopped.
  """
  @spec stop_search_job(map(), String.t(), stop_search_job_input(), list()) ::
          {:ok, stop_search_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_search_job_errors()}
  def stop_search_job(%Client{} = client, search_job_identifier, input, options \\ []) do
    url_path = "/search-jobs/#{AWS.Util.encode_uri(search_job_identifier)}/actions/cancel"
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
  This operation puts tags on the resource you indicate.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """
  This operation removes tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      200
    )
  end
end
