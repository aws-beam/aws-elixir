# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MedicalImaging do
  @moduledoc """
  This is the *AWS HealthImaging API Reference*.

  AWS HealthImaging is an AWS service for storing, accessing, and analyzing
  medical images. For an introduction to the service, see the [ *AWS HealthImaging Developer Guide* ](https://docs.aws.amazon.com/medical-imaging/latest/devguide).

  We recommend using one of the AWS Software Development Kits (SDKs) for your
  programming language, as they take care of request authentication,
  serialization, and connection management. For more information, see [Tools to build on AWS](http://aws.amazon.com/developer/tools).

  For information about using AWS HealthImaging API actions in one of the
  language-specific AWS SDKs, refer to the *See Also* link at the end of each
  section that describes an API action or data type.

  The following sections list AWS HealthImaging API actions categorized according
  to functionality. Links are provided to actions within this Reference, along
  with links back to corresponding sections in the *AWS HealthImaging Developer
  Guide* so you can view console procedures and CLI/SDK code examples.

  ## Data store actions

    *
  [CreateDatastore](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_CreateDatastore.html) – See [Creating a data
  store](https://docs.aws.amazon.com/medical-imaging/latest/devguide/create-data-store.html).

    *
  [GetDatastore](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_GetDatastore.html) – See [Getting data store
  properties](https://docs.aws.amazon.com/medical-imaging/latest/devguide/get-data-store.html).

    *
  [ListDatastores](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_ListDatastores.html) – See [Listing data
  stores](https://docs.aws.amazon.com/medical-imaging/latest/devguide/list-data-stores.html).

    *
  [DeleteDatastore](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_DeleteDatastore.html) – See [Deleting a data
  store](https://docs.aws.amazon.com/medical-imaging/latest/devguide/delete-data-store.html).

  ## Import job actions

    *
  [StartDICOMImportJob](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_StartDICOMImportJob.html) – See [Starting an import
  job](https://docs.aws.amazon.com/medical-imaging/latest/devguide/start-dicom-import-job.html).

    *
  [GetDICOMImportJob](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_GetDICOMImportJob.html) – See [Getting import job
  properties](https://docs.aws.amazon.com/medical-imaging/latest/devguide/get-dicom-import-job.html).

    *
  [ListDICOMImportJobs](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_ListDICOMImportJobs.html) – See [Listing import
  jobs](https://docs.aws.amazon.com/medical-imaging/latest/devguide/list-dicom-import-jobs.html).

  ## Image set access actions

    *
  [SearchImageSets](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_SearchImageSets.html) – See [Searching image
  sets](https://docs.aws.amazon.com/medical-imaging/latest/devguide/search-image-sets.html).

    *
  [GetImageSet](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_GetImageSet.html) – See [Getting image set
  properties](https://docs.aws.amazon.com/medical-imaging/latest/devguide/get-image-set-properties.html).

    *
  [GetImageSetMetadata](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_GetImageSetMetadata.html) – See [Getting image set
  metadata](https://docs.aws.amazon.com/medical-imaging/latest/devguide/get-image-set-metadata.html).

    *
  [GetImageFrame](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_GetImageFrame.html) – See [Getting image set pixel
  data](https://docs.aws.amazon.com/medical-imaging/latest/devguide/get-image-frame.html).

  ## Image set modification actions

    *
  [ListImageSetVersions](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_ListImageSetVersions.html) – See [Listing image set
  versions](https://docs.aws.amazon.com/medical-imaging/latest/devguide/list-image-set-versions.html).

    *
  [UpdateImageSetMetadata](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_UpdateImageSetMetadata.html) – See [Updating image set
  metadata](https://docs.aws.amazon.com/medical-imaging/latest/devguide/update-image-set-metadata.html).

    *
  [CopyImageSet](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_CopyImageSet.html) – See [Copying an image
  set](https://docs.aws.amazon.com/medical-imaging/latest/devguide/copy-image-set.html).

    *
  [DeleteImageSet](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_DeleteImageSet.html) – See [Deleting an image
  set](https://docs.aws.amazon.com/medical-imaging/latest/devguide/delete-image-set.html).

  ## Tagging actions

    *
  [TagResource](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_TagResource.html) – See [Tagging a data
  store](https://docs.aws.amazon.com/medical-imaging/latest/devguide/tag-list-untag-data-store.html)
  and [Tagging an image set](https://docs.aws.amazon.com/medical-imaging/latest/devguide/tag-list-untag-image-set.html).

    *
  [ListTagsForResource](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_ListTagsForResource.html) – See [Tagging a data
  store](https://docs.aws.amazon.com/medical-imaging/latest/devguide/tag-list-untag-data-store.html)
  and [Tagging an image set](https://docs.aws.amazon.com/medical-imaging/latest/devguide/tag-list-untag-image-set.html).

    *
  [UntagResource](https://docs.aws.amazon.com/medical-imaging/latest/APIReference/API_UntagResource.html) – See [Tagging a data
  store](https://docs.aws.amazon.com/medical-imaging/latest/devguide/tag-list-untag-data-store.html)
  and [Tagging an image set](https://docs.aws.amazon.com/medical-imaging/latest/devguide/tag-list-untag-image-set.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2023-07-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "medical-imaging",
      global?: false,
      protocol: "rest-json",
      service_id: "Medical Imaging",
      signature_version: "v4",
      signing_name: "medical-imaging",
      target_prefix: nil
    }
  end

  @doc """
  Copy an image set.
  """
  def copy_image_set(%Client{} = client, datastore_id, source_image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(source_image_set_id)}/copyImageSet"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  Create a data store.
  """
  def create_datastore(%Client{} = client, input, options \\ []) do
    url_path = "/datastore"
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
  Delete a data store.

  Before a data store can be deleted, you must first delete all image sets within
  it.
  """
  def delete_datastore(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}"
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
  Delete an image set.
  """
  def delete_image_set(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/deleteImageSet"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  Get the import job properties to learn more about the job or job progress.
  """
  def get_d_i_c_o_m_import_job(%Client{} = client, datastore_id, job_id, options \\ []) do
    url_path =
      "/getDICOMImportJob/datastore/#{AWS.Util.encode_uri(datastore_id)}/job/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get data store properties.
  """
  def get_datastore(%Client{} = client, datastore_id, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get an image frame (pixel data) for an image set.
  """
  def get_image_frame(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageFrame"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  Get image set properties.
  """
  def get_image_set(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageSet"

    headers = []

    {query_params, input} =
      [
        {"versionId", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  Get metadata attributes for an image set.
  """
  def get_image_set_metadata(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageSetMetadata"

    headers = []

    {query_params, input} =
      [
        {"versionId", "version"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Encoding", "contentEncoding"}, {"Content-Type", "contentType"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  List import jobs created by this AWS account for a specific data store.
  """
  def list_d_i_c_o_m_import_jobs(
        %Client{} = client,
        datastore_id,
        job_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/listDICOMImportJobs/datastore/#{AWS.Util.encode_uri(datastore_id)}"
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

    query_params =
      if !is_nil(job_status) do
        [{"jobStatus", job_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List data stores created by this AWS account.
  """
  def list_datastores(
        %Client{} = client,
        datastore_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/datastore"
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

    query_params =
      if !is_nil(datastore_status) do
        [{"datastoreStatus", datastore_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List image set versions.
  """
  def list_image_set_versions(
        %Client{} = client,
        datastore_id,
        image_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/listImageSetVersions"

    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  Lists all tags associated with a medical imaging resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Search image sets based on defined input attributes.
  """
  def search_image_sets(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}/searchImageSets"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  Start importing bulk data into an `ACTIVE` data store.

  The import job imports DICOM P10 files found in the S3 prefix specified by the
  `inputS3Uri` parameter. The import job stores processing results in the file
  specified by the `outputS3Uri` parameter.
  """
  def start_d_i_c_o_m_import_job(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/startDICOMImportJob/datastore/#{AWS.Util.encode_uri(datastore_id)}"
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
  Adds a user-specifed key and value tag to a medical imaging resource.
  """
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
      200
    )
  end

  @doc """
  Removes tags from a medical imaging resource.
  """
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
      200
    )
  end

  @doc """
  Update image set metadata attributes.
  """
  def update_image_set_metadata(
        %Client{} = client,
        datastore_id,
        image_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/updateImageSetMetadata"

    headers = []

    {query_params, input} =
      [
        {"latestVersionId", "latestVersion"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
end
