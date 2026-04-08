# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.S3Files do
  @moduledoc """
  S3 Files makes S3 buckets accessible as high-performance file systems powered by
  EFS.

  This service enables file system interface access to S3 data with
  sub-millisecond latencies through mount targets, supporting AI/ML workloads,
  media processing, and hybrid storage workflows that require both file system and
  object storage access to the same data.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => list(tag())
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      creation_permissions() :: %{
        "ownerGid" => float(),
        "ownerUid" => float(),
        "permissions" => String.t() | atom()
      }

  """
  @type creation_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      root_directory() :: %{
        "creationPermissions" => creation_permissions(),
        "path" => String.t() | atom()
      }

  """
  @type root_directory() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_file_system_response() :: %{
        "bucket" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "fileSystemArn" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "prefix" => [String.t() | atom()],
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "tags" => list(tag())
      }

  """
  @type create_file_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_access_point_response() :: %{
        "accessPointArn" => String.t() | atom(),
        "accessPointId" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "posixUser" => posix_user(),
        "rootDirectory" => root_directory(),
        "status" => list(any()),
        "tags" => list(tag())
      }

  """
  @type create_access_point_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_synchronization_configuration_response() :: %{}

  """
  @type put_synchronization_configuration_response() :: %{}

  @typedoc """

  ## Example:

      list_mount_targets_request() :: %{
        optional("accessPointId") => String.t() | atom(),
        optional("fileSystemId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_mount_targets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_mount_target_request() :: %{
        optional("ipAddressType") => list(any()),
        optional("ipv4Address") => String.t() | atom(),
        optional("ipv6Address") => String.t() | atom(),
        optional("securityGroups") => list(String.t() | atom()),
        required("fileSystemId") => String.t() | atom(),
        required("subnetId") => String.t() | atom()
      }

  """
  @type create_mount_target_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_file_systems_response() :: %{
        "fileSystems" => list(list_file_systems_description()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_file_systems_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_synchronization_configuration_response() :: %{
        "expirationDataRules" => list(expiration_data_rule()),
        "importDataRules" => list(import_data_rule()),
        "latestVersionNumber" => [integer()]
      }

  """
  @type get_synchronization_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_synchronization_configuration_request() :: %{
        optional("latestVersionNumber") => [integer()],
        required("expirationDataRules") => list(expiration_data_rule()),
        required("importDataRules") => list(import_data_rule())
      }

  """
  @type put_synchronization_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_access_point_response() :: %{
        "accessPointArn" => String.t() | atom(),
        "accessPointId" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "posixUser" => posix_user(),
        "rootDirectory" => root_directory(),
        "status" => list(any()),
        "tags" => list(tag())
      }

  """
  @type get_access_point_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_access_point_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("posixUser") => posix_user(),
        optional("rootDirectory") => root_directory(),
        optional("tags") => list(tag()),
        required("fileSystemId") => String.t() | atom()
      }

  """
  @type create_access_point_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_file_system_policy_request() :: %{}

  """
  @type get_file_system_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_mount_targets_response() :: %{
        "mountTargets" => list(list_mount_targets_description()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_mount_targets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_mount_target_response() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "ipv4Address" => String.t() | atom(),
        "ipv6Address" => String.t() | atom(),
        "mountTargetId" => String.t() | atom(),
        "networkInterfaceId" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "securityGroups" => list(String.t() | atom()),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "subnetId" => String.t() | atom(),
        "vpcId" => String.t() | atom()
      }

  """
  @type get_mount_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_access_point_request() :: %{}

  """
  @type get_access_point_request() :: %{}

  @typedoc """

  ## Example:

      create_mount_target_response() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "ipv4Address" => String.t() | atom(),
        "ipv6Address" => String.t() | atom(),
        "mountTargetId" => String.t() | atom(),
        "networkInterfaceId" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "securityGroups" => list(String.t() | atom()),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "subnetId" => String.t() | atom(),
        "vpcId" => String.t() | atom()
      }

  """
  @type create_mount_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_mount_target_request() :: %{}

  """
  @type delete_mount_target_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      posix_user() :: %{
        "gid" => float(),
        "secondaryGids" => list(float()),
        "uid" => float()
      }

  """
  @type posix_user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_file_systems_description() :: %{
        "bucket" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "fileSystemArn" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom()
      }

  """
  @type list_file_systems_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_file_system_request() :: %{
        optional("acceptBucketWarning") => [boolean()],
        optional("clientToken") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("prefix") => [String.t() | atom()],
        optional("tags") => list(tag()),
        required("bucket") => String.t() | atom(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_file_system_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_access_points_response() :: %{
        "accessPoints" => list(list_access_points_description()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_access_points_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_mount_target_response() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "ipv4Address" => String.t() | atom(),
        "ipv6Address" => String.t() | atom(),
        "mountTargetId" => String.t() | atom(),
        "networkInterfaceId" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "securityGroups" => list(String.t() | atom()),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "subnetId" => String.t() | atom(),
        "vpcId" => String.t() | atom()
      }

  """
  @type update_mount_target_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "nextToken" => [String.t() | atom()],
        "tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_synchronization_configuration_request() :: %{}

  """
  @type get_synchronization_configuration_request() :: %{}

  @typedoc """

  ## Example:

      put_file_system_policy_request() :: %{
        required("policy") => [String.t() | atom()]
      }

  """
  @type put_file_system_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_file_system_policy_request() :: %{}

  """
  @type delete_file_system_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_access_point_request() :: %{}

  """
  @type delete_access_point_request() :: %{}

  @typedoc """

  ## Example:

      get_file_system_request() :: %{}

  """
  @type get_file_system_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_file_systems_request() :: %{
        optional("bucket") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_file_systems_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_access_points_description() :: %{
        "accessPointArn" => String.t() | atom(),
        "accessPointId" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "posixUser" => posix_user(),
        "rootDirectory" => root_directory(),
        "status" => list(any())
      }

  """
  @type list_access_points_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_mount_targets_description() :: %{
        "availabilityZoneId" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "ipv4Address" => String.t() | atom(),
        "ipv6Address" => String.t() | atom(),
        "mountTargetId" => String.t() | atom(),
        "networkInterfaceId" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "subnetId" => String.t() | atom(),
        "vpcId" => String.t() | atom()
      }

  """
  @type list_mount_targets_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_mount_target_request() :: %{}

  """
  @type get_mount_target_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "errorCode" => String.t() | atom(),
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      expiration_data_rule() :: %{
        "daysAfterLastAccess" => [integer()]
      }

  """
  @type expiration_data_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_mount_target_request() :: %{
        required("securityGroups") => list(String.t() | atom())
      }

  """
  @type update_mount_target_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_data_rule() :: %{
        "prefix" => [String.t() | atom()],
        "sizeLessThan" => [float()],
        "trigger" => list(any())
      }

  """
  @type import_data_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_access_points_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        required("fileSystemId") => String.t() | atom()
      }

  """
  @type list_access_points_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_file_system_policy_response() :: %{}

  """
  @type put_file_system_policy_response() :: %{}

  @typedoc """

  ## Example:

      get_file_system_response() :: %{
        "bucket" => String.t() | atom(),
        "clientToken" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "fileSystemArn" => String.t() | atom(),
        "fileSystemId" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "ownerId" => String.t() | atom(),
        "prefix" => [String.t() | atom()],
        "roleArn" => String.t() | atom(),
        "status" => list(any()),
        "statusMessage" => String.t() | atom(),
        "tags" => list(tag())
      }

  """
  @type get_file_system_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_file_system_policy_response() :: %{
        "fileSystemId" => String.t() | atom(),
        "policy" => [String.t() | atom()]
      }

  """
  @type get_file_system_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_file_system_request() :: %{
        optional("forceDelete") => [boolean()]
      }

  """
  @type delete_file_system_request() :: %{(String.t() | atom()) => any()}

  @type create_access_point_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_file_system_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_mount_target_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_access_point_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_file_system_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_file_system_policy_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_mount_target_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_access_point_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_file_system_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_file_system_policy_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_mount_target_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_synchronization_configuration_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_access_points_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_file_systems_errors() :: validation_exception() | internal_server_exception()

  @type list_mount_targets_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_file_system_policy_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_synchronization_configuration_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_mount_target_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2025-05-05",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "s3files",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "S3Files",
      signature_version: "v4",
      signing_name: "s3files",
      target_prefix: nil
    }
  end

  @doc """
  Creates an S3 File System Access Point for application-specific access with
  POSIX user identity and root directory enforcement.

  Access points provide a way to manage access to shared datasets in multi-tenant
  scenarios.
  """
  @spec create_access_point(map(), create_access_point_request(), list()) ::
          {:ok, create_access_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_access_point_errors()}
  def create_access_point(%Client{} = client, input, options \\ []) do
    url_path = "/access-points"
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
  Creates an S3 File System resource scoped to a bucket or prefix within a bucket,
  enabling file system access to S3 data.

  To create a file system, you need an S3 bucket and an IAM role that grants the
  service permission to access the bucket.
  """
  @spec create_file_system(map(), create_file_system_request(), list()) ::
          {:ok, create_file_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_file_system_errors()}
  def create_file_system(%Client{} = client, input, options \\ []) do
    url_path = "/file-systems"
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
      201
    )
  end

  @doc """
  Creates a mount target resource as an endpoint for mounting the S3 File System
  from compute resources in a specific Availability Zone and VPC.

  Mount targets provide network access to the file system.
  """
  @spec create_mount_target(map(), create_mount_target_request(), list()) ::
          {:ok, create_mount_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_mount_target_errors()}
  def create_mount_target(%Client{} = client, input, options \\ []) do
    url_path = "/mount-targets"
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
  Deletes an S3 File System Access Point.

  This operation is irreversible.
  """
  @spec delete_access_point(map(), String.t() | atom(), delete_access_point_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_access_point_errors()}
  def delete_access_point(%Client{} = client, access_point_id, input, options \\ []) do
    url_path = "/access-points/#{AWS.Util.encode_uri(access_point_id)}"
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
      204
    )
  end

  @doc """
  Deletes an S3 File System.

  You can optionally force deletion of a file system that has pending export data.
  """
  @spec delete_file_system(map(), String.t() | atom(), delete_file_system_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_file_system_errors()}
  def delete_file_system(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/file-systems/#{AWS.Util.encode_uri(file_system_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"forceDelete", "forceDelete"}
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
  Deletes the IAM resource policy of an S3 File System.
  """
  @spec delete_file_system_policy(
          map(),
          String.t() | atom(),
          delete_file_system_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_file_system_policy_errors()}
  def delete_file_system_policy(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"
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
      204
    )
  end

  @doc """
  Deletes the specified mount target.

  This operation is irreversible.
  """
  @spec delete_mount_target(map(), String.t() | atom(), delete_mount_target_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_mount_target_errors()}
  def delete_mount_target(%Client{} = client, mount_target_id, input, options \\ []) do
    url_path = "/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}"
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
      204
    )
  end

  @doc """
  Returns resource information for an S3 File System Access Point.
  """
  @spec get_access_point(map(), String.t() | atom(), list()) ::
          {:ok, get_access_point_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_access_point_errors()}
  def get_access_point(%Client{} = client, access_point_id, options \\ []) do
    url_path = "/access-points/#{AWS.Util.encode_uri(access_point_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns resource information for the specified S3 File System including status,
  configuration, and metadata.
  """
  @spec get_file_system(map(), String.t() | atom(), list()) ::
          {:ok, get_file_system_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_file_system_errors()}
  def get_file_system(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/file-systems/#{AWS.Util.encode_uri(file_system_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the IAM resource policy of an S3 File System.
  """
  @spec get_file_system_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_file_system_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_file_system_policy_errors()}
  def get_file_system_policy(%Client{} = client, file_system_id, options \\ []) do
    url_path = "/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns detailed resource information for the specified mount target including
  network configuration.
  """
  @spec get_mount_target(map(), String.t() | atom(), list()) ::
          {:ok, get_mount_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_mount_target_errors()}
  def get_mount_target(%Client{} = client, mount_target_id, options \\ []) do
    url_path = "/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the synchronization configuration for the specified S3 File System,
  including import data rules and expiration data rules.
  """
  @spec get_synchronization_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_synchronization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_synchronization_configuration_errors()}
  def get_synchronization_configuration(%Client{} = client, file_system_id, options \\ []) do
    url_path =
      "/file-systems/#{AWS.Util.encode_uri(file_system_id)}/synchronization-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns resource information for all S3 File System Access Points associated
  with the specified S3 File System.
  """
  @spec list_access_points(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_access_points_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_access_points_errors()}
  def list_access_points(
        %Client{} = client,
        file_system_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/access-points"
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
      if !is_nil(file_system_id) do
        [{"fileSystemId", file_system_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all S3 File Systems owned by the account with optional
  filtering by bucket.
  """
  @spec list_file_systems(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_file_systems_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_file_systems_errors()}
  def list_file_systems(
        %Client{} = client,
        bucket \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/file-systems"
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
      if !is_nil(bucket) do
        [{"bucket", bucket} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns resource information for all mount targets with optional filtering by
  file system, access point, and VPC.
  """
  @spec list_mount_targets(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_mount_targets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_mount_targets_errors()}
  def list_mount_targets(
        %Client{} = client,
        access_point_id \\ nil,
        file_system_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/mount-targets"
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
      if !is_nil(file_system_id) do
        [{"fileSystemId", file_system_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(access_point_id) do
        [{"accessPointId", access_point_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all tags for S3 Files resources.
  """
  @spec list_tags_for_resource(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(
        %Client{} = client,
        resource_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/resource-tags/#{AWS.Util.encode_uri(resource_id)}"
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
  Creates or replaces the IAM resource policy for an S3 File System to control
  access permissions.
  """
  @spec put_file_system_policy(
          map(),
          String.t() | atom(),
          put_file_system_policy_request(),
          list()
        ) ::
          {:ok, put_file_system_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_file_system_policy_errors()}
  def put_file_system_policy(%Client{} = client, file_system_id, input, options \\ []) do
    url_path = "/file-systems/#{AWS.Util.encode_uri(file_system_id)}/policy"
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
  Creates or updates the synchronization configuration for the specified S3 File
  System, including import data rules and expiration data rules.
  """
  @spec put_synchronization_configuration(
          map(),
          String.t() | atom(),
          put_synchronization_configuration_request(),
          list()
        ) ::
          {:ok, put_synchronization_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_synchronization_configuration_errors()}
  def put_synchronization_configuration(%Client{} = client, file_system_id, input, options \\ []) do
    url_path =
      "/file-systems/#{AWS.Util.encode_uri(file_system_id)}/synchronization-configuration"

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
  Creates tags for S3 Files resources using standard Amazon Web Services tagging
  APIs.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/resource-tags/#{AWS.Util.encode_uri(resource_id)}"
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
  Removes tags from S3 Files resources.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_id, input, options \\ []) do
    url_path = "/resource-tags/#{AWS.Util.encode_uri(resource_id)}"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the mount target resource, specifically security group configurations.
  """
  @spec update_mount_target(map(), String.t() | atom(), update_mount_target_request(), list()) ::
          {:ok, update_mount_target_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_mount_target_errors()}
  def update_mount_target(%Client{} = client, mount_target_id, input, options \\ []) do
    url_path = "/mount-targets/#{AWS.Util.encode_uri(mount_target_id)}"
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
