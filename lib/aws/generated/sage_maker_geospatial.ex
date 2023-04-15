# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerGeospatial do
  @moduledoc """
  Provides APIs for creating and managing SageMaker geospatial resources.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-05-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sagemaker-geospatial",
      global?: false,
      protocol: "rest-json",
      service_id: "SageMaker Geospatial",
      signature_version: "v4",
      signing_name: "sagemaker-geospatial",
      target_prefix: nil
    }
  end

  @doc """
  Use this operation to delete an Earth Observation job.
  """
  def delete_earth_observation_job(%Client{} = client, arn, input, options \\ []) do
    url_path = "/earth-observation-jobs/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteEarthObservationJob",
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
  Use this operation to delete a Vector Enrichment job.
  """
  def delete_vector_enrichment_job(%Client{} = client, arn, input, options \\ []) do
    url_path = "/vector-enrichment-jobs/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteVectorEnrichmentJob",
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
  Use this operation to export results of an Earth Observation job and optionally
  source images used as input to the EOJ to an Amazon S3 location.
  """
  def export_earth_observation_job(%Client{} = client, input, options \\ []) do
    url_path = "/export-earth-observation-job"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ExportEarthObservationJob",
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
  Use this operation to copy results of a Vector Enrichment job to an Amazon S3
  location.
  """
  def export_vector_enrichment_job(%Client{} = client, input, options \\ []) do
    url_path = "/export-vector-enrichment-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ExportVectorEnrichmentJob",
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
  Get the details for a previously initiated Earth Observation job.
  """
  def get_earth_observation_job(%Client{} = client, arn, options \\ []) do
    url_path = "/earth-observation-jobs/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetEarthObservationJob",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Use this operation to get details of a specific raster data collection.
  """
  def get_raster_data_collection(%Client{} = client, arn, options \\ []) do
    url_path = "/raster-data-collection/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRasterDataCollection",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets a web mercator tile for the given Earth Observation job.
  """
  def get_tile(
        %Client{} = client,
        x,
        y,
        z,
        arn,
        execution_role_arn \\ nil,
        image_assets,
        image_mask \\ nil,
        output_data_type \\ nil,
        output_format \\ nil,
        property_filters \\ nil,
        target,
        time_range_filter \\ nil,
        options \\ []
      ) do
    url_path =
      "/tile/#{AWS.Util.encode_uri(z)}/#{AWS.Util.encode_uri(x)}/#{AWS.Util.encode_uri(y)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(time_range_filter) do
        [{"TimeRangeFilter", time_range_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(target) do
        [{"Target", target} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(property_filters) do
        [{"PropertyFilters", property_filters} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(output_format) do
        [{"OutputFormat", output_format} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(output_data_type) do
        [{"OutputDataType", output_data_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(image_mask) do
        [{"ImageMask", image_mask} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(image_assets) do
        [{"ImageAssets", image_assets} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(execution_role_arn) do
        [{"ExecutionRoleArn", execution_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(arn) do
        [{"Arn", arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetTile",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves details of a Vector Enrichment Job for a given job Amazon Resource
  Name (ARN).
  """
  def get_vector_enrichment_job(%Client{} = client, arn, options \\ []) do
    url_path = "/vector-enrichment-jobs/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetVectorEnrichmentJob",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Use this operation to get a list of the Earth Observation jobs associated with
  the calling Amazon Web Services account.
  """
  def list_earth_observation_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/list-earth-observation-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListEarthObservationJobs",
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
  Use this operation to get raster data collections.
  """
  def list_raster_data_collections(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/raster-data-collections"
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

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListRasterDataCollections",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the tags attached to the resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of vector enrichment jobs.
  """
  def list_vector_enrichment_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/list-vector-enrichment-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListVectorEnrichmentJobs",
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
  Allows you run image query on a specific raster data collection to get a list of
  the satellite imagery matching the selected filters.
  """
  def search_raster_data_collection(%Client{} = client, input, options \\ []) do
    url_path = "/search-raster-data-collection"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "SearchRasterDataCollection",
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
  Use this operation to create an Earth observation job.
  """
  def start_earth_observation_job(%Client{} = client, input, options \\ []) do
    url_path = "/earth-observation-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartEarthObservationJob",
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
  Creates a Vector Enrichment job for the supplied job type.

  Currently, there are two supported job types: reverse geocoding and map
  matching.
  """
  def start_vector_enrichment_job(%Client{} = client, input, options \\ []) do
    url_path = "/vector-enrichment-jobs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StartVectorEnrichmentJob",
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
  Use this operation to stop an existing earth observation job.
  """
  def stop_earth_observation_job(%Client{} = client, input, options \\ []) do
    url_path = "/earth-observation-jobs/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StopEarthObservationJob",
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
  Stops the Vector Enrichment job for a given job ARN.
  """
  def stop_vector_enrichment_job(%Client{} = client, input, options \\ []) do
    url_path = "/vector-enrichment-jobs/stop"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "StopVectorEnrichmentJob",
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
  The resource you want to tag.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  The resource you want to untag.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UntagResource",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
