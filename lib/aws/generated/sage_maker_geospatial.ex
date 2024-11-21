# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SageMakerGeospatial do
  @moduledoc """
  Provides APIs for creating and managing SageMaker geospatial resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      view_off_nadir_input() :: %{
        "LowerBound" => [float()],
        "UpperBound" => [float()]
      }

  """
  @type view_off_nadir_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      zonal_statistics_config_input() :: %{
        "Statistics" => list(String.t()()),
        "TargetBands" => list([String.t()]()),
        "ZoneS3Path" => String.t(),
        "ZoneS3PathKmsKeyId" => String.t()
      }

  """
  @type zonal_statistics_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      operation() :: %{
        "Equation" => [String.t()],
        "Name" => [String.t()],
        "OutputType" => String.t()
      }

  """
  @type operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_band() :: %{
        "BandName" => [String.t()],
        "OutputDataType" => String.t()
      }

  """
  @type output_band() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      view_sun_elevation_input() :: %{
        "LowerBound" => [float()],
        "UpperBound" => [float()]
      }

  """
  @type view_sun_elevation_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_earth_observation_job_output() :: %{
        "Arn" => [String.t()],
        "CreationTime" => [non_neg_integer()],
        "DurationInSeconds" => [integer()],
        "ErrorDetails" => earth_observation_job_error_details(),
        "ExecutionRoleArn" => String.t(),
        "ExportErrorDetails" => export_error_details(),
        "ExportStatus" => String.t(),
        "InputConfig" => input_config_output(),
        "JobConfig" => list(),
        "KmsKeyId" => String.t(),
        "Name" => [String.t()],
        "OutputBands" => list(output_band()()),
        "Status" => String.t(),
        "Tags" => map()
      }

  """
  @type get_earth_observation_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reverse_geocoding_config() :: %{
        "XAttributeName" => [String.t()],
        "YAttributeName" => [String.t()]
      }

  """
  @type reverse_geocoding_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_defined() :: %{
        "Unit" => String.t(),
        "Value" => [float()]
      }

  """
  @type user_defined() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stack_config_input() :: %{
        "OutputResolution" => output_resolution_stack_input(),
        "TargetBands" => list([String.t()]())
      }

  """
  @type stack_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_filters() :: %{
        "LogicalOperator" => String.t(),
        "Properties" => list(property_filter()())
      }

  """
  @type property_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      polygon_geometry_input() :: %{
        "Coordinates" => list(list(list([float()]())())())
      }

  """
  @type polygon_geometry_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_raster_data_collections_output() :: %{
        optional("NextToken") => String.t(),
        required("RasterDataCollectionSummaries") => list(raster_data_collection_metadata()())
      }

  """
  @type list_raster_data_collections_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geometry() :: %{
        "Coordinates" => list(list(list([float()]())())()),
        "Type" => [String.t()]
      }

  """
  @type geometry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_earth_observation_job_output() :: %{
        optional("NextToken") => String.t(),
        required("EarthObservationJobSummaries") => list(list_earth_observation_job_output_config()())
      }

  """
  @type list_earth_observation_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_s3_data_input() :: %{
        "KmsKeyId" => String.t(),
        "S3Uri" => String.t()
      }

  """
  @type export_s3_data_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_earth_observation_job_output() :: %{
        optional("InputConfig") => input_config_output(),
        optional("KmsKeyId") => String.t(),
        optional("Tags") => map(),
        required("Arn") => [String.t()],
        required("CreationTime") => [non_neg_integer()],
        required("DurationInSeconds") => [integer()],
        required("ExecutionRoleArn") => String.t(),
        required("JobConfig") => list(),
        required("Name") => [String.t()],
        required("Status") => String.t()
      }

  """
  @type start_earth_observation_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      properties() :: %{
        "EoCloudCover" => [float()],
        "LandsatCloudCoverLand" => [float()],
        "Platform" => [String.t()],
        "ViewOffNadir" => [float()],
        "ViewSunAzimuth" => [float()],
        "ViewSunElevation" => [float()]
      }

  """
  @type properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_vector_enrichment_job_input() :: %{
        optional("ClientToken") => [String.t()],
        required("Arn") => String.t(),
        required("ExecutionRoleArn") => String.t(),
        required("OutputConfig") => export_vector_enrichment_job_output_config()
      }

  """
  @type export_vector_enrichment_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_vector_enrichment_job_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("KmsKeyId") => String.t(),
        optional("Tags") => map(),
        required("ExecutionRoleArn") => String.t(),
        required("InputConfig") => vector_enrichment_job_input_config(),
        required("JobConfig") => list(),
        required("Name") => [String.t()]
      }

  """
  @type start_vector_enrichment_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vector_enrichment_job_input() :: %{}

  """
  @type delete_vector_enrichment_job_input() :: %{}

  @typedoc """

  ## Example:

      cloud_removal_config_input() :: %{
        "AlgorithmName" => String.t(),
        "InterpolationValue" => [String.t()],
        "TargetBands" => list([String.t()]())
      }

  """
  @type cloud_removal_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raster_data_collection_query_output() :: %{
        "AreaOfInterest" => list(),
        "PropertyFilters" => property_filters(),
        "RasterDataCollectionArn" => String.t(),
        "RasterDataCollectionName" => [String.t()],
        "TimeRangeFilter" => time_range_filter_output()
      }

  """
  @type raster_data_collection_query_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_range_filter_input() :: %{
        "EndTime" => [non_neg_integer()],
        "StartTime" => [non_neg_integer()]
      }

  """
  @type time_range_filter_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_indices_input() :: %{
        "Operations" => list(operation()())
      }

  """
  @type custom_indices_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_raster_data_collection_input() :: %{}

  """
  @type get_raster_data_collection_input() :: %{}

  @typedoc """

  ## Example:

      list_earth_observation_job_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t(),
        optional("SortBy") => [String.t()],
        optional("SortOrder") => String.t(),
        optional("StatusEquals") => String.t()
      }

  """
  @type list_earth_observation_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_earth_observation_job_output() :: %{
        optional("ExportSourceImages") => [boolean()],
        required("Arn") => String.t(),
        required("CreationTime") => [non_neg_integer()],
        required("ExecutionRoleArn") => String.t(),
        required("ExportStatus") => String.t(),
        required("OutputConfig") => output_config_input()
      }

  """
  @type export_earth_observation_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_earth_observation_job_input() :: %{}

  """
  @type delete_earth_observation_job_input() :: %{}

  @typedoc """

  ## Example:

      asset_value() :: %{
        "Href" => [String.t()]
      }

  """
  @type asset_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      landsat_cloud_cover_land_input() :: %{
        "LowerBound" => [float()],
        "UpperBound" => [float()]
      }

  """
  @type landsat_cloud_cover_land_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vector_enrichment_job_output() :: %{
        optional("NextToken") => String.t(),
        required("VectorEnrichmentJobSummaries") => list(list_vector_enrichment_job_output_config()())
      }

  """
  @type list_vector_enrichment_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_range_filter_output() :: %{
        "EndTime" => [non_neg_integer()],
        "StartTime" => [non_neg_integer()]
      }

  """
  @type time_range_filter_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      temporal_statistics_config_input() :: %{
        "GroupBy" => String.t(),
        "Statistics" => list(String.t()()),
        "TargetBands" => list([String.t()]())
      }

  """
  @type temporal_statistics_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tile_input() :: %{
        optional("ExecutionRoleArn") => String.t(),
        optional("ImageMask") => [boolean()],
        optional("OutputDataType") => String.t(),
        optional("OutputFormat") => [String.t()],
        optional("PropertyFilters") => [String.t()],
        optional("TimeRangeFilter") => [String.t()],
        required("Arn") => String.t(),
        required("ImageAssets") => list([String.t()]()),
        required("Target") => String.t()
      }

  """
  @type get_tile_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vector_enrichment_job_input_config() :: %{
        "DataSourceConfig" => list(),
        "DocumentType" => String.t()
      }

  """
  @type vector_enrichment_job_input_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      earth_observation_job_error_details() :: %{
        "Message" => [String.t()],
        "Type" => String.t()
      }

  """
  @type earth_observation_job_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_earth_observation_job_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("KmsKeyId") => String.t(),
        optional("Tags") => map(),
        required("ExecutionRoleArn") => String.t(),
        required("InputConfig") => input_config_input(),
        required("JobConfig") => list(),
        required("Name") => [String.t()]
      }

  """
  @type start_earth_observation_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_earth_observation_job_output_config() :: %{
        "Arn" => [String.t()],
        "CreationTime" => [non_neg_integer()],
        "DurationInSeconds" => [integer()],
        "Name" => [String.t()],
        "OperationType" => [String.t()],
        "Status" => String.t(),
        "Tags" => map()
      }

  """
  @type list_earth_observation_job_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_raster_data_collection_input() :: %{
        optional("NextToken") => String.t(),
        required("Arn") => String.t(),
        required("RasterDataCollectionQuery") => raster_data_collection_query_with_band_filter_input()
      }

  """
  @type search_raster_data_collection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      item_source() :: %{
        "Assets" => map(),
        "DateTime" => [non_neg_integer()],
        "Geometry" => geometry(),
        "Id" => [String.t()],
        "Properties" => properties()
      }

  """
  @type item_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_config_input() :: %{
        "PreviousEarthObservationJobArn" => String.t(),
        "RasterDataCollectionQuery" => raster_data_collection_query_input()
      }

  """
  @type input_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      eo_cloud_cover_input() :: %{
        "LowerBound" => [float()],
        "UpperBound" => [float()]
      }

  """
  @type eo_cloud_cover_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_vector_enrichment_job_output_config() :: %{
        "S3Data" => vector_enrichment_job_s3_data()
      }

  """
  @type export_vector_enrichment_job_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_earth_observation_job_output() :: %{}

  """
  @type delete_earth_observation_job_output() :: %{}

  @typedoc """

  ## Example:

      vector_enrichment_job_error_details() :: %{
        "ErrorMessage" => [String.t()],
        "ErrorType" => String.t()
      }

  """
  @type vector_enrichment_job_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Maximum" => [float()],
        "Minimum" => [float()],
        "Name" => [String.t()],
        "Type" => [String.t()]
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resampling_config_input() :: %{
        "AlgorithmName" => String.t(),
        "OutputResolution" => output_resolution_resampling_input(),
        "TargetBands" => list([String.t()]())
      }

  """
  @type resampling_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_tile_output() :: %{
        "BinaryFile" => binary()
      }

  """
  @type get_tile_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vector_enrichment_job_input() :: %{}

  """
  @type get_vector_enrichment_job_input() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      platform_input() :: %{
        "ComparisonOperator" => String.t(),
        "Value" => [String.t()]
      }

  """
  @type platform_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_earth_observation_job_input() :: %{
        optional("ClientToken") => [String.t()],
        optional("ExportSourceImages") => [boolean()],
        required("Arn") => String.t(),
        required("ExecutionRoleArn") => String.t(),
        required("OutputConfig") => output_config_input()
      }

  """
  @type export_earth_observation_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_filter() :: %{
        "Property" => list()
      }

  """
  @type property_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_raster_data_collections_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_raster_data_collections_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vector_enrichment_job_output() :: %{}

  """
  @type delete_vector_enrichment_job_output() :: %{}

  @typedoc """

  ## Example:

      land_cover_segmentation_config_input() :: %{}

  """
  @type land_cover_segmentation_config_input() :: %{}

  @typedoc """

  ## Example:

      geo_mosaic_config_input() :: %{
        "AlgorithmName" => String.t(),
        "TargetBands" => list([String.t()]())
      }

  """
  @type geo_mosaic_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()]
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

      list_vector_enrichment_job_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t(),
        optional("SortBy") => [String.t()],
        optional("SortOrder") => String.t(),
        optional("StatusEquals") => [String.t()]
      }

  """
  @type list_vector_enrichment_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_vector_enrichment_job_input() :: %{
        required("Arn") => String.t()
      }

  """
  @type stop_vector_enrichment_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_resolution_resampling_input() :: %{
        "UserDefined" => user_defined()
      }

  """
  @type output_resolution_resampling_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t()],
        "ResourceId" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vector_enrichment_job_s3_data() :: %{
        "KmsKeyId" => String.t(),
        "S3Uri" => String.t()
      }

  """
  @type vector_enrichment_job_s3_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_config_output() :: %{
        "PreviousEarthObservationJobArn" => String.t(),
        "RasterDataCollectionQuery" => raster_data_collection_query_output()
      }

  """
  @type input_config_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raster_data_collection_metadata() :: %{
        "Arn" => String.t(),
        "Description" => [String.t()],
        "DescriptionPageUrl" => [String.t()],
        "Name" => [String.t()],
        "SupportedFilters" => list(filter()()),
        "Tags" => map(),
        "Type" => String.t()
      }

  """
  @type raster_data_collection_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raster_data_collection_query_with_band_filter_input() :: %{
        "AreaOfInterest" => list(),
        "BandFilter" => list([String.t()]()),
        "PropertyFilters" => property_filters(),
        "TimeRangeFilter" => time_range_filter_input()
      }

  """
  @type raster_data_collection_query_with_band_filter_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_vector_enrichment_job_output() :: %{
        optional("KmsKeyId") => String.t(),
        optional("Tags") => map(),
        required("Arn") => String.t(),
        required("CreationTime") => [non_neg_integer()],
        required("DurationInSeconds") => [integer()],
        required("ExecutionRoleArn") => String.t(),
        required("InputConfig") => vector_enrichment_job_input_config(),
        required("JobConfig") => list(),
        required("Name") => [String.t()],
        required("Status") => String.t(),
        required("Type") => String.t()
      }

  """
  @type start_vector_enrichment_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_error_details() :: %{
        "ExportResults" => export_error_details_output(),
        "ExportSourceImages" => export_error_details_output()
      }

  """
  @type export_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_raster_data_collection_output() :: %{
        "ApproximateResultCount" => [integer()],
        "Items" => list(item_source()()),
        "NextToken" => String.t()
      }

  """
  @type search_raster_data_collection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_masking_config_input() :: %{}

  """
  @type cloud_masking_config_input() :: %{}

  @typedoc """

  ## Example:

      stop_vector_enrichment_job_output() :: %{}

  """
  @type stop_vector_enrichment_job_output() :: %{}

  @typedoc """

  ## Example:

      map_matching_config() :: %{
        "IdAttributeName" => [String.t()],
        "TimestampAttributeName" => [String.t()],
        "XAttributeName" => [String.t()],
        "YAttributeName" => [String.t()]
      }

  """
  @type map_matching_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vector_enrichment_job_output_config() :: %{
        "Arn" => String.t(),
        "CreationTime" => [non_neg_integer()],
        "DurationInSeconds" => [integer()],
        "Name" => [String.t()],
        "Status" => String.t(),
        "Tags" => map(),
        "Type" => String.t()
      }

  """
  @type list_vector_enrichment_job_output_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_raster_data_collection_output() :: %{
        optional("Tags") => map(),
        required("Arn") => String.t(),
        required("Description") => [String.t()],
        required("DescriptionPageUrl") => [String.t()],
        required("ImageSourceBands") => list([String.t()]()),
        required("Name") => [String.t()],
        required("SupportedFilters") => list(filter()()),
        required("Type") => String.t()
      }

  """
  @type get_raster_data_collection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vector_enrichment_job_output() :: %{
        "Arn" => [String.t()],
        "CreationTime" => [non_neg_integer()],
        "DurationInSeconds" => [integer()],
        "ErrorDetails" => vector_enrichment_job_error_details(),
        "ExecutionRoleArn" => String.t(),
        "ExportErrorDetails" => vector_enrichment_job_export_error_details(),
        "ExportStatus" => String.t(),
        "InputConfig" => vector_enrichment_job_input_config(),
        "JobConfig" => list(),
        "KmsKeyId" => String.t(),
        "Name" => [String.t()],
        "Status" => String.t(),
        "Tags" => map(),
        "Type" => String.t()
      }

  """
  @type get_vector_enrichment_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multi_polygon_geometry_input() :: %{
        "Coordinates" => list(list(list(list([float()]())())())())
      }

  """
  @type multi_polygon_geometry_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_error_details_output() :: %{
        "Message" => [String.t()],
        "Type" => String.t()
      }

  """
  @type export_error_details_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_resolution_stack_input() :: %{
        "Predefined" => String.t(),
        "UserDefined" => user_defined()
      }

  """
  @type output_resolution_stack_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raster_data_collection_query_input() :: %{
        "AreaOfInterest" => list(),
        "PropertyFilters" => property_filters(),
        "RasterDataCollectionArn" => String.t(),
        "TimeRangeFilter" => time_range_filter_input()
      }

  """
  @type raster_data_collection_query_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_vector_enrichment_job_output() :: %{
        "Arn" => String.t(),
        "CreationTime" => [non_neg_integer()],
        "ExecutionRoleArn" => String.t(),
        "ExportStatus" => String.t(),
        "OutputConfig" => export_vector_enrichment_job_output_config()
      }

  """
  @type export_vector_enrichment_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_config_input() :: %{
        "S3Data" => export_s3_data_input()
      }

  """
  @type output_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_earth_observation_job_input() :: %{}

  """
  @type get_earth_observation_job_input() :: %{}

  @typedoc """

  ## Example:

      stop_earth_observation_job_output() :: %{}

  """
  @type stop_earth_observation_job_output() :: %{}

  @typedoc """

  ## Example:

      view_sun_azimuth_input() :: %{
        "LowerBound" => [float()],
        "UpperBound" => [float()]
      }

  """
  @type view_sun_azimuth_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_earth_observation_job_input() :: %{
        required("Arn") => String.t()
      }

  """
  @type stop_earth_observation_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      band_math_config_input() :: %{
        "CustomIndices" => custom_indices_input(),
        "PredefinedIndices" => list([String.t()]())
      }

  """
  @type band_math_config_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vector_enrichment_job_export_error_details() :: %{
        "Message" => [String.t()],
        "Type" => String.t()
      }

  """
  @type vector_enrichment_job_export_error_details() :: %{String.t() => any()}

  @type delete_earth_observation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_vector_enrichment_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type export_earth_observation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type export_vector_enrichment_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_earth_observation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_raster_data_collection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_tile_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_vector_enrichment_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_earth_observation_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_raster_data_collections_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_vector_enrichment_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_raster_data_collection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_earth_observation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_vector_enrichment_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_earth_observation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_vector_enrichment_job_errors() ::
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

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-05-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "sagemaker-geospatial",
      global?: false,
      hostname: nil,
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
  @spec delete_earth_observation_job(
          map(),
          String.t(),
          delete_earth_observation_job_input(),
          list()
        ) ::
          {:ok, delete_earth_observation_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_earth_observation_job_errors()}
  def delete_earth_observation_job(%Client{} = client, arn, input, options \\ []) do
    url_path = "/earth-observation-jobs/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

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

  @doc """
  Use this operation to delete a Vector Enrichment job.
  """
  @spec delete_vector_enrichment_job(
          map(),
          String.t(),
          delete_vector_enrichment_job_input(),
          list()
        ) ::
          {:ok, delete_vector_enrichment_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vector_enrichment_job_errors()}
  def delete_vector_enrichment_job(%Client{} = client, arn, input, options \\ []) do
    url_path = "/vector-enrichment-jobs/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []
    query_params = []

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

  @doc """
  Use this operation to export results of an Earth Observation job and optionally
  source images used as input to the EOJ to an Amazon S3 location.
  """
  @spec export_earth_observation_job(map(), export_earth_observation_job_input(), list()) ::
          {:ok, export_earth_observation_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_earth_observation_job_errors()}
  def export_earth_observation_job(%Client{} = client, input, options \\ []) do
    url_path = "/export-earth-observation-job"
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
  Use this operation to copy results of a Vector Enrichment job to an Amazon S3
  location.
  """
  @spec export_vector_enrichment_job(map(), export_vector_enrichment_job_input(), list()) ::
          {:ok, export_vector_enrichment_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, export_vector_enrichment_job_errors()}
  def export_vector_enrichment_job(%Client{} = client, input, options \\ []) do
    url_path = "/export-vector-enrichment-jobs"
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
  Get the details for a previously initiated Earth Observation job.
  """
  @spec get_earth_observation_job(map(), String.t(), list()) ::
          {:ok, get_earth_observation_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_earth_observation_job_errors()}
  def get_earth_observation_job(%Client{} = client, arn, options \\ []) do
    url_path = "/earth-observation-jobs/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use this operation to get details of a specific raster data collection.
  """
  @spec get_raster_data_collection(map(), String.t(), list()) ::
          {:ok, get_raster_data_collection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_raster_data_collection_errors()}
  def get_raster_data_collection(%Client{} = client, arn, options \\ []) do
    url_path = "/raster-data-collection/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a web mercator tile for the given Earth Observation job.
  """
  @spec get_tile(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, get_tile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_tile_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details of a Vector Enrichment Job for a given job Amazon Resource
  Name (ARN).
  """
  @spec get_vector_enrichment_job(map(), String.t(), list()) ::
          {:ok, get_vector_enrichment_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vector_enrichment_job_errors()}
  def get_vector_enrichment_job(%Client{} = client, arn, options \\ []) do
    url_path = "/vector-enrichment-jobs/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Use this operation to get a list of the Earth Observation jobs associated with
  the calling Amazon Web Services account.
  """
  @spec list_earth_observation_jobs(map(), list_earth_observation_job_input(), list()) ::
          {:ok, list_earth_observation_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_earth_observation_jobs_errors()}
  def list_earth_observation_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/list-earth-observation-jobs"
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
  Use this operation to get raster data collections.
  """
  @spec list_raster_data_collections(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_raster_data_collections_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_raster_data_collections_errors()}
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags attached to the resource.
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
  Retrieves a list of vector enrichment jobs.
  """
  @spec list_vector_enrichment_jobs(map(), list_vector_enrichment_job_input(), list()) ::
          {:ok, list_vector_enrichment_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vector_enrichment_jobs_errors()}
  def list_vector_enrichment_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/list-vector-enrichment-jobs"
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
  Allows you run image query on a specific raster data collection to get a list of
  the satellite imagery matching the selected filters.
  """
  @spec search_raster_data_collection(map(), search_raster_data_collection_input(), list()) ::
          {:ok, search_raster_data_collection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_raster_data_collection_errors()}
  def search_raster_data_collection(%Client{} = client, input, options \\ []) do
    url_path = "/search-raster-data-collection"
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
  Use this operation to create an Earth observation job.
  """
  @spec start_earth_observation_job(map(), start_earth_observation_job_input(), list()) ::
          {:ok, start_earth_observation_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_earth_observation_job_errors()}
  def start_earth_observation_job(%Client{} = client, input, options \\ []) do
    url_path = "/earth-observation-jobs"
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
  Creates a Vector Enrichment job for the supplied job type.

  Currently, there are two supported job types: reverse geocoding and map
  matching.
  """
  @spec start_vector_enrichment_job(map(), start_vector_enrichment_job_input(), list()) ::
          {:ok, start_vector_enrichment_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_vector_enrichment_job_errors()}
  def start_vector_enrichment_job(%Client{} = client, input, options \\ []) do
    url_path = "/vector-enrichment-jobs"
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
  Use this operation to stop an existing earth observation job.
  """
  @spec stop_earth_observation_job(map(), stop_earth_observation_job_input(), list()) ::
          {:ok, stop_earth_observation_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_earth_observation_job_errors()}
  def stop_earth_observation_job(%Client{} = client, input, options \\ []) do
    url_path = "/earth-observation-jobs/stop"
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
  Stops the Vector Enrichment job for a given job ARN.
  """
  @spec stop_vector_enrichment_job(map(), stop_vector_enrichment_job_input(), list()) ::
          {:ok, stop_vector_enrichment_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_vector_enrichment_job_errors()}
  def stop_vector_enrichment_job(%Client{} = client, input, options \\ []) do
    url_path = "/vector-enrichment-jobs/stop"
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
  The resource you want to tag.
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
  The resource you want to untag.
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
