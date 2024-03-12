# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackage do
  @moduledoc """
  AWS Elemental MediaPackage
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  rotate_ingest_endpoint_credentials_request() :: %{

  }
  """
  @type rotate_ingest_endpoint_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_channel_request() :: %{

  }
  """
  @type delete_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("Tags") => map()
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  hls_manifest_create_or_update_parameters() :: %{
    "AdMarkers" => list(any()),
    "AdTriggers" => list(list(any())()),
    "AdsOnDeliveryRestrictions" => list(any()),
    "Id" => String.t(),
    "IncludeIframeOnlyStream" => boolean(),
    "ManifestName" => String.t(),
    "PlaylistType" => list(any()),
    "PlaylistWindowSeconds" => integer(),
    "ProgramDateTimeIntervalSeconds" => integer()
  }
  """
  @type hls_manifest_create_or_update_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_origin_endpoint_request() :: %{
    optional("Authorization") => authorization(),
    optional("CmafPackage") => cmaf_package_create_or_update_parameters(),
    optional("DashPackage") => dash_package(),
    optional("Description") => String.t(),
    optional("HlsPackage") => hls_package(),
    optional("ManifestName") => String.t(),
    optional("MssPackage") => mss_package(),
    optional("Origination") => list(any()),
    optional("StartoverWindowSeconds") => integer(),
    optional("Tags") => map(),
    optional("TimeDelaySeconds") => integer(),
    optional("Whitelist") => list(String.t()()),
    required("ChannelId") => String.t(),
    required("Id") => String.t()
  }
  """
  @type create_origin_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_channel_response() :: %{
    "Arn" => String.t(),
    "CreatedAt" => String.t(),
    "Description" => String.t(),
    "EgressAccessLogs" => egress_access_logs(),
    "HlsIngest" => hls_ingest(),
    "Id" => String.t(),
    "IngressAccessLogs" => ingress_access_logs(),
    "Tags" => map()
  }
  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_channel_response() :: %{

  }
  """
  @type delete_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_origin_endpoint_response() :: %{
    "Arn" => String.t(),
    "Authorization" => authorization(),
    "ChannelId" => String.t(),
    "CmafPackage" => cmaf_package(),
    "CreatedAt" => String.t(),
    "DashPackage" => dash_package(),
    "Description" => String.t(),
    "HlsPackage" => hls_package(),
    "Id" => String.t(),
    "ManifestName" => String.t(),
    "MssPackage" => mss_package(),
    "Origination" => list(any()),
    "StartoverWindowSeconds" => integer(),
    "Tags" => map(),
    "TimeDelaySeconds" => integer(),
    "Url" => String.t(),
    "Whitelist" => list(String.t()())
  }
  """
  @type create_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rotate_channel_credentials_response() :: %{
    "Arn" => String.t(),
    "CreatedAt" => String.t(),
    "Description" => String.t(),
    "EgressAccessLogs" => egress_access_logs(),
    "HlsIngest" => hls_ingest(),
    "Id" => String.t(),
    "IngressAccessLogs" => ingress_access_logs(),
    "Tags" => map()
  }
  """
  @type rotate_channel_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  forbidden_exception() :: %{
    "Message" => String.t()
  }
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_origin_endpoint_request() :: %{
    optional("Authorization") => authorization(),
    optional("CmafPackage") => cmaf_package_create_or_update_parameters(),
    optional("DashPackage") => dash_package(),
    optional("Description") => String.t(),
    optional("HlsPackage") => hls_package(),
    optional("ManifestName") => String.t(),
    optional("MssPackage") => mss_package(),
    optional("Origination") => list(any()),
    optional("StartoverWindowSeconds") => integer(),
    optional("TimeDelaySeconds") => integer(),
    optional("Whitelist") => list(String.t()())
  }
  """
  @type update_origin_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  origin_endpoint() :: %{
    "Arn" => String.t(),
    "Authorization" => authorization(),
    "ChannelId" => String.t(),
    "CmafPackage" => cmaf_package(),
    "CreatedAt" => String.t(),
    "DashPackage" => dash_package(),
    "Description" => String.t(),
    "HlsPackage" => hls_package(),
    "Id" => String.t(),
    "ManifestName" => String.t(),
    "MssPackage" => mss_package(),
    "Origination" => list(any()),
    "StartoverWindowSeconds" => integer(),
    "Tags" => map(),
    "TimeDelaySeconds" => integer(),
    "Url" => String.t(),
    "Whitelist" => list(String.t()())
  }
  """
  @type origin_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_harvest_jobs_request() :: %{
    optional("IncludeChannelId") => String.t(),
    optional("IncludeStatus") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_harvest_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_origin_endpoint_response() :: %{

  }
  """
  @type delete_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rotate_channel_credentials_request() :: %{

  }
  """
  @type rotate_channel_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_origin_endpoint_request() :: %{

  }
  """
  @type delete_origin_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_origin_endpoint_response() :: %{
    "Arn" => String.t(),
    "Authorization" => authorization(),
    "ChannelId" => String.t(),
    "CmafPackage" => cmaf_package(),
    "CreatedAt" => String.t(),
    "DashPackage" => dash_package(),
    "Description" => String.t(),
    "HlsPackage" => hls_package(),
    "Id" => String.t(),
    "ManifestName" => String.t(),
    "MssPackage" => mss_package(),
    "Origination" => list(any()),
    "StartoverWindowSeconds" => integer(),
    "Tags" => map(),
    "TimeDelaySeconds" => integer(),
    "Url" => String.t(),
    "Whitelist" => list(String.t()())
  }
  """
  @type describe_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rotate_ingest_endpoint_credentials_response() :: %{
    "Arn" => String.t(),
    "CreatedAt" => String.t(),
    "Description" => String.t(),
    "EgressAccessLogs" => egress_access_logs(),
    "HlsIngest" => hls_ingest(),
    "Id" => String.t(),
    "IngressAccessLogs" => ingress_access_logs(),
    "Tags" => map()
  }
  """
  @type rotate_ingest_endpoint_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_requests_exception() :: %{
    "Message" => String.t()
  }
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  hls_manifest() :: %{
    "AdMarkers" => list(any()),
    "AdTriggers" => list(list(any())()),
    "AdsOnDeliveryRestrictions" => list(any()),
    "Id" => String.t(),
    "IncludeIframeOnlyStream" => boolean(),
    "ManifestName" => String.t(),
    "PlaylistType" => list(any()),
    "PlaylistWindowSeconds" => integer(),
    "ProgramDateTimeIntervalSeconds" => integer(),
    "Url" => String.t()
  }
  """
  @type hls_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  hls_ingest() :: %{
    "IngestEndpoints" => list(ingest_endpoint()())
  }
  """
  @type hls_ingest() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_harvest_job_request() :: %{

  }
  """
  @type describe_harvest_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_origin_endpoints_response() :: %{
    "NextToken" => String.t(),
    "OriginEndpoints" => list(origin_endpoint()())
  }
  """
  @type list_origin_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  authorization() :: %{
    "CdnIdentifierSecret" => String.t(),
    "SecretsRoleArn" => String.t()
  }
  """
  @type authorization() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_harvest_job_request() :: %{
    required("EndTime") => String.t(),
    required("Id") => String.t(),
    required("OriginEndpointId") => String.t(),
    required("S3Destination") => s3_destination(),
    required("StartTime") => String.t()
  }
  """
  @type create_harvest_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  hls_encryption() :: %{
    "ConstantInitializationVector" => String.t(),
    "EncryptionMethod" => list(any()),
    "KeyRotationIntervalSeconds" => integer(),
    "RepeatExtXKey" => boolean(),
    "SpekeKeyProvider" => speke_key_provider()
  }
  """
  @type hls_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cmaf_package() :: %{
    "Encryption" => cmaf_encryption(),
    "HlsManifests" => list(hls_manifest()()),
    "SegmentDurationSeconds" => integer(),
    "SegmentPrefix" => String.t(),
    "StreamSelection" => stream_selection()
  }
  """
  @type cmaf_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_channel_response() :: %{
    "Arn" => String.t(),
    "CreatedAt" => String.t(),
    "Description" => String.t(),
    "EgressAccessLogs" => egress_access_logs(),
    "HlsIngest" => hls_ingest(),
    "Id" => String.t(),
    "IngressAccessLogs" => ingress_access_logs(),
    "Tags" => map()
  }
  """
  @type describe_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cmaf_package_create_or_update_parameters() :: %{
    "Encryption" => cmaf_encryption(),
    "HlsManifests" => list(hls_manifest_create_or_update_parameters()()),
    "SegmentDurationSeconds" => integer(),
    "SegmentPrefix" => String.t(),
    "StreamSelection" => stream_selection()
  }
  """
  @type cmaf_package_create_or_update_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_channel_request() :: %{

  }
  """
  @type describe_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  speke_key_provider() :: %{
    "CertificateArn" => String.t(),
    "EncryptionContractConfiguration" => encryption_contract_configuration(),
    "ResourceId" => String.t(),
    "RoleArn" => String.t(),
    "SystemIds" => list(String.t()()),
    "Url" => String.t()
  }
  """
  @type speke_key_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ingest_endpoint() :: %{
    "Id" => String.t(),
    "Password" => String.t(),
    "Url" => String.t(),
    "Username" => String.t()
  }
  """
  @type ingest_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_channel_request() :: %{
    optional("Description") => String.t(),
    optional("Tags") => map(),
    required("Id") => String.t()
  }
  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => map()
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  hls_package() :: %{
    "AdMarkers" => list(any()),
    "AdTriggers" => list(list(any())()),
    "AdsOnDeliveryRestrictions" => list(any()),
    "Encryption" => hls_encryption(),
    "IncludeDvbSubtitles" => boolean(),
    "IncludeIframeOnlyStream" => boolean(),
    "PlaylistType" => list(any()),
    "PlaylistWindowSeconds" => integer(),
    "ProgramDateTimeIntervalSeconds" => integer(),
    "SegmentDurationSeconds" => integer(),
    "StreamSelection" => stream_selection(),
    "UseAudioRenditionGroup" => boolean()
  }
  """
  @type hls_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_unavailable_exception() :: %{
    "Message" => String.t()
  }
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dash_package() :: %{
    "AdTriggers" => list(list(any())()),
    "AdsOnDeliveryRestrictions" => list(any()),
    "Encryption" => dash_encryption(),
    "IncludeIframeOnlyStream" => boolean(),
    "ManifestLayout" => list(any()),
    "ManifestWindowSeconds" => integer(),
    "MinBufferTimeSeconds" => integer(),
    "MinUpdatePeriodSeconds" => integer(),
    "PeriodTriggers" => list(list(any())()),
    "Profile" => list(any()),
    "SegmentDurationSeconds" => integer(),
    "SegmentTemplateFormat" => list(any()),
    "StreamSelection" => stream_selection(),
    "SuggestedPresentationDelaySeconds" => integer(),
    "UtcTiming" => list(any()),
    "UtcTimingUri" => String.t()
  }
  """
  @type dash_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_channels_response() :: %{
    "Channels" => list(channel()()),
    "NextToken" => String.t()
  }
  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  s3_destination() :: %{
    "BucketName" => String.t(),
    "ManifestKey" => String.t(),
    "RoleArn" => String.t()
  }
  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_channel_request() :: %{
    optional("Description") => String.t()
  }
  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stream_selection() :: %{
    "MaxVideoBitsPerSecond" => integer(),
    "MinVideoBitsPerSecond" => integer(),
    "StreamOrder" => list(any())
  }
  """
  @type stream_selection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  encryption_contract_configuration() :: %{
    "PresetSpeke20Audio" => list(any()),
    "PresetSpeke20Video" => list(any())
  }
  """
  @type encryption_contract_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  egress_access_logs() :: %{
    "LogGroupName" => String.t()
  }
  """
  @type egress_access_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  dash_encryption() :: %{
    "KeyRotationIntervalSeconds" => integer(),
    "SpekeKeyProvider" => speke_key_provider()
  }
  """
  @type dash_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unprocessable_entity_exception() :: %{
    "Message" => String.t()
  }
  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cmaf_encryption() :: %{
    "ConstantInitializationVector" => String.t(),
    "EncryptionMethod" => list(any()),
    "KeyRotationIntervalSeconds" => integer(),
    "SpekeKeyProvider" => speke_key_provider()
  }
  """
  @type cmaf_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{

  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_error_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  channel() :: %{
    "Arn" => String.t(),
    "CreatedAt" => String.t(),
    "Description" => String.t(),
    "EgressAccessLogs" => egress_access_logs(),
    "HlsIngest" => hls_ingest(),
    "Id" => String.t(),
    "IngressAccessLogs" => ingress_access_logs(),
    "Tags" => map()
  }
  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  harvest_job() :: %{
    "Arn" => String.t(),
    "ChannelId" => String.t(),
    "CreatedAt" => String.t(),
    "EndTime" => String.t(),
    "Id" => String.t(),
    "OriginEndpointId" => String.t(),
    "S3Destination" => s3_destination(),
    "StartTime" => String.t(),
    "Status" => list(any())
  }
  """
  @type harvest_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_harvest_job_response() :: %{
    "Arn" => String.t(),
    "ChannelId" => String.t(),
    "CreatedAt" => String.t(),
    "EndTime" => String.t(),
    "Id" => String.t(),
    "OriginEndpointId" => String.t(),
    "S3Destination" => s3_destination(),
    "StartTime" => String.t(),
    "Status" => list(any())
  }
  """
  @type describe_harvest_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_harvest_job_response() :: %{
    "Arn" => String.t(),
    "ChannelId" => String.t(),
    "CreatedAt" => String.t(),
    "EndTime" => String.t(),
    "Id" => String.t(),
    "OriginEndpointId" => String.t(),
    "S3Destination" => s3_destination(),
    "StartTime" => String.t(),
    "Status" => list(any())
  }
  """
  @type create_harvest_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  configure_logs_response() :: %{
    "Arn" => String.t(),
    "CreatedAt" => String.t(),
    "Description" => String.t(),
    "EgressAccessLogs" => egress_access_logs(),
    "HlsIngest" => hls_ingest(),
    "Id" => String.t(),
    "IngressAccessLogs" => ingress_access_logs(),
    "Tags" => map()
  }
  """
  @type configure_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_origin_endpoint_request() :: %{

  }
  """
  @type describe_origin_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  configure_logs_request() :: %{
    optional("EgressAccessLogs") => egress_access_logs(),
    optional("IngressAccessLogs") => ingress_access_logs()
  }
  """
  @type configure_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_harvest_jobs_response() :: %{
    "HarvestJobs" => list(harvest_job()()),
    "NextToken" => String.t()
  }
  """
  @type list_harvest_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_channel_response() :: %{
    "Arn" => String.t(),
    "CreatedAt" => String.t(),
    "Description" => String.t(),
    "EgressAccessLogs" => egress_access_logs(),
    "HlsIngest" => hls_ingest(),
    "Id" => String.t(),
    "IngressAccessLogs" => ingress_access_logs(),
    "Tags" => map()
  }
  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  mss_encryption() :: %{
    "SpekeKeyProvider" => speke_key_provider()
  }
  """
  @type mss_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_origin_endpoint_response() :: %{
    "Arn" => String.t(),
    "Authorization" => authorization(),
    "ChannelId" => String.t(),
    "CmafPackage" => cmaf_package(),
    "CreatedAt" => String.t(),
    "DashPackage" => dash_package(),
    "Description" => String.t(),
    "HlsPackage" => hls_package(),
    "Id" => String.t(),
    "ManifestName" => String.t(),
    "MssPackage" => mss_package(),
    "Origination" => list(any()),
    "StartoverWindowSeconds" => integer(),
    "Tags" => map(),
    "TimeDelaySeconds" => integer(),
    "Url" => String.t(),
    "Whitelist" => list(String.t()())
  }
  """
  @type update_origin_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_channels_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_origin_endpoints_request() :: %{
    optional("ChannelId") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_origin_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ingress_access_logs() :: %{
    "LogGroupName" => String.t()
  }
  """
  @type ingress_access_logs() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  mss_package() :: %{
    "Encryption" => mss_encryption(),
    "ManifestWindowSeconds" => integer(),
    "SegmentDurationSeconds" => integer(),
    "StreamSelection" => stream_selection()
  }
  """
  @type mss_package() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2017-10-12",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediapackage",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaPackage",
      signature_version: "v4",
      signing_name: "mediapackage",
      target_prefix: nil
    }
  end

  @doc """
  Changes the Channel's properities to configure log subscription
  """
  @spec configure_logs(map(), String.t(), configure_logs_request(), list()) ::
          {:ok, configure_logs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def configure_logs(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}/configure_logs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new Channel.
  """
  @spec create_channel(map(), create_channel_request(), list()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"
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
  Creates a new HarvestJob record.
  """
  @spec create_harvest_job(map(), create_harvest_job_request(), list()) ::
          {:ok, create_harvest_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def create_harvest_job(%Client{} = client, input, options \\ []) do
    url_path = "/harvest_jobs"
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
  Creates a new OriginEndpoint record.
  """
  @spec create_origin_endpoint(map(), create_origin_endpoint_request(), list()) ::
          {:ok, create_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def create_origin_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/origin_endpoints"
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
  Deletes an existing Channel.
  """
  @spec delete_channel(map(), String.t(), delete_channel_request(), list()) ::
          {:ok, delete_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def delete_channel(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
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
      202
    )
  end

  @doc """
  Deletes an existing OriginEndpoint.
  """
  @spec delete_origin_endpoint(map(), String.t(), delete_origin_endpoint_request(), list()) ::
          {:ok, delete_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def delete_origin_endpoint(%Client{} = client, id, input, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"
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
      202
    )
  end

  @doc """
  Gets details about a Channel.
  """
  @spec describe_channel(map(), String.t(), list()) ::
          {:ok, describe_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def describe_channel(%Client{} = client, id, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about an existing HarvestJob.
  """
  @spec describe_harvest_job(map(), String.t(), list()) ::
          {:ok, describe_harvest_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def describe_harvest_job(%Client{} = client, id, options \\ []) do
    url_path = "/harvest_jobs/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about an existing OriginEndpoint.
  """
  @spec describe_origin_endpoint(map(), String.t(), list()) ::
          {:ok, describe_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def describe_origin_endpoint(%Client{} = client, id, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a collection of Channels.
  """
  @spec list_channels(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def list_channels(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/channels"
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
  Returns a collection of HarvestJob records.
  """
  @spec list_harvest_jobs(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_harvest_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def list_harvest_jobs(
        %Client{} = client,
        include_channel_id \\ nil,
        include_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/harvest_jobs"
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
      if !is_nil(include_status) do
        [{"includeStatus", include_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_channel_id) do
        [{"includeChannelId", include_channel_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a collection of OriginEndpoint records.
  """
  @spec list_origin_endpoints(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_origin_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def list_origin_endpoints(
        %Client{} = client,
        channel_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/origin_endpoints"
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
      if !is_nil(channel_id) do
        [{"channelId", channel_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Changes the Channel's first IngestEndpoint's username and password.

  WARNING - This API is deprecated. Please use RotateIngestEndpointCredentials
  instead
  """
  @spec rotate_channel_credentials(
          map(),
          String.t(),
          rotate_channel_credentials_request(),
          list()
        ) ::
          {:ok, rotate_channel_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def rotate_channel_credentials(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}/credentials"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Rotate the IngestEndpoint's username and password, as specified by the
  IngestEndpoint's id.
  """
  @spec rotate_ingest_endpoint_credentials(
          map(),
          String.t(),
          String.t(),
          rotate_ingest_endpoint_credentials_request(),
          list()
        ) ::
          {:ok, rotate_ingest_endpoint_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def rotate_ingest_endpoint_credentials(
        %Client{} = client,
        id,
        ingest_endpoint_id,
        input,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(id)}/ingest_endpoints/#{AWS.Util.encode_uri(ingest_endpoint_id)}/credentials"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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

  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates an existing Channel.
  """
  @spec update_channel(map(), String.t(), update_channel_request(), list()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def update_channel(%Client{} = client, id, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing OriginEndpoint.
  """
  @spec update_origin_endpoint(map(), String.t(), update_origin_endpoint_request(), list()) ::
          {:ok, update_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forbidden_exception()}
          | {:error, internal_server_error_exception()}
          | {:error, not_found_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, too_many_requests_exception()}
          | {:error, unprocessable_entity_exception()}
  def update_origin_endpoint(%Client{} = client, id, input, options \\ []) do
    url_path = "/origin_endpoints/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
