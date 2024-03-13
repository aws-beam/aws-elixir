# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaPackageVod do
  @moduledoc """
  AWS Elemental MediaPackage VOD
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

      describe_packaging_configuration_response() :: %{
        "Arn" => String.t(),
        "CmafPackage" => cmaf_package(),
        "CreatedAt" => String.t(),
        "DashPackage" => dash_package(),
        "HlsPackage" => hls_package(),
        "Id" => String.t(),
        "MssPackage" => mss_package(),
        "PackagingGroupId" => String.t(),
        "Tags" => map()
      }

  """
  @type describe_packaging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_packaging_configuration_request() :: %{
        optional("CmafPackage") => cmaf_package(),
        optional("DashPackage") => dash_package(),
        optional("HlsPackage") => hls_package(),
        optional("MssPackage") => mss_package(),
        optional("Tags") => map(),
        required("Id") => String.t(),
        required("PackagingGroupId") => String.t()
      }

  """
  @type create_packaging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_packaging_configurations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PackagingGroupId") => String.t()
      }

  """
  @type list_packaging_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_packaging_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_packaging_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "EgressEndpoints" => list(egress_endpoint()()),
        "Id" => String.t(),
        "PackagingGroupId" => String.t(),
        "ResourceId" => String.t(),
        "SourceArn" => String.t(),
        "SourceRoleArn" => String.t(),
        "Tags" => map()
      }

  """
  @type describe_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_packaging_group_request() :: %{}

  """
  @type delete_packaging_group_request() :: %{}

  @typedoc """

  ## Example:

      packaging_group() :: %{
        "ApproximateAssetCount" => integer(),
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "CreatedAt" => String.t(),
        "DomainName" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "Id" => String.t(),
        "Tags" => map()
      }

  """
  @type packaging_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_request() :: %{
        optional("ResourceId") => String.t(),
        optional("Tags") => map(),
        required("Id") => String.t(),
        required("PackagingGroupId") => String.t(),
        required("SourceArn") => String.t(),
        required("SourceRoleArn") => String.t()
      }

  """
  @type create_asset_request() :: %{String.t() => any()}

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
        "IncludeIframeOnlyStream" => boolean(),
        "ManifestName" => String.t(),
        "ProgramDateTimeIntervalSeconds" => integer(),
        "RepeatExtXKey" => boolean(),
        "StreamSelection" => stream_selection()
      }

  """
  @type hls_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_packaging_group_response() :: %{}

  """
  @type delete_packaging_group_response() :: %{}

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

      hls_encryption() :: %{
        "ConstantInitializationVector" => String.t(),
        "EncryptionMethod" => list(any()),
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type hls_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_package() :: %{
        "Encryption" => cmaf_encryption(),
        "HlsManifests" => list(hls_manifest()()),
        "IncludeEncoderConfigurationInSegments" => boolean(),
        "SegmentDurationSeconds" => integer()
      }

  """
  @type cmaf_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_packaging_configuration_response() :: %{}

  """
  @type delete_packaging_configuration_response() :: %{}

  @typedoc """

  ## Example:

      update_packaging_group_request() :: %{
        optional("Authorization") => authorization()
      }

  """
  @type update_packaging_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_packaging_group_response() :: %{
        "ApproximateAssetCount" => integer(),
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "CreatedAt" => String.t(),
        "DomainName" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "Id" => String.t(),
        "Tags" => map()
      }

  """
  @type update_packaging_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_packaging_group_request() :: %{
        optional("Authorization") => authorization(),
        optional("EgressAccessLogs") => egress_access_logs(),
        optional("Tags") => map(),
        required("Id") => String.t()
      }

  """
  @type create_packaging_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      speke_key_provider() :: %{
        "EncryptionContractConfiguration" => encryption_contract_configuration(),
        "RoleArn" => String.t(),
        "SystemIds" => list(String.t()()),
        "Url" => String.t()
      }

  """
  @type speke_key_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_response() :: %{}

  """
  @type delete_asset_response() :: %{}

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
        "Encryption" => hls_encryption(),
        "HlsManifests" => list(hls_manifest()()),
        "IncludeDvbSubtitles" => boolean(),
        "SegmentDurationSeconds" => integer(),
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
        "DashManifests" => list(dash_manifest()()),
        "Encryption" => dash_encryption(),
        "IncludeEncoderConfigurationInSegments" => boolean(),
        "IncludeIframeOnlyStream" => boolean(),
        "PeriodTriggers" => list(list(any())()),
        "SegmentDurationSeconds" => integer(),
        "SegmentTemplateFormat" => list(any())
      }

  """
  @type dash_package() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      packaging_configuration() :: %{
        "Arn" => String.t(),
        "CmafPackage" => cmaf_package(),
        "CreatedAt" => String.t(),
        "DashPackage" => dash_package(),
        "HlsPackage" => hls_package(),
        "Id" => String.t(),
        "MssPackage" => mss_package(),
        "PackagingGroupId" => String.t(),
        "Tags" => map()
      }

  """
  @type packaging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_packaging_configurations_response() :: %{
        "NextToken" => String.t(),
        "PackagingConfigurations" => list(packaging_configuration()())
      }

  """
  @type list_packaging_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_packaging_group_response() :: %{
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "CreatedAt" => String.t(),
        "DomainName" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "Id" => String.t(),
        "Tags" => map()
      }

  """
  @type create_packaging_group_response() :: %{String.t() => any()}

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

      dash_manifest() :: %{
        "ManifestLayout" => list(any()),
        "ManifestName" => String.t(),
        "MinBufferTimeSeconds" => integer(),
        "Profile" => list(any()),
        "ScteMarkersSource" => list(any()),
        "StreamSelection" => stream_selection()
      }

  """
  @type dash_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      egress_endpoint() :: %{
        "PackagingConfigurationId" => String.t(),
        "Status" => String.t(),
        "Url" => String.t()
      }

  """
  @type egress_endpoint() :: %{String.t() => any()}

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
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type dash_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_asset_request() :: %{}

  """
  @type delete_asset_request() :: %{}

  @typedoc """

  ## Example:

      create_packaging_configuration_response() :: %{
        "Arn" => String.t(),
        "CmafPackage" => cmaf_package(),
        "CreatedAt" => String.t(),
        "DashPackage" => dash_package(),
        "HlsPackage" => hls_package(),
        "Id" => String.t(),
        "MssPackage" => mss_package(),
        "PackagingGroupId" => String.t(),
        "Tags" => map()
      }

  """
  @type create_packaging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      asset_shallow() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "Id" => String.t(),
        "PackagingGroupId" => String.t(),
        "ResourceId" => String.t(),
        "SourceArn" => String.t(),
        "SourceRoleArn" => String.t(),
        "Tags" => map()
      }

  """
  @type asset_shallow() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unprocessable_entity_exception() :: %{
        "Message" => String.t()
      }

  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_asset_response() :: %{
        "Arn" => String.t(),
        "CreatedAt" => String.t(),
        "EgressEndpoints" => list(egress_endpoint()()),
        "Id" => String.t(),
        "PackagingGroupId" => String.t(),
        "ResourceId" => String.t(),
        "SourceArn" => String.t(),
        "SourceRoleArn" => String.t(),
        "Tags" => map()
      }

  """
  @type create_asset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cmaf_encryption() :: %{
        "ConstantInitializationVector" => String.t(),
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type cmaf_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_packaging_configuration_request() :: %{}

  """
  @type describe_packaging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_assets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PackagingGroupId") => String.t()
      }

  """
  @type list_assets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mss_manifest() :: %{
        "ManifestName" => String.t(),
        "StreamSelection" => stream_selection()
      }

  """
  @type mss_manifest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configure_logs_response() :: %{
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "CreatedAt" => String.t(),
        "DomainName" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "Id" => String.t(),
        "Tags" => map()
      }

  """
  @type configure_logs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configure_logs_request() :: %{
        optional("EgressAccessLogs") => egress_access_logs()
      }

  """
  @type configure_logs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mss_encryption() :: %{
        "SpekeKeyProvider" => speke_key_provider()
      }

  """
  @type mss_encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_assets_response() :: %{
        "Assets" => list(asset_shallow()()),
        "NextToken" => String.t()
      }

  """
  @type list_assets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_asset_request() :: %{}

  """
  @type describe_asset_request() :: %{}

  @typedoc """

  ## Example:

      list_packaging_groups_response() :: %{
        "NextToken" => String.t(),
        "PackagingGroups" => list(packaging_group()())
      }

  """
  @type list_packaging_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_packaging_group_request() :: %{}

  """
  @type describe_packaging_group_request() :: %{}

  @typedoc """

  ## Example:

      delete_packaging_configuration_request() :: %{}

  """
  @type delete_packaging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      describe_packaging_group_response() :: %{
        "ApproximateAssetCount" => integer(),
        "Arn" => String.t(),
        "Authorization" => authorization(),
        "CreatedAt" => String.t(),
        "DomainName" => String.t(),
        "EgressAccessLogs" => egress_access_logs(),
        "Id" => String.t(),
        "Tags" => map()
      }

  """
  @type describe_packaging_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mss_package() :: %{
        "Encryption" => mss_encryption(),
        "MssManifests" => list(mss_manifest()()),
        "SegmentDurationSeconds" => integer()
      }

  """
  @type mss_package() :: %{String.t() => any()}

  @type configure_logs_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_asset_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_packaging_configuration_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_packaging_group_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_asset_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_packaging_configuration_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_packaging_group_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_asset_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_packaging_configuration_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_packaging_group_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_assets_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_packaging_configurations_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_packaging_groups_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_packaging_group_errors() ::
          internal_server_error_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2018-11-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediapackage-vod",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaPackage Vod",
      signature_version: "v4",
      signing_name: "mediapackage-vod",
      target_prefix: nil
    }
  end

  @doc """
  Changes the packaging group's properities to configure log subscription
  """
  @spec configure_logs(map(), String.t(), configure_logs_request(), list()) ::
          {:ok, configure_logs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, configure_logs_errors()}
  def configure_logs(%Client{} = client, id, input, options \\ []) do
    url_path = "/packaging_groups/#{AWS.Util.encode_uri(id)}/configure_logs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new MediaPackage VOD Asset resource.
  """
  @spec create_asset(map(), create_asset_request(), list()) ::
          {:ok, create_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_asset_errors()}
  def create_asset(%Client{} = client, input, options \\ []) do
    url_path = "/assets"
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
  Creates a new MediaPackage VOD PackagingConfiguration resource.
  """
  @spec create_packaging_configuration(map(), create_packaging_configuration_request(), list()) ::
          {:ok, create_packaging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_packaging_configuration_errors()}
  def create_packaging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/packaging_configurations"
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
  Creates a new MediaPackage VOD PackagingGroup resource.
  """
  @spec create_packaging_group(map(), create_packaging_group_request(), list()) ::
          {:ok, create_packaging_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_packaging_group_errors()}
  def create_packaging_group(%Client{} = client, input, options \\ []) do
    url_path = "/packaging_groups"
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
  Deletes an existing MediaPackage VOD Asset resource.
  """
  @spec delete_asset(map(), String.t(), delete_asset_request(), list()) ::
          {:ok, delete_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_asset_errors()}
  def delete_asset(%Client{} = client, id, input, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(id)}"
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
  Deletes a MediaPackage VOD PackagingConfiguration resource.
  """
  @spec delete_packaging_configuration(
          map(),
          String.t(),
          delete_packaging_configuration_request(),
          list()
        ) ::
          {:ok, delete_packaging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_packaging_configuration_errors()}
  def delete_packaging_configuration(%Client{} = client, id, input, options \\ []) do
    url_path = "/packaging_configurations/#{AWS.Util.encode_uri(id)}"
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
  Deletes a MediaPackage VOD PackagingGroup resource.
  """
  @spec delete_packaging_group(map(), String.t(), delete_packaging_group_request(), list()) ::
          {:ok, delete_packaging_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_packaging_group_errors()}
  def delete_packaging_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/packaging_groups/#{AWS.Util.encode_uri(id)}"
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
  Returns a description of a MediaPackage VOD Asset resource.
  """
  @spec describe_asset(map(), String.t(), list()) ::
          {:ok, describe_asset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_asset_errors()}
  def describe_asset(%Client{} = client, id, options \\ []) do
    url_path = "/assets/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a description of a MediaPackage VOD PackagingConfiguration resource.
  """
  @spec describe_packaging_configuration(map(), String.t(), list()) ::
          {:ok, describe_packaging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_packaging_configuration_errors()}
  def describe_packaging_configuration(%Client{} = client, id, options \\ []) do
    url_path = "/packaging_configurations/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a description of a MediaPackage VOD PackagingGroup resource.
  """
  @spec describe_packaging_group(map(), String.t(), list()) ::
          {:ok, describe_packaging_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_packaging_group_errors()}
  def describe_packaging_group(%Client{} = client, id, options \\ []) do
    url_path = "/packaging_groups/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a collection of MediaPackage VOD Asset resources.
  """
  @spec list_assets(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_assets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_assets_errors()}
  def list_assets(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        packaging_group_id \\ nil,
        options \\ []
      ) do
    url_path = "/assets"
    headers = []
    query_params = []

    query_params =
      if !is_nil(packaging_group_id) do
        [{"packagingGroupId", packaging_group_id} | query_params]
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
  Returns a collection of MediaPackage VOD PackagingConfiguration resources.
  """
  @spec list_packaging_configurations(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_packaging_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_packaging_configurations_errors()}
  def list_packaging_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        packaging_group_id \\ nil,
        options \\ []
      ) do
    url_path = "/packaging_configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(packaging_group_id) do
        [{"packagingGroupId", packaging_group_id} | query_params]
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
  Returns a collection of MediaPackage VOD PackagingGroup resources.
  """
  @spec list_packaging_groups(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_packaging_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_packaging_groups_errors()}
  def list_packaging_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/packaging_groups"
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
  Returns a list of the tags assigned to the specified resource.
  """
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
  Adds tags to the specified resource.

  You can specify one or more tags to add.
  """
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

  @doc """
  Removes tags from the specified resource.

  You can specify one or more tags to remove.
  """
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
  Updates a specific packaging group.

  You can't change the id attribute or any other system-generated attributes.
  """
  @spec update_packaging_group(map(), String.t(), update_packaging_group_request(), list()) ::
          {:ok, update_packaging_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_packaging_group_errors()}
  def update_packaging_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/packaging_groups/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
