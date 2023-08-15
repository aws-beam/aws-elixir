# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Omics do
  @moduledoc """
  This is the *AWS HealthOmics API Reference*.

  For an introduction to the service, see [What is AWS HealthOmics?](https://docs.aws.amazon.com/omics/latest/dev/) in the *AWS
  HealthOmics User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "omics",
      global?: false,
      protocol: "rest-json",
      service_id: "Omics",
      signature_version: "v4",
      signing_name: "omics",
      target_prefix: nil
    }
  end

  @doc """
  Stops a multipart upload.
  """
  def abort_multipart_read_set_upload(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/abort"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Accepts a share for an analytics store.
  """
  def accept_share(%Client{} = client, share_id, input, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Deletes one or more read sets.
  """
  def batch_delete_read_set(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/batch/delete"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Cancels an annotation import job.
  """
  def cancel_annotation_import_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/import/annotation/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Cancels a run.
  """
  def cancel_run(%Client{} = client, id, input, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/cancel"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Cancels a variant import job.
  """
  def cancel_variant_import_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/import/variant/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Concludes a multipart upload once you have uploaded all the components.
  """
  def complete_multipart_read_set_upload(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/complete"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "storage-")

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
  Creates an annotation store.
  """
  def create_annotation_store(%Client{} = client, input, options \\ []) do
    url_path = "/annotationStore"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Creates a new version of an annotation store.
  """
  def create_annotation_store_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/version"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Begins a multipart read set upload.
  """
  def create_multipart_read_set_upload(
        %Client{} = client,
        sequence_store_id,
        input,
        options \\ []
      ) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Creates a reference store.
  """
  def create_reference_store(%Client{} = client, input, options \\ []) do
    url_path = "/referencestore"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Creates a run group.
  """
  def create_run_group(%Client{} = client, input, options \\ []) do
    url_path = "/runGroup"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a sequence store.
  """
  def create_sequence_store(%Client{} = client, input, options \\ []) do
    url_path = "/sequencestore"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Creates a share offer that can be accepted outside the account by a subscriber.

  The share is created by the owner and accepted by the principal subscriber.
  """
  def create_share(%Client{} = client, input, options \\ []) do
    url_path = "/share"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Creates a variant store.
  """
  def create_variant_store(%Client{} = client, input, options \\ []) do
    url_path = "/variantStore"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Creates a workflow.
  """
  def create_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/workflow"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an annotation store.
  """
  def delete_annotation_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"
    headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Deletes one or multiple versions of an annotation store.
  """
  def delete_annotation_store_versions(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/versions/delete"
    headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Deletes a genome reference.
  """
  def delete_reference(%Client{} = client, id, reference_store_id, input, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Deletes a genome reference store.
  """
  def delete_reference_store(%Client{} = client, id, input, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Deletes a workflow run.
  """
  def delete_run(%Client{} = client, id, input, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a workflow run group.
  """
  def delete_run_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a sequence store.
  """
  def delete_sequence_store(%Client{} = client, id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Deletes a share of an analytics store.
  """
  def delete_share(%Client{} = client, share_id, input, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Deletes a variant store.
  """
  def delete_variant_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"
    headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Deletes a workflow.
  """
  def delete_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Gets information about an annotation import job.
  """
  def get_annotation_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/import/annotation/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an annotation store.
  """
  def get_annotation_store(%Client{} = client, name, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata for an annotation store version.
  """
  def get_annotation_store_version(%Client{} = client, name, version_name, options \\ []) do
    url_path =
      "/annotationStore/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a file from a read set.
  """
  def get_read_set(
        %Client{} = client,
        id,
        sequence_store_id,
        file \\ nil,
        part_number,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(part_number) do
        [{"partNumber", part_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(file) do
        [{"file", file} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set activation job.
  """
  def get_read_set_activation_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjob/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set export job.
  """
  def get_read_set_export_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjob/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set import job.
  """
  def get_read_set_import_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjob/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a read set.
  """
  def get_read_set_metadata(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/#{AWS.Util.encode_uri(id)}/metadata"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a reference file.
  """
  def get_reference(
        %Client{} = client,
        id,
        reference_store_id,
        file \\ nil,
        part_number,
        range \\ nil,
        options \\ []
      ) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}"

    headers = []

    headers =
      if !is_nil(range) do
        [{"Range", range} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(part_number) do
        [{"partNumber", part_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(file) do
        [{"file", file} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a reference import job.
  """
  def get_reference_import_job(%Client{} = client, id, reference_store_id, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjob/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a genome reference's metadata.
  """
  def get_reference_metadata(%Client{} = client, id, reference_store_id, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}/metadata"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a reference store.
  """
  def get_reference_store(%Client{} = client, id, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow run.
  """
  def get_run(%Client{} = client, id, export \\ nil, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(export) do
        [{"export", export} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow run group.
  """
  def get_run_group(%Client{} = client, id, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow run task.
  """
  def get_run_task(%Client{} = client, id, task_id, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/task/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a sequence store.
  """
  def get_sequence_store(%Client{} = client, id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata for a share.
  """
  def get_share(%Client{} = client, share_id, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a variant import job.
  """
  def get_variant_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/import/variant/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a variant store.
  """
  def get_variant_store(%Client{} = client, name, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow.
  """
  def get_workflow(%Client{} = client, id, export \\ nil, type \\ nil, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(export) do
        [{"export", export} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of annotation import jobs.
  """
  def list_annotation_import_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/import/annotations"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Lists the versions of an annotation store.
  """
  def list_annotation_store_versions(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/versions"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Retrieves a list of annotation stores.
  """
  def list_annotation_stores(%Client{} = client, input, options \\ []) do
    url_path = "/annotationStores"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Lists all multipart read set uploads and their statuses.
  """
  def list_multipart_read_set_uploads(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/uploads"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Retrieves a list of read set activation jobs.
  """
  def list_read_set_activation_jobs(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjobs"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Retrieves a list of read set export jobs.
  """
  def list_read_set_export_jobs(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjobs"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Retrieves a list of read set import jobs.
  """
  def list_read_set_import_jobs(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjobs"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  This operation will list all parts in a requested multipart upload for a
  sequence store.
  """
  def list_read_set_upload_parts(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/parts"

    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Retrieves a list of read sets.
  """
  def list_read_sets(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readsets"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Retrieves a list of reference import jobs.
  """
  def list_reference_import_jobs(%Client{} = client, reference_store_id, input, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjobs"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Retrieves a list of reference stores.
  """
  def list_reference_stores(%Client{} = client, input, options \\ []) do
    url_path = "/referencestores"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Retrieves a list of references.
  """
  def list_references(%Client{} = client, reference_store_id, input, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/references"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Retrieves a list of run groups.
  """
  def list_run_groups(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        starting_token \\ nil,
        options \\ []
      ) do
    url_path = "/runGroup"
    headers = []
    query_params = []

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of tasks for a run.
  """
  def list_run_tasks(
        %Client{} = client,
        id,
        max_results \\ nil,
        starting_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/task"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of runs.
  """
  def list_runs(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        run_group_id \\ nil,
        starting_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/run"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(run_group_id) do
        [{"runGroupId", run_group_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of sequence stores.
  """
  def list_sequence_stores(%Client{} = client, input, options \\ []) do
    url_path = "/sequencestores"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Lists all shares associated with an account.
  """
  def list_shares(%Client{} = client, input, options \\ []) do
    url_path = "/shares"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Retrieves a list of tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tags-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of variant import jobs.
  """
  def list_variant_import_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/import/variants"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Retrieves a list of variant stores.
  """
  def list_variant_stores(%Client{} = client, input, options \\ []) do
    url_path = "/variantStores"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Retrieves a list of workflows.
  """
  def list_workflows(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        starting_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/workflow"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts an annotation import job.
  """
  def start_annotation_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/import/annotation"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Activates an archived read set.

  To reduce storage charges, Amazon Omics archives unused read sets after 30 days.
  """
  def start_read_set_activation_job(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjob"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Exports a read set to Amazon S3.
  """
  def start_read_set_export_job(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjob"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Starts a read set import job.
  """
  def start_read_set_import_job(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjob"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Starts a reference import job.
  """
  def start_reference_import_job(%Client{} = client, reference_store_id, input, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjob"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

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
  Starts a run.
  """
  def start_run(%Client{} = client, input, options \\ []) do
    url_path = "/run"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Starts a variant import job.
  """
  def start_variant_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/import/variant"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Tags a resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tags-")

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
  Removes tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "tags-")

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
  Updates an annotation store.
  """
  def update_annotation_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Updates the description of an annotation store version.
  """
  def update_annotation_store_version(
        %Client{} = client,
        name,
        version_name,
        input,
        options \\ []
      ) do
    url_path =
      "/annotationStore/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Updates a run group.
  """
  def update_run_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates a variant store.
  """
  def update_variant_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

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
  Updates a workflow.
  """
  def update_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  This operation uploads a specific part of a read set.

  If you upload a new part using a previously used part number, the previously
  uploaded part will be overwritten.
  """
  def upload_read_set_part(%Client{} = client, sequence_store_id, upload_id, input, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/part"

    headers = []

    {query_params, input} =
      [
        {"partNumber", "partNumber"},
        {"partSource", "partSource"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "storage-")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
