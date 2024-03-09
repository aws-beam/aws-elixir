# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BackupStorage do
  @moduledoc """
  The frontend service for Cryo Storage.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-04-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "backupstorage",
      global?: false,
      protocol: "rest-json",
      service_id: "BackupStorage",
      signature_version: "v4",
      signing_name: "backup-storage",
      target_prefix: nil
    }
  end

  @doc """
  Delete Object from the incremental base Backup.
  """
  def delete_object(%Client{} = client, backup_job_id, object_name, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/object/#{AWS.Util.encode_uri(object_name)}"

    headers = []
    query_params = []

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
      200
    )
  end

  @doc """
  Gets the specified object's chunk.
  """
  def get_chunk(%Client{} = client, chunk_token, storage_job_id, options \\ []) do
    url_path =
      "/restore-jobs/#{AWS.Util.encode_uri(storage_job_id)}/chunk/#{AWS.Util.encode_uri(chunk_token)}"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-checksum", "Checksum"},
          {"x-amz-checksum-algorithm", "ChecksumAlgorithm"},
          {"x-amz-data-length", "Length"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get metadata associated with an Object.
  """
  def get_object_metadata(%Client{} = client, object_token, storage_job_id, options \\ []) do
    url_path =
      "/restore-jobs/#{AWS.Util.encode_uri(storage_job_id)}/object/#{AWS.Util.encode_uri(object_token)}/metadata"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-checksum", "MetadataBlobChecksum"},
          {"x-amz-checksum-algorithm", "MetadataBlobChecksumAlgorithm"},
          {"x-amz-data-length", "MetadataBlobLength"},
          {"x-amz-metadata-string", "MetadataString"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List chunks in a given Object
  """
  def list_chunks(
        %Client{} = client,
        object_token,
        storage_job_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/restore-jobs/#{AWS.Util.encode_uri(storage_job_id)}/chunks/#{AWS.Util.encode_uri(object_token)}/list"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all Objects in a given Backup.
  """
  def list_objects(
        %Client{} = client,
        storage_job_id,
        created_after \\ nil,
        created_before \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        starting_object_name \\ nil,
        starting_object_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/restore-jobs/#{AWS.Util.encode_uri(storage_job_id)}/objects/list"
    headers = []
    query_params = []

    query_params =
      if !is_nil(starting_object_prefix) do
        [{"starting-object-prefix", starting_object_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(starting_object_name) do
        [{"starting-object-name", starting_object_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_before) do
        [{"created-before", created_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_after) do
        [{"created-after", created_after} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Complete upload
  """
  def notify_object_complete(%Client{} = client, backup_job_id, upload_id, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/object/#{AWS.Util.encode_uri(upload_id)}/complete"

    headers = []

    {query_params, input} =
      [
        {"MetadataBlobChecksum", "metadata-checksum"},
        {"MetadataBlobChecksumAlgorithm", "metadata-checksum-algorithm"},
        {"MetadataBlobLength", "metadata-blob-length"},
        {"MetadataString", "metadata-string"},
        {"ObjectChecksum", "checksum"},
        {"ObjectChecksumAlgorithm", "checksum-algorithm"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Upload chunk.
  """
  def put_chunk(%Client{} = client, backup_job_id, chunk_index, upload_id, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/chunk/#{AWS.Util.encode_uri(upload_id)}/#{AWS.Util.encode_uri(chunk_index)}"

    headers = []

    {query_params, input} =
      [
        {"Checksum", "checksum"},
        {"ChecksumAlgorithm", "checksum-algorithm"},
        {"Length", "length"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Upload object that can store object metadata String and data blob in single API
  call using inline chunk field.
  """
  def put_object(%Client{} = client, backup_job_id, object_name, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/object/#{AWS.Util.encode_uri(object_name)}/put-object"

    headers = []

    {query_params, input} =
      [
        {"InlineChunkChecksum", "checksum"},
        {"InlineChunkChecksumAlgorithm", "checksum-algorithm"},
        {"InlineChunkLength", "length"},
        {"MetadataString", "metadata-string"},
        {"ObjectChecksum", "object-checksum"},
        {"ObjectChecksumAlgorithm", "object-checksum-algorithm"},
        {"ThrowOnDuplicate", "throwOnDuplicate"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Start upload containing one or many chunks.
  """
  def start_object(%Client{} = client, backup_job_id, object_name, input, options \\ []) do
    url_path =
      "/backup-jobs/#{AWS.Util.encode_uri(backup_job_id)}/object/#{AWS.Util.encode_uri(object_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
