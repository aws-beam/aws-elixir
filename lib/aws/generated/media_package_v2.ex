# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackageV2 do
  @moduledoc """

  This guide is intended for creating AWS Elemental MediaPackage resources in
  MediaPackage Version 2 (v2) starting from May 2023.

  To get started with MediaPackage v2, create your MediaPackage resources. There
  isn't an automated process to
  migrate your resources from MediaPackage v1 to MediaPackage v2.

  The names of the entities that you use to access this API, like URLs and ARNs,
  all have the versioning information
  added, like "v2", to distinguish from the prior version. If you used
  MediaPackage prior to this release, you can't use
  the MediaPackage v2 CLI or the MediaPackage v2 API to access any MediaPackage v1
  resources.

  If you created resources in MediaPackage v1, use video on demand (VOD)
  workflows, and aren't looking to migrate to MediaPackage v2 yet,
  see the [MediaPackage v1 Live API Reference](https://docs.aws.amazon.com/mediapackage/latest/apireference/what-is.html).

  This is the AWS Elemental MediaPackage v2 Live REST API Reference. It describes
  all the MediaPackage API operations for live content in detail, and provides
  sample requests, responses, and errors for the supported web services protocols.

  We assume that you have the IAM permissions that you need to use MediaPackage
  via the REST API. We also assume that you are familiar with the features and
  operations of MediaPackage, as described in the AWS Elemental MediaPackage User
  Guide.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      put_channel_policy_request() :: %{
        required("Policy") => String.t() | atom()
      }

  """
  @type put_channel_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_channel_request() :: %{}

  """
  @type delete_channel_request() :: %{}

  @typedoc """

  ## Example:

      input_switch_configuration() :: %{
        "MQCSInputSwitching" => [boolean()],
        "PreferredInput" => [integer()]
      }

  """
  @type input_switch_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_harvest_job_response() :: %{}

  """
  @type cancel_harvest_job_response() :: %{}

  @typedoc """

  ## Example:

      dash_program_information() :: %{
        "Copyright" => [String.t() | atom()],
        "LanguageCode" => [String.t() | atom()],
        "MoreInformationUrl" => [String.t() | atom()],
        "Source" => [String.t() | atom()],
        "Title" => [String.t() | atom()]
      }

  """
  @type dash_program_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_request() :: %{}

  """
  @type get_channel_request() :: %{}

  @typedoc """

  ## Example:

      put_channel_policy_response() :: %{}

  """
  @type put_channel_policy_response() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_origin_endpoint_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("DashManifests") => list(create_dash_manifest_configuration()),
        optional("Description") => String.t() | atom(),
        optional("ForceEndpointErrorConfiguration") => force_endpoint_error_configuration(),
        optional("HlsManifests") => list(create_hls_manifest_configuration()),
        optional("LowLatencyHlsManifests") => list(create_low_latency_hls_manifest_configuration()),
        optional("MssManifests") => list(create_mss_manifest_configuration()),
        optional("Segment") => segment(),
        optional("StartoverWindowSeconds") => [integer()],
        optional("Tags") => map(),
        required("ContainerType") => list(any()),
        required("OriginEndpointName") => String.t() | atom()
      }

  """
  @type create_origin_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      channel_list_configuration() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "ChannelName" => [String.t() | atom()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "InputType" => list(any()),
        "ModifiedAt" => [non_neg_integer()]
      }

  """
  @type channel_list_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harvester_schedule_configuration() :: %{
        "EndTime" => [non_neg_integer()],
        "StartTime" => [non_neg_integer()]
      }

  """
  @type harvester_schedule_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_channel_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "ChannelName" => [String.t() | atom()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "IngestEndpoints" => list(ingest_endpoint()),
        "InputSwitchConfiguration" => input_switch_configuration(),
        "InputType" => list(any()),
        "ModifiedAt" => [non_neg_integer()],
        "OutputHeaderConfiguration" => output_header_configuration(),
        "Tags" => map()
      }

  """
  @type create_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_dash_manifest_configuration() :: %{
        "ManifestName" => String.t() | atom(),
        "Url" => [String.t() | atom()]
      }

  """
  @type list_dash_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      channel_group_list_configuration() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ModifiedAt" => [non_neg_integer()]
      }

  """
  @type channel_group_list_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_channel_response() :: %{}

  """
  @type delete_channel_response() :: %{}

  @typedoc """

  ## Example:

      list_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t() | atom(),
        "ManifestName" => String.t() | atom(),
        "Url" => [String.t() | atom()]
      }

  """
  @type list_hls_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_origin_endpoint_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "ContainerType" => list(any()),
        "CreatedAt" => [non_neg_integer()],
        "DashManifests" => list(get_dash_manifest_configuration()),
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "ForceEndpointErrorConfiguration" => force_endpoint_error_configuration(),
        "HlsManifests" => list(get_hls_manifest_configuration()),
        "LowLatencyHlsManifests" => list(get_low_latency_hls_manifest_configuration()),
        "ModifiedAt" => [non_neg_integer()],
        "MssManifests" => list(get_mss_manifest_configuration()),
        "OriginEndpointName" => String.t() | atom(),
        "Segment" => segment(),
        "StartoverWindowSeconds" => [integer()],
        "Tags" => map()
      }

  """
  @type create_origin_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t() | atom(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t() | atom(),
        "ManifestWindowSeconds" => [integer()],
        "ProgramDateTimeIntervalSeconds" => [integer()],
        "ScteHls" => scte_hls(),
        "StartTag" => start_tag(),
        "UrlEncodeChildManifest" => [boolean()]
      }

  """
  @type create_hls_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_dash_manifest_configuration() :: %{
        "BaseUrls" => list(dash_base_url()),
        "Compactness" => list(any()),
        "DrmSignaling" => list(any()),
        "DvbSettings" => dash_dvb_settings(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t() | atom(),
        "ManifestWindowSeconds" => [integer()],
        "MinBufferTimeSeconds" => [integer()],
        "MinUpdatePeriodSeconds" => [integer()],
        "PeriodTriggers" => list(list(any())()),
        "Profiles" => list(list(any())()),
        "ProgramInformation" => dash_program_information(),
        "ScteDash" => scte_dash(),
        "SegmentTemplateFormat" => list(any()),
        "SubtitleConfiguration" => dash_subtitle_configuration(),
        "SuggestedPresentationDelaySeconds" => [integer()],
        "UtcTiming" => dash_utc_timing()
      }

  """
  @type create_dash_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_dvb_font_download() :: %{
        "FontFamily" => [String.t() | atom()],
        "MimeType" => [String.t() | atom()],
        "Url" => [String.t() | atom()]
      }

  """
  @type dash_dvb_font_download() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_origin_endpoint_request() :: %{
        optional("DashManifests") => list(create_dash_manifest_configuration()),
        optional("Description") => String.t() | atom(),
        optional("ETag") => String.t() | atom(),
        optional("ForceEndpointErrorConfiguration") => force_endpoint_error_configuration(),
        optional("HlsManifests") => list(create_hls_manifest_configuration()),
        optional("LowLatencyHlsManifests") => list(create_low_latency_hls_manifest_configuration()),
        optional("MssManifests") => list(create_mss_manifest_configuration()),
        optional("Segment") => segment(),
        optional("StartoverWindowSeconds") => [integer()],
        required("ContainerType") => list(any())
      }

  """
  @type update_origin_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_channel_policy_request() :: %{}

  """
  @type delete_channel_policy_request() :: %{}

  @typedoc """

  ## Example:

      harvested_dash_manifest() :: %{
        "ManifestName" => String.t() | atom()
      }

  """
  @type harvested_dash_manifest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_origin_endpoint_policy_request() :: %{
        optional("CdnAuthConfiguration") => cdn_auth_configuration(),
        required("Policy") => String.t() | atom()
      }

  """
  @type put_origin_endpoint_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_utc_timing() :: %{
        "TimingMode" => list(any()),
        "TimingSource" => [String.t() | atom()]
      }

  """
  @type dash_utc_timing() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_harvest_jobs_request() :: %{
        optional("ChannelName") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()],
        optional("OriginEndpointName") => String.t() | atom(),
        optional("Status") => list(any())
      }

  """
  @type list_harvest_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_origin_endpoint_response() :: %{}

  """
  @type delete_origin_endpoint_response() :: %{}

  @typedoc """

  ## Example:

      delete_origin_endpoint_request() :: %{}

  """
  @type delete_origin_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      get_mss_manifest_configuration() :: %{
        "FilterConfiguration" => filter_configuration(),
        "ManifestLayout" => list(any()),
        "ManifestName" => String.t() | atom(),
        "ManifestWindowSeconds" => [integer()],
        "Url" => [String.t() | atom()]
      }

  """
  @type get_mss_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_low_latency_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t() | atom(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t() | atom(),
        "ManifestWindowSeconds" => [integer()],
        "ProgramDateTimeIntervalSeconds" => [integer()],
        "ScteHls" => scte_hls(),
        "StartTag" => start_tag(),
        "Url" => [String.t() | atom()],
        "UrlEncodeChildManifest" => [boolean()]
      }

  """
  @type get_low_latency_hls_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t() | atom(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t() | atom(),
        "ManifestWindowSeconds" => [integer()],
        "ProgramDateTimeIntervalSeconds" => [integer()],
        "ScteHls" => scte_hls(),
        "StartTag" => start_tag(),
        "Url" => [String.t() | atom()],
        "UrlEncodeChildManifest" => [boolean()]
      }

  """
  @type get_hls_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_channel_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()]
      }

  """
  @type list_channel_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      segment() :: %{
        "Encryption" => encryption(),
        "IncludeIframeOnlyStreams" => [boolean()],
        "Scte" => scte(),
        "SegmentDurationSeconds" => [integer()],
        "SegmentName" => [String.t() | atom()],
        "TsIncludeDvbSubtitles" => [boolean()],
        "TsUseAudioRenditionGroup" => [boolean()]
      }

  """
  @type segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_origin_endpoints_response() :: %{
        "Items" => list(origin_endpoint_list_configuration()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_origin_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_channel_group_request() :: %{}

  """
  @type delete_channel_group_request() :: %{}

  @typedoc """

  ## Example:

      create_harvest_job_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("HarvestJobName") => String.t() | atom(),
        optional("Tags") => map(),
        required("Destination") => destination(),
        required("HarvestedManifests") => harvested_manifests(),
        required("ScheduleConfiguration") => harvester_schedule_configuration()
      }

  """
  @type create_harvest_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harvested_low_latency_hls_manifest() :: %{
        "ManifestName" => String.t() | atom()
      }

  """
  @type harvested_low_latency_hls_manifest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_tag() :: %{
        "Precise" => [boolean()],
        "TimeOffset" => [float()]
      }

  """
  @type start_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      force_endpoint_error_configuration() :: %{
        "EndpointErrorConditions" => list(list(any())())
      }

  """
  @type force_endpoint_error_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      output_header_configuration() :: %{
        "PublishMQCS" => [boolean()]
      }

  """
  @type output_header_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_origin_endpoint_policy_response() :: %{}

  """
  @type put_origin_endpoint_policy_response() :: %{}

  @typedoc """

  ## Example:

      list_mss_manifest_configuration() :: %{
        "ManifestName" => String.t() | atom(),
        "Url" => [String.t() | atom()]
      }

  """
  @type list_mss_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_ttml_configuration() :: %{
        "TtmlProfile" => list(any())
      }

  """
  @type dash_ttml_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "ConflictExceptionType" => list(any()),
        "Message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()],
        "ResourceTypeNotFound" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cdn_auth_configuration() :: %{
        "CdnIdentifierSecretArns" => list(String.t() | atom()),
        "SecretsRoleArn" => [String.t() | atom()]
      }

  """
  @type cdn_auth_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_subtitle_configuration() :: %{
        "TtmlConfiguration" => dash_ttml_configuration()
      }

  """
  @type dash_subtitle_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_channel_group_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("ChannelGroupName") => String.t() | atom()
      }

  """
  @type create_channel_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_dvb_metrics_reporting() :: %{
        "Probability" => [integer()],
        "ReportingUrl" => [String.t() | atom()]
      }

  """
  @type dash_dvb_metrics_reporting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_base_url() :: %{
        "DvbPriority" => [integer()],
        "DvbWeight" => [integer()],
        "ServiceLocation" => [String.t() | atom()],
        "Url" => [String.t() | atom()]
      }

  """
  @type dash_base_url() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_origin_endpoint_policy_response() :: %{}

  """
  @type delete_origin_endpoint_policy_response() :: %{}

  @typedoc """

  ## Example:

      get_origin_endpoint_policy_request() :: %{}

  """
  @type get_origin_endpoint_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_channel_policy_response() :: %{}

  """
  @type delete_channel_policy_response() :: %{}

  @typedoc """

  ## Example:

      reset_origin_endpoint_state_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "OriginEndpointName" => String.t() | atom(),
        "ResetAt" => [non_neg_integer()]
      }

  """
  @type reset_origin_endpoint_state_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dash_dvb_settings() :: %{
        "ErrorMetrics" => list(dash_dvb_metrics_reporting()),
        "FontDownload" => dash_dvb_font_download()
      }

  """
  @type dash_dvb_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_channel_group_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ETag") => String.t() | atom()
      }

  """
  @type update_channel_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      speke_key_provider() :: %{
        "DrmSystems" => list(list(any())()),
        "EncryptionContractConfiguration" => encryption_contract_configuration(),
        "ResourceId" => [String.t() | atom()],
        "RoleArn" => [String.t() | atom()],
        "Url" => [String.t() | atom()]
      }

  """
  @type speke_key_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption() :: %{
        "CmafExcludeSegmentDrmMetadata" => [boolean()],
        "ConstantInitializationVector" => [String.t() | atom()],
        "EncryptionMethod" => encryption_method(),
        "KeyRotationIntervalSeconds" => [integer()],
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type encryption() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ingest_endpoint() :: %{
        "Id" => [String.t() | atom()],
        "Url" => [String.t() | atom()]
      }

  """
  @type ingest_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_channel_group_response() :: %{}

  """
  @type delete_channel_group_response() :: %{}

  @typedoc """

  ## Example:

      create_channel_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("InputSwitchConfiguration") => input_switch_configuration(),
        optional("InputType") => list(any()),
        optional("OutputHeaderConfiguration") => output_header_configuration(),
        optional("Tags") => map(),
        required("ChannelName") => String.t() | atom()
      }

  """
  @type create_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_configuration() :: %{
        "ClipStartTime" => [non_neg_integer()],
        "End" => [non_neg_integer()],
        "ManifestFilter" => [String.t() | atom()],
        "Start" => [non_neg_integer()],
        "TimeDelaySeconds" => [integer()]
      }

  """
  @type filter_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_policy_response() :: %{
        "ChannelGroupName" => [String.t() | atom()],
        "ChannelName" => [String.t() | atom()],
        "Policy" => String.t() | atom()
      }

  """
  @type get_channel_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_dash_manifest_configuration() :: %{
        "BaseUrls" => list(dash_base_url()),
        "Compactness" => list(any()),
        "DrmSignaling" => list(any()),
        "DvbSettings" => dash_dvb_settings(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t() | atom(),
        "ManifestWindowSeconds" => [integer()],
        "MinBufferTimeSeconds" => [integer()],
        "MinUpdatePeriodSeconds" => [integer()],
        "PeriodTriggers" => list(list(any())()),
        "Profiles" => list(list(any())()),
        "ProgramInformation" => dash_program_information(),
        "ScteDash" => scte_dash(),
        "SegmentTemplateFormat" => list(any()),
        "SubtitleConfiguration" => dash_subtitle_configuration(),
        "SuggestedPresentationDelaySeconds" => [integer()],
        "Url" => [String.t() | atom()],
        "UtcTiming" => dash_utc_timing()
      }

  """
  @type get_dash_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        "Items" => list(channel_list_configuration()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_channels_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_origin_endpoint_policy_request() :: %{}

  """
  @type delete_origin_endpoint_policy_request() :: %{}

  @typedoc """

  ## Example:

      create_mss_manifest_configuration() :: %{
        "FilterConfiguration" => filter_configuration(),
        "ManifestLayout" => list(any()),
        "ManifestName" => String.t() | atom(),
        "ManifestWindowSeconds" => [integer()]
      }

  """
  @type create_mss_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_channel_group_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "EgressDomain" => [String.t() | atom()],
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }

  """
  @type update_channel_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_channel_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("ETag") => String.t() | atom(),
        optional("InputSwitchConfiguration") => input_switch_configuration(),
        optional("OutputHeaderConfiguration") => output_header_configuration()
      }

  """
  @type update_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_contract_configuration() :: %{
        "PresetSpeke20Audio" => list(any()),
        "PresetSpeke20Video" => list(any())
      }

  """
  @type encryption_contract_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harvested_hls_manifest() :: %{
        "ManifestName" => String.t() | atom()
      }

  """
  @type harvested_hls_manifest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scte_dash() :: %{
        "AdMarkerDash" => list(any())
      }

  """
  @type scte_dash() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_channel_groups_response() :: %{
        "Items" => list(channel_group_list_configuration()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_channel_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_harvest_job_request() :: %{
        optional("ETag") => String.t() | atom()
      }

  """
  @type cancel_harvest_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_method() :: %{
        "CmafEncryptionMethod" => list(any()),
        "IsmEncryptionMethod" => list(any()),
        "TsEncryptionMethod" => list(any())
      }

  """
  @type encryption_method() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scte_hls() :: %{
        "AdMarkerHls" => list(any())
      }

  """
  @type scte_hls() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reset_origin_endpoint_state_request() :: %{}

  """
  @type reset_origin_endpoint_state_request() :: %{}

  @typedoc """

  ## Example:

      get_harvest_job_request() :: %{}

  """
  @type get_harvest_job_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | atom()],
        "ValidationExceptionType" => list(any())
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      destination() :: %{
        "S3Destination" => s3_destination_config()
      }

  """
  @type destination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_low_latency_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t() | atom(),
        "ManifestName" => String.t() | atom(),
        "Url" => [String.t() | atom()]
      }

  """
  @type list_low_latency_hls_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_harvest_job_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "Destination" => destination(),
        "ETag" => String.t() | atom(),
        "ErrorMessage" => [String.t() | atom()],
        "HarvestJobName" => String.t() | atom(),
        "HarvestedManifests" => harvested_manifests(),
        "ModifiedAt" => [non_neg_integer()],
        "OriginEndpointName" => String.t() | atom(),
        "ScheduleConfiguration" => harvester_schedule_configuration(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_harvest_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harvest_job() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "Destination" => destination(),
        "ETag" => String.t() | atom(),
        "ErrorMessage" => [String.t() | atom()],
        "HarvestJobName" => String.t() | atom(),
        "HarvestedManifests" => harvested_manifests(),
        "ModifiedAt" => [non_neg_integer()],
        "OriginEndpointName" => String.t() | atom(),
        "ScheduleConfiguration" => harvester_schedule_configuration(),
        "Status" => list(any())
      }

  """
  @type harvest_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_group_request() :: %{}

  """
  @type get_channel_group_request() :: %{}

  @typedoc """

  ## Example:

      scte() :: %{
        "ScteFilter" => list(list(any())())
      }

  """
  @type scte() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "ChannelName" => [String.t() | atom()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "IngestEndpoints" => list(ingest_endpoint()),
        "InputSwitchConfiguration" => input_switch_configuration(),
        "InputType" => list(any()),
        "ModifiedAt" => [non_neg_integer()],
        "OutputHeaderConfiguration" => output_header_configuration(),
        "ResetAt" => [non_neg_integer()],
        "Tags" => map()
      }

  """
  @type get_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reset_channel_state_request() :: %{}

  """
  @type reset_channel_state_request() :: %{}

  @typedoc """

  ## Example:

      create_harvest_job_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "Destination" => destination(),
        "ETag" => String.t() | atom(),
        "ErrorMessage" => [String.t() | atom()],
        "HarvestJobName" => String.t() | atom(),
        "HarvestedManifests" => harvested_manifests(),
        "ModifiedAt" => [non_neg_integer()],
        "OriginEndpointName" => String.t() | atom(),
        "ScheduleConfiguration" => harvester_schedule_configuration(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type create_harvest_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_harvest_jobs_response() :: %{
        "Items" => list(harvest_job()),
        "NextToken" => [String.t() | atom()]
      }

  """
  @type list_harvest_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_origin_endpoint_request() :: %{}

  """
  @type get_origin_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      update_channel_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "ChannelName" => [String.t() | atom()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "IngestEndpoints" => list(ingest_endpoint()),
        "InputSwitchConfiguration" => input_switch_configuration(),
        "InputType" => list(any()),
        "ModifiedAt" => [non_neg_integer()],
        "OutputHeaderConfiguration" => output_header_configuration(),
        "Tags" => map()
      }

  """
  @type update_channel_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      origin_endpoint_list_configuration() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "ContainerType" => list(any()),
        "CreatedAt" => [non_neg_integer()],
        "DashManifests" => list(list_dash_manifest_configuration()),
        "Description" => String.t() | atom(),
        "ForceEndpointErrorConfiguration" => force_endpoint_error_configuration(),
        "HlsManifests" => list(list_hls_manifest_configuration()),
        "LowLatencyHlsManifests" => list(list_low_latency_hls_manifest_configuration()),
        "ModifiedAt" => [non_neg_integer()],
        "MssManifests" => list(list_mss_manifest_configuration()),
        "OriginEndpointName" => String.t() | atom()
      }

  """
  @type origin_endpoint_list_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_policy_request() :: %{}

  """
  @type get_channel_policy_request() :: %{}

  @typedoc """

  ## Example:

      reset_channel_state_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "ChannelName" => [String.t() | atom()],
        "ResetAt" => [non_neg_integer()]
      }

  """
  @type reset_channel_state_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_channel_group_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "EgressDomain" => [String.t() | atom()],
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }

  """
  @type get_channel_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_low_latency_hls_manifest_configuration() :: %{
        "ChildManifestName" => String.t() | atom(),
        "FilterConfiguration" => filter_configuration(),
        "ManifestName" => String.t() | atom(),
        "ManifestWindowSeconds" => [integer()],
        "ProgramDateTimeIntervalSeconds" => [integer()],
        "ScteHls" => scte_hls(),
        "StartTag" => start_tag(),
        "UrlEncodeChildManifest" => [boolean()]
      }

  """
  @type create_low_latency_hls_manifest_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_channel_group_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => [String.t() | atom()],
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "EgressDomain" => [String.t() | atom()],
        "ModifiedAt" => [non_neg_integer()],
        "Tags" => map()
      }

  """
  @type create_channel_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      harvested_manifests() :: %{
        "DashManifests" => list(harvested_dash_manifest()),
        "HlsManifests" => list(harvested_hls_manifest()),
        "LowLatencyHlsManifests" => list(harvested_low_latency_hls_manifest())
      }

  """
  @type harvested_manifests() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_origin_endpoint_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "ContainerType" => list(any()),
        "CreatedAt" => [non_neg_integer()],
        "DashManifests" => list(get_dash_manifest_configuration()),
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "ForceEndpointErrorConfiguration" => force_endpoint_error_configuration(),
        "HlsManifests" => list(get_hls_manifest_configuration()),
        "LowLatencyHlsManifests" => list(get_low_latency_hls_manifest_configuration()),
        "ModifiedAt" => [non_neg_integer()],
        "MssManifests" => list(get_mss_manifest_configuration()),
        "OriginEndpointName" => String.t() | atom(),
        "Segment" => segment(),
        "StartoverWindowSeconds" => [integer()],
        "Tags" => map()
      }

  """
  @type update_origin_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()]
      }

  """
  @type list_channels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_origin_endpoints_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | atom()]
      }

  """
  @type list_origin_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_destination_config() :: %{
        "BucketName" => String.t() | atom(),
        "DestinationPath" => String.t() | atom()
      }

  """
  @type s3_destination_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_origin_endpoint_policy_response() :: %{
        "CdnAuthConfiguration" => cdn_auth_configuration(),
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "OriginEndpointName" => String.t() | atom(),
        "Policy" => String.t() | atom()
      }

  """
  @type get_origin_endpoint_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_origin_endpoint_response() :: %{
        "Arn" => [String.t() | atom()],
        "ChannelGroupName" => String.t() | atom(),
        "ChannelName" => String.t() | atom(),
        "ContainerType" => list(any()),
        "CreatedAt" => [non_neg_integer()],
        "DashManifests" => list(get_dash_manifest_configuration()),
        "Description" => String.t() | atom(),
        "ETag" => String.t() | atom(),
        "ForceEndpointErrorConfiguration" => force_endpoint_error_configuration(),
        "HlsManifests" => list(get_hls_manifest_configuration()),
        "LowLatencyHlsManifests" => list(get_low_latency_hls_manifest_configuration()),
        "ModifiedAt" => [non_neg_integer()],
        "MssManifests" => list(get_mss_manifest_configuration()),
        "OriginEndpointName" => String.t() | atom(),
        "ResetAt" => [non_neg_integer()],
        "Segment" => segment(),
        "StartoverWindowSeconds" => [integer()],
        "Tags" => map()
      }

  """
  @type get_origin_endpoint_response() :: %{(String.t() | atom()) => any()}

  @type cancel_harvest_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_channel_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_harvest_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_origin_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_channel_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_channel_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_origin_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_origin_endpoint_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_channel_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_channel_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_harvest_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_origin_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_origin_endpoint_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_channel_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_channels_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_harvest_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_origin_endpoints_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception()

  @type put_channel_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_origin_endpoint_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reset_channel_state_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type reset_origin_endpoint_state_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() :: validation_exception()

  @type untag_resource_errors() :: validation_exception()

  @type update_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_channel_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_origin_endpoint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-12-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediapackagev2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MediaPackageV2",
      signature_version: "v4",
      signing_name: "mediapackagev2",
      target_prefix: nil
    }
  end

  @doc """
  Cancels an in-progress harvest job.
  """
  @spec cancel_harvest_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          cancel_harvest_job_request(),
          list()
        ) ::
          {:ok, cancel_harvest_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_harvest_job_errors()}
  def cancel_harvest_job(
        %Client{} = client,
        channel_group_name,
        channel_name,
        harvest_job_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/harvestJob/#{AWS.Util.encode_uri(harvest_job_name)}"

    {headers, input} =
      [
        {"ETag", "x-amzn-update-if-match"}
      ]
      |> Request.build_params(input)

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
  Create a channel to start receiving content streams.

  The channel represents the input to MediaPackage for incoming live content from
  an encoder such as AWS Elemental MediaLive. The channel receives content, and
  after packaging it, outputs it through an origin endpoint to downstream devices
  (such as video players or CDNs) that request the content. You can create only
  one channel with each request. We recommend that you spread out channels between
  channel groups, such as putting redundant channels in the same AWS Region in
  different channel groups.
  """
  @spec create_channel(map(), String.t() | atom(), create_channel_request(), list()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, channel_group_name, input, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel"

    {headers, input} =
      [
        {"ClientToken", "x-amzn-client-token"}
      ]
      |> Request.build_params(input)

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
  Create a channel group to group your channels and origin endpoints.

  A channel group is the top-level resource that consists of channels and origin
  endpoints that are associated with it and that provides predictable URLs for
  stream delivery. All channels and origin endpoints within the channel group are
  guaranteed to share the DNS. You can create only one channel group with each
  request.
  """
  @spec create_channel_group(map(), create_channel_group_request(), list()) ::
          {:ok, create_channel_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_channel_group_errors()}
  def create_channel_group(%Client{} = client, input, options \\ []) do
    url_path = "/channelGroup"

    {headers, input} =
      [
        {"ClientToken", "x-amzn-client-token"}
      ]
      |> Request.build_params(input)

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
  Creates a new harvest job to export content from a MediaPackage v2 channel to an
  S3 bucket.
  """
  @spec create_harvest_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          create_harvest_job_request(),
          list()
        ) ::
          {:ok, create_harvest_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_harvest_job_errors()}
  def create_harvest_job(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/harvestJob"

    {headers, input} =
      [
        {"ClientToken", "x-amzn-client-token"}
      ]
      |> Request.build_params(input)

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
  The endpoint is attached to a channel, and represents the output of the live
  content.

  You can associate multiple endpoints to a single channel. Each endpoint gives
  players and downstream CDNs (such as Amazon CloudFront) access to the content
  for playback. Content can't be served from a channel until it has an endpoint.
  You can create only one endpoint with each request.
  """
  @spec create_origin_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_origin_endpoint_request(),
          list()
        ) ::
          {:ok, create_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_origin_endpoint_errors()}
  def create_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint"

    {headers, input} =
      [
        {"ClientToken", "x-amzn-client-token"}
      ]
      |> Request.build_params(input)

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
  Delete a channel to stop AWS Elemental MediaPackage from receiving further
  content.

  You must delete the channel's origin endpoints before you can delete the
  channel.
  """
  @spec delete_channel(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_channel_request(),
          list()
        ) ::
          {:ok, delete_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, channel_group_name, channel_name, input, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

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
  Delete a channel group.

  You must delete the channel group's channels and origin endpoints before you can
  delete the channel group. If you delete a channel group, you'll lose access to
  the egress domain and will have to create a new channel group to replace it.
  """
  @spec delete_channel_group(map(), String.t() | atom(), delete_channel_group_request(), list()) ::
          {:ok, delete_channel_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_channel_group_errors()}
  def delete_channel_group(%Client{} = client, channel_group_name, input, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"
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
  Delete a channel policy.
  """
  @spec delete_channel_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_channel_policy_request(),
          list()
        ) ::
          {:ok, delete_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_channel_policy_errors()}
  def delete_channel_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

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
  Origin endpoints can serve content until they're deleted.

  Delete the endpoint if it should no longer respond to playback requests. You
  must delete all endpoints from a channel before you can delete the channel.
  """
  @spec delete_origin_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_origin_endpoint_request(),
          list()
        ) ::
          {:ok, delete_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_origin_endpoint_errors()}
  def delete_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

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
  Delete an origin endpoint policy.
  """
  @spec delete_origin_endpoint_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_origin_endpoint_policy_request(),
          list()
        ) ::
          {:ok, delete_origin_endpoint_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_origin_endpoint_policy_errors()}
  def delete_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

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
  Retrieves the specified channel that's configured in AWS Elemental MediaPackage.
  """
  @spec get_channel(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_channel_errors()}
  def get_channel(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified channel group that's configured in AWS Elemental
  MediaPackage.
  """
  @spec get_channel_group(map(), String.t() | atom(), list()) ::
          {:ok, get_channel_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_channel_group_errors()}
  def get_channel_group(%Client{} = client, channel_group_name, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified channel policy that's configured in AWS Elemental
  MediaPackage.

  With policies, you can specify who has access to AWS resources and what actions
  they can perform on those resources.
  """
  @spec get_channel_policy(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_channel_policy_errors()}
  def get_channel_policy(%Client{} = client, channel_group_name, channel_name, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a specific harvest job.
  """
  @spec get_harvest_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_harvest_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_harvest_job_errors()}
  def get_harvest_job(
        %Client{} = client,
        channel_group_name,
        channel_name,
        harvest_job_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/harvestJob/#{AWS.Util.encode_uri(harvest_job_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified origin endpoint that's configured in AWS Elemental
  MediaPackage to obtain its playback URL and to view the packaging settings that
  it's currently using.
  """
  @spec get_origin_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_origin_endpoint_errors()}
  def get_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified origin endpoint policy that's configured in AWS
  Elemental MediaPackage.
  """
  @spec get_origin_endpoint_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_origin_endpoint_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_origin_endpoint_policy_errors()}
  def get_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all channel groups that are configured in Elemental MediaPackage.
  """
  @spec list_channel_groups(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_channel_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_channel_groups_errors()}
  def list_channel_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channelGroup"
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
  Retrieves all channels in a specific channel group that are configured in AWS
  Elemental MediaPackage.
  """
  @spec list_channels(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_channels_errors()}
  def list_channels(
        %Client{} = client,
        channel_group_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel"
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
  Retrieves a list of harvest jobs that match the specified criteria.
  """
  @spec list_harvest_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_harvest_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_harvest_jobs_errors()}
  def list_harvest_jobs(
        %Client{} = client,
        channel_group_name,
        channel_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        origin_endpoint_name \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/harvestJob"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"includeStatus", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(origin_endpoint_name) do
        [{"originEndpointName", origin_endpoint_name} | query_params]
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
      if !is_nil(channel_name) do
        [{"channelName", channel_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all origin endpoints in a specific channel that are configured in AWS
  Elemental MediaPackage.
  """
  @spec list_origin_endpoints(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_origin_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_origin_endpoints_errors()}
  def list_origin_endpoints(
        %Client{} = client,
        channel_group_name,
        channel_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint"

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
  Lists the tags assigned to a resource.
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
  Attaches an IAM policy to the specified channel.

  With policies, you can specify who has access to AWS resources and what actions
  they can perform on those resources. You can attach only one policy with each
  request.
  """
  @spec put_channel_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_channel_policy_request(),
          list()
        ) ::
          {:ok, put_channel_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_channel_policy_errors()}
  def put_channel_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/policy"

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
  Attaches an IAM policy to the specified origin endpoint.

  You can attach only one policy with each request.
  """
  @spec put_origin_endpoint_policy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_origin_endpoint_policy_request(),
          list()
        ) ::
          {:ok, put_origin_endpoint_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_origin_endpoint_policy_errors()}
  def put_origin_endpoint_policy(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/policy"

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
  Resetting the channel can help to clear errors from misconfigurations in the
  encoder.

  A reset refreshes the ingest stream and removes previous content.

  Be sure to stop the encoder before you reset the channel, and wait at least 30
  seconds before you restart the encoder.
  """
  @spec reset_channel_state(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          reset_channel_state_request(),
          list()
        ) ::
          {:ok, reset_channel_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_channel_state_errors()}
  def reset_channel_state(
        %Client{} = client,
        channel_group_name,
        channel_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/reset"

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
  Resetting the origin endpoint can help to resolve unexpected behavior and other
  content packaging issues.

  It also helps to preserve special events when you don't want the previous
  content to be available for viewing. A reset clears out all previous content
  from the origin endpoint.

  MediaPackage might return old content from this endpoint in the first 30 seconds
  after the endpoint reset. For best results, when possible, wait 30 seconds from
  endpoint reset to send playback requests to this endpoint.
  """
  @spec reset_origin_endpoint_state(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          reset_origin_endpoint_state_request(),
          list()
        ) ::
          {:ok, reset_origin_endpoint_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reset_origin_endpoint_state_errors()}
  def reset_origin_endpoint_state(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}/reset"

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
  Assigns one of more tags (key-value pairs) to the specified MediaPackage
  resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user
  permissions, by granting a user permission to access or change only resources
  with certain tag values.
  You can use the TagResource operation with a resource that already has tags. If
  you specify a new tag
  key for the resource, this tag is appended to the list of tags associated with
  the resource. If you
  specify a tag key that is already associated with the resource, the new tag
  value that you specify replaces the previous value for that tag.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
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
  Removes one or more tags from the specified resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
      204
    )
  end

  @doc """
  Update the specified channel.

  You can edit if MediaPackage sends ingest or egress access logs to the
  CloudWatch log group, if content will be encrypted, the description on a
  channel, and your channel's policy settings. You can't edit the name of the
  channel or CloudFront distribution details.

  Any edits you make that impact the video output may not be reflected for a few
  minutes.
  """
  @spec update_channel(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_channel_request(),
          list()
        ) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, channel_group_name, channel_name, input, options \\ []) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/"

    {headers, input} =
      [
        {"ETag", "x-amzn-update-if-match"}
      ]
      |> Request.build_params(input)

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
  Update the specified channel group.

  You can edit the description on a channel group for easier identification later
  from the AWS Elemental MediaPackage console. You can't edit the name of the
  channel group.

  Any edits you make that impact the video output may not be reflected for a few
  minutes.
  """
  @spec update_channel_group(map(), String.t() | atom(), update_channel_group_request(), list()) ::
          {:ok, update_channel_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_channel_group_errors()}
  def update_channel_group(%Client{} = client, channel_group_name, input, options \\ []) do
    url_path = "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}"

    {headers, input} =
      [
        {"ETag", "x-amzn-update-if-match"}
      ]
      |> Request.build_params(input)

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
  Update the specified origin endpoint.

  Edit the packaging preferences on an endpoint to optimize the viewing
  experience. You can't edit the name of the endpoint.

  Any edits you make that impact the video output may not be reflected for a few
  minutes.
  """
  @spec update_origin_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_origin_endpoint_request(),
          list()
        ) ::
          {:ok, update_origin_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_origin_endpoint_errors()}
  def update_origin_endpoint(
        %Client{} = client,
        channel_group_name,
        channel_name,
        origin_endpoint_name,
        input,
        options \\ []
      ) do
    url_path =
      "/channelGroup/#{AWS.Util.encode_uri(channel_group_name)}/channel/#{AWS.Util.encode_uri(channel_name)}/originEndpoint/#{AWS.Util.encode_uri(origin_endpoint_name)}"

    {headers, input} =
      [
        {"ETag", "x-amzn-update-if-match"}
      ]
      |> Request.build_params(input)

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
