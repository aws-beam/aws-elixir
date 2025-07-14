# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Glacier do
  @moduledoc """
  Amazon S3 Glacier (Glacier) is a storage solution for "cold data."

  Glacier is an extremely low-cost storage service that provides secure,
  durable, and easy-to-use storage for data backup and archival.

  With Glacier,
  customers can store their data cost effectively for months, years, or decades.
  Glacier also enables customers to offload the administrative burdens of
  operating and
  scaling storage to AWS, so they don't have to worry about capacity planning,
  hardware
  provisioning, data replication, hardware failure and recovery, or time-consuming
  hardware
  migrations.

  Glacier is a great storage choice when low storage cost is paramount and your
  data is rarely retrieved. If your
  application requires fast or frequent access to your data, consider using Amazon
  S3. For
  more information, see [Amazon Simple Storage Service (Amazon S3)](http://aws.amazon.com/s3/).

  You can store any kind of data in any format. There is no maximum limit on the
  total
  amount of data you can store in Glacier.

  If you are a first-time user of Glacier, we recommend that you begin by
  reading the following sections in the *Amazon S3 Glacier Developer
  Guide*:

    *

  [What is Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html)
  - This section of the Developer Guide describes the
  underlying data model, the operations it supports, and the AWS SDKs that you can
  use
  to interact with the service.

    *

  [Getting Started with Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html)
  - The Getting Started section walks you through the
  process of creating a vault, uploading archives, creating jobs to download
  archives,
  retrieving the job output, and deleting archives.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      missing_parameter_value_exception() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "type" => String.t()
      }

  """
  @type missing_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_archive_input() :: %{}

  """
  @type delete_archive_input() :: %{}

  @typedoc """

  ## Example:

      initiate_job_output() :: %{
        "jobId" => String.t(),
        "jobOutputPath" => String.t(),
        "location" => String.t()
      }

  """
  @type initiate_job_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_job_input() :: %{}

  """
  @type describe_job_input() :: %{}

  @typedoc """

  ## Example:

      remove_tags_from_vault_input() :: %{
        optional("TagKeys") => list(String.t())
      }

  """
  @type remove_tags_from_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      abort_multipart_upload_input() :: %{}

  """
  @type abort_multipart_upload_input() :: %{}

  @typedoc """

  ## Example:

      get_vault_access_policy_output() :: %{
        "policy" => vault_access_policy()
      }

  """
  @type get_vault_access_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_provisioned_capacity_input() :: %{}

  """
  @type list_provisioned_capacity_input() :: %{}

  @typedoc """

  ## Example:

      get_data_retrieval_policy_input() :: %{}

  """
  @type get_data_retrieval_policy_input() :: %{}

  @typedoc """

  ## Example:

      describe_vault_input() :: %{}

  """
  @type describe_vault_input() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_vault_output() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      set_vault_access_policy_input() :: %{
        optional("policy") => vault_access_policy()
      }

  """
  @type set_vault_access_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_retrieval_rule() :: %{
        "BytesPerHour" => float(),
        "Strategy" => String.t()
      }

  """
  @type data_retrieval_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_archive_input() :: %{
        optional("archiveDescription") => String.t(),
        optional("body") => binary(),
        optional("checksum") => String.t()
      }

  """
  @type upload_archive_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_serialization() :: %{
        "csv" => csv_input()
      }

  """
  @type input_serialization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_provisioned_capacity_output() :: %{
        "ProvisionedCapacityList" => list(provisioned_capacity_description())
      }

  """
  @type list_provisioned_capacity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grantee() :: %{
        "DisplayName" => String.t(),
        "EmailAddress" => String.t(),
        "ID" => String.t(),
        "Type" => list(any()),
        "URI" => String.t()
      }

  """
  @type grantee() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vault_notifications_input() :: %{}

  """
  @type get_vault_notifications_input() :: %{}

  @typedoc """

  ## Example:

      request_timeout_exception() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "type" => String.t()
      }

  """
  @type request_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vault_access_policy() :: %{
        "Policy" => String.t()
      }

  """
  @type vault_access_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      initiate_job_input() :: %{
        optional("jobParameters") => job_parameters()
      }

  """
  @type initiate_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inventory_retrieval_job_description() :: %{
        "EndDate" => String.t(),
        "Format" => String.t(),
        "Limit" => String.t(),
        "Marker" => String.t(),
        "StartDate" => String.t()
      }

  """
  @type inventory_retrieval_job_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      select_parameters() :: %{
        "Expression" => String.t(),
        "ExpressionType" => list(any()),
        "InputSerialization" => input_serialization(),
        "OutputSerialization" => output_serialization()
      }

  """
  @type select_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      insufficient_capacity_exception() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "type" => String.t()
      }

  """
  @type insufficient_capacity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vault_output() :: %{
        "location" => String.t()
      }

  """
  @type create_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      job_parameters() :: %{
        "ArchiveId" => String.t(),
        "Description" => String.t(),
        "Format" => String.t(),
        "InventoryRetrievalParameters" => inventory_retrieval_job_input(),
        "OutputLocation" => output_location(),
        "RetrievalByteRange" => String.t(),
        "SNSTopic" => String.t(),
        "SelectParameters" => select_parameters(),
        "Tier" => String.t(),
        "Type" => String.t()
      }

  """
  @type job_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_multipart_upload_input() :: %{
        optional("archiveSize") => String.t(),
        optional("checksum") => String.t()
      }

  """
  @type complete_multipart_upload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vault_notifications_input() :: %{}

  """
  @type delete_vault_notifications_input() :: %{}

  @typedoc """

  ## Example:

      set_vault_notifications_input() :: %{
        optional("vaultNotificationConfig") => vault_notification_config()
      }

  """
  @type set_vault_notifications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vault_lock_input() :: %{}

  """
  @type get_vault_lock_input() :: %{}

  @typedoc """

  ## Example:

      data_retrieval_policy() :: %{
        "Rules" => list(data_retrieval_rule())
      }

  """
  @type data_retrieval_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "type" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provisioned_capacity_description() :: %{
        "CapacityId" => String.t(),
        "ExpirationDate" => String.t(),
        "StartDate" => String.t()
      }

  """
  @type provisioned_capacity_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      part_list_element() :: %{
        "RangeInBytes" => String.t(),
        "SHA256TreeHash" => String.t()
      }

  """
  @type part_list_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grant() :: %{
        "Grantee" => grantee(),
        "Permission" => list(any())
      }

  """
  @type grant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vault_notifications_output() :: %{
        "vaultNotificationConfig" => vault_notification_config()
      }

  """
  @type get_vault_notifications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vaults_input() :: %{
        optional("limit") => [integer()],
        optional("marker") => String.t()
      }

  """
  @type list_vaults_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "type" => String.t()
      }

  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      csv_input() :: %{
        "Comments" => String.t(),
        "FieldDelimiter" => String.t(),
        "FileHeaderInfo" => list(any()),
        "QuoteCharacter" => String.t(),
        "QuoteEscapeCharacter" => String.t(),
        "RecordDelimiter" => String.t()
      }

  """
  @type csv_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_output_input() :: %{
        optional("range") => String.t()
      }

  """
  @type get_job_output_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      archive_creation_output() :: %{
        "archiveId" => String.t(),
        "checksum" => String.t(),
        "location" => String.t()
      }

  """
  @type archive_creation_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption() :: %{
        "EncryptionType" => list(any()),
        "KMSContext" => String.t(),
        "KMSKeyId" => String.t()
      }

  """
  @type encryption() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vault_access_policy_input() :: %{}

  """
  @type delete_vault_access_policy_input() :: %{}

  @typedoc """

  ## Example:

      purchase_provisioned_capacity_input() :: %{}

  """
  @type purchase_provisioned_capacity_input() :: %{}

  @typedoc """

  ## Example:

      output_location() :: %{
        "S3" => s3_location()
      }

  """
  @type output_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_list_element() :: %{
        "ArchiveDescription" => String.t(),
        "CreationDate" => String.t(),
        "MultipartUploadId" => String.t(),
        "PartSizeInBytes" => float(),
        "VaultARN" => String.t()
      }

  """
  @type upload_list_element() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "type" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_multipart_part_input() :: %{
        optional("body") => binary(),
        optional("checksum") => String.t(),
        optional("range") => String.t()
      }

  """
  @type upload_multipart_part_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "AccessControlList" => list(grant()),
        "BucketName" => String.t(),
        "CannedACL" => list(any()),
        "Encryption" => encryption(),
        "Prefix" => String.t(),
        "StorageClass" => list(any()),
        "Tagging" => map(),
        "UserMetadata" => map()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      initiate_multipart_upload_input() :: %{
        optional("archiveDescription") => String.t(),
        optional("partSize") => String.t()
      }

  """
  @type initiate_multipart_upload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      set_data_retrieval_policy_input() :: %{
        optional("Policy") => data_retrieval_policy()
      }

  """
  @type set_data_retrieval_policy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_vaults_output() :: %{
        "Marker" => String.t(),
        "VaultList" => list(describe_vault_output())
      }

  """
  @type list_vaults_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vault_lock_policy() :: %{
        "Policy" => String.t()
      }

  """
  @type vault_lock_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_vault_access_policy_input() :: %{}

  """
  @type get_vault_access_policy_input() :: %{}

  @typedoc """

  ## Example:

      policy_enforced_exception() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "type" => String.t()
      }

  """
  @type policy_enforced_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_output() :: %{
        "JobList" => list(glacier_job_description()),
        "Marker" => String.t()
      }

  """
  @type list_jobs_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vault_input() :: %{}

  """
  @type delete_vault_input() :: %{}

  @typedoc """

  ## Example:

      upload_multipart_part_output() :: %{
        "checksum" => String.t()
      }

  """
  @type upload_multipart_part_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_vault_input() :: %{}

  """
  @type list_tags_for_vault_input() :: %{}

  @typedoc """

  ## Example:

      initiate_vault_lock_input() :: %{
        optional("policy") => vault_lock_policy()
      }

  """
  @type initiate_vault_lock_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      purchase_provisioned_capacity_output() :: %{
        "capacityId" => String.t()
      }

  """
  @type purchase_provisioned_capacity_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vault_notification_config() :: %{
        "Events" => list(String.t()),
        "SNSTopic" => String.t()
      }

  """
  @type vault_notification_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      glacier_job_description() :: %{
        "Action" => list(any()),
        "ArchiveId" => String.t(),
        "ArchiveSHA256TreeHash" => String.t(),
        "ArchiveSizeInBytes" => float(),
        "Completed" => boolean(),
        "CompletionDate" => String.t(),
        "CreationDate" => String.t(),
        "InventoryRetrievalParameters" => inventory_retrieval_job_description(),
        "InventorySizeInBytes" => float(),
        "JobDescription" => String.t(),
        "JobId" => String.t(),
        "JobOutputPath" => String.t(),
        "OutputLocation" => output_location(),
        "RetrievalByteRange" => String.t(),
        "SHA256TreeHash" => String.t(),
        "SNSTopic" => String.t(),
        "SelectParameters" => select_parameters(),
        "StatusCode" => list(any()),
        "StatusMessage" => String.t(),
        "Tier" => String.t(),
        "VaultARN" => String.t()
      }

  """
  @type glacier_job_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_jobs_input() :: %{
        optional("completed") => String.t(),
        optional("limit") => [integer()],
        optional("marker") => String.t(),
        optional("statuscode") => String.t()
      }

  """
  @type list_jobs_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_multipart_uploads_output() :: %{
        "Marker" => String.t(),
        "UploadsList" => list(upload_list_element())
      }

  """
  @type list_multipart_uploads_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_parts_input() :: %{
        optional("limit") => [integer()],
        optional("marker") => String.t()
      }

  """
  @type list_parts_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      initiate_vault_lock_output() :: %{
        "lockId" => String.t()
      }

  """
  @type initiate_vault_lock_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_parts_output() :: %{
        "ArchiveDescription" => String.t(),
        "CreationDate" => String.t(),
        "Marker" => String.t(),
        "MultipartUploadId" => String.t(),
        "PartSizeInBytes" => float(),
        "Parts" => list(part_list_element()),
        "VaultARN" => String.t()
      }

  """
  @type list_parts_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      csv_output() :: %{
        "FieldDelimiter" => String.t(),
        "QuoteCharacter" => String.t(),
        "QuoteEscapeCharacter" => String.t(),
        "QuoteFields" => list(any()),
        "RecordDelimiter" => String.t()
      }

  """
  @type csv_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      inventory_retrieval_job_input() :: %{
        "EndDate" => String.t(),
        "Limit" => String.t(),
        "Marker" => String.t(),
        "StartDate" => String.t()
      }

  """
  @type inventory_retrieval_job_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "code" => String.t(),
        "message" => String.t(),
        "type" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_job_output_output() :: %{
        "acceptRanges" => String.t(),
        "archiveDescription" => String.t(),
        "body" => binary(),
        "checksum" => String.t(),
        "contentRange" => String.t(),
        "contentType" => String.t(),
        "status" => integer()
      }

  """
  @type get_job_output_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_vault_output() :: %{
        "CreationDate" => String.t(),
        "LastInventoryDate" => String.t(),
        "NumberOfArchives" => float(),
        "SizeInBytes" => float(),
        "VaultARN" => String.t(),
        "VaultName" => String.t()
      }

  """
  @type describe_vault_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      initiate_multipart_upload_output() :: %{
        "location" => String.t(),
        "uploadId" => String.t()
      }

  """
  @type initiate_multipart_upload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_tags_to_vault_input() :: %{
        optional("Tags") => map()
      }

  """
  @type add_tags_to_vault_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_multipart_uploads_input() :: %{
        optional("limit") => [integer()],
        optional("marker") => String.t()
      }

  """
  @type list_multipart_uploads_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_serialization() :: %{
        "csv" => csv_output()
      }

  """
  @type output_serialization() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vault_input() :: %{}

  """
  @type create_vault_input() :: %{}

  @typedoc """

  ## Example:

      abort_vault_lock_input() :: %{}

  """
  @type abort_vault_lock_input() :: %{}

  @typedoc """

  ## Example:

      get_vault_lock_output() :: %{
        "CreationDate" => String.t(),
        "ExpirationDate" => String.t(),
        "Policy" => String.t(),
        "State" => String.t()
      }

  """
  @type get_vault_lock_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_retrieval_policy_output() :: %{
        "Policy" => data_retrieval_policy()
      }

  """
  @type get_data_retrieval_policy_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_vault_lock_input() :: %{}

  """
  @type complete_vault_lock_input() :: %{}

  @type abort_multipart_upload_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type abort_vault_lock_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type add_tags_to_vault_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type complete_multipart_upload_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type complete_vault_lock_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type create_vault_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_parameter_value_exception()

  @type delete_archive_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_vault_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_vault_access_policy_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type delete_vault_notifications_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_job_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type describe_vault_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_data_retrieval_policy_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_parameter_value_exception()

  @type get_job_output_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_vault_access_policy_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_vault_lock_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type get_vault_notifications_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type initiate_job_errors() ::
          policy_enforced_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | insufficient_capacity_exception()
          | missing_parameter_value_exception()

  @type initiate_multipart_upload_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type initiate_vault_lock_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_jobs_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_multipart_uploads_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_parts_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_provisioned_capacity_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_parameter_value_exception()

  @type list_tags_for_vault_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type list_vaults_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type purchase_provisioned_capacity_errors() ::
          limit_exceeded_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_parameter_value_exception()

  @type remove_tags_from_vault_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type set_data_retrieval_policy_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_parameter_value_exception()

  @type set_vault_access_policy_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type set_vault_notifications_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | missing_parameter_value_exception()

  @type upload_archive_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | request_timeout_exception()
          | missing_parameter_value_exception()

  @type upload_multipart_part_errors() ::
          service_unavailable_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | request_timeout_exception()
          | missing_parameter_value_exception()

  def metadata do
    %{
      api_version: "2012-06-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "glacier",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Glacier",
      signature_version: "v4",
      signing_name: "glacier",
      target_prefix: nil
    }
  end

  @doc """
  This operation aborts a multipart upload identified by the upload ID.

  After the Abort Multipart Upload request succeeds, you cannot upload any more
  parts
  to the multipart upload or complete the multipart upload. Aborting a completed
  upload
  fails. However, aborting an already-aborted upload will succeed, for a short
  time. For more
  information about uploading a part and completing a multipart upload, see
  `UploadMultipartPart` and `CompleteMultipartUpload`.

  This operation is idempotent.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Working with Archives in
  Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
  and [Abort Multipart Upload](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html)
  in the *Amazon Glacier Developer Guide*.
  """
  @spec abort_multipart_upload(
          map(),
          String.t(),
          String.t(),
          String.t(),
          abort_multipart_upload_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, abort_multipart_upload_errors()}
  def abort_multipart_upload(
        %Client{} = client,
        account_id,
        upload_id,
        vault_name,
        input,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/multipart-uploads/#{AWS.Util.encode_uri(upload_id)}"

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
  This operation aborts the vault locking process if the vault lock is not in the
  `Locked` state.

  If the vault lock is in the `Locked` state when
  this operation is requested, the operation returns an `AccessDeniedException`
  error. Aborting the vault locking process removes the vault lock policy from the
  specified
  vault.

  A vault lock is put into the `InProgress` state by calling `InitiateVaultLock`.
  A vault lock is put into the `Locked` state by
  calling `CompleteVaultLock`. You can get the state of a vault lock by
  calling `GetVaultLock`. For more information about the vault locking
  process, see [Amazon Glacier Vault Lock](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html). For
  more information about vault lock policies, see
  [Amazon Glacier Access Control with Vault Lock
  Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

  This operation is idempotent. You can successfully invoke this operation
  multiple
  times, if the vault lock is in the `InProgress` state or if there is no policy
  associated with the vault.
  """
  @spec abort_vault_lock(map(), String.t(), String.t(), abort_vault_lock_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, abort_vault_lock_errors()}
  def abort_vault_lock(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/lock-policy"

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
  This operation adds the specified tags to a vault.

  Each tag is composed of a key and
  a value. Each vault can have up to 10 tags. If your request would cause the tag
  limit for
  the vault to be exceeded, the operation throws the `LimitExceededException`
  error. If a tag already exists on the vault under a specified key, the existing
  key value
  will be overwritten. For more information about tags, see [Tagging Amazon S3 Glacier
  Resources](https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).
  """
  @spec add_tags_to_vault(map(), String.t(), String.t(), add_tags_to_vault_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_to_vault_errors()}
  def add_tags_to_vault(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/tags?operation=add"

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
  You call this operation to inform Amazon S3 Glacier (Glacier) that all the
  archive parts have been
  uploaded and that Glacier can now assemble the archive from the uploaded parts.

  After assembling and saving the archive to the vault, Glacier returns the URI
  path
  of the newly created archive resource. Using the URI path, you can then access
  the archive.
  After you upload an archive, you should save the archive ID returned to retrieve
  the
  archive at a later point. You can also get the vault inventory to obtain a list
  of archive
  IDs in a vault. For more information, see `InitiateJob`.

  In the request, you must include the computed SHA256 tree hash of the entire
  archive
  you have uploaded. For information about computing a SHA256 tree hash, see
  [Computing Checksums](https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).
  On the server side, Glacier also constructs the SHA256 tree
  hash of the assembled archive. If the values match, Glacier saves the archive to
  the
  vault; otherwise, it returns an error, and the operation fails. The `ListParts`
  operation returns a list of parts uploaded for a specific
  multipart upload. It includes checksum information for each uploaded part that
  can be used
  to debug a bad checksum issue.

  Additionally, Glacier also checks for any missing content ranges when
  assembling the archive, if missing content ranges are found, Glacier returns an
  error and the operation fails.

  Complete Multipart Upload is an idempotent operation. After your first
  successful
  complete multipart upload, if you call the operation again within a short
  period, the
  operation will succeed and return the same archive ID. This is useful in the
  event you
  experience a network issue that causes an aborted connection or receive a 500
  server error,
  in which case you can repeat your Complete Multipart Upload request and get the
  same
  archive ID without creating duplicate archives. Note, however, that after the
  multipart
  upload completes, you cannot call the List Parts operation and the multipart
  upload will
  not appear in List Multipart Uploads response, even if idempotent complete is
  possible.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Uploading Large Archives in
  Parts (Multipart
  Upload)](https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
  and [Complete Multipart Upload](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html)
  in the *Amazon Glacier Developer Guide*.
  """
  @spec complete_multipart_upload(
          map(),
          String.t(),
          String.t(),
          String.t(),
          complete_multipart_upload_input(),
          list()
        ) ::
          {:ok, archive_creation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_multipart_upload_errors()}
  def complete_multipart_upload(
        %Client{} = client,
        account_id,
        upload_id,
        vault_name,
        input,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/multipart-uploads/#{AWS.Util.encode_uri(upload_id)}"

    {headers, input} =
      [
        {"archiveSize", "x-amz-archive-size"},
        {"checksum", "x-amz-sha256-tree-hash"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-archive-id", "archiveId"},
          {"x-amz-sha256-tree-hash", "checksum"},
          {"Location", "location"}
        ]
      )

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
      201
    )
  end

  @doc """
  This operation completes the vault locking process by transitioning the vault
  lock
  from the `InProgress` state to the `Locked` state, which causes the
  vault lock policy to become unchangeable.

  A vault lock is put into the
  `InProgress` state by calling `InitiateVaultLock`. You can
  obtain the state of the vault lock by calling `GetVaultLock`. For more
  information about the vault locking process, [Amazon Glacier Vault Lock](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

  This operation is idempotent. This request is always successful if the vault
  lock is
  in the `Locked` state and the provided lock ID matches the lock ID originally
  used to lock the vault.

  If an invalid lock ID is passed in the request when the vault lock is in the
  `Locked` state, the operation returns an `AccessDeniedException`
  error. If an invalid lock ID is passed in the request when the vault lock is in
  the
  `InProgress` state, the operation throws an `InvalidParameter`
  error.
  """
  @spec complete_vault_lock(
          map(),
          String.t(),
          String.t(),
          String.t(),
          complete_vault_lock_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_vault_lock_errors()}
  def complete_vault_lock(
        %Client{} = client,
        account_id,
        lock_id,
        vault_name,
        input,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/lock-policy/#{AWS.Util.encode_uri(lock_id)}"

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
  This operation creates a new vault with the specified name.

  The name of the vault
  must be unique within a region for an AWS account. You can create up to 1,000
  vaults per
  account. If you need to create more vaults, contact Amazon S3 Glacier.

  You must use the following guidelines when naming a vault.

    *
  Names can be between 1 and 255 characters long.

    *
  Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.'
  (period).

  This operation is idempotent.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Creating a Vault in Amazon
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html)
  and [Create Vault
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html) in
  the
  *Amazon Glacier Developer Guide*.
  """
  @spec create_vault(map(), String.t(), String.t(), create_vault_input(), list()) ::
          {:ok, create_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vault_errors()}
  def create_vault(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "location"}]
      )

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
  This operation deletes an archive from a vault.

  Subsequent requests to initiate a
  retrieval of this archive will fail. Archive retrievals that are in progress for
  this
  archive ID may or may not succeed according to the following scenarios:

    *
  If the archive retrieval job is actively preparing the data for download when
  Amazon S3 Glacier receives the delete archive request, the archival retrieval
  operation
  might fail.

    *
  If the archive retrieval job has successfully prepared the archive for download
  when Amazon S3 Glacier receives the delete archive request, you will be able to
  download
  the output.

  This operation is idempotent. Attempting to delete an already-deleted archive
  does
  not result in an error.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Deleting an Archive in Amazon
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html)
  and [Delete Archive](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html)
  in the
  *Amazon Glacier Developer Guide*.
  """
  @spec delete_archive(map(), String.t(), String.t(), String.t(), delete_archive_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_archive_errors()}
  def delete_archive(%Client{} = client, account_id, archive_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/archives/#{AWS.Util.encode_uri(archive_id)}"

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
  This operation deletes a vault.

  Amazon S3 Glacier will delete a vault only if there are
  no archives in the vault as of the last inventory and there have been no writes
  to the
  vault since the last inventory. If either of these conditions is not satisfied,
  the vault
  deletion fails (that is, the vault is not removed) and Amazon S3 Glacier returns
  an error. You
  can use `DescribeVault` to return the number of archives in a vault, and
  you can use [Initiate a Job (POST jobs)](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html)
  to initiate a new inventory retrieval for a vault. The inventory contains
  the archive IDs you use to delete archives using [Delete Archive (DELETE archive)](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html).

  This operation is idempotent.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Deleting a Vault in Amazon
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html)
  and [Delete Vault
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html) in
  the
  *Amazon S3 Glacier Developer Guide*.
  """
  @spec delete_vault(map(), String.t(), String.t(), delete_vault_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vault_errors()}
  def delete_vault(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}"
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
  This operation deletes the access policy associated with the specified vault.

  The
  operation is eventually consistent; that is, it might take some time for Amazon
  S3 Glacier to
  completely remove the access policy, and you might still see the effect of the
  policy for a
  short time after you send the delete request.

  This operation is idempotent. You can invoke delete multiple times, even if
  there is
  no policy associated with the vault. For more information about vault access
  policies, see
  [Amazon Glacier Access Control with Vault Access Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).
  """
  @spec delete_vault_access_policy(
          map(),
          String.t(),
          String.t(),
          delete_vault_access_policy_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vault_access_policy_errors()}
  def delete_vault_access_policy(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/access-policy"

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
  This operation deletes the notification configuration set for a vault.

  The operation
  is eventually consistent; that is, it might take some time for Amazon S3 Glacier
  to completely
  disable the notifications and you might still receive some notifications for a
  short time
  after you send the delete request.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Configuring Vault Notifications in Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
  and [Delete Vault Notification Configuration
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html)
  in the Amazon S3 Glacier Developer Guide.
  """
  @spec delete_vault_notifications(
          map(),
          String.t(),
          String.t(),
          delete_vault_notifications_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vault_notifications_errors()}
  def delete_vault_notifications(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/notification-configuration"

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
  This operation returns information about a job you previously initiated,
  including
  the job initiation date, the user who initiated the job, the job status
  code/message and
  the Amazon SNS topic to notify after Amazon S3 Glacier (Glacier) completes the
  job.

  For more information
  about initiating a job, see `InitiateJob`.

  This operation enables you to check the status of your job. However, it is
  strongly recommended that you set up an Amazon SNS topic and specify it in your
  initiate
  job request so that Glacier can notify the topic after it completes the
  job.

  A job ID will not expire for at least 24 hours after Glacier completes the
  job.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For more information about using this operation,
  see the documentation for the underlying REST API [Describe Job](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html)
  in the *Amazon Glacier Developer Guide*.
  """
  @spec describe_job(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, glacier_job_description(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_job_errors()}
  def describe_job(%Client{} = client, account_id, job_id, vault_name, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation returns information about a vault, including the vault's Amazon
  Resource Name (ARN), the date the vault was created, the number of archives it
  contains,
  and the total size of all the archives in the vault.

  The number of archives and their total
  size are as of the last inventory generation. This means that if you add or
  remove an
  archive from a vault, and then immediately use Describe Vault, the change in
  contents will
  not be immediately reflected. If you want to retrieve the latest inventory of
  the vault,
  use `InitiateJob`. Amazon S3 Glacier generates vault inventories approximately
  daily. For more information, see [Downloading a Vault Inventory in Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html).

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Retrieving Vault Metadata in
  Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html)
  and [Describe Vault
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html) in
  the
  *Amazon Glacier Developer Guide*.
  """
  @spec describe_vault(map(), String.t(), String.t(), list()) ::
          {:ok, describe_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vault_errors()}
  def describe_vault(%Client{} = client, account_id, vault_name, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation returns the current data retrieval policy for the account and
  region
  specified in the GET request.

  For more information about data retrieval policies, see
  [Amazon Glacier Data Retrieval Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).
  """
  @spec get_data_retrieval_policy(map(), String.t(), list()) ::
          {:ok, get_data_retrieval_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_retrieval_policy_errors()}
  def get_data_retrieval_policy(%Client{} = client, account_id, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(account_id)}/policies/data-retrieval"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation downloads the output of the job you initiated using
  `InitiateJob`.

  Depending on the job type you specified when you initiated the
  job, the output will be either the content of an archive or a vault inventory.

  You can download all the job output or download a portion of the output by
  specifying
  a byte range. In the case of an archive retrieval job, depending on the byte
  range you
  specify, Amazon S3 Glacier (Glacier) returns the checksum for the portion of the
  data. You can compute the
  checksum on the client and verify that the values match to ensure the portion
  you downloaded
  is the correct data.

  A job ID will not expire for at least 24 hours after Glacier completes the job.
  That
  a byte range. For both archive and inventory retrieval jobs, you should verify
  the downloaded
  size against the size returned in the headers from the
  **Get Job Output** response.

  For archive retrieval jobs, you should also verify that the size is what you
  expected. If
  you download a portion of the output, the expected size is based on the range of
  bytes
  you specified. For example, if you specify a range of `bytes=0-1048575`, you
  should
  verify your download size is 1,048,576 bytes. If you download an entire archive,
  the
  expected size is the size of the archive when you uploaded it to Amazon S3
  Glacier
  The expected size is also returned in the headers from the
  **Get Job Output** response.

  In the case of an archive retrieval job, depending on the byte range you
  specify, Glacier returns the checksum for the portion of the data. To ensure the
  portion you downloaded
  is the correct data, compute the checksum on the client, verify that the values
  match,
  and verify that the size is what you expected.

  A job ID does not expire for at least 24 hours after Glacier completes the
  job. That is, you can download the job output within the 24 hours period after
  Amazon
  Glacier completes the job.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and the underlying REST API, see [Downloading a Vault
  Inventory](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html),
  [Downloading an Archive](https://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html),
  and [Get Job Output
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html)
  """
  @spec get_job_output(map(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_job_output_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_output_errors()}
  def get_job_output(
        %Client{} = client,
        account_id,
        job_id,
        vault_name,
        range \\ nil,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/jobs/#{AWS.Util.encode_uri(job_id)}/output"

    headers = []

    headers =
      if !is_nil(range) do
        [{"Range", range} | headers]
      else
        headers
      end

    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"Accept-Ranges", "acceptRanges"},
          {"x-amz-archive-description", "archiveDescription"},
          {"x-amz-sha256-tree-hash", "checksum"},
          {"Content-Range", "contentRange"},
          {"Content-Type", "contentType"}
        ]
      )

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation retrieves the `access-policy` subresource set on the vault;
  for more information on setting this subresource, see [Set Vault Access Policy (PUT
  access-policy)](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html).

  If there is no access policy set on the vault, the
  operation returns a `404 Not found` error. For more information about vault
  access policies, see [Amazon Glacier Access Control with Vault Access
  Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).
  """
  @spec get_vault_access_policy(map(), String.t(), String.t(), list()) ::
          {:ok, get_vault_access_policy_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vault_access_policy_errors()}
  def get_vault_access_policy(%Client{} = client, account_id, vault_name, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/access-policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation retrieves the following attributes from the `lock-policy`
  subresource set on the specified vault:

    *
  The vault lock policy set on the vault.

    *
  The state of the vault lock, which is either `InProgess` or
  `Locked`.

    *
  When the lock ID expires. The lock ID is used to complete the vault locking
  process.

    *
  When the vault lock was initiated and put into the `InProgress`
  state.

  A vault lock is put into the `InProgress` state by calling `InitiateVaultLock`.
  A vault lock is put into the `Locked` state by
  calling `CompleteVaultLock`. You can abort the vault locking process by
  calling `AbortVaultLock`. For more information about the vault locking
  process, [Amazon Glacier Vault
  Lock](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

  If there is no vault lock policy set on the vault, the operation returns a

  ```
  404
  Not found
  ```

  error. For more information about vault lock policies, [Amazon Glacier Access Control with Vault Lock
  Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).
  """
  @spec get_vault_lock(map(), String.t(), String.t(), list()) ::
          {:ok, get_vault_lock_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vault_lock_errors()}
  def get_vault_lock(%Client{} = client, account_id, vault_name, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/lock-policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation retrieves the `notification-configuration` subresource of
  the specified vault.

  For information about setting a notification configuration on a vault, see
  `SetVaultNotifications`. If a notification configuration for a vault is not
  set, the operation returns a `404 Not Found` error. For more information about
  vault notifications, see [Configuring Vault Notifications in Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html).

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Configuring Vault Notifications in Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
  and [Get Vault Notification Configuration
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html)
  in the *Amazon Glacier Developer Guide*.
  """
  @spec get_vault_notifications(map(), String.t(), String.t(), list()) ::
          {:ok, get_vault_notifications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_vault_notifications_errors()}
  def get_vault_notifications(%Client{} = client, account_id, vault_name, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/notification-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation initiates a job of the specified type, which can be a select, an
  archival retrieval,
  or a vault retrieval.

  For more information about using this operation,
  see the documentation for the underlying REST API [Initiate a
  Job](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html).
  """
  @spec initiate_job(map(), String.t(), String.t(), initiate_job_input(), list()) ::
          {:ok, initiate_job_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initiate_job_errors()}
  def initiate_job(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/jobs"

    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-job-id", "jobId"},
          {"x-amz-job-output-path", "jobOutputPath"},
          {"Location", "location"}
        ]
      )

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
      202
    )
  end

  @doc """
  This operation initiates a multipart upload.

  Amazon S3 Glacier creates a multipart
  upload resource and returns its ID in the response. The multipart upload ID is
  used in
  subsequent requests to upload parts of an archive (see `UploadMultipartPart`).

  When you initiate a multipart upload, you specify the part size in number of
  bytes.
  The part size must be a megabyte (1024 KB) multiplied by a power of 2-for
  example, 1048576
  (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum
  allowable
  part size is 1 MB, and the maximum is 4 GB.

  Every part you upload to this resource (see `UploadMultipartPart`),
  except the last one, must have the same size. The last one can be the same size
  or smaller.
  For example, suppose you want to upload a 16.2 MB file. If you initiate the
  multipart
  upload with a part size of 4 MB, you will upload four parts of 4 MB each and one
  part of
  0.2 MB.

  You don't need to know the size of the archive when you start a multipart upload
  because Amazon S3 Glacier does not require you to specify the overall archive
  size.

  After you complete the multipart upload, Amazon S3 Glacier (Glacier) removes the
  multipart upload
  resource referenced by the ID. Glacier also removes the multipart upload
  resource if
  you cancel the multipart upload or it may be removed if there is no activity for
  a period
  of 24 hours.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Uploading Large Archives in
  Parts (Multipart
  Upload)](https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
  and [Initiate Multipart Upload](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html)
  in the *Amazon Glacier Developer Guide*.
  """
  @spec initiate_multipart_upload(
          map(),
          String.t(),
          String.t(),
          initiate_multipart_upload_input(),
          list()
        ) ::
          {:ok, initiate_multipart_upload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initiate_multipart_upload_errors()}
  def initiate_multipart_upload(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/multipart-uploads"

    {headers, input} =
      [
        {"archiveDescription", "x-amz-archive-description"},
        {"partSize", "x-amz-part-size"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Location", "location"}, {"x-amz-multipart-upload-id", "uploadId"}]
      )

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
      201
    )
  end

  @doc """
  This operation initiates the vault locking process by doing the following:

    *
  Installing a vault lock policy on the specified vault.

    *
  Setting the lock state of vault lock to `InProgress`.

    *
  Returning a lock ID, which is used to complete the vault locking
  process.

  You can set one vault lock policy for each vault and this policy can be up to 20
  KB
  in size. For more information about vault lock policies, see [Amazon Glacier Access Control with
  Vault Lock
  Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

  You must complete the vault locking process within 24 hours after the vault lock
  enters the `InProgress` state. After the 24 hour window ends, the lock ID
  expires, the vault automatically exits the `InProgress` state, and the vault
  lock policy is removed from the vault. You call `CompleteVaultLock` to
  complete the vault locking process by setting the state of the vault lock to
  `Locked`.

  After a vault lock is in the `Locked` state, you cannot initiate a new
  vault lock for the vault.

  You can abort the vault locking process by calling `AbortVaultLock`.
  You can get the state of the vault lock by calling `GetVaultLock`. For more
  information about the vault locking process, [Amazon Glacier Vault Lock](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

  If this operation is called when the vault lock is in the `InProgress`
  state, the operation returns an `AccessDeniedException` error. When the vault
  lock is in the `InProgress` state you must call `AbortVaultLock`
  before you can initiate a new vault lock policy.
  """
  @spec initiate_vault_lock(map(), String.t(), String.t(), initiate_vault_lock_input(), list()) ::
          {:ok, initiate_vault_lock_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initiate_vault_lock_errors()}
  def initiate_vault_lock(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/lock-policy"

    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-lock-id", "lockId"}]
      )

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
      201
    )
  end

  @doc """
  This operation lists jobs for a vault, including jobs that are in-progress and
  jobs
  that have recently finished.

  The List Job operation returns a list of these jobs sorted by job initiation
  time.

  Amazon Glacier retains recently completed jobs for a period before deleting
  them;
  however, it eventually removes completed jobs. The output of completed jobs can
  be
  retrieved. Retaining completed jobs for a period of time after they have
  completed
  enables you to get a job output in the event you miss the job completion
  notification or
  your first attempt to download it fails. For example, suppose you start an
  archive
  retrieval job to download an archive. After the job completes, you start to
  download the
  archive but encounter a network error. In this scenario, you can retry and
  download the
  archive while the job exists.

  The List Jobs operation supports pagination. You should always check the
  response `Marker` field.
  If there are no more jobs to list, the `Marker` field is set to `null`. If there
  are more jobs to list,
  the `Marker` field is set to a non-null value, which you can use to continue the
  pagination of the list.
  To return a list of jobs that begins at a specific job,
  set the marker request parameter to the `Marker` value for that job that you
  obtained from a previous List Jobs request.

  You can set a maximum limit for the number of jobs returned in the response by
  specifying the `limit` parameter in the request. The default limit is 50. The
  number of jobs returned might be fewer than the limit, but the number of
  returned jobs
  never exceeds the limit.

  Additionally, you can filter the jobs list returned by specifying the optional
  `statuscode` parameter or `completed` parameter, or both. Using
  the `statuscode` parameter, you can specify to return only jobs that match
  either the `InProgress`, `Succeeded`, or `Failed` status.
  Using the `completed` parameter, you can specify to return only jobs that were
  completed (`true`) or jobs that were not completed
  (`false`).

  For more information about using this operation,
  see the documentation for the underlying REST API [List Jobs](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html).
  """
  @spec list_jobs(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_errors()}
  def list_jobs(
        %Client{} = client,
        account_id,
        vault_name,
        completed \\ nil,
        limit \\ nil,
        marker \\ nil,
        statuscode \\ nil,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/jobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(statuscode) do
        [{"statuscode", statuscode} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(completed) do
        [{"completed", completed} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists in-progress multipart uploads for the specified vault.

  An
  in-progress multipart upload is a multipart upload that has been initiated by an
  `InitiateMultipartUpload` request, but has not yet been completed or aborted.
  The list returned in the List Multipart Upload response has no guaranteed order.

  The List Multipart Uploads operation supports pagination. By default, this
  operation
  returns up to 50 multipart uploads in the response. You should always check the
  response
  for a `marker` at which to continue the list; if there are no more items the
  `marker` is `null`. To return a list of multipart uploads that
  begins at a specific upload, set the `marker` request parameter to the value you
  obtained from a previous List Multipart Upload request. You can also limit the
  number of
  uploads returned in the response by specifying the `limit` parameter in the
  request.

  Note the difference between this operation and listing parts (`ListParts`). The
  List Multipart Uploads operation lists all multipart uploads
  for a vault and does not require a multipart upload ID. The List Parts operation
  requires a
  multipart upload ID since parts are associated with a single upload.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and the underlying REST API, see [Working with Archives in Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
  and [List Multipart Uploads
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html)
  in the *Amazon Glacier Developer Guide*.
  """
  @spec list_multipart_uploads(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_multipart_uploads_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_multipart_uploads_errors()}
  def list_multipart_uploads(
        %Client{} = client,
        account_id,
        vault_name,
        limit \\ nil,
        marker \\ nil,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/multipart-uploads"

    headers = []
    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists the parts of an archive that have been uploaded in a
  specific
  multipart upload.

  You can make this request at any time during an in-progress multipart
  upload before you complete the upload (see `CompleteMultipartUpload`. List
  Parts returns an error for completed uploads. The list returned in the List
  Parts response
  is sorted by part range.

  The List Parts operation supports pagination. By default, this operation returns
  up
  to 50 uploaded parts in the response. You should always check the response for a
  `marker` at which to continue the list; if there are no more items the
  `marker` is `null`. To return a list of parts that begins at a
  specific part, set the `marker` request parameter to the value you obtained from
  a previous List Parts request. You can also limit the number of parts returned
  in the
  response by specifying the `limit` parameter in the request.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and the underlying REST API, see [Working with Archives in Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
  and [List Parts](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html)
  in the
  *Amazon Glacier Developer Guide*.
  """
  @spec list_parts(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_parts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_parts_errors()}
  def list_parts(
        %Client{} = client,
        account_id,
        upload_id,
        vault_name,
        limit \\ nil,
        marker \\ nil,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/multipart-uploads/#{AWS.Util.encode_uri(upload_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists the provisioned capacity units for the specified AWS
  account.
  """
  @spec list_provisioned_capacity(map(), String.t(), list()) ::
          {:ok, list_provisioned_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_provisioned_capacity_errors()}
  def list_provisioned_capacity(%Client{} = client, account_id, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(account_id)}/provisioned-capacity"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists all the tags attached to a vault.

  The operation returns an empty
  map if there are no tags. For more information about tags, see [Tagging Amazon S3 Glacier
  Resources](https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).
  """
  @spec list_tags_for_vault(map(), String.t(), String.t(), list()) ::
          {:ok, list_tags_for_vault_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_vault_errors()}
  def list_tags_for_vault(%Client{} = client, account_id, vault_name, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/tags"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation lists all vaults owned by the calling user's account.

  The list
  returned in the response is ASCII-sorted by vault name.

  By default, this operation returns up to 10 items. If there are more vaults to
  list, the response `marker` field contains the vault Amazon Resource Name (ARN)
  at which to continue the list with a new List Vaults request; otherwise, the
  `marker` field is `null`. To return a list of vaults that begins
  at a specific vault, set the `marker` request parameter to the vault ARN you
  obtained from a previous List Vaults request. You can also limit the number of
  vaults
  returned in the response by specifying the `limit` parameter in the request.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Retrieving Vault Metadata in
  Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html)
  and [List Vaults
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html) in
  the
  *Amazon Glacier Developer Guide*.
  """
  @spec list_vaults(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_vaults_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_vaults_errors()}
  def list_vaults(%Client{} = client, account_id, limit \\ nil, marker \\ nil, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(account_id)}/vaults"
    headers = []
    query_params = []

    query_params =
      if !is_nil(marker) do
        [{"marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This operation purchases a provisioned capacity unit for an AWS account.
  """
  @spec purchase_provisioned_capacity(
          map(),
          String.t(),
          purchase_provisioned_capacity_input(),
          list()
        ) ::
          {:ok, purchase_provisioned_capacity_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, purchase_provisioned_capacity_errors()}
  def purchase_provisioned_capacity(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(account_id)}/provisioned-capacity"
    headers = []
    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-capacity-id", "capacityId"}]
      )

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
      201
    )
  end

  @doc """
  This operation removes one or more tags from the set of tags attached to a
  vault.

  For
  more information about tags, see [Tagging Amazon S3 Glacier Resources](https://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).
  This operation is idempotent. The operation will be successful, even if there
  are no tags
  attached to the vault.
  """
  @spec remove_tags_from_vault(
          map(),
          String.t(),
          String.t(),
          remove_tags_from_vault_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_from_vault_errors()}
  def remove_tags_from_vault(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/tags?operation=remove"

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
  This operation sets and then enacts a data retrieval policy in the region
  specified
  in the PUT request.

  You can set one policy per region for an AWS account. The policy is
  enacted within a few minutes of a successful PUT operation.

  The set policy operation does not affect retrieval jobs that were in progress
  before
  the policy was enacted. For more information about data retrieval policies, see
  [Amazon Glacier Data Retrieval
  Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).
  """
  @spec set_data_retrieval_policy(map(), String.t(), set_data_retrieval_policy_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_data_retrieval_policy_errors()}
  def set_data_retrieval_policy(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/#{AWS.Util.encode_uri(account_id)}/policies/data-retrieval"
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
      204
    )
  end

  @doc """
  This operation configures an access policy for a vault and will overwrite an
  existing
  policy.

  To configure a vault access policy, send a PUT request to the
  `access-policy` subresource of the vault. An access policy is specific to a
  vault and is also called a vault subresource. You can set one access policy per
  vault and
  the policy can be up to 20 KB in size. For more information about vault access
  policies,
  see [Amazon Glacier Access Control with Vault Access Policies](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).
  """
  @spec set_vault_access_policy(
          map(),
          String.t(),
          String.t(),
          set_vault_access_policy_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_vault_access_policy_errors()}
  def set_vault_access_policy(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/access-policy"

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
      204
    )
  end

  @doc """
  This operation configures notifications that will be sent when specific events
  happen
  to a vault.

  By default, you don't get any notifications.

  To configure vault notifications, send a PUT request to the
  `notification-configuration` subresource of the vault. The request should
  include a JSON document that provides an Amazon SNS topic and specific events
  for which you
  want Amazon S3 Glacier to send notifications to the topic.

  Amazon SNS topics must grant permission to the vault to be allowed to publish
  notifications to the topic. You can configure a vault to publish a notification
  for the
  following vault events:

    *

  **ArchiveRetrievalCompleted** This event occurs when a
  job that was initiated for an archive retrieval is completed (`InitiateJob`).
  The status of the completed job can be "Succeeded" or
  "Failed". The notification sent to the SNS topic is the same output as returned
  from
  `DescribeJob`.

    *

  **InventoryRetrievalCompleted** This event occurs when a
  job that was initiated for an inventory retrieval is completed (`InitiateJob`).
  The status of the completed job can be "Succeeded" or
  "Failed". The notification sent to the SNS topic is the same output as returned
  from
  `DescribeJob`.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Configuring Vault Notifications in Amazon S3
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
  and [Set Vault Notification Configuration
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html)
  in the *Amazon Glacier Developer Guide*.
  """
  @spec set_vault_notifications(
          map(),
          String.t(),
          String.t(),
          set_vault_notifications_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_vault_notifications_errors()}
  def set_vault_notifications(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/notification-configuration"

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
      204
    )
  end

  @doc """
  This operation adds an archive to a vault.

  This is a synchronous operation, and for a
  successful upload, your data is durably persisted. Amazon S3 Glacier returns the
  archive ID in
  the `x-amz-archive-id` header of the response.

  You must use the archive ID to access your data in Amazon S3 Glacier. After you
  upload
  an archive, you should save the archive ID returned so that you can retrieve or
  delete the
  archive later. Besides saving the archive ID, you can also index it and give it
  a friendly
  name to allow for better searching. You can also use the optional archive
  description field
  to specify how the archive is referred to in an external index of archives, such
  as you
  might create in Amazon DynamoDB. You can also get the vault inventory to obtain
  a list of
  archive IDs in a vault. For more information, see `InitiateJob`.

  You must provide a SHA256 tree hash of the data you are uploading. For
  information
  about computing a SHA256 tree hash, see [Computing Checksums](https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).

  You can optionally specify an archive description of up to 1,024 printable ASCII
  characters. You can get the archive description when you either retrieve the
  archive or get
  the vault inventory. For more information, see `InitiateJob`. Amazon
  Glacier does not interpret the description in any way. An archive description
  does not need
  to be unique. You cannot use the description to retrieve or sort the archive
  list.

  Archives are immutable. After you upload an archive, you cannot edit the archive
  or
  its description.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Uploading an Archive in Amazon
  Glacier](https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html)
  and [Upload Archive](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html)
  in the
  *Amazon Glacier Developer Guide*.
  """
  @spec upload_archive(map(), String.t(), String.t(), upload_archive_input(), list()) ::
          {:ok, archive_creation_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, upload_archive_errors()}
  def upload_archive(%Client{} = client, account_id, vault_name, input, options \\ []) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/archives"

    {headers, input} =
      [
        {"archiveDescription", "x-amz-archive-description"},
        {"checksum", "x-amz-sha256-tree-hash"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amz-archive-id", "archiveId"},
          {"x-amz-sha256-tree-hash", "checksum"},
          {"Location", "location"}
        ]
      )

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
      201
    )
  end

  @doc """
  This operation uploads a part of an archive.

  You can upload archive parts in any
  order. You can also upload them in parallel. You can upload up to 10,000 parts
  for a
  multipart upload.

  Amazon Glacier rejects your upload part request if any of the following
  conditions is
  true:

    *

  **SHA256 tree hash does not match**To ensure that part
  data is not corrupted in transmission, you compute a SHA256 tree hash of the
  part and
  include it in your request. Upon receiving the part data, Amazon S3 Glacier also
  computes a SHA256 tree hash. If these hash values don't match, the operation
  fails.
  For information about computing a SHA256 tree hash, see [Computing Checksums](https://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).

    *

  **Part size does not match**The size of each part except
  the last must match the size specified in the corresponding
  `InitiateMultipartUpload` request. The size of the last part must be the
  same size as, or smaller than, the specified size.

  If you upload a part whose size is smaller than the part size you specified
  in your initiate multipart upload request and that part is not the last part,
  then
  the upload part request will succeed. However, the subsequent Complete Multipart
  Upload request will fail.

    *

  **Range does not align**The byte range value in the
  request does not align with the part size specified in the corresponding
  initiate
  request. For example, if you specify a part size of 4194304 bytes (4 MB), then 0
  to
  4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607 (8 MB - 1) are valid part
  ranges. However, if you set a range value of 2 MB to 6 MB, the range does not
  align
  with the part size and the upload will fail.

  This operation is idempotent. If you upload the same part multiple times, the
  data
  included in the most recent request overwrites the previously uploaded data.

  An AWS account has full permission to perform all operations (actions). However,
  AWS
  Identity and Access Management (IAM) users don't have any permissions by
  default. You must
  grant them explicit permission to perform specific actions. For more
  information, see
  [Access Control Using AWS Identity and Access Management
  (IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, see [Uploading Large Archives in
  Parts (Multipart
  Upload)](https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
  and [Upload Part
  ](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html) in
  the
  *Amazon Glacier Developer Guide*.
  """
  @spec upload_multipart_part(
          map(),
          String.t(),
          String.t(),
          String.t(),
          upload_multipart_part_input(),
          list()
        ) ::
          {:ok, upload_multipart_part_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, upload_multipart_part_errors()}
  def upload_multipart_part(
        %Client{} = client,
        account_id,
        upload_id,
        vault_name,
        input,
        options \\ []
      ) do
    url_path =
      "/#{AWS.Util.encode_uri(account_id)}/vaults/#{AWS.Util.encode_uri(vault_name)}/multipart-uploads/#{AWS.Util.encode_uri(upload_id)}"

    {headers, input} =
      [
        {"checksum", "x-amz-sha256-tree-hash"},
        {"range", "Content-Range"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"x-amz-sha256-tree-hash", "checksum"}]
      )

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
      204
    )
  end
end
