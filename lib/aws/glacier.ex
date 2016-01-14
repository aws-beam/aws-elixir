# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Glacier do
  @moduledoc """
  Amazon Glacier is a storage solution for "cold data."

  Amazon Glacier is an extremely low-cost storage service that provides
  secure, durable, and easy-to-use storage for data backup and archival. With
  Amazon Glacier, customers can store their data cost effectively for months,
  years, or decades. Amazon Glacier also enables customers to offload the
  administrative burdens of operating and scaling storage to AWS, so they
  don't have to worry about capacity planning, hardware provisioning, data
  replication, hardware failure and recovery, or time-consuming hardware
  migrations.

  Amazon Glacier is a great storage choice when low storage cost is
  paramount, your data is rarely retrieved, and retrieval latency of several
  hours is acceptable. If your application requires fast or frequent access
  to your data, consider using Amazon S3. For more information, go to [Amazon
  Simple Storage Service (Amazon S3)](http://aws.amazon.com/s3/).

  You can store any kind of data in any format. There is no maximum limit on
  the total amount of data you can store in Amazon Glacier.

  If you are a first-time user of Amazon Glacier, we recommend that you begin
  by reading the following sections in the *Amazon Glacier Developer Guide*:

  <ul> <li>[What is Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html)
  - This section of the Developer Guide describes the underlying data model,
  the operations it supports, and the AWS SDKs that you can use to interact
  with the service.

  </li> <li>[Getting Started with Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html)
  - The Getting Started section walks you through the process of creating a
  vault, uploading archives, creating jobs to download archives, retrieving
  the job output, and deleting archives.

  </li> </ul>
  """

  @doc """
  This operation aborts a multipart upload identified by the upload ID.

  After the Abort Multipart Upload request succeeds, you cannot upload any
  more parts to the multipart upload or complete the multipart upload.
  Aborting a completed upload fails. However, aborting an already-aborted
  upload will succeed, for a short time. For more information about uploading
  a part and completing a multipart upload, see `UploadMultipartPart` and
  `CompleteMultipartUpload`.

  This operation is idempotent.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Working with
  Archives in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
  and [Abort Multipart
  Upload](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def abort_multipart_upload(client, account_id, upload_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/multipart-uploads/#{URI.encode(upload_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  This operation aborts the vault locking process if the vault lock is not in
  the `Locked` state. If the vault lock is in the `Locked` state when this
  operation is requested, the operation returns an `AccessDeniedException`
  error. Aborting the vault locking process removes the vault lock policy
  from the specified vault.

  A vault lock is put into the `InProgress` state by calling
  `InitiateVaultLock`. A vault lock is put into the `Locked` state by calling
  `CompleteVaultLock`. You can get the state of a vault lock by calling
  `GetVaultLock`. For more information about the vault locking process, see
  [Amazon Glacier Vault
  Lock](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).
  For more information about vault lock policies, see [Amazon Glacier Access
  Control with Vault Lock
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

  This operation is idempotent. You can successfully invoke this operation
  multiple times, if the vault lock is in the `InProgress` state or if there
  is no policy associated with the vault.
  """
  def abort_vault_lock(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/lock-policy"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  This operation adds the specified tags to a vault. Each tag is composed of
  a key and a value. Each vault can have up to 10 tags. If your request would
  cause the tag limit for the vault to be exceeded, the operation throws the
  `LimitExceededException` error. If a tag already exists on the vault under
  a specified key, the existing key value will be overwritten. For more
  information about tags, see [Tagging Amazon Glacier
  Resources](http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).
  """
  def add_tags_to_vault(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/tags?operation=add"
    headers = []
    request(client, :post, url, headers, input, options, 204)
  end

  @doc """
  You call this operation to inform Amazon Glacier that all the archive parts
  have been uploaded and that Amazon Glacier can now assemble the archive
  from the uploaded parts. After assembling and saving the archive to the
  vault, Amazon Glacier returns the URI path of the newly created archive
  resource. Using the URI path, you can then access the archive. After you
  upload an archive, you should save the archive ID returned to retrieve the
  archive at a later point. You can also get the vault inventory to obtain a
  list of archive IDs in a vault. For more information, see `InitiateJob`.

  In the request, you must include the computed SHA256 tree hash of the
  entire archive you have uploaded. For information about computing a SHA256
  tree hash, see [Computing
  Checksums](http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).
  On the server side, Amazon Glacier also constructs the SHA256 tree hash of
  the assembled archive. If the values match, Amazon Glacier saves the
  archive to the vault; otherwise, it returns an error, and the operation
  fails. The `ListParts` operation returns a list of parts uploaded for a
  specific multipart upload. It includes checksum information for each
  uploaded part that can be used to debug a bad checksum issue.

  Additionally, Amazon Glacier also checks for any missing content ranges
  when assembling the archive, if missing content ranges are found, Amazon
  Glacier returns an error and the operation fails.

  Complete Multipart Upload is an idempotent operation. After your first
  successful complete multipart upload, if you call the operation again
  within a short period, the operation will succeed and return the same
  archive ID. This is useful in the event you experience a network issue that
  causes an aborted connection or receive a 500 server error, in which case
  you can repeat your Complete Multipart Upload request and get the same
  archive ID without creating duplicate archives. Note, however, that after
  the multipart upload completes, you cannot call the List Parts operation
  and the multipart upload will not appear in List Multipart Uploads
  response, even if idempotent complete is possible.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Uploading Large
  Archives in Parts (Multipart
  Upload)](http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
  and [Complete Multipart
  Upload](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def complete_multipart_upload(client, account_id, upload_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/multipart-uploads/#{URI.encode(upload_id)}"
    headers = []
    if Dict.has_key?(input, "archiveSize") do
      headers = [{"archiveSize", input["archiveSize"]}|headers]
      input = Dict.delete(input, "archiveSize")
    end
    if Dict.has_key?(input, "checksum") do
      headers = [{"checksum", input["checksum"]}|headers]
      input = Dict.delete(input, "checksum")
    end
    case request(client, :post, url, headers, input, options, 201) do
      {:ok, body, response} ->
        if !is_nil(response.headers["archiveId"]) do
          body = %{body | "archiveId" => response.headers["archiveId"]}
        end
        if !is_nil(response.headers["checksum"]) do
          body = %{body | "checksum" => response.headers["checksum"]}
        end
        if !is_nil(response.headers["location"]) do
          body = %{body | "location" => response.headers["location"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  This operation completes the vault locking process by transitioning the
  vault lock from the `InProgress` state to the `Locked` state, which causes
  the vault lock policy to become unchangeable. A vault lock is put into the
  `InProgress` state by calling `InitiateVaultLock`. You can obtain the state
  of the vault lock by calling `GetVaultLock`. For more information about the
  vault locking process, [Amazon Glacier Vault
  Lock](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

  This operation is idempotent. This request is always successful if the
  vault lock is in the `Locked` state and the provided lock ID matches the
  lock ID originally used to lock the vault.

  If an invalid lock ID is passed in the request when the vault lock is in
  the `Locked` state, the operation returns an `AccessDeniedException` error.
  If an invalid lock ID is passed in the request when the vault lock is in
  the `InProgress` state, the operation throws an `InvalidParameter` error.
  """
  def complete_vault_lock(client, account_id, lock_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/lock-policy/#{URI.encode(lock_id)}"
    headers = []
    request(client, :post, url, headers, input, options, 204)
  end

  @doc """
  This operation creates a new vault with the specified name. The name of the
  vault must be unique within a region for an AWS account. You can create up
  to 1,000 vaults per account. If you need to create more vaults, contact
  Amazon Glacier.

  You must use the following guidelines when naming a vault.

  <ul> <li> Names can be between 1 and 255 characters long.

  </li> <li> Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-'
  (hyphen), and '.' (period).

  </li> </ul>

  This operation is idempotent.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Creating a Vault
  in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html)
  and [Create Vault
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def create_vault(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}"
    headers = []
    case request(client, :put, url, headers, input, options, 201) do
      {:ok, body, response} ->
        if !is_nil(response.headers["location"]) do
          body = %{body | "location" => response.headers["location"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  This operation deletes an archive from a vault. Subsequent requests to
  initiate a retrieval of this archive will fail. Archive retrievals that are
  in progress for this archive ID may or may not succeed according to the
  following scenarios:

  <ul> <li>If the archive retrieval job is actively preparing the data for
  download when Amazon Glacier receives the delete archive request, the
  archival retrieval operation might fail. </li> <li>If the archive retrieval
  job has successfully prepared the archive for download when Amazon Glacier
  receives the delete archive request, you will be able to download the
  output. </li> </ul> This operation is idempotent. Attempting to delete an
  already-deleted archive does not result in an error.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Deleting an
  Archive in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html)
  and [Delete
  Archive](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def delete_archive(client, account_id, archive_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/archives/#{URI.encode(archive_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  This operation deletes a vault. Amazon Glacier will delete a vault only if
  there are no archives in the vault as of the last inventory and there have
  been no writes to the vault since the last inventory. If either of these
  conditions is not satisfied, the vault deletion fails (that is, the vault
  is not removed) and Amazon Glacier returns an error. You can use
  `DescribeVault` to return the number of archives in a vault, and you can
  use [Initiate a Job (POST
  jobs)](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html)
  to initiate a new inventory retrieval for a vault. The inventory contains
  the archive IDs you use to delete archives using [Delete Archive (DELETE
  archive)](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html).

  This operation is idempotent.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Deleting a Vault
  in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html)
  and [Delete Vault
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def delete_vault(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  This operation deletes the access policy associated with the specified
  vault. The operation is eventually consistent; that is, it might take some
  time for Amazon Glacier to completely remove the access policy, and you
  might still see the effect of the policy for a short time after you send
  the delete request.

  This operation is idempotent. You can invoke delete multiple times, even if
  there is no policy associated with the vault. For more information about
  vault access policies, see [Amazon Glacier Access Control with Vault Access
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).
  """
  def delete_vault_access_policy(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/access-policy"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  This operation deletes the notification configuration set for a vault. The
  operation is eventually consistent; that is, it might take some time for
  Amazon Glacier to completely disable the notifications and you might still
  receive some notifications for a short time after you send the delete
  request.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Configuring
  Vault Notifications in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
  and [Delete Vault Notification Configuration
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html)
  in the Amazon Glacier Developer Guide.
  """
  def delete_vault_notifications(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/notification-configuration"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  This operation returns information about a job you previously initiated,
  including the job initiation date, the user who initiated the job, the job
  status code/message and the Amazon SNS topic to notify after Amazon Glacier
  completes the job. For more information about initiating a job, see
  `InitiateJob`.

  <note>This operation enables you to check the status of your job. However,
  it is strongly recommended that you set up an Amazon SNS topic and specify
  it in your initiate job request so that Amazon Glacier can notify the topic
  after it completes the job.

  </note> A job ID will not expire for at least 24 hours after Amazon Glacier
  completes the job.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For information about the underlying REST API, go to [Working with Archives
  in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def describe_job(client, account_id, job_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/jobs/#{URI.encode(job_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation returns information about a vault, including the vault's
  Amazon Resource Name (ARN), the date the vault was created, the number of
  archives it contains, and the total size of all the archives in the vault.
  The number of archives and their total size are as of the last inventory
  generation. This means that if you add or remove an archive from a vault,
  and then immediately use Describe Vault, the change in contents will not be
  immediately reflected. If you want to retrieve the latest inventory of the
  vault, use `InitiateJob`. Amazon Glacier generates vault inventories
  approximately daily. For more information, see [Downloading a Vault
  Inventory in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html).

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Retrieving Vault
  Metadata in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html)
  and [Describe Vault
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def describe_vault(client, account_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation returns the current data retrieval policy for the account
  and region specified in the GET request. For more information about data
  retrieval policies, see [Amazon Glacier Data Retrieval
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).
  """
  def get_data_retrieval_policy(client, account_id, options \\ []) do
    url = "/#{URI.encode(account_id)}/policies/data-retrieval"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation downloads the output of the job you initiated using
  `InitiateJob`. Depending on the job type you specified when you initiated
  the job, the output will be either the content of an archive or a vault
  inventory.

  A job ID will not expire for at least 24 hours after Amazon Glacier
  completes the job. That is, you can download the job output within the 24
  hours period after Amazon Glacier completes the job.

  If the job output is large, then you can use the `Range` request header to
  retrieve a portion of the output. This allows you to download the entire
  output in smaller chunks of bytes. For example, suppose you have 1 GB of
  job output you want to download and you decide to download 128 MB chunks of
  data at a time, which is a total of eight Get Job Output requests. You use
  the following process to download the job output:

  <ol> <li> Download a 128 MB chunk of output by specifying the appropriate
  byte range using the `Range` header.

  </li> <li> Along with the data, the response includes a SHA256 tree hash of
  the payload. You compute the checksum of the payload on the client and
  compare it with the checksum you received in the response to ensure you
  received all the expected data.

  </li> <li> Repeat steps 1 and 2 for all the eight 128 MB chunks of output
  data, each time specifying the appropriate byte range.

  </li> <li> After downloading all the parts of the job output, you have a
  list of eight checksum values. Compute the tree hash of these values to
  find the checksum of the entire output. Using the `DescribeJob` API, obtain
  job information of the job that provided you the output. The response
  includes the checksum of the entire archive stored in Amazon Glacier. You
  compare this value with the checksum you computed to ensure you have
  downloaded the entire archive content with no errors.

  </li> </ol> An AWS account has full permission to perform all operations
  (actions). However, AWS Identity and Access Management (IAM) users don't
  have any permissions by default. You must grant them explicit permission to
  perform specific actions. For more information, see [Access Control Using
  AWS Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and the underlying REST API, go to [Downloading
  a Vault
  Inventory](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html),
  [Downloading an
  Archive](http://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html),
  and [Get Job Output
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html)
  """
  def get_job_output(client, account_id, job_id, vault_name, range \\ nil, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/jobs/#{URI.encode(job_id)}/output"
    headers = []
    if !is_nil(range) do
      headers = [{"range", range}|headers]
    end
    case request(client, :get, url, headers, nil, options, nil) do
      {:ok, body, response} ->
        if !is_nil(response.headers["acceptRanges"]) do
          body = %{body | "acceptRanges" => response.headers["acceptRanges"]}
        end
        if !is_nil(response.headers["archiveDescription"]) do
          body = %{body | "archiveDescription" => response.headers["archiveDescription"]}
        end
        if !is_nil(response.headers["checksum"]) do
          body = %{body | "checksum" => response.headers["checksum"]}
        end
        if !is_nil(response.headers["contentRange"]) do
          body = %{body | "contentRange" => response.headers["contentRange"]}
        end
        if !is_nil(response.headers["contentType"]) do
          body = %{body | "contentType" => response.headers["contentType"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  This operation retrieves the `access-policy` subresource set on the vault;
  for more information on setting this subresource, see [Set Vault Access
  Policy (PUT
  access-policy)](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html).
  If there is no access policy set on the vault, the operation returns a `404
  Not found` error. For more information about vault access policies, see
  [Amazon Glacier Access Control with Vault Access
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).
  """
  def get_vault_access_policy(client, account_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/access-policy"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation retrieves the following attributes from the `lock-policy`
  subresource set on the specified vault: <ul> <li> The vault lock policy set
  on the vault.

  </li> <li> The state of the vault lock, which is either `InProgess` or
  `Locked`.

  </li> <li> When the lock ID expires. The lock ID is used to complete the
  vault locking process.

  </li> <li> When the vault lock was initiated and put into the `InProgress`
  state.

  </li> </ul>

  A vault lock is put into the `InProgress` state by calling
  `InitiateVaultLock`. A vault lock is put into the `Locked` state by calling
  `CompleteVaultLock`. You can abort the vault locking process by calling
  `AbortVaultLock`. For more information about the vault locking process,
  [Amazon Glacier Vault
  Lock](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

  If there is no vault lock policy set on the vault, the operation returns a
  `404 Not found` error. For more information about vault lock policies,
  [Amazon Glacier Access Control with Vault Lock
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).
  """
  def get_vault_lock(client, account_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/lock-policy"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation retrieves the <code class="code">notification-configuration`
  subresource of the specified vault.

  For information about setting a notification configuration on a vault, see
  `SetVaultNotifications`. If a notification configuration for a vault is not
  set, the operation returns a <code class="code">404 Not Found` error. For
  more information about vault notifications, see [Configuring Vault
  Notifications in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html).

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Configuring
  Vault Notifications in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
  and [Get Vault Notification Configuration
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def get_vault_notifications(client, account_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/notification-configuration"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation initiates a job of the specified type. In this release, you
  can initiate a job to retrieve either an archive or a vault inventory (a
  list of archives in a vault).

  Retrieving data from Amazon Glacier is a two-step process:

  <ol> <li> Initiate a retrieval job.

  <note>A data retrieval policy can cause your initiate retrieval job request
  to fail with a PolicyEnforcedException exception. For more information
  about data retrieval policies, see [Amazon Glacier Data Retrieval
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).
  For more information about the PolicyEnforcedException exception, see
  [Error
  Responses](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-error-responses.html).

  </note> </li> <li>After the job completes, download the bytes.

  </li> </ol> The retrieval request is executed asynchronously. When you
  initiate a retrieval job, Amazon Glacier creates a job and returns a job ID
  in the response. When Amazon Glacier completes the job, you can get the job
  output (archive or inventory data). For information about getting job
  output, see `GetJobOutput` operation.

  The job must complete before you can get its output. To determine when a
  job is complete, you have the following options:

  <ul> <li> **Use Amazon SNS Notification** You can specify an Amazon Simple
  Notification Service (Amazon SNS) topic to which Amazon Glacier can post a
  notification after the job is completed. You can specify an SNS topic per
  job request. The notification is sent only after Amazon Glacier completes
  the job. In addition to specifying an SNS topic per job request, you can
  configure vault notifications for a vault so that job notifications are
  always sent. For more information, see `SetVaultNotifications`.

  </li> <li> **Get job details** You can make a `DescribeJob` request to
  obtain job status information while a job is in progress. However, it is
  more efficient to use an Amazon SNS notification to determine when a job is
  complete.

  </li> </ul> <note>The information you get via notification is same that you
  get by calling `DescribeJob`.

  </note> If for a specific event, you add both the notification
  configuration on the vault and also specify an SNS topic in your initiate
  job request, Amazon Glacier sends both notifications. For more information,
  see `SetVaultNotifications`.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  **About the Vault Inventory**

  Amazon Glacier prepares an inventory for each vault periodically, every 24
  hours. When you initiate a job for a vault inventory, Amazon Glacier
  returns the last inventory for the vault. The inventory data you get might
  be up to a day or two days old. Also, the initiate inventory job might take
  some time to complete before you can download the vault inventory. So you
  do not want to retrieve a vault inventory for each vault operation.
  However, in some scenarios, you might find the vault inventory useful. For
  example, when you upload an archive, you can provide an archive description
  but not an archive name. Amazon Glacier provides you a unique archive ID,
  an opaque string of characters. So, you might maintain your own database
  that maps archive names to their corresponding Amazon Glacier assigned
  archive IDs. You might find the vault inventory useful in the event you
  need to reconcile information in your database with the actual vault
  inventory.

  **Range Inventory Retrieval**

  You can limit the number of inventory items retrieved by filtering on the
  archive creation date or by setting a limit.

  *Filtering by Archive Creation Date*

  You can retrieve inventory items for archives created between `StartDate`
  and `EndDate` by specifying values for these parameters in the
  **InitiateJob** request. Archives created on or after the `StartDate` and
  before the `EndDate` will be returned. If you only provide the `StartDate`
  without the `EndDate`, you will retrieve the inventory for all archives
  created on or after the `StartDate`. If you only provide the `EndDate`
  without the `StartDate`, you will get back the inventory for all archives
  created before the `EndDate`.

  *Limiting Inventory Items per Retrieval*

  You can limit the number of inventory items returned by setting the `Limit`
  parameter in the **InitiateJob** request. The inventory job output will
  contain inventory items up to the specified `Limit`. If there are more
  inventory items available, the result is paginated. After a job is complete
  you can use the `DescribeJob` operation to get a marker that you use in a
  subsequent **InitiateJob** request. The marker will indicate the starting
  point to retrieve the next set of inventory items. You can page through
  your entire inventory by repeatedly making **InitiateJob** requests with
  the marker from the previous **DescribeJob** output, until you get a marker
  from **DescribeJob** that returns null, indicating that there are no more
  inventory items available.

  You can use the `Limit` parameter together with the date range parameters.

  **About Ranged Archive Retrieval**

  You can initiate an archive retrieval for the whole archive or a range of
  the archive. In the case of ranged archive retrieval, you specify a byte
  range to return or the whole archive. The range specified must be megabyte
  (MB) aligned, that is the range start value must be divisible by 1 MB and
  range end value plus 1 must be divisible by 1 MB or equal the end of the
  archive. If the ranged archive retrieval is not megabyte aligned, this
  operation returns a 400 response. Furthermore, to ensure you get checksum
  values for data you download using Get Job Output API, the range must be
  tree hash aligned.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and the underlying REST API, go to [Initiate a
  Job](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html)
  and [Downloading a Vault
  Inventory](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html)
  """
  def initiate_job(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/jobs"
    headers = []
    case request(client, :post, url, headers, input, options, 202) do
      {:ok, body, response} ->
        if !is_nil(response.headers["jobId"]) do
          body = %{body | "jobId" => response.headers["jobId"]}
        end
        if !is_nil(response.headers["location"]) do
          body = %{body | "location" => response.headers["location"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  This operation initiates a multipart upload. Amazon Glacier creates a
  multipart upload resource and returns its ID in the response. The multipart
  upload ID is used in subsequent requests to upload parts of an archive (see
  `UploadMultipartPart`).

  When you initiate a multipart upload, you specify the part size in number
  of bytes. The part size must be a megabyte (1024 KB) multiplied by a power
  of 2-for example, 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608
  (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum
  is 4 GB.

  Every part you upload to this resource (see `UploadMultipartPart`), except
  the last one, must have the same size. The last one can be the same size or
  smaller. For example, suppose you want to upload a 16.2 MB file. If you
  initiate the multipart upload with a part size of 4 MB, you will upload
  four parts of 4 MB each and one part of 0.2 MB.

  <note>You don't need to know the size of the archive when you start a
  multipart upload because Amazon Glacier does not require you to specify the
  overall archive size.

  </note> After you complete the multipart upload, Amazon Glacier removes the
  multipart upload resource referenced by the ID. Amazon Glacier also removes
  the multipart upload resource if you cancel the multipart upload or it may
  be removed if there is no activity for a period of 24 hours.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Uploading Large
  Archives in Parts (Multipart
  Upload)](http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
  and [Initiate Multipart
  Upload](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def initiate_multipart_upload(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/multipart-uploads"
    headers = []
    if Dict.has_key?(input, "archiveDescription") do
      headers = [{"archiveDescription", input["archiveDescription"]}|headers]
      input = Dict.delete(input, "archiveDescription")
    end
    if Dict.has_key?(input, "partSize") do
      headers = [{"partSize", input["partSize"]}|headers]
      input = Dict.delete(input, "partSize")
    end
    case request(client, :post, url, headers, input, options, 201) do
      {:ok, body, response} ->
        if !is_nil(response.headers["location"]) do
          body = %{body | "location" => response.headers["location"]}
        end
        if !is_nil(response.headers["uploadId"]) do
          body = %{body | "uploadId" => response.headers["uploadId"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  This operation initiates the vault locking process by doing the following:
  <ul> <li> Installing a vault lock policy on the specified vault.

  </li> <li> Setting the lock state of vault lock to `InProgress`.

  </li> <li> Returning a lock ID, which is used to complete the vault locking
  process.

  </li> </ul>

  You can set one vault lock policy for each vault and this policy can be up
  to 20 KB in size. For more information about vault lock policies, see
  [Amazon Glacier Access Control with Vault Lock
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html).

  You must complete the vault locking process within 24 hours after the vault
  lock enters the `InProgress` state. After the 24 hour window ends, the lock
  ID expires, the vault automatically exits the `InProgress` state, and the
  vault lock policy is removed from the vault. You call `CompleteVaultLock`
  to complete the vault locking process by setting the state of the vault
  lock to `Locked`.

  After a vault lock is in the `Locked` state, you cannot initiate a new
  vault lock for the vault.

  You can abort the vault locking process by calling `AbortVaultLock`. You
  can get the state of the vault lock by calling `GetVaultLock`. For more
  information about the vault locking process, [Amazon Glacier Vault
  Lock](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html).

  If this operation is called when the vault lock is in the `InProgress`
  state, the operation returns an `AccessDeniedException` error. When the
  vault lock is in the `InProgress` state you must call `AbortVaultLock`
  before you can initiate a new vault lock policy.
  """
  def initiate_vault_lock(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/lock-policy"
    headers = []
    case request(client, :post, url, headers, input, options, 201) do
      {:ok, body, response} ->
        if !is_nil(response.headers["lockId"]) do
          body = %{body | "lockId" => response.headers["lockId"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  This operation lists jobs for a vault, including jobs that are in-progress
  and jobs that have recently finished.

  <note>Amazon Glacier retains recently completed jobs for a period before
  deleting them; however, it eventually removes completed jobs. The output of
  completed jobs can be retrieved. Retaining completed jobs for a period of
  time after they have completed enables you to get a job output in the event
  you miss the job completion notification or your first attempt to download
  it fails. For example, suppose you start an archive retrieval job to
  download an archive. After the job completes, you start to download the
  archive but encounter a network error. In this scenario, you can retry and
  download the archive while the job exists.

  </note> To retrieve an archive or retrieve a vault inventory from Amazon
  Glacier, you first initiate a job, and after the job completes, you
  download the data. For an archive retrieval, the output is the archive
  data, and for an inventory retrieval, it is the inventory list. The List
  Job operation returns a list of these jobs sorted by job initiation time.

  This List Jobs operation supports pagination. By default, this operation
  returns up to 1,000 jobs in the response. You should always check the
  response for a `marker` at which to continue the list; if there are no more
  items the `marker` is `null`. To return a list of jobs that begins at a
  specific job, set the `marker` request parameter to the value you obtained
  from a previous List Jobs request. You can also limit the number of jobs
  returned in the response by specifying the `limit` parameter in the
  request.

  Additionally, you can filter the jobs list returned by specifying an
  optional `statuscode` (InProgress, Succeeded, or Failed) and `completed`
  (true, false) parameter. The `statuscode` allows you to specify that only
  jobs that match a specified status are returned. The `completed` parameter
  allows you to specify that only jobs in a specific completion state are
  returned.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For the underlying REST API, go to [List Jobs
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html)
  """
  def list_jobs(client, account_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/jobs"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation lists in-progress multipart uploads for the specified vault.
  An in-progress multipart upload is a multipart upload that has been
  initiated by an `InitiateMultipartUpload` request, but has not yet been
  completed or aborted. The list returned in the List Multipart Upload
  response has no guaranteed order.

  The List Multipart Uploads operation supports pagination. By default, this
  operation returns up to 1,000 multipart uploads in the response. You should
  always check the response for a `marker` at which to continue the list; if
  there are no more items the `marker` is `null`. To return a list of
  multipart uploads that begins at a specific upload, set the `marker`
  request parameter to the value you obtained from a previous List Multipart
  Upload request. You can also limit the number of uploads returned in the
  response by specifying the `limit` parameter in the request.

  Note the difference between this operation and listing parts (`ListParts`).
  The List Multipart Uploads operation lists all multipart uploads for a
  vault and does not require a multipart upload ID. The List Parts operation
  requires a multipart upload ID since parts are associated with a single
  upload.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and the underlying REST API, go to [Working with
  Archives in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
  and [List Multipart Uploads
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def list_multipart_uploads(client, account_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/multipart-uploads"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation lists the parts of an archive that have been uploaded in a
  specific multipart upload. You can make this request at any time during an
  in-progress multipart upload before you complete the upload (see
  `CompleteMultipartUpload`. List Parts returns an error for completed
  uploads. The list returned in the List Parts response is sorted by part
  range.

  The List Parts operation supports pagination. By default, this operation
  returns up to 1,000 uploaded parts in the response. You should always check
  the response for a <code class="code">marker` at which to continue the
  list; if there are no more items the <code class="code">marker` is <code
  class="code">null`. To return a list of parts that begins at a specific
  part, set the `marker` request parameter to the value you obtained from a
  previous List Parts request. You can also limit the number of parts
  returned in the response by specifying the `limit` parameter in the
  request.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and the underlying REST API, go to [Working with
  Archives in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html)
  and [List
  Parts](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def list_parts(client, account_id, upload_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/multipart-uploads/#{URI.encode(upload_id)}"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation lists all the tags attached to a vault. The operation
  returns an empty map if there are no tags. For more information about tags,
  see [Tagging Amazon Glacier
  Resources](http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).
  """
  def list_tags_for_vault(client, account_id, vault_name, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/tags"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation lists all vaults owned by the calling user's account. The
  list returned in the response is ASCII-sorted by vault name.

  By default, this operation returns up to 1,000 items. If there are more
  vaults to list, the response <code class="code">marker` field contains the
  vault Amazon Resource Name (ARN) at which to continue the list with a new
  List Vaults request; otherwise, the <code class="code">marker` field is
  <code class="code">null`. To return a list of vaults that begins at a
  specific vault, set the <code class="code">marker` request parameter to the
  vault ARN you obtained from a previous List Vaults request. You can also
  limit the number of vaults returned in the response by specifying the <code
  class="code">limit` parameter in the request.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Retrieving Vault
  Metadata in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html)
  and [List Vaults
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def list_vaults(client, account_id, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults"
    headers = []
    request(client, :get, url, headers, nil, options, nil)
  end

  @doc """
  This operation removes one or more tags from the set of tags attached to a
  vault. For more information about tags, see [Tagging Amazon Glacier
  Resources](http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html).
  This operation is idempotent. The operation will be successful, even if
  there are no tags attached to the vault.
  """
  def remove_tags_from_vault(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/tags?operation=remove"
    headers = []
    request(client, :post, url, headers, input, options, 204)
  end

  @doc """
  This operation sets and then enacts a data retrieval policy in the region
  specified in the PUT request. You can set one policy per region for an AWS
  account. The policy is enacted within a few minutes of a successful PUT
  operation.

  The set policy operation does not affect retrieval jobs that were in
  progress before the policy was enacted. For more information about data
  retrieval policies, see [Amazon Glacier Data Retrieval
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html).
  """
  def set_data_retrieval_policy(client, account_id, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/policies/data-retrieval"
    headers = []
    request(client, :put, url, headers, input, options, 204)
  end

  @doc """
  This operation configures an access policy for a vault and will overwrite
  an existing policy. To configure a vault access policy, send a PUT request
  to the `access-policy` subresource of the vault. An access policy is
  specific to a vault and is also called a vault subresource. You can set one
  access policy per vault and the policy can be up to 20 KB in size. For more
  information about vault access policies, see [Amazon Glacier Access Control
  with Vault Access
  Policies](http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html).
  """
  def set_vault_access_policy(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/access-policy"
    headers = []
    request(client, :put, url, headers, input, options, 204)
  end

  @doc """
  This operation configures notifications that will be sent when specific
  events happen to a vault. By default, you don't get any notifications.

  To configure vault notifications, send a PUT request to the <code
  class="code">notification-configuration` subresource of the vault. The
  request should include a JSON document that provides an Amazon SNS topic
  and specific events for which you want Amazon Glacier to send notifications
  to the topic.

  Amazon SNS topics must grant permission to the vault to be allowed to
  publish notifications to the topic. You can configure a vault to publish a
  notification for the following vault events:

  <ul> <li> **ArchiveRetrievalCompleted** This event occurs when a job that
  was initiated for an archive retrieval is completed (`InitiateJob`). The
  status of the completed job can be "Succeeded" or "Failed". The
  notification sent to the SNS topic is the same output as returned from
  `DescribeJob`. </li> <li> **InventoryRetrievalCompleted** This event occurs
  when a job that was initiated for an inventory retrieval is completed
  (`InitiateJob`). The status of the completed job can be "Succeeded" or
  "Failed". The notification sent to the SNS topic is the same output as
  returned from `DescribeJob`. </li> </ul> An AWS account has full permission
  to perform all operations (actions). However, AWS Identity and Access
  Management (IAM) users don't have any permissions by default. You must
  grant them explicit permission to perform specific actions. For more
  information, see [Access Control Using AWS Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Configuring
  Vault Notifications in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html)
  and [Set Vault Notification Configuration
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def set_vault_notifications(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/notification-configuration"
    headers = []
    request(client, :put, url, headers, input, options, 204)
  end

  @doc """
  This operation adds an archive to a vault. This is a synchronous operation,
  and for a successful upload, your data is durably persisted. Amazon Glacier
  returns the archive ID in the <code class="code">x-amz-archive-id` header
  of the response.

  You must use the archive ID to access your data in Amazon Glacier. After
  you upload an archive, you should save the archive ID returned so that you
  can retrieve or delete the archive later. Besides saving the archive ID,
  you can also index it and give it a friendly name to allow for better
  searching. You can also use the optional archive description field to
  specify how the archive is referred to in an external index of archives,
  such as you might create in Amazon DynamoDB. You can also get the vault
  inventory to obtain a list of archive IDs in a vault. For more information,
  see `InitiateJob`.

  You must provide a SHA256 tree hash of the data you are uploading. For
  information about computing a SHA256 tree hash, see [Computing
  Checksums](http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).

  You can optionally specify an archive description of up to 1,024 printable
  ASCII characters. You can get the archive description when you either
  retrieve the archive or get the vault inventory. For more information, see
  `InitiateJob`. Amazon Glacier does not interpret the description in any
  way. An archive description does not need to be unique. You cannot use the
  description to retrieve or sort the archive list.

  Archives are immutable. After you upload an archive, you cannot edit the
  archive or its description.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Uploading an
  Archive in Amazon
  Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html)
  and [Upload
  Archive](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def upload_archive(client, account_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/archives"
    headers = []
    if Dict.has_key?(input, "archiveDescription") do
      headers = [{"archiveDescription", input["archiveDescription"]}|headers]
      input = Dict.delete(input, "archiveDescription")
    end
    if Dict.has_key?(input, "checksum") do
      headers = [{"checksum", input["checksum"]}|headers]
      input = Dict.delete(input, "checksum")
    end
    case request(client, :post, url, headers, input, options, 201) do
      {:ok, body, response} ->
        if !is_nil(response.headers["archiveId"]) do
          body = %{body | "archiveId" => response.headers["archiveId"]}
        end
        if !is_nil(response.headers["checksum"]) do
          body = %{body | "checksum" => response.headers["checksum"]}
        end
        if !is_nil(response.headers["location"]) do
          body = %{body | "location" => response.headers["location"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  @doc """
  This operation uploads a part of an archive. You can upload archive parts
  in any order. You can also upload them in parallel. You can upload up to
  10,000 parts for a multipart upload.

  Amazon Glacier rejects your upload part request if any of the following
  conditions is true:

  <ul> <li> **SHA256 tree hash does not match**To ensure that part data is
  not corrupted in transmission, you compute a SHA256 tree hash of the part
  and include it in your request. Upon receiving the part data, Amazon
  Glacier also computes a SHA256 tree hash. If these hash values don't match,
  the operation fails. For information about computing a SHA256 tree hash,
  see [Computing
  Checksums](http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html).

  </li> <li> **Part size does not match**The size of each part except the
  last must match the size specified in the corresponding
  `InitiateMultipartUpload` request. The size of the last part must be the
  same size as, or smaller than, the specified size.

  <note>If you upload a part whose size is smaller than the part size you
  specified in your initiate multipart upload request and that part is not
  the last part, then the upload part request will succeed. However, the
  subsequent Complete Multipart Upload request will fail.

  </note> </li> <li> **Range does not align**The byte range value in the
  request does not align with the part size specified in the corresponding
  initiate request. For example, if you specify a part size of 4194304 bytes
  (4 MB), then 0 to 4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607 (8
  MB - 1) are valid part ranges. However, if you set a range value of 2 MB to
  6 MB, the range does not align with the part size and the upload will fail.
  </li> </ul> This operation is idempotent. If you upload the same part
  multiple times, the data included in the most recent request overwrites the
  previously uploaded data.

  An AWS account has full permission to perform all operations (actions).
  However, AWS Identity and Access Management (IAM) users don't have any
  permissions by default. You must grant them explicit permission to perform
  specific actions. For more information, see [Access Control Using AWS
  Identity and Access Management
  (IAM)](http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html).

  For conceptual information and underlying REST API, go to [Uploading Large
  Archives in Parts (Multipart
  Upload)](http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html)
  and [Upload Part
  ](http://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html)
  in the *Amazon Glacier Developer Guide*.
  """
  def upload_multipart_part(client, account_id, upload_id, vault_name, input, options \\ []) do
    url = "/#{URI.encode(account_id)}/vaults/#{URI.encode(vault_name)}/multipart-uploads/#{URI.encode(upload_id)}"
    headers = []
    if Dict.has_key?(input, "checksum") do
      headers = [{"checksum", input["checksum"]}|headers]
      input = Dict.delete(input, "checksum")
    end
    if Dict.has_key?(input, "range") do
      headers = [{"range", input["range"]}|headers]
      input = Dict.delete(input, "range")
    end
    case request(client, :put, url, headers, input, options, 204) do
      {:ok, body, response} ->
        if !is_nil(response.headers["checksum"]) do
          body = %{body | "checksum" => response.headers["checksum"]}
        end
        {:ok, body, response}
      result ->
        result
    end
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "glacier"}
    host = get_host("glacier", client)
    url = get_url(host, url, client)
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, url, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{url}/"
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
